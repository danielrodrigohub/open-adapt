package kotlinx.serialization.json.internal;

import java.util.Arrays;
import p4.h;

/* JADX INFO: compiled from: JsonStringBuilder.kt */
/* JADX INFO: loaded from: classes.dex */
public final class JsonStringBuilder {
    private char[] array = CharArrayPool.INSTANCE.take();
    private int size;

    private final void appendStringSlowPath(int i10, int i11, String str) {
        byte b10;
        int length = str.length();
        if (i10 < length) {
            while (true) {
                int i12 = i10 + 1;
                int i13 = i11 + 2;
                ensureTotalCapacity(i13);
                char cCharAt = str.charAt(i10);
                if (cCharAt >= StringOpsKt.getESCAPE_MARKERS().length || (b10 = StringOpsKt.getESCAPE_MARKERS()[cCharAt]) == 0) {
                    int i14 = i11 + 1;
                    this.array[i11] = cCharAt;
                    i11 = i14;
                } else if (b10 == 1) {
                    String str2 = StringOpsKt.getESCAPE_STRINGS()[cCharAt];
                    h.g(str2);
                    ensureTotalCapacity(str2.length() + i11);
                    str2.getChars(0, str2.length(), this.array, i11);
                    int length2 = str2.length() + i11;
                    this.size = length2;
                    i11 = length2;
                } else {
                    char[] cArr = this.array;
                    cArr[i11] = '\\';
                    cArr[i11 + 1] = (char) b10;
                    this.size = i13;
                    i11 = i13;
                }
                if (i12 >= length) {
                    break;
                } else {
                    i10 = i12;
                }
            }
        }
        int i15 = i11 + 1;
        ensureTotalCapacity(i15);
        this.array[i11] = '\"';
        this.size = i15;
    }

    private final void ensureAdditionalCapacity(int i10) {
        ensureTotalCapacity(this.size + i10);
    }

    private final void ensureTotalCapacity(int i10) {
        char[] cArr = this.array;
        if (cArr.length <= i10) {
            int i11 = this.size * 2;
            if (i10 < i11) {
                i10 = i11;
            }
            char[] cArrCopyOf = Arrays.copyOf(cArr, i10);
            h.i(cArrCopyOf, "java.util.Arrays.copyOf(this, newSize)");
            this.array = cArrCopyOf;
        }
    }

    public final void append(long j10) {
        append(String.valueOf(j10));
    }

    public final void appendQuoted(String str) {
        h.j(str, "string");
        ensureAdditionalCapacity(str.length() + 2);
        char[] cArr = this.array;
        int i10 = this.size;
        int i11 = i10 + 1;
        cArr[i10] = '\"';
        int length = str.length();
        str.getChars(0, length, cArr, i11);
        int i12 = length + i11;
        if (i11 < i12) {
            int i13 = i11;
            while (true) {
                int i14 = i13 + 1;
                char c10 = cArr[i13];
                if (c10 < StringOpsKt.getESCAPE_MARKERS().length && StringOpsKt.getESCAPE_MARKERS()[c10] != 0) {
                    appendStringSlowPath(i13 - i11, i13, str);
                    return;
                } else if (i14 < i12) {
                    i13 = i14;
                }
            }
        }
        cArr[i12] = '\"';
        this.size = i12 + 1;
    }

    public final void release() {
        CharArrayPool.INSTANCE.release(this.array);
    }

    public String toString() {
        return new String(this.array, 0, this.size);
    }

    public final void append(char c10) {
        ensureAdditionalCapacity(1);
        char[] cArr = this.array;
        int i10 = this.size;
        this.size = i10 + 1;
        cArr[i10] = c10;
    }

    public final void append(String str) {
        h.j(str, "string");
        int length = str.length();
        ensureAdditionalCapacity(length);
        str.getChars(0, str.length(), this.array, this.size);
        this.size += length;
    }
}
