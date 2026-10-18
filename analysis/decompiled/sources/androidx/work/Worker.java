package androidx.work;

import android.annotation.SuppressLint;
import android.content.Context;
import androidx.annotation.Keep;
import v1.c;

/* JADX INFO: loaded from: classes.dex */
public abstract class Worker extends ListenableWorker {

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public c<ListenableWorker.a> f3030m;

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            try {
                Worker.this.f3030m.j(Worker.this.h());
            } catch (Throwable th) {
                Worker.this.f3030m.k(th);
            }
        }
    }

    @Keep
    @SuppressLint({"BanKeepAnnotation"})
    public Worker(Context context, WorkerParameters workerParameters) {
        super(context, workerParameters);
    }

    @Override // androidx.work.ListenableWorker
    public final x6.a<ListenableWorker.a> f() {
        this.f3030m = new c<>();
        this.f3024i.f3034c.execute(new a());
        return this.f3030m;
    }

    public abstract ListenableWorker.a h();
}
