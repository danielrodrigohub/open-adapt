package com.newrelic.mobile.fbs.hex;

import com.newrelic.com.google.flatbuffers.FlatBufferBuilder;
import com.newrelic.com.google.flatbuffers.Table;
import com.newrelic.mobile.fbs.ios.Library;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;

/* JADX INFO: loaded from: classes.dex */
public final class HandledException extends Table {
    public static void addAppUuidHigh(FlatBufferBuilder flatBufferBuilder, long j10) {
        flatBufferBuilder.addLong(1, j10, 0L);
    }

    public static void addAppUuidLow(FlatBufferBuilder flatBufferBuilder, long j10) {
        flatBufferBuilder.addLong(0, j10, 0L);
    }

    public static void addCause(FlatBufferBuilder flatBufferBuilder, int i10) {
        flatBufferBuilder.addOffset(6, i10, 0);
    }

    public static void addLibraries(FlatBufferBuilder flatBufferBuilder, int i10) {
        flatBufferBuilder.addOffset(8, i10, 0);
    }

    public static void addMessage(FlatBufferBuilder flatBufferBuilder, int i10) {
        flatBufferBuilder.addOffset(5, i10, 0);
    }

    public static void addName(FlatBufferBuilder flatBufferBuilder, int i10) {
        flatBufferBuilder.addOffset(4, i10, 0);
    }

    public static void addSessionId(FlatBufferBuilder flatBufferBuilder, int i10) {
        flatBufferBuilder.addOffset(2, i10, 0);
    }

    public static void addThreads(FlatBufferBuilder flatBufferBuilder, int i10) {
        flatBufferBuilder.addOffset(7, i10, 0);
    }

    public static void addTimestampMs(FlatBufferBuilder flatBufferBuilder, long j10) {
        flatBufferBuilder.addLong(3, j10, 0L);
    }

    public static int createHandledException(FlatBufferBuilder flatBufferBuilder, long j10, long j11, int i10, long j12, int i11, int i12, int i13, int i14, int i15) {
        flatBufferBuilder.startObject(9);
        addTimestampMs(flatBufferBuilder, j12);
        addAppUuidHigh(flatBufferBuilder, j11);
        addAppUuidLow(flatBufferBuilder, j10);
        addLibraries(flatBufferBuilder, i15);
        addThreads(flatBufferBuilder, i14);
        addCause(flatBufferBuilder, i13);
        addMessage(flatBufferBuilder, i12);
        addName(flatBufferBuilder, i11);
        addSessionId(flatBufferBuilder, i10);
        return endHandledException(flatBufferBuilder);
    }

    public static int createLibrariesVector(FlatBufferBuilder flatBufferBuilder, int[] iArr) {
        flatBufferBuilder.startVector(4, iArr.length, 4);
        for (int length = iArr.length - 1; length >= 0; length--) {
            flatBufferBuilder.addOffset(iArr[length]);
        }
        return flatBufferBuilder.endVector();
    }

    public static int createThreadsVector(FlatBufferBuilder flatBufferBuilder, int[] iArr) {
        flatBufferBuilder.startVector(4, iArr.length, 4);
        for (int length = iArr.length - 1; length >= 0; length--) {
            flatBufferBuilder.addOffset(iArr[length]);
        }
        return flatBufferBuilder.endVector();
    }

    public static int endHandledException(FlatBufferBuilder flatBufferBuilder) {
        return flatBufferBuilder.endObject();
    }

    public static void finishHandledExceptionBuffer(FlatBufferBuilder flatBufferBuilder, int i10) {
        flatBufferBuilder.finish(i10);
    }

    public static void finishSizePrefixedHandledExceptionBuffer(FlatBufferBuilder flatBufferBuilder, int i10) {
        flatBufferBuilder.finishSizePrefixed(i10);
    }

    public static HandledException getRootAsHandledException(ByteBuffer byteBuffer) {
        return getRootAsHandledException(byteBuffer, new HandledException());
    }

    public static void startHandledException(FlatBufferBuilder flatBufferBuilder) {
        flatBufferBuilder.startObject(9);
    }

    public static void startLibrariesVector(FlatBufferBuilder flatBufferBuilder, int i10) {
        flatBufferBuilder.startVector(4, i10, 4);
    }

    public static void startThreadsVector(FlatBufferBuilder flatBufferBuilder, int i10) {
        flatBufferBuilder.startVector(4, i10, 4);
    }

