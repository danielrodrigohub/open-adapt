package kotlinx.serialization.internal;

import java.util.Arrays;
import p4.h;

/* JADX INFO: compiled from: PrimitiveArraysSerializers.kt */
/* JADX INFO: loaded from: classes.dex */
public final class CharArrayBuilder extends PrimitiveArrayBuilder<char[]> {
    private char[] buffer;
    private int position;

    public CharArrayBuilder(char[] cArr) {
        h.j(cArr, "bufferWithData");
        this.buffer = cArr;
        this.position = cArr.length;
        ensureCapacity$kotlinx_serialization_core(10);
    }

    public final void append$kotlinx_serialization_core(char c10) {
        PrimitiveArrayBuilder.ensureCapacity$kotlinx_serialization_core$default(this, 0, 1, null);
        char[] cArr = this.buffer;
        int position$kotlinx_serialization_core = getPosition$kotlinx_serialization_core();
        this.position = position$kotlinx_serialization_core + 1;
        cArr[position$kotlinx_serialization_core] = c10;
    }

    @Override // kotlinx.serialization.internal.PrimitiveArrayBuilder
    public void ensureCapacity$kotlinx_serialization_core(int i10) {
        char[] cArr = this.buffer;
        if (cArr.length < i10) {
            int length = cArr.length * 2;
            if (i10 < length) {
                i10 = length;
            }
            char[] cArrCopyOf = Arrays.copyOf(cArr, i10);
            h.i(cArrCopyOf, "java.util.Arrays.copyOf(this, newSize)");
            this.buffer = cArrCopyOf;
        }
    }

    @Override // kotlinx.serialization.internal.PrimitiveArrayBuilder
    public int getPosition$kotlinx_serialization_core() {
        return this.position;
    }

    @Override // kotlinx.serialization.internal.PrimitiveArrayBuilder
    public char[] build$kotlinx_serialization_core() {
        char[] cArrCopyOf = Arrays.copyOf(this.buffer, getPosition$kotlinx_serialization_core());
        h.i(cArrCopyOf, "java.util.Arrays.copyOf(this, newSize)");
        return cArrCopyOf;
    }
}
