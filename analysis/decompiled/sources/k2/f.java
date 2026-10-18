package k2;

import a2.j;
import android.graphics.PointF;
import java.util.List;

/* JADX INFO: compiled from: MiscUtils.java */
/* JADX INFO: loaded from: classes.dex */
public final class f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final PointF f9637a = new PointF();

    public static PointF a(PointF pointF, PointF pointF2) {
        return new PointF(pointF.x + pointF2.x, pointF.y + pointF2.y);
    }

    public static float b(float f10, float f11, float f12) {
        return Math.max(f11, Math.min(f12, f10));
    }

    public static int c(int i10) {
        return Math.max(0, Math.min(255, i10));
    }

    public static int d(float f10, float f11) {
        int i10 = (int) f10;
        int i11 = (int) f11;
        int i12 = i10 / i11;
        int i13 = i10 % i11;
        if (!((i10 ^ i11) >= 0) && i13 != 0) {
            i12--;
        }
        return i10 - (i11 * i12);
    }

    public static int e(int i10, int i11, float f10) {
        return (int) ((f10 * (i11 - i10)) + i10);
    }

    public static void f(d2.e eVar, int i10, List<d2.e> list, d2.e eVar2, j jVar) {
        if (eVar.c(jVar.getName(), i10)) {
            list.add(eVar2.a(jVar.getName()).g(jVar));
        }
    }
}
