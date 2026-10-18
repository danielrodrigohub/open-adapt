package s1;

import androidx.work.impl.WorkDatabase;
import t1.o;
import t1.q;

/* JADX INFO: compiled from: SystemForegroundDispatcher.java */
/* JADX INFO: loaded from: classes.dex */
public final class b implements Runnable {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ WorkDatabase f14955h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final /* synthetic */ String f14956i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final /* synthetic */ androidx.work.impl.foreground.a f14957j;

    public b(androidx.work.impl.foreground.a aVar, WorkDatabase workDatabase, String str) {
        this.f14957j = aVar;
        this.f14955h = workDatabase;
        this.f14956i = str;
    }

    /* JADX WARN: Type inference failed for: r2v1, types: [java.util.HashMap, java.util.Map<java.lang.String, t1.o>] */
    /* JADX WARN: Type inference failed for: r2v3, types: [java.util.HashSet, java.util.Set<t1.o>] */
    @Override // java.lang.Runnable
    public final void run() {
        o oVarH = ((q) this.f14955h.w()).h(this.f14956i);
        if (oVarH == null || !oVarH.b()) {
            return;
        }
        synchronized (this.f14957j.f3134k) {
            this.f14957j.f3137n.put(this.f14956i, oVarH);
            this.f14957j.f3138o.add(oVarH);
            androidx.work.impl.foreground.a aVar = this.f14957j;
            aVar.f3139p.b(aVar.f3138o);
        }
    }
}
