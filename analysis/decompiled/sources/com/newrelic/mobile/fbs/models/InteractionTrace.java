package com.newrelic.mobile.fbs.models;

import com.newrelic.com.google.flatbuffers.FlatBufferBuilder;
import com.newrelic.com.google.flatbuffers.Table;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;

/* JADX INFO: loaded from: classes.dex */
public final class InteractionTrace extends Table {
    public static void addContent(FlatBufferBuilder flatBufferBuilder, int i10) {
        flatBufferBuilder.addOffset(5, i10, 0);
    }

    public static void addDuration(FlatBufferBuilder flatBufferBuilder, float f10) {
        flatBufferBuilder.addFloat(3, f10, 0.0d);
    }

    public static void addEnd(FlatBufferBuilder flatBufferBuilder, long j10) {
        flatBufferBuilder.addLong(1, j10, 0L);
    }

    public static void addName(FlatBufferBuilder flatBufferBuilder, int i10) {
        flatBufferBuilder.addOffset(2, i10, 0);
    }

    public static void addProtocolVersion(FlatBufferBuilder flatBufferBuilder, int i10) {
        flatBufferBuilder.addOffset(4, i10, 0);
    }

    public static void addStart(FlatBufferBuilder flatBufferBuilder, long j10) {
        flatBufferBuilder.addLong(0, j10, 0L);
    }

    public static int createInteractionTrace(FlatBufferBuilder flatBufferBuilder, long j10, long j11, int i10, float f10, int i11, int i12) {
        flatBufferBuilder.startObject(6);
        addEnd(flatBufferBuilder, j11);
        addStart(flatBufferBuilder, j10);
        addContent(flatBufferBuilder, i12);
        addProtocolVersion(flatBufferBuilder, i11);
        addDuration(flatBufferBuilder, f10);
        addName(flatBufferBuilder, i10);
        return endInteractionTrace(flatBufferBuilder);
    }

    public static int endInteractionTrace(FlatBufferBuilder flatBufferBuilder) {
        return flatBufferBuilder.endObject();
    }

    public static InteractionTrace getRootAsInteractionTrace(ByteBuffer byteBuffer) {
        return getRootAsInteractionTrace(byteBuffer, new InteractionTrace());
    }

    public static void startInteractionTrace(FlatBufferBuilder flatBufferBuilder) {
        flatBufferBuilder.startObject(6);
    }

    public InteractionTrace __assign(int i10, ByteBuffer byteBuffer) {
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

    public String content() {
        int i__offset = __offset(14);
        if (i__offset != 0) {
            return __string(i__offset + this.bb_pos);
        }
        return null;
    }

    public ByteBuffer contentAsByteBuffer() {
        return __vector_as_bytebuffer(14, 1);
    }

    public ByteBuffer contentInByteBuffer(ByteBuffer byteBuffer) {
        return __vector_in_bytebuffer(byteBuffer, 14, 1);
    }

    public float duration() {
        int i__offset = __offset(10);
        if (i__offset != 0) {
            return this.f5636bb.getFloat(i__offset + this.bb_pos);
        }
        return 0.0f;
    }

    public long end() {
        int i__offset = __offset(6);
        if (i__offset != 0) {
            return this.f5636bb.getLong(i__offset + this.bb_pos);
        }
        return 0L;
    }

    public boolean mutateDuration(float f10) {
        int i__offset = __offset(10);
        if (i__offset == 0) {
            return false;
        }
        this.f5636bb.putFloat(i__offset + this.bb_pos, f10);
        return true;
    }

    public boolean mutateEnd(long j10) {
        int i__offset = __offset(6);
        if (i__offset == 0) {
            return false;
        }
        this.f5636bb.putLong(i__offset + this.bb_pos, j10);
        return true;
    }

    public boolean mutateStart(long j10) {
        int i__offset = __offset(4);
        if (i__offset == 0) {
            return false;
        }
        this.f5636bb.putLong(i__offset + this.bb_pos, j10);
        return true;
    }

    public String name() {
        int i__offset = __offset(8);
        if (i__offset != 0) {
            return __string(i__offset + this.bb_pos);
        }
        return null;
    }

    public ByteBuffer nameAsByteBuffer() {
        return __vector_as_bytebuffer(8, 1);
    }

    public ByteBuffer nameInByteBuffer(ByteBuffer byteBuffer) {
        return __vector_in_bytebuffer(byteBuffer, 8, 1);
    }

    public String protocolVersion() {
        int i__offset = __offset(12);
        if (i__offset != 0) {
            return __string(i__offset + this.bb_pos);
        }
        return null;
    }

    public ByteBuffer protocolVersionAsByteBuffer() {
        return __vector_as_bytebuffer(12, 1);
    }

    public ByteBuffer protocolVersionInByteBuffer(ByteBuffer byteBuffer) {
        return __vector_in_bytebuffer(byteBuffer, 12, 1);
    }

    public long start() {
        int i__offset = __offset(4);
        if (i__offset != 0) {
            return this.f5636bb.getLong(i__offset + this.bb_pos);
        }
        return 0L;
    }

    public static InteractionTrace getRootAsInteractionTrace(ByteBuffer byteBuffer, InteractionTrace interactionTrace) {
        byteBuffer.order(ByteOrder.LITTLE_ENDIAN);
        return interactionTrace.__assign(byteBuffer.position() + byteBuffer.getInt(byteBuffer.position()), byteBuffer);
    }
}
