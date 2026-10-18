package com.openadapt;

import java.util.LinkedHashMap;
import java.util.Map;

/** Read-only decoding of CoreRF diagnostic replies; never writes device firmware. */
public final class FirmwareCheck {
    private FirmwareCheck() { }

    /** Numeric protobuf fields: varints and little-endian fixed32/fixed64 raw bits. */
    public static Map<Integer, Long> numbers(byte[] data) {
        return parse(data).values;
    }

    /** A uint32 scalar with protobuf default zero; rejects wrong wire types and overflow. */
    public static long unsigned32(byte[] data, int field) {
        if (field <= 0 || field > 0x1fffffff) throw new IllegalArgumentException("Invalid field");
        return uint32(parse(data), field);
    }

    /** Returns the last fixed64 value for this field as a double, or protobuf default 0. */
    public static double fixedDouble(byte[] data, int field) {
        if (field <= 0 || field > 0x1fffffff) throw new IllegalArgumentException("Invalid field");
        Cursor c = new Cursor(data);
        double value = 0;
        while (c.hasMore()) {
            long tag = c.tag();
            int wire = (int) (tag & 7);
            if ((tag >>> 3) == field && wire == 1) value = Double.longBitsToDouble(c.fixed(8));
            else c.skip(tag, 0);
        }
        return value;
    }

    /** MCU firmware version reply (opcode 214), fields 1, 2, 3. */
    public static String version(byte[] payload) {
        Parsed p = parse(payload);
        return uint32(p, 1) + "." + uint32(p, 2) + "." + uint32(p, 3);
    }

    /** Image-slot metadata reply (opcode 19); checksums are reported, not independently verified. */
    public static Map<String, Object> image(byte[] payload, int imageId) {
        if (imageId < 0 || imageId > 5) throw new IllegalArgumentException("Image slot must be 0..5");
        Parsed p = parse(payload);
        Map<String, Object> out = new LinkedHashMap<String, Object>();
        String[] slots = {"MCU_UPDATE", "MCU_GOLD", "BLE_UPDATE", "BLE_GOLD", "CAPSENSE_UPDATE", "CAPSENSE_GOLD"};
        out.put("imageId", imageId);
        out.put("slot", slots[imageId]);
        out.put("majorVersion", uint32(p, 1));
        out.put("minorVersion", uint32(p, 2));
        out.put("revision", uint32(p, 3));
        out.put("version", uint32(p, 1) + "." + uint32(p, 2) + "." + uint32(p, 3));
        out.put("day", uint32(p, 4));
        out.put("month", uint32(p, 5));
        out.put("year", uint32(p, 6));
        long status = uint32(p, 7);
        String[] statuses = {"NOT_INITIALIZED", "BLANK", "PARTIAL", "REJECTED", "READY", "CURRENT", "BAD_CHECKSUM", "UPLOADING", "NON_FUNCTIONAL"};
        out.put("statusCode", status);
        out.put("status", status < statuses.length ? statuses[(int) status] : "UNKNOWN");
        out.put("imageSize", uint32(p, 8));
        out.put("downloadedImageSize", uint32(p, 9));
        out.put("imageChecksum", uint32(p, 10));
        out.put("imageDataChecksum", uint32(p, 11));
        out.put("integrityVerified", false);
        out.put("binaryBackup", false);
        return out;
    }

    /** Battery/charger reply (opcode 81); temperature is decoded IEEE754 fixed64. */
    public static Map<String, Object> battery(byte[] payload) {
        Parsed p = parse(payload);
        Map<String, Object> out = new LinkedHashMap<String, Object>();
        out.put("chargerState", uint32(p, 1));
        out.put("batteryVoltageRaw", uint32(p, 2));
        double temperature = fixedDouble(payload, 3);
        out.put("batteryTemperature", Double.isNaN(temperature) || Double.isInfinite(temperature) ? null : temperature);
        out.put("batteryPercent", uint32(p, 4));
        out.put("batteryState", uint32(p, 5));
        return out;
    }

    private static long uint32(Parsed p, int field) {
        Integer wire = p.wires.get(field);
        if (wire == null) return 0;
        if (wire.intValue() != 0) throw new IllegalArgumentException("Wrong uint32 wire type at field " + field);
        long value = p.values.get(field);
        if (value < 0 || value > 0xffffffffL) throw new IllegalArgumentException("uint32 out of range at field " + field);
        return value;
    }

    private static Parsed parse(byte[] data) {
        Cursor c = new Cursor(data);
        Parsed p = new Parsed();
        while (c.hasMore()) {
            long tag = c.tag();
            int field = (int) (tag >>> 3);
            int wire = (int) (tag & 7);
            p.wires.put(field, wire);
            long value;
            if (wire == 0) value = c.varint();
            else if (wire == 1) value = c.fixed(8);
            else if (wire == 5) value = c.fixed(4);
            else { c.skip(tag, 0); p.values.remove(field); continue; }
            p.values.put(field, value);
            p.wires.put(field, wire);
        }
        return p;
    }

    private static final class Parsed {
        final Map<Integer, Long> values = new LinkedHashMap<Integer, Long>();
        final Map<Integer, Integer> wires = new LinkedHashMap<Integer, Integer>();
    }

    private static final class Cursor {
        final byte[] data;
        int offset;
        Cursor(byte[] data) {
            if (data == null) throw new IllegalArgumentException("Null protobuf payload");
            this.data = data;
        }
        boolean hasMore() { return offset < data.length; }
        void require(int count) {
            if (count < 0 || count > data.length - offset) throw new IllegalArgumentException("Truncated protobuf at byte " + offset);
        }
        long varint() {
            long value = 0;
            for (int i = 0; i < 10; i++) {
                require(1);
                int b = data[offset++] & 255;
                if (i == 9 && (b & 254) != 0) throw new IllegalArgumentException("Invalid 64-bit varint");
                value |= (long) (b & 127) << (i * 7);
                if ((b & 128) == 0) return value;
            }
            throw new IllegalArgumentException("Varint exceeds ten bytes");
        }
        long tag() {
            long tag = varint();
            if (tag <= 0 || tag > 0xffffffffL || (tag >>> 3) == 0 || (tag & 7) > 5)
                throw new IllegalArgumentException("Invalid protobuf tag");
            return tag;
        }
        long fixed(int count) {
            require(count);
            long value = 0;
            for (int i = 0; i < count; i++) value |= (long) (data[offset++] & 255) << (i * 8);
            return value;
        }
        void skip(long tag, int depth) {
            int wire = (int) (tag & 7);
            if (wire == 0) { varint(); return; }
            if (wire == 1) { require(8); offset += 8; return; }
            if (wire == 5) { require(4); offset += 4; return; }
            if (wire == 2) {
                long count = varint();
                if (count < 0 || count > data.length - offset) throw new IllegalArgumentException("Invalid protobuf length");
                offset += (int) count;
                return;
            }
            if (wire == 3) {
                if (depth >= 64) throw new IllegalArgumentException("Protobuf group nesting exceeds limit");
                while (hasMore()) {
                    long inner = tag();
                    if ((inner & 7) == 4) {
                        if ((inner >>> 3) != (tag >>> 3)) throw new IllegalArgumentException("Mismatched protobuf end-group");
                        return;
                    }
                    skip(inner, depth + 1);
                }
                throw new IllegalArgumentException("Unterminated protobuf group");
            }
            throw new IllegalArgumentException("Unexpected protobuf end-group");
        }
    }
}
