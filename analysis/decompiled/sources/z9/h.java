package z9;

import androidx.appcompat.widget.e0;
import androidx.lifecycle.m0;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicInteger;
import o7.w;
import v9.t;

/* JADX INFO: compiled from: AdaptKitExecutor.kt */
/* JADX INFO: loaded from: classes.dex */
public final class h {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final AtomicInteger f19447a = new AtomicInteger(1);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final AtomicInteger f19448b = new AtomicInteger(1);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final AtomicInteger f19449c = new AtomicInteger(1);

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final ExecutorService f19450d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final ExecutorService f19451e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final ExecutorService f19452f;

    static {
        ExecutorService executorServiceNewFixedThreadPool = Executors.newFixedThreadPool(8, w.f12417c);
        p4.h.i(executorServiceNewFixedThreadPool, "newFixedThreadPool(MAX_A…   }\n            })\n    }");
        f19450d = executorServiceNewFixedThreadPool;
        ExecutorService executorServiceNewCachedThreadPool = Executors.newCachedThreadPool(new ThreadFactory() { // from class: z9.b
            @Override // java.util.concurrent.ThreadFactory
            public final Thread newThread(Runnable runnable) {
                return m0.d(e0.d("adaptkit.io.thread-", h.f19447a.getAndIncrement()), 10, new e(runnable), 6);
            }
        });
        p4.h.i(executorServiceNewCachedThreadPool, "newCachedThreadPool {\n  …ement()}\"\n        )\n    }");
        f19451e = executorServiceNewCachedThreadPool;
        ExecutorService executorServiceNewFixedThreadPool2 = Executors.newFixedThreadPool(4, c.f19440b);
        p4.h.i(executorServiceNewFixedThreadPool2, "newFixedThreadPool(MAX_N…ement()}\"\n        )\n    }");
        f19452f = executorServiceNewFixedThreadPool2;
    }

    public static final void a(Throwable th) {
        t tVar = t.f16822a;
        t.f16830i.a(new eb.b(new g(th)));
    }
}
