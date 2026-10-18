package y0;

import android.os.Bundle;
import java.util.Objects;
import n3.c2;
import n3.j1;
import n3.o1;
import p4.t0;

/* JADX INFO: compiled from: R8$$SyntheticClass */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class l implements m5.o.a, n3.h.a, s3.l {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final /* synthetic */ l f18240c = new l(0);

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final /* synthetic */ l f18241d = new l(1);

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final /* synthetic */ l f18242e = new l(2);

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final /* synthetic */ l f18243f = new l(3);

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final /* synthetic */ l f18244g = new l(4);

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final /* synthetic */ l f18245h = new l(5);

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final /* synthetic */ l f18246i = new l(6);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f18247b;

    public /* synthetic */ l(int i10) {
        this.f18247b = i10;
    }

    @Override // s3.l
    public final s3.h[] c() {
        switch (this.f18247b) {
            case 5:
                return new s3.h[0];
            default:
                return new s3.h[]{new c4.w()};
        }
    }

    @Override // n3.h.a
    public final n3.h d(Bundle bundle) {
        switch (this.f18247b) {
            case 2:
                m5.a.a(bundle.getInt(j1.b(0), -1) == 1);
                float f10 = bundle.getFloat(j1.b(1), -1.0f);
                return f10 == -1.0f ? new j1() : new j1(f10);
            case 3:
                n3.h.a<c2.a> aVar = c2.a.f11339m;
                n3.h.a<t0> aVar2 = t0.f13220m;
                Bundle bundle2 = bundle.getBundle(c2.a.b(0));
                Objects.requireNonNull(bundle2);
                t0 t0Var = (t0) aVar2.d(bundle2);
                int[] intArray = bundle.getIntArray(c2.a.b(1));
                int[] iArr = new int[t0Var.f13221h];
                if (intArray == null) {
                    intArray = iArr;
                }
                boolean[] booleanArray = bundle.getBooleanArray(c2.a.b(3));
                boolean[] zArr = new boolean[t0Var.f13221h];
                if (booleanArray == null) {
                    booleanArray = zArr;
                }
                return new c2.a(t0Var, bundle.getBoolean(c2.a.b(4), false), intArray, booleanArray);
            default:
                return new p3.d(bundle.containsKey(p3.d.c(0)) ? bundle.getInt(p3.d.c(0)) : 0, bundle.containsKey(p3.d.c(1)) ? bundle.getInt(p3.d.c(1)) : 0, bundle.containsKey(p3.d.c(2)) ? bundle.getInt(p3.d.c(2)) : 1, bundle.containsKey(p3.d.c(3)) ? bundle.getInt(p3.d.c(3)) : 1, bundle.containsKey(p3.d.c(4)) ? bundle.getInt(p3.d.c(4)) : 0);
        }
    }

    @Override // m5.o.a
    public final void invoke(Object obj) {
        ((o1.c) obj).k();
    }
}
