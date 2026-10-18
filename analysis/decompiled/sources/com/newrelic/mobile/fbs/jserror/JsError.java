package com.newrelic.mobile.fbs.jserror;

import com.newrelic.com.google.flatbuffers.FlatBufferBuilder;
import com.newrelic.com.google.flatbuffers.Table;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;

/* JADX INFO: loaded from: classes.dex */
public final class JsError extends Table {
    public static void addBuildId(FlatBufferBuilder flatBufferBuilder, int i10) {
        flatBufferBuilder.addOffset(4, i10, 0);
    }

    public static void addBundleId(FlatBufferBuilder flatBufferBuilder, int i10) {
        flatBufferBuilder.addOffset(5, i10, 0);
    }

    public static void addFatal(FlatBufferBuilder flatBufferBuilder, boolean z10) {
        flatBufferBuilder.addBoolean(2, z10, false);
    }

    public static void addMessage(FlatBufferBuilder flatBufferBuilder, int i10) {
        flatBufferBuilder.addOffset(1, i10, 0);
    }

    public static void addName(FlatBufferBuilder flatBufferBuilder, int i10) {
        flatBufferBuilder.addOffset(0, i10, 0);
    }

    public static void addThread(FlatBufferBuilder flatBufferBuilder, int i10) {
        flatBufferBuilder.addOffset(3, i10, 0);
    }

    public static int createJsError(FlatBufferBuilder flatBufferBuilder, int i10, int i11, boolean z10, int i12, int i13, int i14) {
        flatBufferBuilder.startObject(6);
        addBundleId(flatBufferBuilder, i14);
        addBuildId(flatBufferBuilder, i13);
        addThread(flatBufferBuilder, i12);
        addMessage(flatBufferBuilder, i11);
        addName(flatBufferBuilder, i10);
        addFatal(flatBufferBuilder, z10);
        return endJsError(flatBufferBuilder);
    }

    public static int endJsError(FlatBufferBuilder flatBufferBuilder) {
        return flatBufferBuilder.endObject();
    }

    public static void finishJsErrorBuffer(FlatBufferBuilder flatBufferBuilder, int i10) {
        flatBufferBuilder.finish(i10);
    }

    public static void finishSizePrefixedJsErrorBuffer(FlatBufferBuilder flatBufferBuilder, int i10) {
        flatBufferBuilder.finishSizePrefixed(i10);
    }

    public static JsError getRootAsJsError(ByteBuffer byteBuffer) {
        return getRootAsJsError(byteBuffer, new JsError());
    }

    public static void startJsError(FlatBufferBuilder flatBufferBuilder) {
        flatBufferBuilder.startObject(6);
    }

    public JsError __assign(int i10, ByteBuffer byteBuffer) {
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

    public String buildId() {
        int i__offset = __offset(12);
        if (i__offset != 0) {
            return __string(i__offset + this.bb_pos);
        }
        return null;
    }

    public ByteBuffer buildIdAsByteBuffer() {
        return __vector_as_bytebuffer(12, 1);
    }

    public ByteBuffer buildIdInByteBuffer(ByteBuffer byteBuffer) {
        return __vector_in_bytebuffer(byteBuffer, 12, 1);
    }

    public String bundleId() {
        int i__offset = __offset(14);
        if (i__offset != 0) {
            return __string(i__offset + this.bb_pos);
        }
        return null;
    }

    public ByteBuffer bundleIdAsByteBuffer() {
        return __vector_as_bytebuffer(14, 1);
    }

    public ByteBuffer bundleIdInByteBuffer(ByteBuffer byteBuffer) {
        return __vector_in_bytebuffer(byteBuffer, 14, 1);
    }

    public boolean fatal() {
        int i__offset = __offset(8);
        return (i__offset == 0 || this.f5636bb.get(i__offset + this.bb_pos) == 0) ? false : true;
    }

    public String message() {
        int i__offset = __offset(6);
        if (i__offset != 0) {
            return __string(i__offset + this.bb_pos);
        }
        return null;
    }

    public ByteBuffer messageAsByteBuffer() {
        return __vector_as_bytebuffer(6, 1);
    }

    public ByteBuffer messageInByteBuffer(ByteBuffer byteBuffer) {
        return __vector_in_bytebuffer(byteBuffer, 6, 1);
    }

    public boolean mutateFatal(boolean z10) {
        int i__offset = __offset(8);
        if (i__offset == 0) {
            return false;
        }
        this.f5636bb.put(i__offset + this.bb_pos, z10 ? (byte) 1 : (byte) 0);
        return true;
    }

    public String name() {
        int i__offset = __offset(4);
        if (i__offset != 0) {
            return __string(i__offset + this.bb_pos);
        }
        return null;
    }

    public ByteBuffer nameAsByteBuffer() {
        return __vector_as_bytebuffer(4, 1);
    }

    public ByteBuffer nameInByteBuffer(ByteBuffer byteBuffer) {
        return __vector_in_bytebuffer(byteBuffer, 4, 1);
    }

    public Thread thread() {
        return thread(new Thread());
    }

    public static JsError getRootAsJsError(ByteBuffer byteBuffer, JsError jsError) {
        byteBuffer.order(ByteOrder.LITTLE_ENDIAN);
        return jsError.__assign(byteBuffer.position() + byteBuffer.getInt(byteBuffer.position()), byteBuffer);
    }

    public Thread thread(Thread thread) {
        int i__offset = __offset(10);
        if (i__offset != 0) {
            return thread.__assign(__indirect(i__offset + this.bb_pos), this.f5636bb);
        }
        return null;
    }
}
