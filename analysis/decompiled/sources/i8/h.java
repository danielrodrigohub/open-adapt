package i8;

import androidx.appcompat.widget.e0;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: compiled from: Presenter.kt */
/* JADX INFO: loaded from: classes.dex */
public final class h {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final AtomicInteger f8827a = new AtomicInteger(1);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final ExecutorService f8828b;

    static {
        ExecutorService executorServiceNewCachedThreadPool = Executors.newCachedThreadPool(new ThreadFactory() { // from class: i8.g
            @Override // java.util.concurrent.ThreadFactory
            public final Thread newThread(Runnable runnable) {
                AtomicInteger atomicInteger = h.f8827a;
                return new Thread(new f(runnable, 0), e0.d("nike.adapt.presenter-", h.f8827a.getAndIncrement()));
            }
        });
        p4.h.i(executorServiceNewCachedThreadPool, "<clinit>");
        f8828b = executorServiceNewCachedThreadPool;
    }
}
