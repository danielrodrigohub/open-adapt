package com.newrelic.com.google.flatbuffers;

import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.charset.Charset;
import java.util.Arrays;
import java.util.Comparator;

/* JADX INFO: loaded from: classes.dex */
public class Table {
    public static final ThreadLocal<Charset> UTF8_CHARSET = new ThreadLocal<Charset>() { // from class: com.newrelic.com.google.flatbuffers.Table.1
        @Override // java.lang.ThreadLocal
        public Charset initialValue() {
            return Charset.forName("UTF-8");
        }
    };

    /* JADX INFO: renamed from: bb, reason: collision with root package name */
    public ByteBuffer f5636bb;
    public int bb_pos;
    public Utf8 utf8 = Utf8.getDefault();
    public int vtable_size;
    public int vtable_start;

    public static boolean __has_identifier(ByteBuffer byteBuffer, String str) {
        if (str.length() != 4) {
            throw new AssertionError("FlatBuffers: file identifier must be length 4");
        }
        for (int i10 = 0; i10 < 4; i10++) {
            if (str.charAt(i10) != ((char) byteBuffer.get(byteBuffer.position() + 4 + i10))) {
                return false;
            }
        }
        return true;
    }

    public static int compareStrings(int i10, int i11, ByteBuffer byteBuffer) {
        int i12 = byteBuffer.getInt(i10) + i10;
        int i13 = byteBuffer.getInt(i11) + i11;
        int i14 = byteBuffer.getInt(i12);
        int i15 = byteBuffer.getInt(i13);
        int i16 = i12 + 4;
        int i17 = i13 + 4;
        int iMin = Math.min(i14, i15);
        for (int i18 = 0; i18 < iMin; i18++) {
            int i19 = i18 + i16;
            int i20 = i18 + i17;
            if (byteBuffer.get(i19) != byteBuffer.get(i20)) {
                return byteBuffer.get(i19) - byteBuffer.get(i20);
            }
        }
        return i14 - i15;
    }

    public int __indirect(int i10) {
        return this.f5636bb.getInt(i10) + i10;
    }

    public int __offset(int i10) {
        if (i10 < this.vtable_size) {
            return this.f5636bb.getShort(this.vtable_start + i10);
        }
        return 0;
    }

    public void __reset() {
        this.f5636bb = null;
        this.bb_pos = 0;
        this.vtable_start = 0;
        this.vtable_size = 0;
    }

    public String __string(int i10) {
        int i11 = this.f5636bb.getInt(i10) + i10;
        return this.utf8.decodeUtf8(this.f5636bb, i11 + 4, this.f5636bb.getInt(i11));
    }

    public Table __union(Table table, int i10) {
        int i11 = i10 + this.bb_pos;
        int i12 = this.f5636bb.getInt(i11) + i11;
        table.bb_pos = i12;
        table.f5636bb = this.f5636bb;
        int i13 = i12 - this.f5636bb.getInt(i12);
        table.vtable_start = i13;
        table.vtable_size = this.f5636bb.getShort(i13);
        return table;
    }

    public int __vector(int i10) {
        int i11 = i10 + this.bb_pos;
        return this.f5636bb.getInt(i11) + i11 + 4;
    }

    public ByteBuffer __vector_as_bytebuffer(int i10, int i11) {
        int i__offset = __offset(i10);
        if (i__offset == 0) {
            return null;
        }
        ByteBuffer byteBufferOrder = this.f5636bb.duplicate().order(ByteOrder.LITTLE_ENDIAN);
        int i__vector = __vector(i__offset);
        byteBufferOrder.position(i__vector);
        byteBufferOrder.limit((__vector_len(i__offset) * i11) + i__vector);
        return byteBufferOrder;
    }

    public ByteBuffer __vector_in_bytebuffer(ByteBuffer byteBuffer, int i10, int i11) {
        int i__offset = __offset(i10);
        if (i__offset == 0) {
            return null;
        }
        int i__vector = __vector(i__offset);
        byteBuffer.rewind();
        byteBuffer.limit((__vector_len(i__offset) * i11) + i__vector);
        byteBuffer.position(i__vector);
        return byteBuffer;
    }

    public int __vector_len(int i10) {
        int i11 = i10 + this.bb_pos;
        return this.f5636bb.getInt(this.f5636bb.getInt(i11) + i11);
    }

    public ByteBuffer getByteBuffer() {
        return this.f5636bb;
    }

    public int keysCompare(Integer num, Integer num2, ByteBuffer byteBuffer) {
        return 0;
    }

    public void sortTables(int[] iArr, final ByteBuffer byteBuffer) {
        Integer[] numArr = new Integer[iArr.length];
        for (int i10 = 0; i10 < iArr.length; i10++) {
            numArr[i10] = Integer.valueOf(iArr[i10]);
        }
        Arrays.sort(numArr, new Comparator<Integer>() { // from class: com.newrelic.com.google.flatbuffers.Table.2
            @Override // java.util.Comparator
            public int compare(Integer num, Integer num2) {
                return Table.this.keysCompare(num, num2, byteBuffer);
            }
        });
        for (int i11 = 0; i11 < iArr.length; i11++) {
            iArr[i11] = numArr[i11].intValue();
        }
    }

    public static int __indirect(int i10, ByteBuffer byteBuffer) {
        return byteBuffer.getInt(i10) + i10;
    }

    public static int __offset(int i10, int i11, ByteBuffer byteBuffer) {
        int iCapacity = byteBuffer.capacity() - i11;
        return byteBuffer.getShort((i10 + iCapacity) - byteBuffer.getInt(iCapacity)) + iCapacity;
    }

    public static int compareStrings(int i10, byte[] bArr, ByteBuffer byteBuffer) {
        int i11 = byteBuffer.getInt(i10) + i10;
        int i12 = byteBuffer.getInt(i11);
        int length = bArr.length;
        int i13 = i11 + 4;
        int iMin = Math.min(i12, length);
        for (int i14 = 0; i14 < iMin; i14++) {
            int i15 = i14 + i13;
            if (byteBuffer.get(i15) != bArr[i14]) {
                return byteBuffer.get(i15) - bArr[i14];
            }
        }
        return i12 - length;
    }
}
