package x1;

import androidx.work.impl.workers.ConstraintTrackingWorker;

/* JADX INFO: compiled from: ConstraintTrackingWorker.java */
/* JADX INFO: loaded from: classes.dex */
public final class a implements Runnable {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ x6.a f17723h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final /* synthetic */ ConstraintTrackingWorker f17724i;

    public a(ConstraintTrackingWorker constraintTrackingWorker, x6.a aVar) {
        this.f17724i = constraintTrackingWorker;
        this.f17723h = aVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        synchronized (this.f17724i.f3149n) {
            if (this.f17724i.f3150o) {
                this.f17724i.i();
            } else {
                this.f17724i.f3151p.l(this.f17723h);
            }
        }
    }
}
