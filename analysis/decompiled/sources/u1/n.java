package u1;

import android.content.Context;
import java.util.UUID;

/* JADX INFO: compiled from: WorkForegroundUpdater.java */
/* JADX INFO: loaded from: classes.dex */
public final class n implements Runnable {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ v1.c f15658h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final /* synthetic */ UUID f15659i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final /* synthetic */ k1.f f15660j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final /* synthetic */ Context f15661k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final /* synthetic */ o f15662l;

    public n(o oVar, v1.c cVar, UUID uuid, k1.f fVar, Context context) {
        this.f15662l = oVar;
        this.f15658h = cVar;
        this.f15659i = uuid;
        this.f15660j = fVar;
        this.f15661k = context;
    }

    @Override // java.lang.Runnable
    public final void run() {
        try {
            if (!(this.f15658h.f16108h instanceof v1.a.b)) {
                String string = this.f15659i.toString();
                k1.p pVarF = ((t1.q) this.f15662l.f15665c).f(string);
                if (pVarF == null || pVarF.b()) {
                    throw new IllegalStateException("Calls to setForegroundAsync() must complete before a ListenableWorker signals completion of work by returning an instance of Result.");
                }
                ((l1.d) this.f15662l.f15664b).f(string, this.f15660j);
                this.f15661k.startService(androidx.work.impl.foreground.a.b(this.f15661k, string, this.f15660j));
            }
            this.f15658h.j(null);
        } catch (Throwable th) {
            this.f15658h.k(th);
        }
    }
}
