package com.newrelic.mobile.fbs.ios;

import com.newrelic.com.google.flatbuffers.FlatBufferBuilder;
import com.newrelic.com.google.flatbuffers.Table;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;

/* JADX INFO: loaded from: classes.dex */
public final class Library extends Table {
    public static void addAddress(FlatBufferBuilder flatBufferBuilder, long j10) {
        flatBufferBuilder.addLong(2, j10, 0L);
    }

    public static void addArch(FlatBufferBuilder flatBufferBuilder, int i10) {
        flatBufferBuilder.addByte(4, (byte) i10, 0);
    }

    public static void addPath(FlatBufferBuilder flatBufferBuilder, int i10) {
        flatBufferBuilder.addOffset(6, i10, 0);
    }

    public static void addSize(FlatBufferBuilder flatBufferBuilder, long j10) {
        flatBufferBuilder.addLong(5, j10, 0L);
    }

    public static void addUserLibrary(FlatBufferBuilder flatBufferBuilder, boolean z10) {
        flatBufferBuilder.addBoolean(3, z10, false);
    }

    public static void addUuidHigh(FlatBufferBuilder flatBufferBuilder, long j10) {
        flatBufferBuilder.addLong(1, j10, 0L);
    }

    public static void addUuidLow(FlatBufferBuilder flatBufferBuilder, long j10) {
        flatBufferBuilder.addLong(0, j10, 0L);
    }

    public static int createLibrary(FlatBufferBuilder flatBufferBuilder, long j10, long j11, long j12, boolean z10, int i10, long j13, int i11) {
        flatBufferBuilder.startObject(7);
        addSize(flatBufferBuilder, j13);
        addAddress(flatBufferBuilder, j12);
        addUuidHigh(flatBufferBuilder, j11);
        addUuidLow(flatBufferBuilder, j10);
        addPath(flatBufferBuilder, i11);
        addArch(flatBufferBuilder, i10);
        addUserLibrary(flatBufferBuilder, z10);
        return endLibrary(flatBufferBuilder);
    }

    public static int endLibrary(FlatBufferBuilder flatBufferBuilder) {
        return flatBufferBuilder.endObject();
    }

    public static void finishLibraryBuffer(FlatBufferBuilder flatBufferBuilder, int i10) {
        flatBufferBuilder.finish(i10);
    }

    public static void finishSizePrefixedLibraryBuffer(FlatBufferBuilder flatBufferBuilder, int i10) {
        flatBufferBuilder.finishSizePrefixed(i10);
    }

    public static Library getRootAsLibrary(ByteBuffer byteBuffer) {
        return getRootAsLibrary(byteBuffer, new Library());
    }

    public static void startLibrary(FlatBufferBuilder flatBufferBuilder) {
        flatBufferBuilder.startObject(7);
    }

    public Library __assign(int i10, ByteBuffer byteBuffer) {
        __init(i10, byteBuffer);
        return this;
    }

    public void __init(int i10, ByteBuffer byteBuffer) {
        this.bb_pos = i10;
        this.f5636bb = byteBuffer;
        int i11 = i10 - byteBuffer.getInt(i10);
        this.vtable_start = i11;
        this.vtable_size = this.f5636bb.getShort(i11);
    }

    public long address() {
        int i__offset = __offset(8);
        if (i__offset != 0) {
            return this.f5636bb.getLong(i__offset + this.bb_pos);
        }
        return 0L;
    }

    public int arch() {
        int i__offset = __offset(12);
        if (i__offset != 0) {
            return this.f5636bb.get(i__offset + this.bb_pos) & 255;
        }
        return 0;
    }

    public boolean mutateAddress(long j10) {
        int i__offset = __offset(8);
        if (i__offset == 0) {
            return false;
        }
        this.f5636bb.putLong(i__offset + this.bb_pos, j10);
        return true;
    }

    public boolean mutateArch(int i10) {
        int i__offset = __offset(12);
        if (i__offset == 0) {
            return false;
        }
        this.f5636bb.put(i__offset + this.bb_pos, (byte) i10);
        return true;
    }

    public boolean mutateSize(long j10) {
        int i__offset = __offset(14);
        if (i__offset == 0) {
            return false;
        }
        this.f5636bb.putLong(i__offset + this.bb_pos, j10);
        return true;
    }

    public boolean mutateUserLibrary(boolean z10) {
        int i__offset = __offset(10);
        if (i__offset == 0) {
            return false;
        }
        this.f5636bb.put(i__offset + this.bb_pos, z10 ? (byte) 1 : (byte) 0);
        return true;
    }

    public boolean mutateUuidHigh(long j10) {
        int i__offset = __offset(6);
        if (i__offset == 0) {
            return false;
        }
        this.f5636bb.putLong(i__offset + this.bb_pos, j10);
        return true;
    }

    public boolean mutateUuidLow(long j10) {
        int i__offset = __offset(4);
        if (i__offset == 0) {
            return false;
        }
        this.f5636bb.putLong(i__offset + this.bb_pos, j10);
        return true;
    }

    public String path() {
        int i__offset = __offset(16);
        if (i__offset != 0) {
            return __string(i__offset + this.bb_pos);
        }
        return null;
    }

    public ByteBuffer pathAsByteBuffer() {
        return __vector_as_bytebuffer(16, 1);
    }

    public ByteBuffer pathInByteBuffer(ByteBuffer byteBuffer) {
        return __vector_in_bytebuffer(byteBuffer, 16, 1);
    }

    public long size() {
        int i__offset = __offset(14);
        if (i__offset != 0) {
            return this.f5636bb.getLong(i__offset + this.bb_pos);
        }
        return 0L;
    }

    public boolean userLibrary() {
        int i__offset = __offset(10);
        return (i__offset == 0 || this.f5636bb.get(i__offset + this.bb_pos) == 0) ? false : true;
    }

    public long uuidHigh() {
        int i__offset = __offset(6);
        if (i__offset != 0) {
            return this.f5636bb.getLong(i__offset + this.bb_pos);
        }
        return 0L;
    }

    public long uuidLow() {
        int i__offset = __offset(4);
        if (i__offset != 0) {
            return this.f5636bb.getLong(i__offset + this.bb_pos);
        }
        return 0L;
    }

    public static Library getRootAsLibrary(ByteBuffer byteBuffer, Library library) {
        byteBuffer.order(ByteOrder.LITTLE_ENDIAN);
        return library.__assign(byteBuffer.position() + byteBuffer.getInt(byteBuffer.position()), byteBuffer);
    }
}
