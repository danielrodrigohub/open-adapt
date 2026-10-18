package a6;

import android.content.Context;
import android.graphics.Color;
import android.util.TypedValue;
import android.view.View;
import j6.b;

/* JADX INFO: compiled from: MaterialColors.java */
/* JADX INFO: loaded from: classes.dex */
public final class a {
    public static int a(Context context, int i10, int i11) {
        TypedValue typedValueA = b.a(context, i10);
        return typedValueA != null ? typedValueA.data : i11;
    }

    public static int b(View view, int i10) {
        return b.b(view.getContext(), i10, view.getClass().getCanonicalName());
    }

    public static boolean c(int i10) {
        boolean z10;
        if (i10 != 0) {
            ThreadLocal<double[]> threadLocal = a0.a.f3a;
            double[] dArr = threadLocal.get();
            if (dArr == null) {
                dArr = new double[3];
                threadLocal.set(dArr);
            }
            int iRed = Color.red(i10);
            int iGreen = Color.green(i10);
            int iBlue = Color.blue(i10);
            if (dArr.length != 3) {
                throw new IllegalArgumentException("outXyz must have a length of 3.");
            }
            double d10 = ((double) iRed) / 255.0d;
            double dPow = d10 < 0.04045d ? d10 / 12.92d : Math.pow((d10 + 0.055d) / 1.055d, 2.4d);
            double d11 = ((double) iGreen) / 255.0d;
            double dPow2 = d11 < 0.04045d ? d11 / 12.92d : Math.pow((d11 + 0.055d) / 1.055d, 2.4d);
            double d12 = ((double) iBlue) / 255.0d;
            double dPow3 = d12 < 0.04045d ? d12 / 12.92d : Math.pow((d12 + 0.055d) / 1.055d, 2.4d);
            z10 = false;
            dArr[0] = ((0.1805d * dPow3) + (0.3576d * dPow2) + (0.4124d * dPow)) * 100.0d;
            dArr[1] = ((0.0722d * dPow3) + (0.7152d * dPow2) + (0.2126d * dPow)) * 100.0d;
            dArr[2] = ((dPow3 * 0.9505d) + (dPow2 * 0.1192d) + (dPow * 0.0193d)) * 100.0d;
            if (dArr[1] / 100.0d > 0.5d) {
                return true;
            }
        } else {
            z10 = false;
        }
        return z10;
    }

    public static int d(int i10, int i11, float f10) {
        return a0.a.b(a0.a.e(i11, Math.round(Color.alpha(i11) * f10)), i10);
    }
}
