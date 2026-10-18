package w1;

import android.os.Handler;
import android.os.Looper;
import java.util.concurrent.Executor;
import u1.i;

/* JADX INFO: compiled from: WorkManagerTaskExecutor.java */
/* JADX INFO: loaded from: classes.dex */
public final class b implements w1.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final i f17057a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Handler f17058b = new Handler(Looper.getMainLooper());

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final a f17059c = new a();

    /* JADX INFO: compiled from: WorkManagerTaskExecutor.java */
    public class a implements Executor {
        public a() {
        }

        @Override // java.util.concurrent.Executor
        public final void execute(Runnable runnable) {
            b.this.f17058b.post(runnable);
        }
    }

    public b(Executor executor) {
        this.f17057a = new i(executor);
    }

    public final void a(Runnable runnable) {
        this.f17057a.execute(runnable);
    }
}
