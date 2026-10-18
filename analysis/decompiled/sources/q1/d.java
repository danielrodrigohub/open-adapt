package q1;

import android.content.Context;
import android.os.Build;
import k1.m;
import t1.o;

/* JADX INFO: compiled from: NetworkConnectedController.java */
/* JADX INFO: loaded from: classes.dex */
public final class d extends c<p1.b> {
    public d(Context context, w1.a aVar) {
        super(r1.g.a(context, aVar).f14218c);
    }

    @Override // q1.c
    public final boolean b(o oVar) {
        return oVar.f15359j.f9574a == m.CONNECTED;
    }

    @Override // q1.c
    public final boolean c(p1.b bVar) {
        p1.b bVar2 = bVar;
        if (Build.VERSION.SDK_INT >= 26) {
            return (bVar2.f12621a && bVar2.f12622b) ? false : true;
        }
        return true ^ bVar2.f12621a;
    }
}
