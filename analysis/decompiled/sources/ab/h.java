package ab;

import ea.m;
import ea.o;
import ea.p;
import ea.z;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import v9.p0;

/* JADX INFO: compiled from: AdaptKitPairedDevicesRepository.kt */
/* JADX INFO: loaded from: classes.dex */
public final class h implements ta.a<List<? extends va.d>> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ p0<p, o> f578a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ v9.a f579b;

    public h(p0<p, o> p0Var, v9.a aVar) {
        this.f578a = p0Var;
        this.f579b = aVar;
    }

    @Override // ta.a
    public final void a(List<? extends va.d> list) {
        List<? extends va.d> list2 = list;
        p4.h.j(list2, "response");
        ArrayList arrayList = new ArrayList(gd.j.T(list2, 10));
        Iterator<T> it = list2.iterator();
        while (it.hasNext()) {
            arrayList.add(androidx.lifecycle.o.A((va.d) it.next()));
        }
        List<m> listY = p4.h.y(arrayList);
        p0<p, o> p0Var = this.f578a;
        v9.a aVar = this.f579b;
        b bVar = b.f555b;
        bVar.h().b(true, listY);
        p0Var.a(new z(aVar, p4.h.y(bVar.h().c(false))));
    }

    @Override // ta.a
    public final void b(Throwable th) {
        this.f578a.b(new o(this.f579b, th));
    }
}
