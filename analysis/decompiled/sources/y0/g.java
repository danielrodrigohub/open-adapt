package y0;

import android.os.Bundle;
import n3.a2;
import n3.j1;
import n3.r1;
import n3.u0;
import n3.y1;

/* JADX INFO: compiled from: R8$$SyntheticClass */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class g implements n3.h.a, m5.f, r3.l.b, s3.l {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final /* synthetic */ g f18205c = new g(0);

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final /* synthetic */ g f18206d = new g(1);

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final /* synthetic */ g f18207e = new g(2);

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final /* synthetic */ g f18208f = new g(3);

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final /* synthetic */ g f18209g = new g(4);

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final /* synthetic */ g f18210h = new g(5);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f18211b;

    public /* synthetic */ g(int i10) {
        this.f18211b = i10;
    }

    @Override // r3.l.b
    public final void a() {
    }

    @Override // m5.f
    public final void b(Object obj) {
        ((r3.k.a) obj).a();
    }

    @Override // s3.l
    public final s3.h[] c() {
        switch (this.f18211b) {
            case 4:
                return new s3.h[]{new v3.b()};
            default:
                return new s3.h[]{new b4.c()};
        }
    }

    @Override // n3.h.a
    public final n3.h d(Bundle bundle) {
        n3.h.a<r1> aVar = r1.f11673h;
        int i10 = bundle.getInt(Integer.toString(0, 36), -1);
        if (i10 == 0) {
            return (r1) u0.f11729k.d(bundle);
        }
        if (i10 == 1) {
            return (r1) j1.f11450j.d(bundle);
        }
        if (i10 == 2) {
            return (r1) y1.f11834k.d(bundle);
        }
        if (i10 == 3) {
            return (r1) a2.f11268k.d(bundle);
        }
        throw new IllegalArgumentException(androidx.appcompat.widget.e0.d("Unknown RatingType: ", i10));
    }
}
