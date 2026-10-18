package com.newrelic.mobile.fbs;

import com.newrelic.com.google.flatbuffers.FlatBufferBuilder;
import com.newrelic.com.google.flatbuffers.Table;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;

/* JADX INFO: loaded from: classes.dex */
public final class RequestInformation extends Table {
    public static void addRequestAddress(FlatBufferBuilder flatBufferBuilder, long j10) {
        flatBufferBuilder.addInt(1, (int) j10, 0);
    }

    public static void addRequestTimestampMs(FlatBufferBuilder flatBufferBuilder, long j10) {
        flatBufferBuilder.addLong(0, j10, 0L);
    }

    public static int createRequestInformation(FlatBufferBuilder flatBufferBuilder, long j10, long j11) {
        flatBufferBuilder.startObject(2);
        addRequestTimestampMs(flatBufferBuilder, j10);
        addRequestAddress(flatBufferBuilder, j11);
        return endRequestInformation(flatBufferBuilder);
    }

    public static int endRequestInformation(FlatBufferBuilder flatBufferBuilder) {
        return flatBufferBuilder.endObject();
    }

    public static RequestInformation getRootAsRequestInformation(ByteBuffer byteBuffer) {
        return getRootAsRequestInformation(byteBuffer, new RequestInformation());
    }

    public static void startRequestInformation(FlatBufferBuilder flatBufferBuilder) {
        flatBufferBuilder.startObject(2);
    }

    public RequestInformation __assign(int i10, ByteBuffer byteBuffer) {
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

    public boolean mutateRequestAddress(long j10) {
        int i__offset = __offset(6);
        if (i__offset == 0) {
            return false;
        }
        this.f5636bb.putInt(i__offset + this.bb_pos, (int) j10);
        return true;
    }

    public boolean mutateRequestTimestampMs(long j10) {
        int i__offset = __offset(4);
        if (i__offset == 0) {
            return false;
        }
        this.f5636bb.putLong(i__offset + this.bb_pos, j10);
        return true;
    }

    public long requestAddress() {
        int i__offset = __offset(6);
        if (i__offset != 0) {
            return ((long) this.f5636bb.getInt(i__offset + this.bb_pos)) & 4294967295L;
        }
        return 0L;
    }

    public long requestTimestampMs() {
        int i__offset = __offset(4);
        if (i__offset != 0) {
            return this.f5636bb.getLong(i__offset + this.bb_pos);
        }
        return 0L;
    }

    public static RequestInformation getRootAsRequestInformation(ByteBuffer byteBuffer, RequestInformation requestInformation) {
        byteBuffer.order(ByteOrder.LITTLE_ENDIAN);
        return requestInformation.__assign(byteBuffer.position() + byteBuffer.getInt(byteBuffer.position()), byteBuffer);
    }
}
