package com.newrelic.mobile.fbs;

import com.newrelic.com.google.flatbuffers.FlatBufferBuilder;
import com.newrelic.com.google.flatbuffers.Table;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;

/* JADX INFO: loaded from: classes.dex */
public final class ApplicationInfo extends Table {
    public static void addAppVersion(FlatBufferBuilder flatBufferBuilder, int i10) {
        flatBufferBuilder.addOffset(2, i10, 0);
    }

    public static void addAppVersionId(FlatBufferBuilder flatBufferBuilder, long j10) {
        flatBufferBuilder.addLong(3, j10, 0L);
    }

    public static void addApplicationLicense(FlatBufferBuilder flatBufferBuilder, int i10) {
        flatBufferBuilder.addOffset(0, i10, 0);
    }

    public static void addFramework(FlatBufferBuilder flatBufferBuilder, int i10) {
        flatBufferBuilder.addByte(4, (byte) i10, 0);
    }

    public static void addPlatform(FlatBufferBuilder flatBufferBuilder, int i10) {
        flatBufferBuilder.addByte(1, (byte) i10, 0);
    }

    public static int createApplicationInfo(FlatBufferBuilder flatBufferBuilder, int i10, int i11, int i12, long j10, int i13) {
        flatBufferBuilder.startObject(5);
        addAppVersionId(flatBufferBuilder, j10);
        addAppVersion(flatBufferBuilder, i12);
        addApplicationLicense(flatBufferBuilder, i10);
        addFramework(flatBufferBuilder, i13);
        addPlatform(flatBufferBuilder, i11);
        return endApplicationInfo(flatBufferBuilder);
    }

    public static int endApplicationInfo(FlatBufferBuilder flatBufferBuilder) {
        return flatBufferBuilder.endObject();
    }

    public static ApplicationInfo getRootAsApplicationInfo(ByteBuffer byteBuffer) {
        return getRootAsApplicationInfo(byteBuffer, new ApplicationInfo());
    }

    public static void startApplicationInfo(FlatBufferBuilder flatBufferBuilder) {
        flatBufferBuilder.startObject(5);
    }

    public ApplicationInfo __assign(int i10, ByteBuffer byteBuffer) {
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

    public String appVersion() {
        int i__offset = __offset(8);
        if (i__offset != 0) {
            return __string(i__offset + this.bb_pos);
        }
        return null;
    }

    public ByteBuffer appVersionAsByteBuffer() {
        return __vector_as_bytebuffer(8, 1);
    }

    public long appVersionId() {
        int i__offset = __offset(10);
        if (i__offset != 0) {
            return this.f5636bb.getLong(i__offset + this.bb_pos);
        }
        return 0L;
    }

    public ByteBuffer appVersionInByteBuffer(ByteBuffer byteBuffer) {
        return __vector_in_bytebuffer(byteBuffer, 8, 1);
    }

    public ApplicationLicense applicationLicense() {
        return applicationLicense(new ApplicationLicense());
    }

    public int framework() {
        int i__offset = __offset(12);
        if (i__offset != 0) {
            return this.f5636bb.get(i__offset + this.bb_pos) & 255;
        }
        return 0;
    }

    public boolean mutateAppVersionId(long j10) {
        int i__offset = __offset(10);
        if (i__offset == 0) {
            return false;
        }
        this.f5636bb.putLong(i__offset + this.bb_pos, j10);
        return true;
    }

    public boolean mutateFramework(int i10) {
        int i__offset = __offset(12);
        if (i__offset == 0) {
            return false;
        }
        this.f5636bb.put(i__offset + this.bb_pos, (byte) i10);
        return true;
    }

    public boolean mutatePlatform(int i10) {
        int i__offset = __offset(6);
        if (i__offset == 0) {
            return false;
        }
        this.f5636bb.put(i__offset + this.bb_pos, (byte) i10);
        return true;
    }

    public int platform() {
        int i__offset = __offset(6);
        if (i__offset != 0) {
            return this.f5636bb.get(i__offset + this.bb_pos) & 255;
        }
        return 0;
    }

    public static ApplicationInfo getRootAsApplicationInfo(ByteBuffer byteBuffer, ApplicationInfo applicationInfo) {
        byteBuffer.order(ByteOrder.LITTLE_ENDIAN);
        return applicationInfo.__assign(byteBuffer.position() + byteBuffer.getInt(byteBuffer.position()), byteBuffer);
    }

    public ApplicationLicense applicationLicense(ApplicationLicense applicationLicense) {
        int i__offset = __offset(4);
        if (i__offset != 0) {
            return applicationLicense.__assign(__indirect(i__offset + this.bb_pos), this.f5636bb);
        }
        return null;
    }
}
