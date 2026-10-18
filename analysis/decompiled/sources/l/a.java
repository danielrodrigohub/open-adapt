package l;

import android.os.Looper;
import j6.f;
import java.util.Objects;
import java.util.concurrent.Executor;

/* JADX INFO: compiled from: ArchTaskExecutor.java */
/* JADX INFO: loaded from: classes.dex */
public final class a extends f {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static volatile a f9810c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final ExecutorC0192a f9811d = new ExecutorC0192a();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public b f9812a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public b f9813b;

    /* JADX INFO: renamed from: l.a$a, reason: collision with other inner class name */
    /* JADX INFO: compiled from: ArchTaskExecutor.java */
    public static class ExecutorC0192a implements Executor {
        @Override // java.util.concurrent.Executor
        public final void execute(Runnable runnable) {
            a.c().f9812a.f9815b.execute(runnable);
        }
    }

    public a() {
        b bVar = new b();
        this.f9813b = bVar;
        this.f9812a = bVar;
    }

    public static a c() {
        if (f9810c != null) {
            return f9810c;
        }
        synchronized (a.class) {
            if (f9810c == null) {
                f9810c = new a();
            }
        }
        return f9810c;
    }

    public final boolean d() {
        Objects.requireNonNull(this.f9812a);
        return Looper.getMainLooper().getThread() == Thread.currentThread();
    }

    public final void e(Runnable runnable) {
        b bVar = this.f9812a;
        if (bVar.f9816c == null) {
            synchronized (bVar.f9814a) {
                if (bVar.f9816c == null) {
                    bVar.f9816c = b.c(Looper.getMainLooper());
                }
            }
        }
        bVar.f9816c.post(runnable);
    }
}
