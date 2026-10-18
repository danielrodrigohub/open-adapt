package com.newrelic.mobile.fbs;

import com.newrelic.com.google.flatbuffers.FlatBufferBuilder;
import com.newrelic.com.google.flatbuffers.Table;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;

/* JADX INFO: loaded from: classes.dex */
public final class BoolSessionAttribute extends Table {
    public static BoolSessionAttribute __lookup_by_key(BoolSessionAttribute boolSessionAttribute, int i10, String str, ByteBuffer byteBuffer) {
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
                    if (boolSessionAttribute == null) {
                        boolSessionAttribute = new BoolSessionAttribute();
                    }
                    return boolSessionAttribute.__assign(i__indirect, byteBuffer);
                }
                int i14 = i13 + 1;
                i12 += i14;
                i11 -= i14;
            }
        }
        return null;
    }

    public static void addName(FlatBufferBuilder flatBufferBuilder, int i10) {
        flatBufferBuilder.addOffset(0, i10, 0);
    }

    public static void addValue(FlatBufferBuilder flatBufferBuilder, boolean z10) {
        flatBufferBuilder.addBoolean(1, z10, false);
    }

    public static int createBoolSessionAttribute(FlatBufferBuilder flatBufferBuilder, int i10, boolean z10) {
        flatBufferBuilder.startObject(2);
        addName(flatBufferBuilder, i10);
        addValue(flatBufferBuilder, z10);
        return endBoolSessionAttribute(flatBufferBuilder);
    }

    public static int endBoolSessionAttribute(FlatBufferBuilder flatBufferBuilder) {
        int iEndObject = flatBufferBuilder.endObject();
        flatBufferBuilder.required(iEndObject, 4);
        return iEndObject;
    }

    public static BoolSessionAttribute getRootAsBoolSessionAttribute(ByteBuffer byteBuffer) {
        return getRootAsBoolSessionAttribute(byteBuffer, new BoolSessionAttribute());
    }

    public static void startBoolSessionAttribute(FlatBufferBuilder flatBufferBuilder) {
        flatBufferBuilder.startObject(2);
    }

    public BoolSessionAttribute __assign(int i10, ByteBuffer byteBuffer) {
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

    @Override // com.newrelic.com.google.flatbuffers.Table
    public int keysCompare(Integer num, Integer num2, ByteBuffer byteBuffer) {
        return Table.compareStrings(Table.__offset(4, num.intValue(), byteBuffer), Table.__offset(4, num2.intValue(), byteBuffer), byteBuffer);
    }

    public boolean mutateValue(boolean z10) {
        int i__offset = __offset(6);
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

    public boolean value() {
        int i__offset = __offset(6);
        return (i__offset == 0 || this.f5636bb.get(i__offset + this.bb_pos) == 0) ? false : true;
    }

    public static BoolSessionAttribute getRootAsBoolSessionAttribute(ByteBuffer byteBuffer, BoolSessionAttribute boolSessionAttribute) {
        byteBuffer.order(ByteOrder.LITTLE_ENDIAN);
        return boolSessionAttribute.__assign(byteBuffer.position() + byteBuffer.getInt(byteBuffer.position()), byteBuffer);
    }
}
