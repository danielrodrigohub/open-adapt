package n3;

import android.os.Bundle;

/* JADX INFO: compiled from: R8$$SyntheticClass */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class t0 implements h.a, m5.f, s3.l, r4.f.a {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final /* synthetic */ t0 f11722c = new t0(0);

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final /* synthetic */ t0 f11723d = new t0(1);

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final /* synthetic */ t0 f11724e = new t0(2);

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final /* synthetic */ t0 f11725f = new t0(3);

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final /* synthetic */ t0 f11726g = new t0(4);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f11727b;

    public /* synthetic */ t0(int i10) {
        this.f11727b = i10;
    }

    @Override // m5.f
    public final void b(Object obj) {
        ((r3.k.a) obj).b();
    }

    @Override // s3.l
    public final s3.h[] c() {
        return new s3.h[]{new d4.a()};
    }

    @Override // n3.h.a
    public final h d(Bundle bundle) {
        switch (this.f11727b) {
            case 0:
                m5.a.a(bundle.getInt(u0.b(0), -1) == 0);
                return bundle.getBoolean(u0.b(1), false) ? new u0(bundle.getBoolean(u0.b(2), false)) : new u0();
            default:
                int i10 = bundle.getInt(o1.d.b(0), -1);
                Bundle bundle2 = bundle.getBundle(o1.d.b(1));
                return new o1.d(null, i10, bundle2 == null ? null : (y0) y0.f11746o.d(bundle2), null, bundle.getInt(o1.d.b(2), -1), bundle.getLong(o1.d.b(3), -9223372036854775807L), bundle.getLong(o1.d.b(4), -9223372036854775807L), bundle.getInt(o1.d.b(5), -1), bundle.getInt(o1.d.b(6), -1));
        }
    }
}
