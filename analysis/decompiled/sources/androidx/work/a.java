package androidx.work;

import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import k1.i;
import k1.s;
import k1.t;

/* JADX INFO: compiled from: Configuration.java */
/* JADX INFO: loaded from: classes.dex */
public final class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ExecutorService f3040a = (ExecutorService) a(false);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ExecutorService f3041b = (ExecutorService) a(true);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final t f3042c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final i f3043d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final l1.a f3044e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final int f3045f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final int f3046g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final int f3047h;

    /* JADX INFO: renamed from: androidx.work.a$a, reason: collision with other inner class name */
    /* JADX INFO: compiled from: Configuration.java */
    public static final class C0044a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public t f3048a;
    }

    /* JADX INFO: compiled from: Configuration.java */
    public interface b {
        a b();
    }

    public a(C0044a c0044a) {
        t tVar = c0044a.f3048a;
        if (tVar == null) {
            String str = t.f9622a;
            this.f3042c = new s();
        } else {
            this.f3042c = tVar;
        }
        this.f3043d = new i();
        this.f3044e = new l1.a();
        this.f3045f = 4;
        this.f3046g = Integer.MAX_VALUE;
        this.f3047h = 20;
    }

    public final Executor a(boolean z10) {
        return Executors.newFixedThreadPool(Math.max(2, Math.min(Runtime.getRuntime().availableProcessors() - 1, 4)), new k1.b(z10));
    }
}
