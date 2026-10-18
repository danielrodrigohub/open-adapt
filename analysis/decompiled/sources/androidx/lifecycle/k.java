package androidx.lifecycle;

import kotlinx.coroutines.Job;

/* JADX INFO: compiled from: LifecycleController.kt */
/* JADX INFO: loaded from: classes.dex */
public final class k {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final i f2211a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final i.c f2212b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final d f2213c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final j f2214d;

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r3v1, types: [androidx.lifecycle.j, androidx.lifecycle.p] */
    public k(i iVar, i.c cVar, d dVar, final Job job) {
        p4.h.j(iVar, "lifecycle");
        p4.h.j(cVar, "minState");
        p4.h.j(dVar, "dispatchQueue");
        this.f2211a = iVar;
        this.f2212b = cVar;
        this.f2213c = dVar;
        ?? r10 = new n() { // from class: androidx.lifecycle.j
            @Override // androidx.lifecycle.n
            public final void a(q qVar, i.b bVar) {
                k kVar = this.f2207h;
                Job job2 = job;
                p4.h.j(kVar, "this$0");
                p4.h.j(job2, "$parentJob");
                if (qVar.a().b() == i.c.DESTROYED) {
                    Job.DefaultImpls.cancel$default(job2, null, 1, null);
                    kVar.a();
                } else {
                    if (qVar.a().b().compareTo(kVar.f2212b) < 0) {
                        kVar.f2213c.f2172a = true;
                        return;
                    }
                    d dVar2 = kVar.f2213c;
                    if (dVar2.f2172a) {
                        if (!(!dVar2.f2173b)) {
                            throw new IllegalStateException("Cannot resume a finished dispatcher".toString());
                        }
                        dVar2.f2172a = false;
                        dVar2.c();
                    }
                }
            }
        };
        this.f2214d = r10;
        if (iVar.b() != i.c.DESTROYED) {
            iVar.a(r10);
        } else {
            Job.DefaultImpls.cancel$default(job, null, 1, null);
            a();
        }
    }

    public final void a() {
        this.f2211a.c(this.f2214d);
        d dVar = this.f2213c;
        dVar.f2173b = true;
        dVar.c();
    }
}
