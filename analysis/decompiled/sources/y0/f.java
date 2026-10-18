package y0;

import android.os.Bundle;
import n3.y0;
import p4.l0;

/* JADX INFO: compiled from: R8$$SyntheticClass */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class f implements n3.h.a, m5.f {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final /* synthetic */ f f18193b = new f();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final /* synthetic */ f f18194c = new f();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final /* synthetic */ f f18195d = new f();

    @Override // m5.f
    public final void b(Object obj) {
        ((l0.b) obj).f13122b.a();
    }

    @Override // n3.h.a
    public final n3.h d(Bundle bundle) {
        n3.h.a<y0.d> aVar = y0.c.f11765m;
        y0.c.a aVar2 = new y0.c.a();
        long j10 = bundle.getLong(y0.c.b(0), 0L);
        boolean z10 = true;
        m5.a.a(j10 >= 0);
        aVar2.f11771a = j10;
        long j11 = bundle.getLong(y0.c.b(1), Long.MIN_VALUE);
        if (j11 != Long.MIN_VALUE && j11 < 0) {
            z10 = false;
        }
        m5.a.a(z10);
        aVar2.f11772b = j11;
        aVar2.f11773c = bundle.getBoolean(y0.c.b(2), false);
        aVar2.f11774d = bundle.getBoolean(y0.c.b(3), false);
        aVar2.f11775e = bundle.getBoolean(y0.c.b(4), false);
        return aVar2.a();
    }
}
