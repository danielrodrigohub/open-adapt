package g0;

import android.os.Handler;
import java.util.concurrent.Callable;

/* JADX INFO: compiled from: RequestExecutor.java */
/* JADX INFO: loaded from: classes.dex */
public final class p<T> implements Runnable {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public Callable<T> f7530h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public i0.a<T> f7531i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public Handler f7532j;

    /* JADX INFO: compiled from: RequestExecutor.java */
    public class a implements Runnable {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public final /* synthetic */ i0.a f7533h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public final /* synthetic */ Object f7534i;

        public a(i0.a aVar, Object obj) {
            this.f7533h = aVar;
            this.f7534i = obj;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // java.lang.Runnable
        public final void run() {
            this.f7533h.b(this.f7534i);
        }
    }

    public p(Handler handler, Callable<T> callable, i0.a<T> aVar) {
        this.f7530h = callable;
        this.f7531i = aVar;
        this.f7532j = handler;
    }

    @Override // java.lang.Runnable
    public final void run() {
        T tCall;
        try {
            tCall = this.f7530h.call();
        } catch (Exception unused) {
            tCall = null;
        }
        this.f7532j.post(new a(this.f7531i, tCall));
    }
}
