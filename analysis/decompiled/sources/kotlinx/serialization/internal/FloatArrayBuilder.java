package kotlinx.serialization.internal;

import java.util.Arrays;
import p4.h;

/* JADX INFO: compiled from: PrimitiveArraysSerializers.kt */
/* JADX INFO: loaded from: classes.dex */
public final class FloatArrayBuilder extends PrimitiveArrayBuilder<float[]> {
    private float[] buffer;
    private int position;

    public FloatArrayBuilder(float[] fArr) {
        h.j(fArr, "bufferWithData");
        this.buffer = fArr;
        this.position = fArr.length;
        ensureCapacity$kotlinx_serialization_core(10);
    }

    public final void append$kotlinx_serialization_core(float f10) {
        PrimitiveArrayBuilder.ensureCapacity$kotlinx_serialization_core$default(this, 0, 1, null);
        float[] fArr = this.buffer;
        int position$kotlinx_serialization_core = getPosition$kotlinx_serialization_core();
        this.position = position$kotlinx_serialization_core + 1;
        fArr[position$kotlinx_serialization_core] = f10;
    }

    @Override // kotlinx.serialization.internal.PrimitiveArrayBuilder
    public void ensureCapacity$kotlinx_serialization_core(int i10) {
        float[] fArr = this.buffer;
        if (fArr.length < i10) {
            int length = fArr.length * 2;
            if (i10 < length) {
                i10 = length;
            }
            float[] fArrCopyOf = Arrays.copyOf(fArr, i10);
            h.i(fArrCopyOf, "java.util.Arrays.copyOf(this, newSize)");
            this.buffer = fArrCopyOf;
        }
    }

    @Override // kotlinx.serialization.internal.PrimitiveArrayBuilder
    public int getPosition$kotlinx_serialization_core() {
        return this.position;
    }

    @Override // kotlinx.serialization.internal.PrimitiveArrayBuilder
    public float[] build$kotlinx_serialization_core() {
        float[] fArrCopyOf = Arrays.copyOf(this.buffer, getPosition$kotlinx_serialization_core());
        h.i(fArrCopyOf, "java.util.Arrays.copyOf(this, newSize)");
        return fArrCopyOf;
    }
}
