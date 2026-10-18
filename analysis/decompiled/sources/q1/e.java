package q1;

import android.content.Context;
import android.os.Build;
import k1.l;
import k1.m;
import t1.o;

/* JADX INFO: compiled from: NetworkMeteredController.java */
/* JADX INFO: loaded from: classes.dex */
public final class e extends c<p1.b> {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final String f13542e = l.e("NetworkMeteredCtrlr");

    public e(Context context, w1.a aVar) {
        super(r1.g.a(context, aVar).f14218c);
    }

    @Override // q1.c
    public final boolean b(o oVar) {
        return oVar.f15359j.f9574a == m.METERED;
    }

    @Override // q1.c
    public final boolean c(p1.b bVar) {
        p1.b bVar2 = bVar;
        boolean z10 = true;
        if (Build.VERSION.SDK_INT < 26) {
            l.c().a(f13542e, "Metered network constraint is not supported before API 26, only checking for connected state.", new Throwable[0]);
            return !bVar2.f12621a;
        }
        if (bVar2.f12621a && bVar2.f12623c) {
            z10 = false;
        }
        return z10;
    }
}
