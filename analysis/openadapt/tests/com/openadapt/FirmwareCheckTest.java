package com.openadapt;

import java.io.ByteArrayOutputStream;
import java.util.Map;

public final class FirmwareCheckTest {
    private static int assertions;
    private static void check(boolean condition) {
        assertions++;
        if (!condition) throw new AssertionError("Check " + assertions + " failed");
    }
    private static byte[] b(int... values) {
        byte[] out = new byte[values.length];
        for (int i = 0; i < values.length; i++) out[i] = (byte) values[i];
        return out;
    }
    private static void rejects(byte[] payload) {
        try { FirmwareCheck.numbers(payload); throw new AssertionError("Accepted malformed payload"); }
        catch (IllegalArgumentException expected) { assertions++; }
    }
    public static void main(String[] args) throws Exception {
        check(FirmwareCheck.version(b(8,2,16,3,24,7)).equals("2.3.7"));
        check(FirmwareCheck.version(new byte[0]).equals("0.0.0"));
        Map<String,Object> empty = FirmwareCheck.image(new byte[0], 1);
        check(empty.get("status").equals("NOT_INITIALIZED"));
        check(empty.get("imageChecksum").equals(0L));
        check(empty.get("integrityVerified").equals(false));
        check(empty.get("slot").equals("MCU_GOLD"));
        check(FirmwareCheck.fixedDouble(new byte[0], 3) == 0);
        check(FirmwareCheck.numbers(b(8,1,8,2)).get(1).equals(2L));
        // Unknown bytes and groups are skipped; nested numeric fields do not leak.
        check(FirmwareCheck.numbers(b(82,3,8,9,10,8,4)).get(1).equals(4L));
        Map<Integer,Long> group = FirmwareCheck.numbers(b(83,8,9,91,8,6,92,84,16,7));
        check(!group.containsKey(1) && group.get(2).equals(7L));
        check(FirmwareCheck.numbers(b(13,255,255,255,255)).get(1).equals(4294967295L));
        check(FirmwareCheck.numbers(b(9,0,0,0,0,0,0,0,128)).get(1).equals(Long.MIN_VALUE));
        byte[] temperature = b(25,0,0,0,0,0,0,0,0);
        long bits = Double.doubleToLongBits(36.5);
        for (int i=0;i<8;i++) temperature[i+1]=(byte)(bits >>> (i*8));
        check(FirmwareCheck.fixedDouble(temperature,3) == 36.5);
        check(FirmwareCheck.battery(temperature).get("batteryTemperature").equals(36.5));
        check(FirmwareCheck.numbers(b(8,255,255,255,255,255,255,255,255,255,1)).get(1).equals(-1L));
        Map<String,Object> img = FirmwareCheck.image(b(8,2,16,4,24,1,56,5,64,128,1,80,255,255,255,255,15),0);
        check(img.get("version").equals("2.4.1"));
        check(img.get("status").equals("CURRENT"));
        check(img.get("imageSize").equals(128L));
        check(img.get("imageChecksum").equals(4294967295L));
        check(FirmwareCheck.image(b(56,99),0).get("status").equals("UNKNOWN"));
        rejects(null);
        rejects(b(0));
        rejects(b(6));
        rejects(b(8));
        rejects(b(8,128));
        rejects(b(9,1,2));
        rejects(b(13,1,2,3));
        rejects(b(18,5,1));
        rejects(b(18,255,255,255,255,255,255,255,255,255,1));
        rejects(b(8,128,128,128,128,128,128,128,128,128,128,0));
        rejects(b(8,128,128,128,128,128,128,128,128,128,2));
        rejects(b(128,128,128,128,16));
        rejects(b(12));
        rejects(b(11,20));
        rejects(b(11,8,1));
        ByteArrayOutputStream nested = new ByteArrayOutputStream();
        for (int i=0;i<66;i++) nested.write(11);
        for (int i=0;i<66;i++) nested.write(12);
        rejects(nested.toByteArray());
        try { FirmwareCheck.version(b(8,128,128,128,128,16)); throw new AssertionError("uint32 overflow"); }
        catch (IllegalArgumentException expected) { assertions++; }
        try { FirmwareCheck.image(new byte[0],6); throw new AssertionError("slot overflow"); }
        catch (IllegalArgumentException expected) { assertions++; }
        check(FirmwareCheck.unsigned32(new byte[0],1)==0);
        check(FirmwareCheck.unsigned32(b(8,100),1)==100);
        try { FirmwareCheck.unsigned32(b(8,178,128,128,128,16),1); throw new AssertionError("uint32 wrap"); }
        catch (IllegalArgumentException expected) { assertions++; }
        try { FirmwareCheck.unsigned32(b(13,50,0,0,0),1); throw new AssertionError("fixed32 accepted as varint"); }
        catch (IllegalArgumentException expected) { assertions++; }
        try { FirmwareCheck.unsigned32(b(10,1,50),1); throw new AssertionError("bytes accepted as varint"); }
        catch (IllegalArgumentException expected) { assertions++; }
        System.out.println("FirmwareCheckTest: " + assertions + " assertions passed");
    }
}
