package l1;

import androidx.lifecycle.LiveData;
import androidx.lifecycle.v;
import k1.o;

/* JADX INFO: compiled from: OperationImpl.java */
/* JADX INFO: loaded from: classes.dex */
public final class c implements o {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final v<o.b> f9819c = new v<>();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final v1.c<o.b.c> f9820d = new v1.c<>();

    public c() {
        a(o.f9607b);
    }

    public final void a(o.b bVar) {
        boolean z10;
        v<o.b> vVar = this.f9819c;
        synchronized (vVar.f2101a) {
            z10 = vVar.f2106f == LiveData.f2100k;
            vVar.f2106f = bVar;
        }
        if (z10) {
            l.a.c().e(vVar.f2110j);
        }
        if (bVar instanceof o.b.c) {
            this.f9820d.j((o.b.c) bVar);
        } else if (bVar instanceof o.b.a) {
            this.f9820d.k(((o.b.a) bVar).f9608a);
        }
    }
}
