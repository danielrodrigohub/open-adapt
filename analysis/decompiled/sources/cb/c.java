package cb;

import android.app.Application;
import androidx.lifecycle.o;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import qd.l;
import v9.p0;
import v9.t;

/* JADX INFO: compiled from: ScanRepositoryImpl.kt */
/* JADX INFO: loaded from: classes.dex */
public final class c implements cb.a {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final c f4270b = new c();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final fd.d f4271c = o.w(1, new f());

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final fd.d f4272d = o.w(1, new g());

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final fd.d f4273e = o.w(1, new h());

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final Map<ka.d, p0<ka.b, ka.a>> f4274f = new ConcurrentHashMap();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static List<ka.c> f4275g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final a f4276h;

    /* JADX INFO: compiled from: ScanRepositoryImpl.kt */
    public static final class a implements jc.c {
        @Override // jc.c
        public final void a(jc.a aVar) {
            v9.d.a.a(d3.e.j(), null, "Device Updated: " + aVar, null, 5, null);
            z9.a.IO.b(new cb.b(aVar));
        }

        /* JADX WARN: Type inference failed for: r0v0, types: [java.util.Map<ka.d, v9.p0<ka.b, ka.a>>, java.util.concurrent.ConcurrentHashMap] */
        @Override // jc.c
        public final void b(Throwable th) {
            if (th != null) {
                Iterator it = c.f4274f.entrySet().iterator();
                while (it.hasNext()) {
                    ((p0) ((Map.Entry) it.next()).getValue()).b(new ka.a("Scanner shutdown experienced an issue, please check error", th));
                }
            }
        }

        /* JADX WARN: Type inference failed for: r5v11, types: [java.util.Map<ka.d, v9.p0<ka.b, ka.a>>, java.util.concurrent.ConcurrentHashMap] */
        /* JADX WARN: Type inference failed for: r5v5, types: [java.util.Map<ka.d, v9.p0<ka.b, ka.a>>, java.util.concurrent.ConcurrentHashMap] */
        @Override // jc.c
        public final void c(boolean z10, Throwable th) {
            if ((th instanceof jc.g ? (jc.g) th : null) != null) {
                c cVar = c.f4270b;
                c.d("ScanDiscoveryStartedError[message: " + ((jc.g) th).getMessage() + "]");
                Iterator it = c.f4274f.entrySet().iterator();
                while (it.hasNext()) {
                    ((p0) ((Map.Entry) it.next()).getValue()).b(new ka.a("Bluetooth is turned off", new y9.c(null, 1, null)));
                }
                return;
            }
            if (th == null) {
                c.f4270b.f("ScanDiscoveryStarted[started: " + z10 + "]");
                return;
            }
            c cVar2 = c.f4270b;
            c.d("ScanDiscoveryStartedError[message: " + th.getMessage() + "]");
            Iterator it2 = c.f4274f.entrySet().iterator();
            while (it2.hasNext()) {
                ((p0) ((Map.Entry) it2.next()).getValue()).b(new ka.a("Failed To Start Scanner", th));
            }
        }

        /* JADX WARN: Type inference failed for: r0v0, types: [java.util.Map<ka.d, v9.p0<ka.b, ka.a>>, java.util.concurrent.ConcurrentHashMap] */
        @Override // jc.c
        public final void d(int i10) {
            Iterator it = c.f4274f.entrySet().iterator();
            while (it.hasNext()) {
                ((p0) ((Map.Entry) it.next()).getValue()).b(new ka.a("Scanner failed to initialize for application. Scanning too often?", new y9.d(i10)));
            }
        }

        @Override // jc.c
        public final void e(jc.a aVar) {
            v9.d.a.a(d3.e.j(), null, "Device Found: " + aVar, null, 5, null);
            z9.a.IO.b(new cb.b(aVar));
        }
    }

    /* JADX INFO: compiled from: ScanRepositoryImpl.kt */
    public static final class b extends rd.o implements qd.a<Boolean> {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public static final b f4277h = new b();

        public b() {
            super(0);
        }

        @Override // qd.a
        public final Boolean invoke() {
            return Boolean.valueOf(c.f4270b.e().checkSelfPermission("android.permission.ACCESS_FINE_LOCATION") == 0);
        }
    }

    /* JADX INFO: renamed from: cb.c$c, reason: collision with other inner class name */
    /* JADX INFO: compiled from: ScanRepositoryImpl.kt */
    public static final class C0076c extends rd.o implements l<jc.c, fd.o> {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public static final C0076c f4278h = new C0076c();

        public C0076c() {
            super(1);
        }

