package y0;

import android.os.Bundle;
import java.util.ArrayList;
import n3.a2;
import n3.s0;
import n3.y0;
import p4.t0;
import u6.p0;

/* JADX INFO: compiled from: R8$$SyntheticClass */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class h implements n3.h.a, m5.f, s3.l {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final /* synthetic */ h f18220c = new h(0);

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final /* synthetic */ h f18221d = new h(1);

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final /* synthetic */ h f18222e = new h(2);

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final /* synthetic */ h f18223f = new h(3);

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final /* synthetic */ h f18224g = new h(4);

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final /* synthetic */ h f18225h = new h(5);

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final /* synthetic */ h f18226i = new h(6);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f18227b;

    public /* synthetic */ h(int i10) {
        this.f18227b = i10;
    }

    @Override // m5.f
    public final void b(Object obj) {
        ((r3.k.a) obj).c();
    }

    @Override // s3.l
    public final s3.h[] c() {
        return new s3.h[]{new c4.a()};
    }

    @Override // n3.h.a
    public final n3.h d(Bundle bundle) {
        u6.v<Object> vVarA;
        switch (this.f18227b) {
            case 1:
                return new y0.f(bundle.getLong(y0.f.b(0), -9223372036854775807L), bundle.getLong(y0.f.b(1), -9223372036854775807L), bundle.getLong(y0.f.b(2), -9223372036854775807L), bundle.getFloat(y0.f.b(3), -3.4028235E38f), bundle.getFloat(y0.f.b(4), -3.4028235E38f));
            case 2:
                m5.a.a(bundle.getInt(a2.b(0), -1) == 3);
                return bundle.getBoolean(a2.b(1), false) ? new a2(bundle.getBoolean(a2.b(2), false)) : new a2();
            default:
                ArrayList parcelableArrayList = bundle.getParcelableArrayList(t0.c(0));
                if (parcelableArrayList == null) {
                    u6.a aVar = u6.v.f16002i;
                    vVarA = p0.f15967l;
                } else {
                    vVarA = m5.b.a(s0.O, parcelableArrayList);
                }
                return new t0(bundle.getString(t0.c(1), ""), (s0[]) vVarA.toArray(new s0[0]));
        }
    }
}
