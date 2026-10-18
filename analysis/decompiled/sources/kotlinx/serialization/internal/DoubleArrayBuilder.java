package kotlinx.serialization.internal;

import java.util.Arrays;
import p4.h;

/* JADX INFO: compiled from: PrimitiveArraysSerializers.kt */
/* JADX INFO: loaded from: classes.dex */
public final class DoubleArrayBuilder extends PrimitiveArrayBuilder<double[]> {
    private double[] buffer;
    private int position;

    public DoubleArrayBuilder(double[] dArr) {
        h.j(dArr, "bufferWithData");
        this.buffer = dArr;
        this.position = dArr.length;
        ensureCapacity$kotlinx_serialization_core(10);
    }

    public final void append$kotlinx_serialization_core(double d10) {
        PrimitiveArrayBuilder.ensureCapacity$kotlinx_serialization_core$default(this, 0, 1, null);
        double[] dArr = this.buffer;
        int position$kotlinx_serialization_core = getPosition$kotlinx_serialization_core();
        this.position = position$kotlinx_serialization_core + 1;
        dArr[position$kotlinx_serialization_core] = d10;
    }

    @Override // kotlinx.serialization.internal.PrimitiveArrayBuilder
    public void ensureCapacity$kotlinx_serialization_core(int i10) {
        double[] dArr = this.buffer;
        if (dArr.length < i10) {
            int length = dArr.length * 2;
            if (i10 < length) {
                i10 = length;
            }
            double[] dArrCopyOf = Arrays.copyOf(dArr, i10);
            h.i(dArrCopyOf, "java.util.Arrays.copyOf(this, newSize)");
            this.buffer = dArrCopyOf;
        }
    }

    @Override // kotlinx.serialization.internal.PrimitiveArrayBuilder
    public int getPosition$kotlinx_serialization_core() {
        return this.position;
    }

    @Override // kotlinx.serialization.internal.PrimitiveArrayBuilder
    public double[] build$kotlinx_serialization_core() {
        double[] dArrCopyOf = Arrays.copyOf(this.buffer, getPosition$kotlinx_serialization_core());
        h.i(dArrCopyOf, "java.util.Arrays.copyOf(this, newSize)");
        return dArrCopyOf;
    }
}
