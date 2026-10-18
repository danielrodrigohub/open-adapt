package com.newrelic.mobile.fbs.jserror;

import com.newrelic.com.google.flatbuffers.FlatBufferBuilder;
import com.newrelic.com.google.flatbuffers.Table;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;

/* JADX INFO: loaded from: classes.dex */
public final class Thread extends Table {
    public static void addFrames(FlatBufferBuilder flatBufferBuilder, int i10) {
        flatBufferBuilder.addOffset(0, i10, 0);
    }

    public static int createFramesVector(FlatBufferBuilder flatBufferBuilder, int[] iArr) {
        flatBufferBuilder.startVector(4, iArr.length, 4);
        for (int length = iArr.length - 1; length >= 0; length--) {
            flatBufferBuilder.addOffset(iArr[length]);
        }
        return flatBufferBuilder.endVector();
    }

    public static int createThread(FlatBufferBuilder flatBufferBuilder, int i10) {
        flatBufferBuilder.startObject(1);
        addFrames(flatBufferBuilder, i10);
        return endThread(flatBufferBuilder);
    }

    public static int endThread(FlatBufferBuilder flatBufferBuilder) {
        return flatBufferBuilder.endObject();
    }

    public static Thread getRootAsThread(ByteBuffer byteBuffer) {
        return getRootAsThread(byteBuffer, new Thread());
    }

    public static void startFramesVector(FlatBufferBuilder flatBufferBuilder, int i10) {
        flatBufferBuilder.startVector(4, i10, 4);
    }

    public static void startThread(FlatBufferBuilder flatBufferBuilder) {
        flatBufferBuilder.startObject(1);
    }

    public Thread __assign(int i10, ByteBuffer byteBuffer) {
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

    public Frame frames(int i10) {
        return frames(new Frame(), i10);
    }

    public int framesLength() {
        int i__offset = __offset(4);
        if (i__offset != 0) {
            return __vector_len(i__offset);
        }
        return 0;
    }

    public static Thread getRootAsThread(ByteBuffer byteBuffer, Thread thread) {
        byteBuffer.order(ByteOrder.LITTLE_ENDIAN);
        return thread.__assign(byteBuffer.position() + byteBuffer.getInt(byteBuffer.position()), byteBuffer);
    }

    public Frame frames(Frame frame, int i10) {
        int i__offset = __offset(4);
        if (i__offset == 0) {
            return null;
        }
        return frame.__assign(__indirect((i10 * 4) + __vector(i__offset)), this.f5636bb);
    }
}
