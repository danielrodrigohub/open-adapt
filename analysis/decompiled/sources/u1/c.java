package u1;

import androidx.work.impl.WorkDatabase;
import java.util.Iterator;
import java.util.LinkedList;

/* JADX INFO: compiled from: CancelWorkRunnable.java */
/* JADX INFO: loaded from: classes.dex */
public abstract class c implements Runnable {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final l1.c f15624h = new l1.c();

    /* JADX WARN: Type inference failed for: r2v2, types: [java.util.HashSet, java.util.Set<java.lang.String>] */
    /* JADX WARN: Type inference failed for: r2v3, types: [java.util.HashMap, java.util.Map<java.lang.String, l1.n>] */
    /* JADX WARN: Type inference failed for: r2v7, types: [java.util.HashMap, java.util.Map<java.lang.String, l1.n>] */
    public final void a(l1.k kVar, String str) {
        WorkDatabase workDatabase = kVar.f9855c;
        t1.p pVarW = workDatabase.w();
        t1.b bVarR = workDatabase.r();
        LinkedList linkedList = new LinkedList();
        linkedList.add(str);
        while (true) {
            if (linkedList.isEmpty()) {
                break;
            }
            String str2 = (String) linkedList.remove();
            t1.q qVar = (t1.q) pVarW;
            k1.p pVarF = qVar.f(str2);
            if (pVarF != k1.p.SUCCEEDED && pVarF != k1.p.FAILED) {
                qVar.o(k1.p.CANCELLED, str2);
            }
            linkedList.addAll(((t1.c) bVarR).a(str2));
        }
        l1.d dVar = kVar.f9858f;
        synchronized (dVar.f9832r) {
            k1.l.c().a(l1.d.f9821s, String.format("Processor cancelling %s", str), new Throwable[0]);
            dVar.f9830p.add(str);
            l1.n nVar = (l1.n) dVar.f9827m.remove(str);
            boolean z10 = nVar != null;
            if (nVar == null) {
                nVar = (l1.n) dVar.f9828n.remove(str);
            }
            l1.d.c(str, nVar);
            if (z10) {
                dVar.h();
            }
        }
        Iterator<l1.e> it = kVar.f9857e.iterator();
        while (it.hasNext()) {
            it.next().b(str);
        }
    }

    public abstract void b();

    @Override // java.lang.Runnable
    public final void run() {
        try {
            b();
            this.f15624h.a(k1.o.f9606a);
        } catch (Throwable th) {
            this.f15624h.a(new k1.o.b.a(th));
        }
    }
}
