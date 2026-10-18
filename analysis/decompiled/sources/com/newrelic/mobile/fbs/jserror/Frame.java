package com.newrelic.mobile.fbs.jserror;

import com.newrelic.com.google.flatbuffers.FlatBufferBuilder;
import com.newrelic.com.google.flatbuffers.Table;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;

/* JADX INFO: loaded from: classes.dex */
public final class Frame extends Table {
    public static void addColumn(FlatBufferBuilder flatBufferBuilder, int i10) {
        flatBufferBuilder.addInt(3, i10, 0);
    }

    public static void addFileName(FlatBufferBuilder flatBufferBuilder, int i10) {
        flatBufferBuilder.addOffset(1, i10, 0);
    }

    public static void addLineNumber(FlatBufferBuilder flatBufferBuilder, int i10) {
        flatBufferBuilder.addInt(2, i10, 0);
    }

    public static void addMethod(FlatBufferBuilder flatBufferBuilder, int i10) {
        flatBufferBuilder.addOffset(0, i10, 0);
    }

    public static int createFrame(FlatBufferBuilder flatBufferBuilder, int i10, int i11, int i12, int i13) {
        flatBufferBuilder.startObject(4);
        addColumn(flatBufferBuilder, i13);
        addLineNumber(flatBufferBuilder, i12);
        addFileName(flatBufferBuilder, i11);
        addMethod(flatBufferBuilder, i10);
        return endFrame(flatBufferBuilder);
    }

    public static int endFrame(FlatBufferBuilder flatBufferBuilder) {
        return flatBufferBuilder.endObject();
    }

    public static Frame getRootAsFrame(ByteBuffer byteBuffer) {
        return getRootAsFrame(byteBuffer, new Frame());
    }

    public static void startFrame(FlatBufferBuilder flatBufferBuilder) {
        flatBufferBuilder.startObject(4);
    }

    public Frame __assign(int i10, ByteBuffer byteBuffer) {
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

    public int column() {
        int i__offset = __offset(10);
        if (i__offset != 0) {
            return this.f5636bb.getInt(i__offset + this.bb_pos);
        }
        return 0;
    }

    public String fileName() {
        int i__offset = __offset(6);
        if (i__offset != 0) {
            return __string(i__offset + this.bb_pos);
        }
        return null;
    }

    public ByteBuffer fileNameAsByteBuffer() {
        return __vector_as_bytebuffer(6, 1);
    }

    public ByteBuffer fileNameInByteBuffer(ByteBuffer byteBuffer) {
        return __vector_in_bytebuffer(byteBuffer, 6, 1);
    }

    public int lineNumber() {
        int i__offset = __offset(8);
        if (i__offset != 0) {
            return this.f5636bb.getInt(i__offset + this.bb_pos);
        }
        return 0;
    }

    public String method() {
        int i__offset = __offset(4);
        if (i__offset != 0) {
            return __string(i__offset + this.bb_pos);
        }
        return null;
    }

    public ByteBuffer methodAsByteBuffer() {
        return __vector_as_bytebuffer(4, 1);
    }

    public ByteBuffer methodInByteBuffer(ByteBuffer byteBuffer) {
        return __vector_in_bytebuffer(byteBuffer, 4, 1);
    }

    public boolean mutateColumn(int i10) {
        int i__offset = __offset(10);
        if (i__offset == 0) {
            return false;
        }
        this.f5636bb.putInt(i__offset + this.bb_pos, i10);
        return true;
    }

    public boolean mutateLineNumber(int i10) {
        int i__offset = __offset(8);
        if (i__offset == 0) {
            return false;
        }
        this.f5636bb.putInt(i__offset + this.bb_pos, i10);
        return true;
    }

    public static Frame getRootAsFrame(ByteBuffer byteBuffer, Frame frame) {
        byteBuffer.order(ByteOrder.LITTLE_ENDIAN);
        return frame.__assign(byteBuffer.position() + byteBuffer.getInt(byteBuffer.position()), byteBuffer);
    }
}