        @Override // qd.l
        public final fd.o invoke(jc.c cVar) {
            jc.c cVar2 = cVar;
            p4.h.j(cVar2, "it");
            c cVar3 = c.f4270b;
            ((jc.f) c.f4273e.getValue()).a(cVar2);
            return fd.o.f7408a;
        }
    }

    /* JADX INFO: compiled from: ScanRepositoryImpl.kt */
    public static final class d extends rd.o implements qd.a<Boolean> {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public static final d f4279h = new d();

        public d() {
            super(0);
        }

        @Override // qd.a
        public final Boolean invoke() {
            return Boolean.valueOf(c.f4270b.e().checkSelfPermission("android.permission.BLUETOOTH_SCAN") == 0);
        }
    }

    /* JADX INFO: compiled from: ScanRepositoryImpl.kt */
    public static final class e extends rd.o implements l<jc.c, fd.o> {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public static final e f4280h = new e();

        public e() {
            super(1);
        }

        @Override // qd.l
        public final fd.o invoke(jc.c cVar) {
            jc.c cVar2 = cVar;
            p4.h.j(cVar2, "it");
            c cVar3 = c.f4270b;
            ((jc.f) c.f4273e.getValue()).a(cVar2);
            return fd.o.f7408a;
        }
    }

    /* JADX INFO: compiled from: InjectionKtx.kt */
    public static final class f extends rd.o implements qd.a<Application> {
        public f() {
            super(0);
        }

        @Override // qd.a
        public final Application invoke() {
            return t.f16822a.d();
        }
    }

    /* JADX INFO: compiled from: InjectionKtx.kt */
    public static final class g extends rd.o implements qd.a<fb.a> {
        public g() {
            super(0);
        }

        @Override // qd.a
        public final fb.a invoke() {
            int i10 = fb.a.f7247a;
            return fb.a.C0140a.f7248a.a();
        }
    }

    /* JADX INFO: compiled from: InjectionKtx.kt */
    public static final class h extends rd.o implements qd.a<jc.f> {
        public h() {
            super(0);
        }

        @Override // qd.a
        public final jc.f invoke() {
            int i10 = jc.f.f9505a;
            Application applicationE = c.f4270b.e();
            p4.h.j(applicationE, "application");
            return new jc.b(applicationE);
        }
    }

    static {
        List<ka.c> listSynchronizedList = Collections.synchronizedList(new ArrayList());
        p4.h.i(listSynchronizedList, "synchronizedList(ArrayLi…AdaptKitScannedDevice>())");
        f4275g = listSynchronizedList;
        f4276h = new a();
    }

    public static final void d(String str) {
        t tVar = t.f16822a;
        t.f16830i.a(new eb.b(new eb.a(a0.d.c("ScanRepository[", str, "]"))));
    }

    @Override // cb.a
    public final void a(ka.d dVar, p0<ka.b, ka.a> p0Var) {
        p4.h.j(dVar, "scanUUID");
        p4.h.j(p0Var, "resultListener");
        z9.a.IO.b(new cb.d(p0Var, d.f4279h, dVar, p0Var, e.f4280h));
    }

    @Override // cb.a
    public final void b(ka.d dVar, p0<ka.b, ka.a> p0Var) {
        p4.h.j(dVar, "scanUUID");
        p4.h.j(p0Var, "resultListener");
        z9.a.IO.b(new cb.d(p0Var, b.f4277h, dVar, p0Var, C0076c.f4278h));
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [java.util.Map<ka.d, v9.p0<ka.b, ka.a>>, java.util.concurrent.ConcurrentHashMap] */
    @Override // cb.a
    public final void c(ka.d dVar) {
        p4.h.j(dVar, "scanUUID");
        ?? r10 = f4274f;
        r10.remove(dVar);
        if (!r10.isEmpty()) {
            f("StopScanning, listeners still active count: " + r10.size());
            return;
        }
        ((jc.f) f4273e.getValue()).b();
        synchronized (f4275g) {
            c cVar = f4270b;
            cVar.f("ScannedDevice[Starting Device Results]");
            if (f4275g.isEmpty()) {
                cVar.f("ScannedDevice[Did Not Find any results in Scan]");
            } else {
                for (ka.c cVar2 : f4275g) {
                    f4270b.f("ScannedDevice[" + cVar2.a() + "]");
                }
            }
            f4270b.f("ScannedDevice[Stopping Device Results]");
            f4275g.clear();
        }
    }

    public final Application e() {
        return (Application) f4271c.getValue();
    }

    public final void f(String str) {
        t tVar = t.f16822a;
        t.f16830i.a(new eb.c(new eb.a(a0.d.c("ScanRepository[", str, "]"))));
    }
}
