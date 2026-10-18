package ab;

import fd.o;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import qd.l;

/* JADX INFO: compiled from: AdaptKitPairedDevicesRepository.kt */
/* JADX INFO: loaded from: classes.dex */
public final class g implements ta.a<List<? extends va.d>> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ l<List<va.d>, o> f576a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ l<Throwable, o> f577b;

    /* JADX WARN: Multi-variable type inference failed */
    public g(l<? super List<va.d>, o> lVar, l<? super Throwable, o> lVar2) {
        this.f576a = lVar;
        this.f577b = lVar2;
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
        b.f555b.h().b(true, arrayList);
        this.f576a.invoke((List<va.d>) list2);
    }

    @Override // ta.a
    public final void b(Throwable th) {
        this.f577b.invoke(th);
    }
}
