package s9;

import android.app.Activity;
import android.os.Handler;
import android.os.Looper;
import com.newrelic.agent.android.NewRelic;
import com.nike.adapt.BigfootApplication;
import com.nike.adapt.adk.InMemoryCache;
import com.nike.adapt.ui.AdaptRestartActivity;
import com.nike.adapt.ui.LoginActivity;
import com.nike.adapt.ui.settings.AppIconsActivity;
import java.util.ArrayList;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.Dispatchers;

/* JADX INFO: compiled from: LogoutHelper.kt */
/* JADX INFO: loaded from: classes.dex */
public final class m {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final m f15208a = new m();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final h8.e f15209b = h8.e.f8306b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final h8.c f15210c = h8.c.f8298b;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final fd.h f15211d = (fd.h) androidx.lifecycle.o.x(b.f15213h);

    /* JADX INFO: compiled from: LogoutHelper.kt */
    @ld.e(c = "com.nike.adapt.util.LogoutHelper$logout$1$1", f = "LogoutHelper.kt", l = {65}, m = "invokeSuspend")
    public static final class a extends ld.i implements qd.p<CoroutineScope, jd.d<? super fd.o>, Object> {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public int f15212h;

        public a(jd.d<? super a> dVar) {
            super(2, dVar);
        }

        @Override // ld.a
        public final jd.d<fd.o> create(Object obj, jd.d<?> dVar) {
            return new a(dVar);
        }

        @Override // qd.p
        public final Object invoke(CoroutineScope coroutineScope, jd.d<? super fd.o> dVar) {
            return new a(dVar).invokeSuspend(fd.o.f7408a);
        }

        @Override // ld.a
        public final Object invokeSuspend(Object obj) throws Throwable {
            kd.a aVar = kd.a.COROUTINE_SUSPENDED;
            int i10 = this.f15212h;
            if (i10 == 0) {
                d3.e.p(obj);
                m mVar = m.f15208a;
                pb.b bVar = ((g8.a) m.f15211d.getValue()).f7856f;
                this.f15212h = 1;
                if (bVar.c(this) == aVar) {
                    return aVar;
                }
            } else {
                if (i10 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                d3.e.p(obj);
            }
            return fd.o.f7408a;
        }
    }

    /* JADX INFO: compiled from: LogoutHelper.kt */
    public static final class b extends rd.o implements qd.a<g8.a> {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public static final b f15213h = new b();

        public b() {
            super(0);
        }

        @Override // qd.a
        public final g8.a invoke() {
            return BigfootApplication.f5638p.c();
        }
    }

    public static /* synthetic */ void b(boolean z10, boolean z11, int i10) {
        m mVar = f15208a;
        if ((i10 & 1) != 0) {
            z10 = false;
        }
        boolean z12 = (i10 & 2) != 0;
        if ((i10 & 4) != 0) {
            z11 = false;
        }
        mVar.a(z10, z12, z11);
    }

    public final void a(boolean z10, boolean z11, boolean z12) {
        synchronized (this) {
            h8.c cVar = f15210c;
            if (cVar.m0().getBoolean("PREF_USER_LOGGED_IN", false)) {
                cVar.q0(false);
                if (!z10) {
                    o7.x xVar = o7.x.f12420a;
                    o7.x.f12420a.h("LogoutHelper", "User was logged out without logging out.", (120 & 4) != 0 ? o7.u.DEBUG : o7.u.ERROR, (120 & 8) != 0 ? null : null, null, (120 & 32) != 0 ? null : new Exception("Unwanted Logout"), (120 & 64) != 0 ? false : true);
                }
                BigfootApplication.e eVar = BigfootApplication.f5638p;
                new x.s(eVar.a()).f17676b.cancelAll();
                NewRelic.setUserId(null);
                m mVar = f15208a;
                v9.t.f16822a.g();
                InMemoryCache.INSTANCE.clear();
                g0.n.f7523f = null;
                g0.n.f7522e = null;
                g0.n.f7521d = null;
                c.f15180a.f(eVar.a());
                AppIconsActivity.a aVarQ = cVar.Q();
                ArrayList<v7.k> arrayListO = cVar.O();
                cVar.m0().edit().clear().commit();
                cVar.a(arrayListO);
                cVar.L(aVarQ);
                if (!z12) {
                    BuildersKt.runBlocking(Dispatchers.getIO(), new a(null));
                }
                f15209b.g();
                if (!z11) {
                    Activity activity = eVar.b().f5647h;
                    if (activity != null && !(activity instanceof LoginActivity)) {
                        h9.v.f8362c.e(activity);
                    }
                } else if (z12) {
                    new Handler(Looper.getMainLooper()).postDelayed(new Runnable() { // from class: s9.l
                        @Override // java.lang.Runnable
                        public final void run() {
                            m.f15208a.c(false, 0L);
                        }
                    }, 1000L);
                } else {
                    mVar.c(false, 0L);
                }
            }
        }
    }

    public final void c(boolean z10, long j10) {
        AdaptRestartActivity.A.a(z10, j10);
    }
}
