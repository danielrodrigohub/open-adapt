package n3;

import android.os.Bundle;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Objects;

/* JADX INFO: compiled from: R8$$SyntheticClass */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class p implements h.a, s3.l, androidx.lifecycle.w {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final /* synthetic */ p f11613c = new p(0);

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final /* synthetic */ p f11614d = new p(1);

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final /* synthetic */ p f11615e = new p(2);

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final /* synthetic */ p f11616f = new p(3);

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final /* synthetic */ p f11617g = new p(4);

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final /* synthetic */ p f11618h = new p(5);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f11619b;

    public /* synthetic */ p(int i10) {
        this.f11619b = i10;
    }

    @Override // androidx.lifecycle.w
    public final void a(Object obj) {
        s9.k kVar = (s9.k) obj;
        o7.g gVar = o7.g.f12378h;
        p4.h.i(kVar, "it");
        if (p4.h.c(kVar, o7.g.f12382l)) {
            return;
        }
        o7.g.f12382l = kVar;
        gVar.c();
    }

    @Override // s3.l
    public final s3.h[] c() {
        return new s3.h[]{new z3.d()};
    }

    @Override // n3.h.a
    public final h d(Bundle bundle) {
        q4.a.C0241a[] c0241aArr;
        switch (this.f11619b) {
            case 0:
                return new q(bundle);
            case 1:
                Bundle bundle2 = bundle.getBundle(b2.d.e(1));
                y0 y0Var = bundle2 != null ? (y0) y0.f11746o.d(bundle2) : null;
                long j10 = bundle.getLong(b2.d.e(2), -9223372036854775807L);
                long j11 = bundle.getLong(b2.d.e(3), -9223372036854775807L);
                long j12 = bundle.getLong(b2.d.e(4), -9223372036854775807L);
                boolean z10 = bundle.getBoolean(b2.d.e(5), false);
                boolean z11 = bundle.getBoolean(b2.d.e(6), false);
                Bundle bundle3 = bundle.getBundle(b2.d.e(7));
                y0.f fVar = bundle3 != null ? (y0.f) y0.f.f11794n.d(bundle3) : null;
                boolean z12 = bundle.getBoolean(b2.d.e(8), false);
                long j13 = bundle.getLong(b2.d.e(9), 0L);
                long j14 = bundle.getLong(b2.d.e(10), -9223372036854775807L);
                int i10 = bundle.getInt(b2.d.e(11), 0);
                int i11 = bundle.getInt(b2.d.e(12), 0);
                long j15 = bundle.getLong(b2.d.e(13), 0L);
                b2.d dVar = new b2.d();
                dVar.f(b2.d.f11307z, y0Var, null, j10, j11, j12, z10, z11, fVar, j13, j14, i10, i11, j15);
                dVar.f11319s = z12;
                return dVar;
            case 2:
            default:
                Bundle bundle4 = bundle.getBundle(j5.p.b(0));
                Objects.requireNonNull(bundle4);
                p4.t0 t0Var = (p4.t0) p4.t0.f13220m.d(bundle4);
                int[] intArray = bundle.getIntArray(j5.p.b(1));
                Objects.requireNonNull(intArray);
                return new j5.p(t0Var, intArray.length == 0 ? Collections.emptyList() : new w6.a.C0302a(intArray));
            case 3:
                ArrayList parcelableArrayList = bundle.getParcelableArrayList(q4.a.c(1));
                if (parcelableArrayList == null) {
                    c0241aArr = new q4.a.C0241a[0];
                } else {
                    q4.a.C0241a[] c0241aArr2 = new q4.a.C0241a[parcelableArrayList.size()];
                    for (int i12 = 0; i12 < parcelableArrayList.size(); i12++) {
                        c0241aArr2[i12] = (q4.a.C0241a) q4.a.C0241a.f13615o.d((Bundle) parcelableArrayList.get(i12));
                    }
                    c0241aArr = c0241aArr2;
                }
                return new q4.a(null, c0241aArr, bundle.getLong(q4.a.c(2), 0L), bundle.getLong(q4.a.c(3), -9223372036854775807L), bundle.getInt(q4.a.c(4)));
        }
    }
}
