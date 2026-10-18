package com.newrelic.mobile.fbs;

import com.newrelic.com.google.flatbuffers.FlatBufferBuilder;
import com.newrelic.com.google.flatbuffers.Table;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;

/* JADX INFO: loaded from: classes.dex */
public final class HexAgentDataBundle extends Table {
    public static void addHexAgentData(FlatBufferBuilder flatBufferBuilder, int i10) {
        flatBufferBuilder.addOffset(0, i10, 0);
    }

    public static int createHexAgentDataBundle(FlatBufferBuilder flatBufferBuilder, int i10) {
        flatBufferBuilder.startObject(1);
        addHexAgentData(flatBufferBuilder, i10);
        return endHexAgentDataBundle(flatBufferBuilder);
    }

    public static int createHexAgentDataVector(FlatBufferBuilder flatBufferBuilder, int[] iArr) {
        flatBufferBuilder.startVector(4, iArr.length, 4);
        for (int length = iArr.length - 1; length >= 0; length--) {
            flatBufferBuilder.addOffset(iArr[length]);
        }
        return flatBufferBuilder.endVector();
    }

    public static int endHexAgentDataBundle(FlatBufferBuilder flatBufferBuilder) {
        return flatBufferBuilder.endObject();
    }

    public static void finishHexAgentDataBundleBuffer(FlatBufferBuilder flatBufferBuilder, int i10) {
        flatBufferBuilder.finish(i10);
    }

    public static void finishSizePrefixedHexAgentDataBundleBuffer(FlatBufferBuilder flatBufferBuilder, int i10) {
        flatBufferBuilder.finishSizePrefixed(i10);
    }

    public static HexAgentDataBundle getRootAsHexAgentDataBundle(ByteBuffer byteBuffer) {
        return getRootAsHexAgentDataBundle(byteBuffer, new HexAgentDataBundle());
    }

    public static void startHexAgentDataBundle(FlatBufferBuilder flatBufferBuilder) {
        flatBufferBuilder.startObject(1);
    }

    public static void startHexAgentDataVector(FlatBufferBuilder flatBufferBuilder, int i10) {
        flatBufferBuilder.startVector(4, i10, 4);
    }

    public HexAgentDataBundle __assign(int i10, ByteBuffer byteBuffer) {
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

    public HexAgentData hexAgentData(int i10) {
        return hexAgentData(new HexAgentData(), i10);
    }

    public int hexAgentDataLength() {
        int i__offset = __offset(4);
        if (i__offset != 0) {
            return __vector_len(i__offset);
        }
        return 0;
    }

    public static HexAgentDataBundle getRootAsHexAgentDataBundle(ByteBuffer byteBuffer, HexAgentDataBundle hexAgentDataBundle) {
        byteBuffer.order(ByteOrder.LITTLE_ENDIAN);
        return hexAgentDataBundle.__assign(byteBuffer.position() + byteBuffer.getInt(byteBuffer.position()), byteBuffer);
    }

    public HexAgentData hexAgentData(HexAgentData hexAgentData, int i10) {
        int i__offset = __offset(4);
        if (i__offset == 0) {
            return null;
        }
        return hexAgentData.__assign(__indirect((i10 * 4) + __vector(i__offset)), this.f5636bb);
    }
}
