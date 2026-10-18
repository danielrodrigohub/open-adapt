package com.newrelic.mobile.fbs.models;

import com.newrelic.com.google.flatbuffers.FlatBufferBuilder;
import com.newrelic.com.google.flatbuffers.Table;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;

/* JADX INFO: loaded from: classes.dex */
public final class InteractionTraceBundle extends Table {
    public static void addAccountId(FlatBufferBuilder flatBufferBuilder, int i10) {
        flatBufferBuilder.addInt(0, i10, 0);
    }

    public static void addAppId(FlatBufferBuilder flatBufferBuilder, long j10) {
        flatBufferBuilder.addLong(1, j10, 0L);
    }

    public static void addAppVersionId(FlatBufferBuilder flatBufferBuilder, int i10) {
        flatBufferBuilder.addInt(2, i10, 0);
    }

    public static void addCountryCode(FlatBufferBuilder flatBufferBuilder, int i10) {
        flatBufferBuilder.addOffset(3, i10, 0);
    }

    public static void addDevice(FlatBufferBuilder flatBufferBuilder, int i10) {
        flatBufferBuilder.addOffset(4, i10, 0);
    }

    public static void addDispatcher(FlatBufferBuilder flatBufferBuilder, int i10) {
        flatBufferBuilder.addOffset(7, i10, 0);
    }

    public static void addEntityGuid(FlatBufferBuilder flatBufferBuilder, int i10) {
        flatBufferBuilder.addOffset(6, i10, 0);
    }

    public static void addInteractionTraces(FlatBufferBuilder flatBufferBuilder, int i10) {
        flatBufferBuilder.addOffset(8, i10, 0);
    }

    public static void addOs(FlatBufferBuilder flatBufferBuilder, int i10) {
        flatBufferBuilder.addOffset(5, i10, 0);
    }

    public static int createInteractionTraceBundle(FlatBufferBuilder flatBufferBuilder, int i10, long j10, int i11, int i12, int i13, int i14, int i15, int i16, int i17) {
        flatBufferBuilder.startObject(9);
        addAppId(flatBufferBuilder, j10);
        addInteractionTraces(flatBufferBuilder, i17);
        addDispatcher(flatBufferBuilder, i16);
        addEntityGuid(flatBufferBuilder, i15);
        addOs(flatBufferBuilder, i14);
        addDevice(flatBufferBuilder, i13);
        addCountryCode(flatBufferBuilder, i12);
        addAppVersionId(flatBufferBuilder, i11);
        addAccountId(flatBufferBuilder, i10);
        return endInteractionTraceBundle(flatBufferBuilder);
    }

    public static int createInteractionTracesVector(FlatBufferBuilder flatBufferBuilder, int[] iArr) {
        flatBufferBuilder.startVector(4, iArr.length, 4);
        for (int length = iArr.length - 1; length >= 0; length--) {
            flatBufferBuilder.addOffset(iArr[length]);
        }
        return flatBufferBuilder.endVector();
    }

    public static int endInteractionTraceBundle(FlatBufferBuilder flatBufferBuilder) {
        return flatBufferBuilder.endObject();
    }

    public static void finishInteractionTraceBundleBuffer(FlatBufferBuilder flatBufferBuilder, int i10) {
        flatBufferBuilder.finish(i10);
    }

    public static void finishSizePrefixedInteractionTraceBundleBuffer(FlatBufferBuilder flatBufferBuilder, int i10) {
        flatBufferBuilder.finishSizePrefixed(i10);
    }

    public static InteractionTraceBundle getRootAsInteractionTraceBundle(ByteBuffer byteBuffer) {
        return getRootAsInteractionTraceBundle(byteBuffer, new InteractionTraceBundle());
    }

    public static void startInteractionTraceBundle(FlatBufferBuilder flatBufferBuilder) {
        flatBufferBuilder.startObject(9);
    }

    public static void startInteractionTracesVector(FlatBufferBuilder flatBufferBuilder, int i10) {
        flatBufferBuilder.startVector(4, i10, 4);
    }