    public HandledException __assign(int i10, ByteBuffer byteBuffer) {
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

    public long appUuidHigh() {
        int i__offset = __offset(6);
        if (i__offset != 0) {
            return this.f5636bb.getLong(i__offset + this.bb_pos);
        }
        return 0L;
    }

    public long appUuidLow() {
        int i__offset = __offset(4);
        if (i__offset != 0) {
            return this.f5636bb.getLong(i__offset + this.bb_pos);
        }
        return 0L;
    }

    public String cause() {
        int i__offset = __offset(16);
        if (i__offset != 0) {
            return __string(i__offset + this.bb_pos);
        }
        return null;
    }

    public ByteBuffer causeAsByteBuffer() {
        return __vector_as_bytebuffer(16, 1);
    }

    public ByteBuffer causeInByteBuffer(ByteBuffer byteBuffer) {
        return __vector_in_bytebuffer(byteBuffer, 16, 1);
    }

    public Library libraries(int i10) {
        return libraries(new Library(), i10);
    }

    public int librariesLength() {
        int i__offset = __offset(20);
        if (i__offset != 0) {
            return __vector_len(i__offset);
        }
        return 0;
    }

    public String message() {
        int i__offset = __offset(14);
        if (i__offset != 0) {
            return __string(i__offset + this.bb_pos);
        }
        return null;
    }

    public ByteBuffer messageAsByteBuffer() {
        return __vector_as_bytebuffer(14, 1);
    }

    public ByteBuffer messageInByteBuffer(ByteBuffer byteBuffer) {
        return __vector_in_bytebuffer(byteBuffer, 14, 1);
    }

    public boolean mutateAppUuidHigh(long j10) {
        int i__offset = __offset(6);
        if (i__offset == 0) {
            return false;
        }
        this.f5636bb.putLong(i__offset + this.bb_pos, j10);
        return true;
    }

    public boolean mutateAppUuidLow(long j10) {
        int i__offset = __offset(4);
        if (i__offset == 0) {
            return false;
        }
        this.f5636bb.putLong(i__offset + this.bb_pos, j10);
        return true;
    }

    public boolean mutateTimestampMs(long j10) {
        int i__offset = __offset(10);
        if (i__offset == 0) {
            return false;
        }
        this.f5636bb.putLong(i__offset + this.bb_pos, j10);
        return true;
    }

    public String name() {
        int i__offset = __offset(12);
        if (i__offset != 0) {
            return __string(i__offset + this.bb_pos);
        }
        return null;
    }

    public ByteBuffer nameAsByteBuffer() {
        return __vector_as_bytebuffer(12, 1);
    }

    public ByteBuffer nameInByteBuffer(ByteBuffer byteBuffer) {
        return __vector_in_bytebuffer(byteBuffer, 12, 1);
    }

    public String sessionId() {
        int i__offset = __offset(8);
        if (i__offset != 0) {
            return __string(i__offset + this.bb_pos);
        }
        return null;
    }

    public ByteBuffer sessionIdAsByteBuffer() {
        return __vector_as_bytebuffer(8, 1);
    }

    public ByteBuffer sessionIdInByteBuffer(ByteBuffer byteBuffer) {
        return __vector_in_bytebuffer(byteBuffer, 8, 1);
    }

    public Thread threads(int i10) {
        return threads(new Thread(), i10);
    }

    public int threadsLength() {
        int i__offset = __offset(18);
        if (i__offset != 0) {
            return __vector_len(i__offset);
        }
        return 0;
    }

    public long timestampMs() {
        int i__offset = __offset(10);
        if (i__offset != 0) {
            return this.f5636bb.getLong(i__offset + this.bb_pos);
        }
        return 0L;
    }

    public static HandledException getRootAsHandledException(ByteBuffer byteBuffer, HandledException handledException) {
        byteBuffer.order(ByteOrder.LITTLE_ENDIAN);
        return handledException.__assign(byteBuffer.position() + byteBuffer.getInt(byteBuffer.position()), byteBuffer);
    }

    public Library libraries(Library library, int i10) {
        int i__offset = __offset(20);
        if (i__offset == 0) {
            return null;
        }
        return library.__assign(__indirect((i10 * 4) + __vector(i__offset)), this.f5636bb);
    }

    public Thread threads(Thread thread, int i10) {
        int i__offset = __offset(18);
        if (i__offset == 0) {
            return null;
        }
        return thread.__assign(__indirect((i10 * 4) + __vector(i__offset)), this.f5636bb);
    }
}
