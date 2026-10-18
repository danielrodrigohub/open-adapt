package q1;

import android.content.Context;
import android.os.Build;
import k1.m;
import t1.o;

/* JADX INFO: compiled from: NetworkUnmeteredController.java */
/* JADX INFO: loaded from: classes.dex */
public final class g extends c<p1.b> {
    public g(Context context, w1.a aVar) {
        super(r1.g.a(context, aVar).f14218c);
    }

    @Override // q1.c
    public final boolean b(o oVar) {
        m mVar = oVar.f15359j.f9574a;
        return mVar == m.UNMETERED || (Build.VERSION.SDK_INT >= 30 && mVar == m.TEMPORARILY_UNMETERED);
    }

    @Override // q1.c
    public final boolean c(p1.b bVar) {
        p1.b bVar2 = bVar;
        return !bVar2.f12621a || bVar2.f12623c;
    }
}