    public InteractionTraceBundle __assign(int i10, ByteBuffer byteBuffer) {
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

    public int accountId() {
        int i__offset = __offset(4);
        if (i__offset != 0) {
            return this.f5636bb.getInt(i__offset + this.bb_pos);
        }
        return 0;
    }

    public long appId() {
        int i__offset = __offset(6);
        if (i__offset != 0) {
            return this.f5636bb.getLong(i__offset + this.bb_pos);
        }
        return 0L;
    }

    public int appVersionId() {
        int i__offset = __offset(8);
        if (i__offset != 0) {
            return this.f5636bb.getInt(i__offset + this.bb_pos);
        }
        return 0;
    }

    public String countryCode() {
        int i__offset = __offset(10);
        if (i__offset != 0) {
            return __string(i__offset + this.bb_pos);
        }
        return null;
    }

    public ByteBuffer countryCodeAsByteBuffer() {
        return __vector_as_bytebuffer(10, 1);
    }

    public ByteBuffer countryCodeInByteBuffer(ByteBuffer byteBuffer) {
        return __vector_in_bytebuffer(byteBuffer, 10, 1);
    }

    public String device() {
        int i__offset = __offset(12);
        if (i__offset != 0) {
            return __string(i__offset + this.bb_pos);
        }
        return null;
    }

    public ByteBuffer deviceAsByteBuffer() {
        return __vector_as_bytebuffer(12, 1);
    }

    public ByteBuffer deviceInByteBuffer(ByteBuffer byteBuffer) {
        return __vector_in_bytebuffer(byteBuffer, 12, 1);
    }

    public String dispatcher() {
        int i__offset = __offset(18);
        if (i__offset != 0) {
            return __string(i__offset + this.bb_pos);
        }
        return null;
    }

    public ByteBuffer dispatcherAsByteBuffer() {
        return __vector_as_bytebuffer(18, 1);
    }

    public ByteBuffer dispatcherInByteBuffer(ByteBuffer byteBuffer) {
        return __vector_in_bytebuffer(byteBuffer, 18, 1);
    }

    public String entityGuid() {
        int i__offset = __offset(16);
        if (i__offset != 0) {
            return __string(i__offset + this.bb_pos);
        }
        return null;
    }

    public ByteBuffer entityGuidAsByteBuffer() {
        return __vector_as_bytebuffer(16, 1);
    }

    public ByteBuffer entityGuidInByteBuffer(ByteBuffer byteBuffer) {
        return __vector_in_bytebuffer(byteBuffer, 16, 1);
    }

    public InteractionTrace interactionTraces(int i10) {
        return interactionTraces(new InteractionTrace(), i10);
    }

    public int interactionTracesLength() {
        int i__offset = __offset(20);
        if (i__offset != 0) {
            return __vector_len(i__offset);
        }
        return 0;
    }

    public boolean mutateAccountId(int i10) {
        int i__offset = __offset(4);
        if (i__offset == 0) {
            return false;
        }
        this.f5636bb.putInt(i__offset + this.bb_pos, i10);
        return true;
    }

    public boolean mutateAppId(long j10) {
        int i__offset = __offset(6);
        if (i__offset == 0) {
            return false;
        }
        this.f5636bb.putLong(i__offset + this.bb_pos, j10);
        return true;
    }

    public boolean mutateAppVersionId(int i10) {
        int i__offset = __offset(8);
        if (i__offset == 0) {
            return false;
        }
        this.f5636bb.putInt(i__offset + this.bb_pos, i10);
        return true;
    }

    public String os() {
        int i__offset = __offset(14);
        if (i__offset != 0) {
            return __string(i__offset + this.bb_pos);
        }
        return null;
    }

    public ByteBuffer osAsByteBuffer() {
        return __vector_as_bytebuffer(14, 1);
    }

    public ByteBuffer osInByteBuffer(ByteBuffer byteBuffer) {
        return __vector_in_bytebuffer(byteBuffer, 14, 1);
    }

    public static InteractionTraceBundle getRootAsInteractionTraceBundle(ByteBuffer byteBuffer, InteractionTraceBundle interactionTraceBundle) {
        byteBuffer.order(ByteOrder.LITTLE_ENDIAN);
        return interactionTraceBundle.__assign(byteBuffer.position() + byteBuffer.getInt(byteBuffer.position()), byteBuffer);
    }

    public InteractionTrace interactionTraces(InteractionTrace interactionTrace, int i10) {
        int i__offset = __offset(20);
        if (i__offset == 0) {
            return null;
        }
        return interactionTrace.__assign(__indirect((i10 * 4) + __vector(i__offset)), this.f5636bb);
    }
}
