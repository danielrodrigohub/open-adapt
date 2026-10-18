package y1;

import android.os.Handler;
import android.os.Looper;
import java.util.LinkedHashSet;
import java.util.Set;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.FutureTask;

/* JADX INFO: compiled from: LottieTask.java */
/* JADX INFO: loaded from: classes.dex */
public final class k0<T> {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static ExecutorService f18381e = Executors.newCachedThreadPool();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Set<g0<T>> f18382a = new LinkedHashSet(1);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Set<g0<Throwable>> f18383b = new LinkedHashSet(1);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Handler f18384c = new Handler(Looper.getMainLooper());

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public volatile j0<T> f18385d = null;

    /* JADX INFO: compiled from: LottieTask.java */
    public class a extends FutureTask<j0<T>> {
        public a(Callable<j0<T>> callable) {
            super(callable);
        }

        @Override // java.util.concurrent.FutureTask
        public final void done() {
            if (isCancelled()) {
                return;
            }
            try {
                k0.this.c(get());
            } catch (InterruptedException | ExecutionException e10) {
                k0.this.c(new j0<>(e10));
            }
        }
    }

    public k0(Callable<j0<T>> callable, boolean z10) {
        if (!z10) {
            f18381e.execute(new a(callable));
            return;
        }
        try {
            c(callable.call());
        } catch (Throwable th) {
            c(new j0<>(th));
        }
    }

    public final synchronized k0<T> a(g0<Throwable> g0Var) {
        Throwable th;
        j0<T> j0Var = this.f18385d;
        if (j0Var != null && (th = j0Var.f18377b) != null) {
            g0Var.a(th);
        }
        this.f18383b.add(g0Var);
        return this;
    }

    public final synchronized k0<T> b(g0<T> g0Var) {
        T t10;
        j0<T> j0Var = this.f18385d;
        if (j0Var != null && (t10 = j0Var.f18376a) != null) {
            g0Var.a(t10);
        }
        this.f18382a.add(g0Var);
        return this;
    }

    public final void c(j0<T> j0Var) {
        if (this.f18385d != null) {
            throw new IllegalStateException("A task may only be set once.");
        }
        this.f18385d = j0Var;
        this.f18384c.post(new androidx.activity.g(this, 2));
    }
}
