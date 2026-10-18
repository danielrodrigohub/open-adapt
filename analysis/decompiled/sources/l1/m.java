package l1;

import android.annotation.SuppressLint;
import androidx.work.ListenableWorker;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;

/* JADX INFO: compiled from: WorkerWrapper.java */
/* JADX INFO: loaded from: classes.dex */
public final class m implements Runnable {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ v1.c f9865h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final /* synthetic */ String f9866i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final /* synthetic */ n f9867j;

    public m(n nVar, v1.c cVar, String str) {
        this.f9867j = nVar;
        this.f9865h = cVar;
        this.f9866i = str;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.lang.Runnable
    @SuppressLint({"SyntheticAccessor"})
    public final void run() {
        try {
            try {
                ListenableWorker.a aVar = (ListenableWorker.a) this.f9865h.get();
                if (aVar == null) {
                    k1.l.c().b(n.A, String.format("%s returned a null result. Treating it as a failure.", this.f9867j.f9872l.f15352c), new Throwable[0]);
                } else {
                    k1.l.c().a(n.A, String.format("%s returned a %s result.", this.f9867j.f9872l.f15352c, aVar), new Throwable[0]);
                    this.f9867j.f9875o = aVar;
                }
            } catch (InterruptedException e10) {
                e = e10;
                k1.l.c().b(n.A, String.format("%s failed because it threw an exception/error", this.f9866i), e);
            } catch (CancellationException e11) {
                k1.l.c().d(n.A, String.format("%s was cancelled", this.f9866i), e11);
            } catch (ExecutionException e12) {
                e = e12;
                k1.l.c().b(n.A, String.format("%s failed because it threw an exception/error", this.f9866i), e);
            }
            this.f9867j.c();
        } catch (Throwable th) {
            this.f9867j.c();
            throw th;
        }
    }
}
