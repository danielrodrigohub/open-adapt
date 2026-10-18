package e3;

import android.content.Context;

/* JADX INFO: compiled from: DefaultConnectivityMonitor.java */
/* JADX INFO: loaded from: classes.dex */
public final class d implements b {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final Context f6319h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final b.a f6320i;

    public d(Context context, b.a aVar) {
        this.f6319h = context.getApplicationContext();
        this.f6320i = aVar;
    }

    /* JADX WARN: Type inference failed for: r2v0, types: [java.util.HashSet, java.util.Set<e3.b$a>] */
    @Override // e3.i
    public final void g() {
        o oVarA = o.a(this.f6319h);
        b.a aVar = this.f6320i;
        synchronized (oVarA) {
            oVarA.f6340b.add(aVar);
            oVarA.b();
        }
    }

    /* JADX WARN: Type inference failed for: r1v3, types: [java.util.HashSet, java.util.Set<e3.b$a>] */
    /* JADX WARN: Type inference failed for: r2v0, types: [java.util.HashSet, java.util.Set<e3.b$a>] */
    @Override // e3.i
    public final void h() {
        o oVarA = o.a(this.f6319h);
        b.a aVar = this.f6320i;
        synchronized (oVarA) {
            oVarA.f6340b.remove(aVar);
            if (oVarA.f6341c && oVarA.f6340b.isEmpty()) {
                o.c cVar = oVarA.f6339a;
                cVar.f6346c.get().unregisterNetworkCallback(cVar.f6347d);
                oVarA.f6341c = false;
            }
        }
    }

    @Override // e3.i
    public final void k() {
    }
}
