package n3;

import android.net.Uri;
import android.os.Bundle;
import java.lang.reflect.Constructor;
import java.util.ArrayList;

/* JADX INFO: compiled from: R8$$SyntheticClass */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class z0 implements h.a, s3.f.a.InterfaceC0256a, s3.l, k4.g.a {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final /* synthetic */ z0 f11839c = new z0(0);

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final /* synthetic */ z0 f11840d = new z0(1);

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final /* synthetic */ z0 f11841e = new z0(2);

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final /* synthetic */ z0 f11842f = new z0(3);

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final /* synthetic */ z0 f11843g = new z0(4);

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final /* synthetic */ z0 f11844h = new z0(5);

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final /* synthetic */ z0 f11845i = new z0(6);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f11846b;

    public /* synthetic */ z0(int i10) {
        this.f11846b = i10;
    }

    @Override // k4.g.a
    public final boolean a(int i10, int i11, int i12, int i13, int i14) {
        z0 z0Var = k4.g.f9671i;
        return false;
    }

    @Override // s3.f.a.InterfaceC0256a
    public final Constructor b() {
        int[] iArr = s3.f.f15044b;
        if (Boolean.TRUE.equals(Class.forName("com.google.android.exoplayer2.ext.flac.FlacLibrary").getMethod("isAvailable", new Class[0]).invoke(null, new Object[0]))) {
            return Class.forName("com.google.android.exoplayer2.ext.flac.FlacExtractor").asSubclass(s3.h.class).getConstructor(Integer.TYPE);
        }
        return null;
    }

    @Override // s3.l
    public final s3.h[] c() {
        switch (this.f11846b) {
            case 3:
                return new s3.h[]{new y3.d(0)};
            default:
                return new s3.h[]{new c4.c()};
        }
    }

    @Override // n3.h.a
    public final h d(Bundle bundle) {
        switch (this.f11846b) {
            case 0:
                y0.i.a aVar = new y0.i.a();
                aVar.f11817a = (Uri) bundle.getParcelable(y0.i.b(0));
                aVar.f11818b = bundle.getString(y0.i.b(1));
                aVar.f11819c = bundle.getBundle(y0.i.b(2));
                return new y0.i(aVar);
            case 1:
                b2.a aVar2 = b2.f11293h;
                u6.v vVarB = b2.b(b2.d.B, androidx.activity.k.i(bundle, b2.t(0)));
                u6.v vVarB2 = b2.b(b2.b.f11294o, androidx.activity.k.i(bundle, b2.t(1)));
                int[] intArray = bundle.getIntArray(b2.t(2));
                if (intArray == null) {
                    int i10 = ((u6.p0) vVarB).f15969k;
                    int[] iArr = new int[i10];
                    for (int i11 = 0; i11 < i10; i11++) {
                        iArr[i11] = i11;
                    }
                    intArray = iArr;
                }
                return new b2.c(vVarB, vVarB2, intArray);
            default:
                p4.u0 u0Var = p4.u0.f13233k;
                ArrayList parcelableArrayList = bundle.getParcelableArrayList(Integer.toString(0, 36));
                return parcelableArrayList == null ? new p4.u0(new p4.t0[0]) : new p4.u0((p4.t0[]) m5.b.a(p4.t0.f13220m, parcelableArrayList).toArray(new p4.t0[0]));
        }
    }
}
