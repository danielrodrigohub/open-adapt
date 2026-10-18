package o7;

import androidx.appcompat.widget.e0;
import androidx.appcompat.widget.k1;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: compiled from: AdaptExecutor.kt */
/* JADX INFO: loaded from: classes.dex */
public final class e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final AtomicInteger f12371a = new AtomicInteger(1);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final AtomicInteger f12372b = new AtomicInteger(1);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final ExecutorService f12373c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final ExecutorService f12374d;

    static {
        ExecutorService executorServiceNewCachedThreadPool = Executors.newCachedThreadPool(new ThreadFactory() { // from class: o7.c
            @Override // java.util.concurrent.ThreadFactory
            public final Thread newThread(Runnable runnable) {
                AtomicInteger atomicInteger = e.f12371a;
                return new Thread(new k1(runnable, 5), e0.d("adapt.io.thread-", e.f12371a.getAndIncrement()));
            }
        });
        p4.h.i(executorServiceNewCachedThreadPool, "newCachedThreadPool { ru…dIncrement()}\")\n        }");
        f12373c = executorServiceNewCachedThreadPool;
        ExecutorService executorServiceNewFixedThreadPool = Executors.newFixedThreadPool(8, new ThreadFactory() { // from class: o7.d
            @Override // java.util.concurrent.ThreadFactory
            public final Thread newThread(Runnable runnable) {
                AtomicInteger atomicInteger = e.f12371a;
                return new Thread(new x.a(runnable, 1), e0.d("adapt.network.thread-", e.f12372b.getAndIncrement()));
            }
        });
        p4.h.i(executorServiceNewFixedThreadPool, "newFixedThreadPool(MAX_N…dIncrement()}\")\n        }");
        f12374d = executorServiceNewFixedThreadPool;
    }
}
