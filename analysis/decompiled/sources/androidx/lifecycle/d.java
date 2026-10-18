package androidx.lifecycle;

import android.annotation.SuppressLint;
import java.util.ArrayDeque;
import java.util.Queue;
import kotlinx.coroutines.Dispatchers;
import kotlinx.coroutines.MainCoroutineDispatcher;

/* JADX INFO: compiled from: DispatchQueue.kt */
/* JADX INFO: loaded from: classes.dex */
public final class d {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public boolean f2173b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public boolean f2174c;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public boolean f2172a = true;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final Queue<Runnable> f2175d = new ArrayDeque();

    public final boolean a() {
        return this.f2173b || !this.f2172a;
    }

    @SuppressLint({"WrongThread"})
    public final void b(jd.f fVar, Runnable runnable) {
        p4.h.j(fVar, "context");
        p4.h.j(runnable, "runnable");
        MainCoroutineDispatcher immediate = Dispatchers.getMain().getImmediate();
        if (immediate.isDispatchNeeded(fVar) || a()) {
            immediate.mo14dispatch(fVar, new c(this, runnable, 0));
        } else {
            d(runnable);
        }
    }

    /* JADX WARN: Type inference failed for: r2v0, types: [java.util.ArrayDeque, java.util.Queue<java.lang.Runnable>] */
    /* JADX WARN: Type inference failed for: r2v4, types: [java.util.ArrayDeque, java.util.Queue<java.lang.Runnable>] */
    public final void c() {
        if (this.f2174c) {
            return;
        }
        try {
            this.f2174c = true;
            while ((!this.f2175d.isEmpty()) && a()) {
                Runnable runnable = (Runnable) this.f2175d.poll();
                if (runnable != null) {
                    runnable.run();
                }
            }
            this.f2174c = false;
        } catch (Throwable th) {
            this.f2174c = false;
            throw th;
        }
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [java.util.ArrayDeque, java.util.Queue<java.lang.Runnable>] */
    public final void d(Runnable runnable) {
        if (!this.f2175d.offer(runnable)) {
            throw new IllegalStateException("cannot enqueue any more runnables".toString());
        }
        c();
    }
}
