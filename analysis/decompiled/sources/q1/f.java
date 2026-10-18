package q1;

import android.content.Context;
import k1.l;
import k1.m;
import t1.o;

/* JADX INFO: compiled from: NetworkNotRoamingController.java */
/* JADX INFO: loaded from: classes.dex */
public final class f extends c<p1.b> {
    static {
        l.e("NetworkNotRoamingCtrlr");
    }

    public f(Context context, w1.a aVar) {
        super(r1.g.a(context, aVar).f14218c);
    }

    @Override // q1.c
    public final boolean b(o oVar) {
        return oVar.f15359j.f9574a == m.NOT_ROAMING;
    }

    @Override // q1.c
    public final boolean c(p1.b bVar) {
        p1.b bVar2 = bVar;
        return (bVar2.f12621a && bVar2.f12624d) ? false : true;
    }
}
