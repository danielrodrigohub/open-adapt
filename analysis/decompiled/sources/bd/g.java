package bd;

import gd.n;
import gd.p;
import java.util.ArrayList;
import java.util.List;
import qd.l;
import yc.a;

/* JADX INFO: compiled from: TypedBuilderImpl.kt */
/* JADX INFO: loaded from: classes.dex */
public final class g<Store extends yc.a> implements yc.a.d<Store> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final l<List<? extends yc.a.b>, Store> f3801a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final List<yc.a.b> f3802b;

    public g(l lVar) {
        p pVar = p.f8070h;
        this.f3801a = lVar;
        this.f3802b = (ArrayList) n.n0(pVar);
    }

    @Override // yc.a.d
    public final Store a() {
        return this.f3801a.invoke(this.f3802b);
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [java.util.ArrayList, java.util.List<yc.a$b>] */
    @Override // yc.a.InterfaceC0328a
    public final void b(yc.a.b bVar) {
        this.f3802b.add(bVar);
    }
}
