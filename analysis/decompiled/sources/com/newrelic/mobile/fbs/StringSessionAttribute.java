package com.newrelic.mobile.fbs;

import com.newrelic.com.google.flatbuffers.FlatBufferBuilder;
import com.newrelic.com.google.flatbuffers.Table;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;

/* JADX INFO: loaded from: classes.dex */
public final class StringSessionAttribute extends Table {
    public static StringSessionAttribute __lookup_by_key(StringSessionAttribute stringSessionAttribute, int i10, String str, ByteBuffer byteBuffer) {
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
                    if (stringSessionAttribute == null) {
                        stringSessionAttribute = new StringSessionAttribute();
                    }
                    return stringSessionAttribute.__assign(i__indirect, byteBuffer);
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

    public static void addValue(FlatBufferBuilder flatBufferBuilder, int i10) {
        flatBufferBuilder.addOffset(1, i10, 0);
    }

    public static int createStringSessionAttribute(FlatBufferBuilder flatBufferBuilder, int i10, int i11) {
        flatBufferBuilder.startObject(2);
        addValue(flatBufferBuilder, i11);
        addName(flatBufferBuilder, i10);
        return endStringSessionAttribute(flatBufferBuilder);
    }

    public static int endStringSessionAttribute(FlatBufferBuilder flatBufferBuilder) {
        int iEndObject = flatBufferBuilder.endObject();
        flatBufferBuilder.required(iEndObject, 4);
        return iEndObject;
    }

    public static StringSessionAttribute getRootAsStringSessionAttribute(ByteBuffer byteBuffer) {
        return getRootAsStringSessionAttribute(byteBuffer, new StringSessionAttribute());
    }

    public static void startStringSessionAttribute(FlatBufferBuilder flatBufferBuilder) {
        flatBufferBuilder.startObject(2);
    }

    public StringSessionAttribute __assign(int i10, ByteBuffer byteBuffer) {
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

    public String value() {
        int i__offset = __offset(6);
        if (i__offset != 0) {
            return __string(i__offset + this.bb_pos);
        }
        return null;
    }

    public ByteBuffer valueAsByteBuffer() {
        return __vector_as_bytebuffer(6, 1);
    }

    public ByteBuffer valueInByteBuffer(ByteBuffer byteBuffer) {
        return __vector_in_bytebuffer(byteBuffer, 6, 1);
    }

    public static StringSessionAttribute getRootAsStringSessionAttribute(ByteBuffer byteBuffer, StringSessionAttribute stringSessionAttribute) {
        byteBuffer.order(ByteOrder.LITTLE_ENDIAN);
        return stringSessionAttribute.__assign(byteBuffer.position() + byteBuffer.getInt(byteBuffer.position()), byteBuffer);
    }
}
