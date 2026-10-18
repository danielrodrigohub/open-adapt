package androidx.work;

import android.annotation.SuppressLint;
import android.content.Context;
import androidx.annotation.Keep;
import k1.f;
import v1.c;

/* JADX INFO: loaded from: classes.dex */
public abstract class ListenableWorker {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public Context f3023h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public WorkerParameters f3024i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public volatile boolean f3025j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public boolean f3026k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public boolean f3027l;

    @Keep
    @SuppressLint({"BanKeepAnnotation"})
    public ListenableWorker(Context context, WorkerParameters workerParameters) {
        if (context == null) {
            throw new IllegalArgumentException("Application Context is null");
        }
        if (workerParameters == null) {
            throw new IllegalArgumentException("WorkerParameters is null");
        }
        this.f3023h = context;
        this.f3024i = workerParameters;
    }

    public x6.a<f> a() {
        c cVar = new c();
        cVar.k(new IllegalStateException("Expedited WorkRequests require a ListenableWorker to provide an implementation for `getForegroundInfoAsync()`"));
        return cVar;
    }

    public boolean b() {
        return this.f3027l;
    }

    public void d() {
    }

    public abstract x6.a<a> f();

    public final void g() {
        this.f3025j = true;
        d();
    }

    public static abstract class a {

        /* JADX INFO: renamed from: androidx.work.ListenableWorker$a$a, reason: collision with other inner class name */
        public static final class C0043a extends a {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public final androidx.work.b f3028a = androidx.work.b.f3050c;

            public final boolean equals(Object obj) {
                if (this == obj) {
                    return true;
                }
                if (obj == null || C0043a.class != obj.getClass()) {
                    return false;
                }
                return this.f3028a.equals(((C0043a) obj).f3028a);
            }

            public final int hashCode() {
                return this.f3028a.hashCode() + (C0043a.class.getName().hashCode() * 31);
            }

            public final String toString() {
                StringBuilder sbC = a0.b.c("Failure {mOutputData=");
                sbC.append(this.f3028a);
                sbC.append('}');
                return sbC.toString();
            }
        }

        public static final class b extends a {
            public final boolean equals(Object obj) {
                if (this == obj) {
                    return true;
                }
                return obj != null && b.class == obj.getClass();
            }

            public final int hashCode() {
                return b.class.getName().hashCode();
            }

            public final String toString() {
                return "Retry";
            }
        }

        public static final class c extends a {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public final androidx.work.b f3029a;

            public c() {
                this.f3029a = androidx.work.b.f3050c;
            }

            public final boolean equals(Object obj) {
                if (this == obj) {
                    return true;
                }
                if (obj == null || c.class != obj.getClass()) {
                    return false;
                }
                return this.f3029a.equals(((c) obj).f3029a);
            }

            public final int hashCode() {
                return this.f3029a.hashCode() + (c.class.getName().hashCode() * 31);
            }

            public final String toString() {
                StringBuilder sbC = a0.b.c("Success {mOutputData=");
                sbC.append(this.f3029a);
                sbC.append('}');
                return sbC.toString();
            }

            public c(androidx.work.b bVar) {
                this.f3029a = bVar;
            }
        }
    }
}
