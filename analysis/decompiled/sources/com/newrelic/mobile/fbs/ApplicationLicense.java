package com.newrelic.mobile.fbs;

import com.newrelic.com.google.flatbuffers.FlatBufferBuilder;
import com.newrelic.com.google.flatbuffers.Table;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;

/* JADX INFO: loaded from: classes.dex */
public final class ApplicationLicense extends Table {
    public static ApplicationLicense __lookup_by_key(ApplicationLicense applicationLicense, int i10, String str, ByteBuffer byteBuffer) {
        byte[] bytes = str.getBytes(Table.UTF8_CHARSET.get());
        int i11 = byteBuffer.getInt(i10 - 4);
        int i12 = 0;
        while (i11 != 0) {
            int i13 = i11 / 2;
            int i__indirect = Table.__indirect(((i12 + i13) * 4) + i10, byteBuffer);
            int iCompareStrings = Table.compareStrings(Table.__offset(4, byteBuffer.capacity() - i__indirect, byteBuffer), bytes, byteBuffer);
            if (iCompareStrings > 0) {
                i11 = i13;
            } else {
                if (iCompareStrings >= 0) {
                    if (applicationLicense == null) {
                        applicationLicense = new ApplicationLicense();
                    }
                    return applicationLicense.__assign(i__indirect, byteBuffer);
                }
                int i14 = i13 + 1;
                i12 += i14;
                i11 -= i14;
            }
        }
        return null;
    }

    public static void addAccountId(FlatBufferBuilder flatBufferBuilder, long j10) {
        flatBufferBuilder.addLong(1, j10, 0L);
    }

    public static void addClusterAgentId(FlatBufferBuilder flatBufferBuilder, long j10) {
        flatBufferBuilder.addLong(2, j10, 0L);
    }

    public static void addLicenseKey(FlatBufferBuilder flatBufferBuilder, int i10) {
        flatBufferBuilder.addOffset(0, i10, 0);
    }

    public static int createApplicationLicense(FlatBufferBuilder flatBufferBuilder, int i10, long j10, long j11) {
        flatBufferBuilder.startObject(3);
        addClusterAgentId(flatBufferBuilder, j11);
        addAccountId(flatBufferBuilder, j10);
        addLicenseKey(flatBufferBuilder, i10);
        return endApplicationLicense(flatBufferBuilder);
    }

    public static int endApplicationLicense(FlatBufferBuilder flatBufferBuilder) {
        int iEndObject = flatBufferBuilder.endObject();
        flatBufferBuilder.required(iEndObject, 4);
        return iEndObject;
    }

    public static ApplicationLicense getRootAsApplicationLicense(ByteBuffer byteBuffer) {
        return getRootAsApplicationLicense(byteBuffer, new ApplicationLicense());
    }

    public static void startApplicationLicense(FlatBufferBuilder flatBufferBuilder) {
        flatBufferBuilder.startObject(3);
    }

    public ApplicationLicense __assign(int i10, ByteBuffer byteBuffer) {
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

    public long accountId() {
        int i__offset = __offset(6);
        if (i__offset != 0) {
            return this.f5636bb.getLong(i__offset + this.bb_pos);
        }
        return 0L;
    }

    public long clusterAgentId() {
        int i__offset = __offset(8);
        if (i__offset != 0) {
            return this.f5636bb.getLong(i__offset + this.bb_pos);
        }
        return 0L;
    }

    @Override // com.newrelic.com.google.flatbuffers.Table
    public int keysCompare(Integer num, Integer num2, ByteBuffer byteBuffer) {
        return Table.compareStrings(Table.__offset(4, num.intValue(), byteBuffer), Table.__offset(4, num2.intValue(), byteBuffer), byteBuffer);
    }

    public String licenseKey() {
        int i__offset = __offset(4);
        if (i__offset != 0) {
            return __string(i__offset + this.bb_pos);
        }
        return null;
    }

    public ByteBuffer licenseKeyAsByteBuffer() {
        return __vector_as_bytebuffer(4, 1);
    }

    public ByteBuffer licenseKeyInByteBuffer(ByteBuffer byteBuffer) {
        return __vector_in_bytebuffer(byteBuffer, 4, 1);
    }

    public boolean mutateAccountId(long j10) {
        int i__offset = __offset(6);
        if (i__offset == 0) {
            return false;
        }
        this.f5636bb.putLong(i__offset + this.bb_pos, j10);
        return true;
    }

    public boolean mutateClusterAgentId(long j10) {
        int i__offset = __offset(8);
        if (i__offset == 0) {
            return false;
        }
        this.f5636bb.putLong(i__offset + this.bb_pos, j10);
        return true;
    }

    public static ApplicationLicense getRootAsApplicationLicense(ByteBuffer byteBuffer, ApplicationLicense applicationLicense) {
        byteBuffer.order(ByteOrder.LITTLE_ENDIAN);
        return applicationLicense.__assign(byteBuffer.position() + byteBuffer.getInt(byteBuffer.position()), byteBuffer);
    }
}
