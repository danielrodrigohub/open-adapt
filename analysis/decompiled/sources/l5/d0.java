package l5;

import android.annotation.SuppressLint;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.SystemClock;
import com.newrelic.agent.android.crash.CrashSender;
import java.io.IOException;
import java.util.Objects;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

/* JADX INFO: compiled from: Loader.java */
/* JADX INFO: loaded from: classes.dex */
public final class d0 implements e0 {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final b f9989d = new b(0, -9223372036854775807L);

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final b f9990e = new b(2, -9223372036854775807L);

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final b f9991f = new b(3, -9223372036854775807L);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ExecutorService f9992a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public c<? extends d> f9993b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public IOException f9994c;

    /* JADX INFO: compiled from: Loader.java */
    public interface a<T extends d> {
        void h(T t10, long j10, long j11);

        void k(T t10, long j10, long j11, boolean z10);

        b m(T t10, long j10, long j11, IOException iOException, int i10);
    }

    /* JADX INFO: compiled from: Loader.java */
    public static final class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final int f9995a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final long f9996b;

        public b(int i10, long j10) {
            this.f9995a = i10;
            this.f9996b = j10;
        }

        public final boolean a() {
            int i10 = this.f9995a;
            return i10 == 0 || i10 == 1;
        }
    }

    /* JADX INFO: compiled from: Loader.java */
    @SuppressLint({"HandlerLeak"})
    public final class c<T extends d> extends Handler implements Runnable {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public final int f9997h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public final T f9998i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public final long f9999j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public a<T> f10000k;

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        public IOException f10001l;

        /* JADX INFO: renamed from: m, reason: collision with root package name */
        public int f10002m;

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        public Thread f10003n;

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        public boolean f10004o;

        /* JADX INFO: renamed from: p, reason: collision with root package name */
        public volatile boolean f10005p;

        public c(Looper looper, T t10, a<T> aVar, int i10, long j10) {
            super(looper);
            this.f9998i = t10;
            this.f10000k = aVar;
            this.f9997h = i10;
            this.f9999j = j10;
        }

        public final void a(boolean z10) {
            this.f10005p = z10;
            this.f10001l = null;
            if (hasMessages(0)) {
                this.f10004o = true;
                removeMessages(0);
                if (!z10) {
                    sendEmptyMessage(1);
                }
            } else {
                synchronized (this) {
                    this.f10004o = true;
                    this.f9998i.b();
                    Thread thread = this.f10003n;
                    if (thread != null) {
                        thread.interrupt();
                    }
                }
            }
            if (z10) {
                d0.this.f9993b = null;
                long jElapsedRealtime = SystemClock.elapsedRealtime();
                a<T> aVar = this.f10000k;
                Objects.requireNonNull(aVar);
                aVar.k(this.f9998i, jElapsedRealtime, jElapsedRealtime - this.f9999j, true);
                this.f10000k = null;
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        public final void b(long j10) {
            m5.a.e(d0.this.f9993b == null);
            d0 d0Var = d0.this;
            d0Var.f9993b = this;
            if (j10 > 0) {
                sendEmptyMessageDelayed(0, j10);
                return;
            }
            this.f10001l = null;
            ExecutorService executorService = d0Var.f9992a;
            Objects.requireNonNull(this);
            executorService.execute(this);
        }

        @Override // android.os.Handler
        public final void handleMessage(Message message) {
            if (this.f10005p) {
                return;
            }
            int i10 = message.what;
            if (i10 == 0) {
                this.f10001l = null;
                d0 d0Var = d0.this;
                ExecutorService executorService = d0Var.f9992a;
                c<? extends d> cVar = d0Var.f9993b;
                Objects.requireNonNull(cVar);
                executorService.execute(cVar);
                return;
            }
            if (i10 == 3) {
                throw ((Error) message.obj);
            }
            d0.this.f9993b = null;
            long jElapsedRealtime = SystemClock.elapsedRealtime();
            long j10 = jElapsedRealtime - this.f9999j;
            a<T> aVar = this.f10000k;
            Objects.requireNonNull(aVar);
            if (this.f10004o) {
                aVar.k(this.f9998i, jElapsedRealtime, j10, false);
                return;
            }
            int i11 = message.what;
            if (i11 == 1) {
                try {
                    aVar.h(this.f9998i, jElapsedRealtime, j10);
                    return;
                } catch (RuntimeException e10) {
                    m5.p.d("LoadTask", "Unexpected exception handling load completed", e10);
                    d0.this.f9994c = new g(e10);
                    return;
                }
            }
            if (i11 != 2) {
                return;
            }
            IOException iOException = (IOException) message.obj;
            this.f10001l = iOException;
            int i12 = this.f10002m + 1;
            this.f10002m = i12;
            b bVarM = aVar.m(this.f9998i, jElapsedRealtime, j10, iOException, i12);
            int i13 = bVarM.f9995a;
            if (i13 == 3) {
                d0.this.f9994c = this.f10001l;
            } else if (i13 != 2) {
                if (i13 == 1) {
                    this.f10002m = 1;
                }
                long jMin = bVarM.f9996b;
                if (jMin == -9223372036854775807L) {
                    jMin = Math.min((this.f10002m - 1) * 1000, CrashSender.CRASH_COLLECTOR_TIMEOUT);
                }
                b(jMin);
            }
        }

        @Override // java.lang.Runnable
        public final void run() {
            boolean z10;
            try {
                synchronized (this) {
                    z10 = !this.f10004o;
                    this.f10003n = Thread.currentThread();
                }
                if (z10) {
                    i0.b.d("load:" + this.f9998i.getClass().getSimpleName());
                    try {
                        this.f9998i.a();
                        i0.b.g();
                    } catch (Throwable th) {
                        i0.b.g();
                        throw th;
                    }
                }
                synchronized (this) {
                    this.f10003n = null;
                    Thread.interrupted();
                }
                if (this.f10005p) {
                    return;
                }
                sendEmptyMessage(1);
            } catch (IOException e10) {
                if (this.f10005p) {
                    return;
                }
                obtainMessage(2, e10).sendToTarget();
            } catch (Error e11) {
                if (!this.f10005p) {
                    m5.p.d("LoadTask", "Unexpected error loading stream", e11);
                    obtainMessage(3, e11).sendToTarget();
                }
                throw e11;
            } catch (Exception e12) {
                if (this.f10005p) {
                    return;
                }
                m5.p.d("LoadTask", "Unexpected exception loading stream", e12);
                obtainMessage(2, new g(e12)).sendToTarget();
            } catch (OutOfMemoryError e13) {
                if (this.f10005p) {
                    return;
                }
                m5.p.d("LoadTask", "OutOfMemory error loading stream", e13);
                obtainMessage(2, new g(e13)).sendToTarget();
            }
        }
    }

    /* JADX INFO: compiled from: Loader.java */
    public interface d {
        void a() throws IOException;

        void b();
    }

    /* JADX INFO: compiled from: Loader.java */
    public interface e {
        void i();
    }

    /* JADX INFO: compiled from: Loader.java */
    public static final class f implements Runnable {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public final e f10007h;

        public f(e eVar) {
            this.f10007h = eVar;
        }

        @Override // java.lang.Runnable
        public final void run() {
            this.f10007h.i();
        }
    }

    /* JADX INFO: compiled from: Loader.java */
    public static final class g extends IOException {
        /* JADX WARN: Illegal instructions before constructor call */
        public g(Throwable th) {
            StringBuilder sbC = a0.b.c("Unexpected ");
            sbC.append(th.getClass().getSimpleName());
            sbC.append(": ");
            sbC.append(th.getMessage());
            super(sbC.toString(), th);
        }
    }

    public d0(String str) {
        String strC = androidx.recyclerview.widget.d.c("ExoPlayer:Loader:", str);
        int i10 = m5.g0.f10384a;
        this.f9992a = Executors.newSingleThreadExecutor(new m5.f0(strC, 0));
    }

    public final void a() {
        c<? extends d> cVar = this.f9993b;
        m5.a.f(cVar);
        cVar.a(false);
    }

    @Override // l5.e0
    public final void b() throws IOException {
        e(Integer.MIN_VALUE);
    }

    public final boolean c() {
        return this.f9994c != null;
    }

    public final boolean d() {
        return this.f9993b != null;
    }

    public final void e(int i10) throws IOException {
        IOException iOException = this.f9994c;
        if (iOException != null) {
            throw iOException;
        }
        c<? extends d> cVar = this.f9993b;
        if (cVar != null) {
            if (i10 == Integer.MIN_VALUE) {
                i10 = cVar.f9997h;
            }
            IOException iOException2 = cVar.f10001l;
            if (iOException2 != null && cVar.f10002m > i10) {
                throw iOException2;
            }
        }
    }

    public final void f(e eVar) {
        c<? extends d> cVar = this.f9993b;
        if (cVar != null) {
            cVar.a(true);
        }
        if (eVar != null) {
            this.f9992a.execute(new f(eVar));
        }
        this.f9992a.shutdown();
    }

    public final <T extends d> long g(T t10, a<T> aVar, int i10) {
        Looper looperMyLooper = Looper.myLooper();
        m5.a.f(looperMyLooper);
        this.f9994c = null;
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        new c(looperMyLooper, t10, aVar, i10, jElapsedRealtime).b(0L);
        return jElapsedRealtime;
    }
}
