package cc;

import androidx.activity.k;
import androidx.fragment.app.p;
import fa.m;
import gd.z;
import java.util.LinkedHashMap;
import java.util.concurrent.atomic.AtomicReference;
import kotlinx.coroutines.CoroutineDispatcher;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.Dispatchers;
import kotlinx.coroutines.sync.Mutex;
import kotlinx.coroutines.sync.MutexKt;
import kotlinx.serialization.json.JsonElement;
import kotlinx.serialization.json.JsonElementKt;
import kotlinx.serialization.json.JsonPrimitive;
import okhttp3.internal.http.HttpStatusCodesKt;
import qd.l;
import rd.o;
import retrofit2.HttpException;

/* JADX INFO: compiled from: OIDCRepositoryImpl.kt */
/* JADX INFO: loaded from: classes.dex */
public final class e implements cc.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ob.a f4291a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final dc.b f4292b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final pb.d f4293c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final CoroutineDispatcher f4294d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final CoroutineScope f4295e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final Mutex f4296f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final Mutex f4297g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final Mutex f4298h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final fd.h f4299i;

    /* JADX INFO: compiled from: OIDCRepositoryImpl.kt */
    @ld.e(c = "com.nike.authcomponent.oidc.internal.repository.OIDCRepositoryImpl", f = "OIDCRepositoryImpl.kt", l = {236}, m = "checkNotRecoverable")
    public static final class a extends ld.c {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public e f4300h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public ob.e.d f4301i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public /* synthetic */ Object f4302j;

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        public int f4304l;

        public a(jd.d<? super a> dVar) {
            super(dVar);
        }

        @Override // ld.a
        public final Object invokeSuspend(Object obj) {
            this.f4302j = obj;
            this.f4304l |= Integer.MIN_VALUE;
            return e.this.g(null, this);
        }
    }

    /* JADX INFO: compiled from: OIDCRepositoryImpl.kt */
    @ld.e(c = "com.nike.authcomponent.oidc.internal.repository.OIDCRepositoryImpl", f = "OIDCRepositoryImpl.kt", l = {270, 185}, m = "getCredential")
    public static final class b extends ld.c {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public Object f4305h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public Mutex f4306i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public /* synthetic */ Object f4307j;

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        public int f4309l;

        public b(jd.d<? super b> dVar) {
            super(dVar);
        }

        @Override // ld.a
        public final Object invokeSuspend(Object obj) {
            this.f4307j = obj;
            this.f4309l |= Integer.MIN_VALUE;
            return e.this.a(this);
        }
    }

    /* JADX INFO: compiled from: OIDCRepositoryImpl.kt */
    @ld.e(c = "com.nike.authcomponent.oidc.internal.repository.OIDCRepositoryImpl", f = "OIDCRepositoryImpl.kt", l = {HttpStatusCodesKt.HTTP_NO_CONTENT, HttpStatusCodesKt.HTTP_PARTIAL_CONTENT, 211}, m = "refreshUserCredential")
    public static final class c extends ld.c {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public Object f4310h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public Object f4311i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public ob.c f4312j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public /* synthetic */ Object f4313k;

        /* JADX INFO: renamed from: m, reason: collision with root package name */
        public int f4315m;

        public c(jd.d<? super c> dVar) {
            super(dVar);
        }

        @Override // ld.a
        public final Object invokeSuspend(Object obj) {
            this.f4313k = obj;
            this.f4315m |= Integer.MIN_VALUE;
            return e.this.k(null, this);
        }
    }

    /* JADX INFO: compiled from: OIDCRepositoryImpl.kt */
    @ld.e(c = "com.nike.authcomponent.oidc.internal.repository.OIDCRepositoryImpl", f = "OIDCRepositoryImpl.kt", l = {270, 258}, m = "removeCredential")
    public static final class d extends ld.c {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public Object f4316h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public Mutex f4317i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public /* synthetic */ Object f4318j;

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        public int f4320l;

        public d(jd.d<? super d> dVar) {
            super(dVar);
        }

        @Override // ld.a
        public final Object invokeSuspend(Object obj) {
            this.f4318j = obj;
            this.f4320l |= Integer.MIN_VALUE;
            return e.this.l(this);
        }
    }

    /* JADX INFO: renamed from: cc.e$e, reason: collision with other inner class name */
    /* JADX INFO: compiled from: OIDCRepositoryImpl.kt */
    @ld.e(c = "com.nike.authcomponent.oidc.internal.repository.OIDCRepositoryImpl", f = "OIDCRepositoryImpl.kt", l = {270, 246}, m = "saveCredential")
    public static final class C0077e extends ld.c {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public Object f4321h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public e f4322i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public Mutex f4323j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public /* synthetic */ Object f4324k;

        /* JADX INFO: renamed from: m, reason: collision with root package name */
        public int f4326m;

        public C0077e(jd.d<? super C0077e> dVar) {
            super(dVar);
        }

        @Override // ld.a
        public final Object invokeSuspend(Object obj) {
            this.f4324k = obj;
            this.f4326m |= Integer.MIN_VALUE;
            return e.this.m(null, this);
        }
    }

    /* JADX INFO: compiled from: OIDCRepositoryImpl.kt */
    @ld.e(c = "com.nike.authcomponent.oidc.internal.repository.OIDCRepositoryImpl", f = "OIDCRepositoryImpl.kt", l = {270, 106, 112, 116}, m = "signIn")
    public static final class f extends ld.c {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public e f4327h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public Object f4328i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public Object f4329j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public ob.c f4330k;

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        public /* synthetic */ Object f4331l;

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        public int f4333n;

        public f(jd.d<? super f> dVar) {
            super(dVar);
        }

        @Override // ld.a
        public final Object invokeSuspend(Object obj) {
            this.f4331l = obj;
            this.f4333n |= Integer.MIN_VALUE;
            return e.this.c(null, this);
        }
    }

    /* JADX INFO: compiled from: OIDCRepositoryImpl.kt */
    public static final class g extends o implements qd.a<fd.o> {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public static final g f4334h = new g();

        public g() {
            super(0);
        }

        @Override // qd.a
        public final fd.o invoke() {
            throw new ob.e.g();
        }
    }

    /* JADX INFO: compiled from: OIDCRepositoryImpl.kt */
    public static final class h extends o implements l<ob.c, fd.o> {
        public h() {
            super(1);
        }

        @Override // qd.l
        public final fd.o invoke(ob.c cVar) {
            u9.b bVarD = e.this.f4291a.f12530a.d();
            p4.h.j(bVarD, "<this>");
            LinkedHashMap linkedHashMap = new LinkedHashMap();
            LinkedHashMap linkedHashMap2 = new LinkedHashMap();
            linkedHashMap2.put("name", "oidc-auth-component");
            linkedHashMap2.put("version", "0.13.0");
            linkedHashMap.put("module", linkedHashMap2);
            linkedHashMap.put("classification", "core buy flow");
            linkedHashMap.put("eventName", "Account Logged Out");
            linkedHashMap.put("clickActivity", "profile:log out");
            linkedHashMap.put("view", z.A(new fd.e("pageName", p4.h.B("profile", "")), new fd.e("pageType", "profile")));
            bVarD.a(new u9.a.C0279a("Account Logged Out", linkedHashMap, 2));
            return fd.o.f7408a;
        }
    }

    /* JADX INFO: compiled from: OIDCRepositoryImpl.kt */
    @ld.e(c = "com.nike.authcomponent.oidc.internal.repository.OIDCRepositoryImpl", f = "OIDCRepositoryImpl.kt", l = {161, 165, 169}, m = "signOutInternal")
    public static final class i extends ld.c {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public Object f4336h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public l f4337i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public Object f4338j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public ob.c f4339k;

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        public /* synthetic */ Object f4340l;

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        public int f4342n;

        public i(jd.d<? super i> dVar) {
            super(dVar);
        }

        @Override // ld.a
        public final Object invokeSuspend(Object obj) {
            this.f4340l = obj;
            this.f4342n |= Integer.MIN_VALUE;
            return e.this.n(null, this);
        }
    }

    public e(ob.a aVar) {
        dc.a aVar2 = new dc.a(aVar.f12530a.c(), aVar.f12530a.f());
        yb.e eVar = new yb.e(aVar);
        CoroutineDispatcher io = Dispatchers.getIO();
        p4.h.j(io, "dispatcher");
        this.f4291a = aVar;
        this.f4292b = aVar2;
        this.f4293c = eVar;
        this.f4294d = io;
        this.f4295e = aVar.f12530a.a();
        this.f4296f = MutexKt.Mutex$default(false, 1, null);
        this.f4297g = MutexKt.Mutex$default(false, 1, null);
        this.f4298h = MutexKt.Mutex$default(false, 1, null);
        this.f4299i = (fd.h) androidx.lifecycle.o.x(new cc.d(this));
        h(b(), new cc.b(this));
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override // cc.a
    public final Object a(jd.d<? super ob.c> dVar) throws Throwable {
        b bVar;
        Mutex mutex;
        e eVar;
        ob.c cVarB;
        Mutex mutex2;
        Object objG;
        if (dVar instanceof b) {
            bVar = (b) dVar;
            int i10 = bVar.f4309l;
            if ((i10 & Integer.MIN_VALUE) != 0) {
                bVar.f4309l = i10 - Integer.MIN_VALUE;
            } else {
                bVar = new b(dVar);
            }
        } else {
            bVar = new b(dVar);
        }
        Object objK = bVar.f4307j;
        kd.a aVar = kd.a.COROUTINE_SUSPENDED;
        int i11 = bVar.f4309l;
        boolean z10 = true;
        try {
            if (i11 == 0) {
                d3.e.p(objK);
                mutex = this.f4298h;
                bVar.f4305h = this;
                bVar.f4306i = mutex;
                bVar.f4309l = 1;
                if (mutex.lock(null, bVar) == aVar) {
                    return aVar;
                }
                eVar = this;
            } else {
                if (i11 != 1) {
                    if (i11 != 2) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    mutex2 = (Mutex) bVar.f4305h;
                    try {
                        d3.e.p(objK);
                        objG = (ob.c) objK;
                        mutex = mutex2;
                    } catch (Throwable th) {
                        th = th;
                        mutex = mutex2;
                        objG = d3.e.g(th);
                    }
                    d3.e.p(objG);
                    cVarB = (ob.c) objG;
                    mutex.unlock(null);
                    return cVarB;
                }
                mutex = bVar.f4306i;
                eVar = (e) bVar.f4305h;
                d3.e.p(objK);
            }
            cVarB = eVar.b();
            if (cVarB == null) {
                eVar.f4293c.b();
                mutex.unlock(null);
                return null;
            }
            int i12 = ob.d.f12533b;
            if (!(System.currentTimeMillis() >= cVarB.getExpirationDate())) {
                if (!(((double) (cVarB.getExpirationDate() - System.currentTimeMillis())) <= ob.d.f12532a)) {
                    z10 = false;
                }
            }
            if (z10) {
                try {
                    String refreshToken = cVarB.getRefreshToken();
                    bVar.f4305h = mutex;
                    bVar.f4306i = null;
                    bVar.f4309l = 2;
                    objK = eVar.k(refreshToken, bVar);
                    if (objK == aVar) {
                        return aVar;
                    }
                    mutex2 = mutex;
                    objG = (ob.c) objK;
                    mutex = mutex2;
                    d3.e.p(objG);
                    cVarB = (ob.c) objG;
                } catch (Throwable th2) {
                    th = th2;
                    objG = d3.e.g(th);
                }
            }
            mutex.unlock(null);
            return cVarB;
        } catch (Throwable th3) {
            mutex.unlock(null);
            throw th3;
        }
    }

    @Override // cc.a
    public final ob.c b() {
        return i().get();
    }

    /* JADX WARN: Code duplicated, block: B:48:0x00bf A[Catch: all -> 0x0119, TRY_LEAVE, TryCatch #4 {all -> 0x0119, blocks: (B:54:0x00eb, B:56:0x00f1, B:46:0x00b9, B:48:0x00bf, B:45:0x00b4), top: B:77:0x00b4 }] */
    /* JADX WARN: Code duplicated, block: B:50:0x00d2 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:51:0x00d3  */
    /* JADX WARN: Code duplicated, block: B:56:0x00f1 A[Catch: all -> 0x0119, TRY_LEAVE, TryCatch #4 {all -> 0x0119, blocks: (B:54:0x00eb, B:56:0x00f1, B:46:0x00b9, B:48:0x00bf, B:45:0x00b4), top: B:77:0x00b4 }] */
    /* JADX WARN: Code duplicated, block: B:58:0x0101 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:59:0x0102  */
    /* JADX WARN: Code duplicated, block: B:63:0x0112  */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override // cc.a
    public final Object c(p pVar, jd.d<? super ob.c> dVar) throws Throwable {
        f fVar;
        Mutex mutex;
        p pVar2;
        e eVar;
        e eVar2;
        Throwable th;
        Mutex mutex2;
        Object objG;
        ob.c cVar;
        Mutex mutex3;
        Throwable thA;
        Mutex mutex4;
        e eVar3;
        if (dVar instanceof f) {
            fVar = (f) dVar;
            int i10 = fVar.f4333n;
            if ((i10 & Integer.MIN_VALUE) != 0) {
                fVar.f4333n = i10 - Integer.MIN_VALUE;
            } else {
                fVar = new f(dVar);
            }
        } else {
            fVar = new f(dVar);
        }
        Object obj = fVar.f4331l;
        kd.a aVar = kd.a.COROUTINE_SUSPENDED;
        int i11 = fVar.f4333n;
        try {
            if (i11 == 0) {
                d3.e.p(obj);
                mutex = this.f4296f;
                fVar.f4327h = this;
                fVar.f4328i = pVar;
                fVar.f4329j = mutex;
                fVar.f4333n = 1;
                if (mutex.lock(null, fVar) == aVar) {
                    return aVar;
                }
                pVar2 = pVar;
                eVar = this;
            } else {
                if (i11 != 1) {
                    if (i11 != 2) {
                        if (i11 != 3) {
                            if (i11 != 4) {
                                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                            }
                            thA = (Throwable) fVar.f4329j;
                            mutex4 = (Mutex) fVar.f4328i;
                            eVar3 = fVar.f4327h;
                            try {
                                d3.e.p(obj);
                                ob.e eVarK = androidx.appcompat.widget.p.k(thA);
                                ec.b.e(eVar3.j(), eVarK);
                                throw eVarK;
                            } catch (Throwable th2) {
                                th = th2;
                                mutex3 = mutex4;
                                mutex3.unlock(null);
                                throw th;
                            }
                        }
                        cVar = fVar.f4330k;
                        objG = fVar.f4329j;
                        mutex3 = (Mutex) fVar.f4328i;
                        eVar2 = fVar.f4327h;
                        try {
                            d3.e.p(obj);
                            k.v(eVar2.f4291a.f12530a.d(), cVar, eVar2.j());
                            ec.b.f(eVar2.j(), cVar);
                            mutex = mutex3;
                            thA = fd.f.a(objG);
                            if (thA == null) {
                                mutex.unlock(null);
                                d3.e.p(objG);
                                return objG;
                            }
                            fVar.f4327h = eVar2;
                            fVar.f4328i = mutex;
                            fVar.f4329j = thA;
                            fVar.f4330k = null;
                            fVar.f4333n = 4;
                            if (eVar2.l(fVar) == aVar) {
                                return aVar;
                            }
                            mutex4 = mutex;
                            eVar3 = eVar2;
                            ob.e eVarK2 = androidx.appcompat.widget.p.k(thA);
                            ec.b.e(eVar3.j(), eVarK2);
                            throw eVarK2;
                        } catch (Throwable th3) {
                            th = th3;
                            mutex3.unlock(null);
                            throw th;
                        }
                    }
                    eVar = (e) fVar.f4329j;
                    mutex2 = (Mutex) fVar.f4328i;
                    eVar2 = fVar.f4327h;
                    try {
                        d3.e.p(obj);
                        ob.c cVar2 = (ob.c) obj;
                        eVar.h(cVar2, g.f4334h);
                        Mutex mutex5 = mutex2;
                        objG = cVar2;
                        mutex = mutex5;
                    } catch (Throwable th4) {
                        th = th4;
                        mutex = mutex2;
                        try {
                            objG = d3.e.g(th);
                        } catch (Throwable th5) {
                            th = th5;
                            mutex3 = mutex;
                            mutex3.unlock(null);
                            throw th;
                        }
                    }
                    if (!(objG instanceof fd.f.a)) {
                        cVar = (ob.c) objG;
                        fVar.f4327h = eVar2;
                        fVar.f4328i = mutex;
                        fVar.f4329j = objG;
                        fVar.f4330k = cVar;
                        fVar.f4333n = 3;
                        if (eVar2.m(cVar, fVar) == aVar) {
                            return aVar;
                        }
                        mutex3 = mutex;
                        k.v(eVar2.f4291a.f12530a.d(), cVar, eVar2.j());
                        ec.b.f(eVar2.j(), cVar);
                        mutex = mutex3;
                    }
                    thA = fd.f.a(objG);
                    if (thA == null) {
                        mutex.unlock(null);
                        d3.e.p(objG);
                        return objG;
                    }
                    fVar.f4327h = eVar2;
                    fVar.f4328i = mutex;
                    fVar.f4329j = thA;
                    fVar.f4330k = null;
                    fVar.f4333n = 4;
                    if (eVar2.l(fVar) == aVar) {
                        return aVar;
                    }
                    mutex4 = mutex;
                    eVar3 = eVar2;
                    ob.e eVarK3 = androidx.appcompat.widget.p.k(thA);
                    ec.b.e(eVar3.j(), eVarK3);
                    throw eVarK3;
                }
                Mutex mutex6 = (Mutex) fVar.f4329j;
                pVar2 = (p) fVar.f4328i;
                e eVar4 = fVar.f4327h;
                d3.e.p(obj);
                mutex = mutex6;
                eVar = eVar4;
            }
            pb.d dVar2 = eVar.f4293c;
            fVar.f4327h = eVar;
            fVar.f4328i = mutex;
            fVar.f4329j = eVar;
            fVar.f4333n = 2;
            Object objD = dVar2.d(pVar2, null, fVar);
            if (objD == aVar) {
                return aVar;
            }
            eVar2 = eVar;
            mutex2 = mutex;
            obj = objD;
            ob.c cVar3 = (ob.c) obj;
            eVar.h(cVar3, g.f4334h);
            Mutex mutex7 = mutex2;
            objG = cVar3;
            mutex = mutex7;
            if (!(objG instanceof fd.f.a)) {
                cVar = (ob.c) objG;
                fVar.f4327h = eVar2;
                fVar.f4328i = mutex;
                fVar.f4329j = objG;
                fVar.f4330k = cVar;
                fVar.f4333n = 3;
                if (eVar2.m(cVar, fVar) == aVar) {
                    return aVar;
                }
                mutex3 = mutex;
                k.v(eVar2.f4291a.f12530a.d(), cVar, eVar2.j());
                ec.b.f(eVar2.j(), cVar);
                mutex = mutex3;
            }
            thA = fd.f.a(objG);
            if (thA == null) {
                mutex.unlock(null);
                d3.e.p(objG);
                return objG;
            }
            fVar.f4327h = eVar2;
            fVar.f4328i = mutex;
            fVar.f4329j = thA;
            fVar.f4330k = null;
            fVar.f4333n = 4;
            if (eVar2.l(fVar) == aVar) {
                return aVar;
            }
            mutex4 = mutex;
            eVar3 = eVar2;
            ob.e eVarK4 = androidx.appcompat.widget.p.k(thA);
            ec.b.e(eVar3.j(), eVarK4);
            throw eVarK4;
        } catch (Throwable th6) {
            eVar2 = eVar;
            th = th6;
            objG = d3.e.g(th);
        }
    }

    @Override // cc.a
    public final ob.a d() {
        return this.f4291a;
    }

    @Override // cc.a
    public final ob.h e() {
        return new vb.a(this);
    }

    @Override // cc.a
    public final Object f(jd.d<? super fd.o> dVar) throws Throwable {
        Object objN = n(new h(), dVar);
        return objN == kd.a.COROUTINE_SUSPENDED ? objN : fd.o.f7408a;
    }

    /* JADX WARN: Code duplicated, block: B:27:0x0060  */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object g(Throwable th, jd.d<? super fd.o> dVar) throws Throwable {
        a aVar;
        boolean z10;
        e eVar;
        ob.e.d dVar2;
        if (dVar instanceof a) {
            aVar = (a) dVar;
            int i10 = aVar.f4304l;
            if ((i10 & Integer.MIN_VALUE) != 0) {
                aVar.f4304l = i10 - Integer.MIN_VALUE;
            } else {
                aVar = new a(dVar);
            }
        } else {
            aVar = new a(dVar);
        }
        Object obj = aVar.f4302j;
        kd.a aVar2 = kd.a.COROUTINE_SUSPENDED;
        int i11 = aVar.f4304l;
        if (i11 == 0) {
            d3.e.p(obj);
            boolean z11 = (th instanceof com.nike.authcomponent.oidc.internal.appauth.source.a) && ((com.nike.authcomponent.oidc.internal.appauth.source.a) th).f5931h == 2;
            if (th instanceof HttpException) {
                HttpException httpException = (HttpException) th;
                if (httpException.code() == 400 || httpException.code() == 401) {
                    z10 = true;
                } else {
                    z10 = false;
                }
            } else {
                z10 = false;
            }
            if (!z11 && !(th instanceof IllegalArgumentException) && !(th instanceof NullPointerException) && !z10) {
                return fd.o.f7408a;
            }
            ob.e.d dVar3 = new ob.e.d("Failed to refresh", th);
            this.f4291a.f12530a.b().a(dVar3);
            aVar.f4300h = this;
            aVar.f4301i = dVar3;
            aVar.f4304l = 1;
            if (l(aVar) == aVar2) {
                return aVar2;
            }
            eVar = this;
            dVar2 = dVar3;
        } else {
            if (i11 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            dVar2 = aVar.f4301i;
            eVar = aVar.f4300h;
            d3.e.p(obj);
        }
        ed.e eVarJ = eVar.j();
        p4.h.j(eVarJ, "<this>");
        p4.h.j(dVar2, "error");
        Throwable th2 = dVar2.f12535i;
        Integer numC = th2 == null ? null : ec.b.c(th2);
        eVarJ.b(new ed.b(5, "Token_Refresh_Unrecoverable", "Token refresh failed with status code: " + numC + " and error: " + dVar2, ec.b.a(dVar2.f12534h, null, numC, 0, 22), ec.a.f6718a.a(androidx.lifecycle.o.z(ec.a.f6722e, ec.a.f6723f, ec.a.f6727j))));
        throw dVar2;
    }

    public final void h(ob.c cVar, qd.a<fd.o> aVar) {
        int i10;
        JsonPrimitive jsonPrimitive;
        int iB = this.f4291a.f12531b.b();
        if (cVar == null) {
            i10 = 0;
        } else {
            ed.e eVarJ = j();
            int i11 = ob.d.f12533b;
            p4.h.j(eVarJ, "telemetryProvider");
            try {
                JsonElement jsonElement = ob.d.a(cVar, eVarJ).f18121a.b().get("iss");
                i10 = p4.h.c((jsonElement != null && (jsonPrimitive = JsonElementKt.getJsonPrimitive(jsonElement)) != null) ? jsonPrimitive.getContent() : null, "https://accounts.nike.com.cn") ? 2 : 1;
            } catch (Throwable th) {
                d3.e.g(th);
                i10 = 0;
            }
        }
        if (i10 == 0 || i10 == iB) {
            return;
        }
        ed.e eVarJ2 = j();
        p4.h.j(eVarJ2, "<this>");
        androidx.appcompat.widget.o.d(iB, "stack");
        StringBuilder sbC = a0.b.c("Current stack ");
        sbC.append(m.h(iB));
        sbC.append(" does not match credential");
        eVarJ2.b(new ed.b(4, "Stack_Not_Matching", sbC.toString(), ec.b.a(null, null, null, iB, 15), ec.a.f6718a.a(androidx.lifecycle.o.y(ec.a.f6728k))));
        aVar.invoke();
    }

    public final AtomicReference<ob.c> i() {
        return (AtomicReference) this.f4299i.getValue();
    }

    public final ed.e j() {
        return this.f4291a.f12530a.f();
    }

    /* JADX WARN: Code duplicated, block: B:40:0x00cd  */
    /* JADX WARN: Code duplicated, block: B:42:0x011b A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:43:0x011c  */
    /* JADX WARN: Code duplicated, block: B:7:0x0017  */
    public final Object k(String str, jd.d<? super ob.c> dVar) throws Throwable {
        c cVar;
        e eVar;
        Object objG;
        Object obj;
        e eVar2;
        ob.c cVar2;
        Throwable thA;
        Object obj2;
        if (dVar instanceof c) {
            cVar = (c) dVar;
            int i10 = cVar.f4315m;
            if ((i10 & Integer.MIN_VALUE) != 0) {
                cVar.f4315m = i10 - Integer.MIN_VALUE;
            } else {
                cVar = new c(dVar);
            }
        } else {
            cVar = new c(dVar);
        }
        Object objC = cVar.f4313k;
        kd.a aVar = kd.a.COROUTINE_SUSPENDED;
        int i11 = cVar.f4315m;
        if (i11 != 0) {
            if (i11 == 1) {
                eVar = (e) cVar.f4310h;
                try {
                    d3.e.p(objC);
                } catch (Throwable th) {
                    th = th;
                    objG = d3.e.g(th);
                }
            } else {
                if (i11 == 2) {
                    cVar2 = cVar.f4312j;
                    obj = cVar.f4311i;
                    eVar2 = (e) cVar.f4310h;
                    d3.e.p(objC);
                    ed.e eVarJ = eVar2.j();
                    p4.h.j(eVarJ, "<this>");
                    p4.h.j(cVar2, "credential");
                    eVarJ.b(new ed.b(3, "Token_Refresh_Succeeded", "Token refresh succeeded", ec.b.a(null, Long.valueOf(cVar2.getExpirationDate()), null, 0, 29), ec.a.f6718a.a(androidx.lifecycle.o.z(ec.a.f6722e, ec.a.f6727j))));
                    thA = fd.f.a(obj);
                    if (thA != null) {
                        ed.e eVarJ2 = eVar2.j();
                        p4.h.j(eVarJ2, "<this>");
                        eVarJ2.b(new ed.b(4, "Token_Refresh_Failed", p4.h.B("Token refresh failed with error: ", thA), ec.b.a(ec.b.b(thA), null, ec.b.c(thA), 0, 22), ec.a.f6718a.a(androidx.lifecycle.o.z(ec.a.f6722e, ec.a.f6723f, ec.a.f6727j))));
                        cVar.f4310h = obj;
                        cVar.f4311i = null;
                        cVar.f4312j = null;
                        cVar.f4315m = 3;
                        if (eVar2.g(thA, cVar) == aVar) {
                            return aVar;
                        }
                        obj2 = obj;
                    }
                    d3.e.p(obj);
                    return obj;
                }
                if (i11 != 3) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                obj2 = cVar.f4310h;
                d3.e.p(objC);
            }
            obj = obj2;
            d3.e.p(obj);
            return obj;
        }
        d3.e.p(objC);
        try {
            pb.d dVar2 = this.f4293c;
            cVar.f4310h = this;
            cVar.f4315m = 1;
            objC = dVar2.c(str, cVar);
            if (objC == aVar) {
                return aVar;
            }
            eVar = this;
        } catch (Throwable th2) {
            th = th2;
            eVar = this;
            objG = d3.e.g(th);
        }
        objG = (ob.c) objC;
        obj = objG;
        eVar2 = eVar;
        if (!(obj instanceof fd.f.a)) {
            cVar2 = (ob.c) obj;
            cVar.f4310h = eVar2;
            cVar.f4311i = obj;
            cVar.f4312j = cVar2;
            cVar.f4315m = 2;
            if (eVar2.m(cVar2, cVar) == aVar) {
                return aVar;
            }
            ed.e eVarJ3 = eVar2.j();
            p4.h.j(eVarJ3, "<this>");
            p4.h.j(cVar2, "credential");
            eVarJ3.b(new ed.b(3, "Token_Refresh_Succeeded", "Token refresh succeeded", ec.b.a(null, Long.valueOf(cVar2.getExpirationDate()), null, 0, 29), ec.a.f6718a.a(androidx.lifecycle.o.z(ec.a.f6722e, ec.a.f6727j))));
            thA = fd.f.a(obj);
            if (thA != null) {
                ed.e eVarJ4 = eVar2.j();
                p4.h.j(eVarJ4, "<this>");
                eVarJ4.b(new ed.b(4, "Token_Refresh_Failed", p4.h.B("Token refresh failed with error: ", thA), ec.b.a(ec.b.b(thA), null, ec.b.c(thA), 0, 22), ec.a.f6718a.a(androidx.lifecycle.o.z(ec.a.f6722e, ec.a.f6723f, ec.a.f6727j))));
                cVar.f4310h = obj;
                cVar.f4311i = null;
                cVar.f4312j = null;
                cVar.f4315m = 3;
                if (eVar2.g(thA, cVar) == aVar) {
                    return aVar;
                }
                obj2 = obj;
                obj = obj2;
            }
        } else {
            thA = fd.f.a(obj);
            if (thA != null) {
                ed.e eVarJ5 = eVar2.j();
                p4.h.j(eVarJ5, "<this>");
                eVarJ5.b(new ed.b(4, "Token_Refresh_Failed", p4.h.B("Token refresh failed with error: ", thA), ec.b.a(ec.b.b(thA), null, ec.b.c(thA), 0, 22), ec.a.f6718a.a(androidx.lifecycle.o.z(ec.a.f6722e, ec.a.f6723f, ec.a.f6727j))));
                cVar.f4310h = obj;
                cVar.f4311i = null;
                cVar.f4312j = null;
                cVar.f4315m = 3;
                if (eVar2.g(thA, cVar) == aVar) {
                    return aVar;
                }
                obj2 = obj;
                obj = obj2;
            }
        }
        d3.e.p(obj);
        return obj;
    }

    /* JADX WARN: Code duplicated, block: B:42:0x0086  */
    /* JADX WARN: Code duplicated, block: B:44:0x008c  */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object l(jd.d<? super fd.o> dVar) throws Throwable {
        d dVar2;
        Object objG;
        Throwable thA;
        Mutex mutex;
        e eVar;
        Mutex mutex2;
        if (dVar instanceof d) {
            dVar2 = (d) dVar;
            int i10 = dVar2.f4320l;
            if ((i10 & Integer.MIN_VALUE) != 0) {
                dVar2.f4320l = i10 - Integer.MIN_VALUE;
            } else {
                dVar2 = new d(dVar);
            }
        } else {
            dVar2 = new d(dVar);
        }
        Object obj = dVar2.f4318j;
        kd.a aVar = kd.a.COROUTINE_SUSPENDED;
        int i11 = dVar2.f4320l;
        try {
            try {
                if (i11 == 0) {
                    d3.e.p(obj);
                    i().set(null);
                    mutex = this.f4297g;
                    dVar2.f4316h = this;
                    dVar2.f4317i = mutex;
                    dVar2.f4320l = 1;
                    if (mutex.lock(null, dVar2) == aVar) {
                        return aVar;
                    }
                    eVar = this;
                } else {
                    if (i11 != 1) {
                        if (i11 != 2) {
                            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                        }
                        mutex2 = (Mutex) dVar2.f4316h;
                        try {
                            d3.e.p(obj);
                            objG = fd.o.f7408a;
                            mutex2.unlock(null);
                            thA = fd.f.a(objG);
                            if (thA == null) {
                                throw new ob.e.b(thA);
                            }
                            d3.e.p(objG);
                            return fd.o.f7408a;
                        } catch (Throwable th) {
                            th = th;
                            mutex = mutex2;
                            mutex.unlock(null);
                            throw th;
                        }
                    }
                    mutex = dVar2.f4317i;
                    eVar = (e) dVar2.f4316h;
                    d3.e.p(obj);
                }
                dc.b bVar = eVar.f4292b;
                dVar2.f4316h = mutex;
                dVar2.f4317i = null;
                dVar2.f4320l = 2;
                bVar.remove();
                if (fd.o.f7408a == aVar) {
                    return aVar;
                }
                mutex2 = mutex;
                objG = fd.o.f7408a;
                mutex2.unlock(null);
                thA = fd.f.a(objG);
                if (thA == null) {
                    throw new ob.e.b(thA);
                }
                d3.e.p(objG);
                return fd.o.f7408a;
            } catch (Throwable th2) {
                th = th2;
                mutex.unlock(null);
                throw th;
            }
        } catch (Throwable th3) {
            objG = d3.e.g(th3);
        }
    }

    /* JADX WARN: Code duplicated, block: B:39:0x008c  */
    /* JADX WARN: Code duplicated, block: B:41:0x0092  */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r4v1 */
    /* JADX WARN: Type inference failed for: r4v2, types: [ob.c] */
    /* JADX WARN: Type inference failed for: r4v5 */
    /* JADX WARN: Type inference failed for: r7v0, types: [java.lang.Object, ob.c] */
    /* JADX WARN: Type inference failed for: r7v1, types: [kotlinx.coroutines.sync.Mutex] */
    /* JADX WARN: Type inference failed for: r7v12 */
    /* JADX WARN: Type inference failed for: r7v13 */
    /* JADX WARN: Type inference failed for: r7v7, types: [kotlinx.coroutines.sync.Mutex] */
    /* JADX WARN: Type inference failed for: r8v8, types: [dc.b] */
    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    public final Object m(ob.c cVar, jd.d<? super fd.o> dVar) throws Throwable {
        C0077e c0077e;
        Object objG;
        Throwable thA;
        e eVar;
        ?? r10;
        Mutex mutex;
        if (dVar instanceof C0077e) {
            c0077e = (C0077e) dVar;
            int i10 = c0077e.f4326m;
            if ((i10 & Integer.MIN_VALUE) != 0) {
                c0077e.f4326m = i10 - Integer.MIN_VALUE;
            } else {
                c0077e = new C0077e(dVar);
            }
        } else {
            c0077e = new C0077e(dVar);
        }
        Object obj = c0077e.f4324k;
        kd.a aVar = kd.a.COROUTINE_SUSPENDED;
        int i11 = c0077e.f4326m;
        try {
            try {
                if (i11 != 0) {
                    if (i11 == 1) {
                        Mutex mutex2 = c0077e.f4323j;
                        eVar = c0077e.f4322i;
                        ob.c cVar2 = (ob.c) c0077e.f4321h;
                        d3.e.p(obj);
                        r10 = cVar2;
                        mutex = mutex2;
                    } else {
                        if (i11 != 2) {
                            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                        }
                        Mutex mutex3 = (Mutex) c0077e.f4321h;
                        d3.e.p(obj);
                        cVar = mutex3;
                    }
                    objG = fd.o.f7408a;
                    cVar.unlock(null);
                    thA = fd.f.a(objG);
                    if (thA == null) {
                        throw new ob.e.b(thA);
                    }
                    d3.e.p(objG);
                    return fd.o.f7408a;
                }
                d3.e.p(obj);
                i().set(cVar);
                Mutex mutex4 = this.f4297g;
                c0077e.f4321h = cVar;
                c0077e.f4322i = this;
                c0077e.f4323j = mutex4;
                c0077e.f4326m = 1;
                if (mutex4.lock(null, c0077e) == aVar) {
                    return aVar;
                }
                eVar = this;
                r10 = cVar;
                mutex = mutex4;
                ?? r11 = eVar.f4292b;
                c0077e.f4321h = mutex;
                c0077e.f4322i = null;
                c0077e.f4323j = null;
                c0077e.f4326m = 2;
                r11.a(dc.d.f6170a, r10);
                cVar = mutex;
                if (fd.o.f7408a == aVar) {
                    return aVar;
                }
                objG = fd.o.f7408a;
                cVar.unlock(null);
            } catch (Throwable th) {
                cVar.unlock(null);
                throw th;
            }
        } catch (Throwable th2) {
            objG = d3.e.g(th2);
        }
        thA = fd.f.a(objG);
        if (thA == null) {
            throw new ob.e.b(thA);
        }
        d3.e.p(objG);
        return fd.o.f7408a;
    }

    /* JADX WARN: Code duplicated, block: B:43:0x00a8  */
    /* JADX WARN: Code duplicated, block: B:47:0x00b7  */
    /* JADX WARN: Code duplicated, block: B:49:0x00c7 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:52:0x00ce  */
    /* JADX WARN: Code duplicated, block: B:54:0x00d1  */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object n(l<? super ob.c, fd.o> lVar, jd.d<? super fd.o> dVar) throws Throwable {
        i iVar;
        e eVar;
        l<? super ob.c, fd.o> lVar2;
        Throwable th;
        e eVar2;
        Object objG;
        l<? super ob.c, fd.o> lVar3;
        l<? super ob.c, fd.o> lVar4;
        ob.c cVar;
        Object obj;
        Throwable thA;
        if (dVar instanceof i) {
            iVar = (i) dVar;
            int i10 = iVar.f4342n;
            if ((i10 & Integer.MIN_VALUE) != 0) {
                iVar.f4342n = i10 - Integer.MIN_VALUE;
            } else {
                iVar = new i(dVar);
            }
        } else {
            iVar = new i(dVar);
        }
        Object objA = iVar.f4340l;
        kd.a aVar = kd.a.COROUTINE_SUSPENDED;
        int i11 = iVar.f4342n;
        if (i11 != 0) {
            if (i11 == 1) {
                eVar2 = (e) iVar.f4338j;
                lVar2 = iVar.f4337i;
                eVar = (e) iVar.f4336h;
                try {
                    d3.e.p(objA);
                } catch (Throwable th2) {
                    th = th2;
                    l<? super ob.c, fd.o> lVar5 = lVar2;
                    objG = d3.e.g(th);
                    lVar3 = lVar5;
                }
            } else if (i11 == 2) {
                cVar = iVar.f4339k;
                objG = iVar.f4338j;
                lVar4 = iVar.f4337i;
                eVar = (e) iVar.f4336h;
                d3.e.p(objA);
                if (lVar4 != null) {
                    lVar4.invoke(cVar);
                }
                eVar.f4293c.b();
                obj = objG;
                if (fd.f.a(obj) != null) {
                    iVar.f4336h = obj;
                    iVar.f4337i = null;
                    iVar.f4338j = null;
                    iVar.f4339k = null;
                    iVar.f4342n = 3;
                    if (eVar.l(iVar) == aVar) {
                        return aVar;
                    }
                }
            } else {
                if (i11 != 3) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                obj = iVar.f4336h;
                d3.e.p(objA);
            }
            thA = fd.f.a(obj);
            if (thA == null) {
                return fd.o.f7408a;
            }
            throw new ob.e.d(null, thA, 1);
        }
        d3.e.p(objA);
        try {
            iVar.f4336h = this;
            iVar.f4337i = lVar;
            iVar.f4338j = this;
            iVar.f4342n = 1;
            objA = a(iVar);
            if (objA == aVar) {
                return aVar;
            }
            eVar = this;
            lVar2 = lVar;
            eVar2 = eVar;
        } catch (Throwable th3) {
            eVar = this;
            lVar2 = lVar;
            th = th3;
            l<? super ob.c, fd.o> lVar6 = lVar2;
            objG = d3.e.g(th);
            lVar3 = lVar6;
        }
        ob.c cVar2 = (ob.c) objA;
        if (cVar2 == null) {
            cVar2 = null;
        } else {
            eVar2.f4293c.a(cVar2.getRefreshToken());
        }
        lVar3 = lVar2;
        objG = cVar2;
        if (!(objG instanceof fd.f.a)) {
            ob.c cVar3 = (ob.c) objG;
            iVar.f4336h = eVar;
            iVar.f4337i = lVar3;
            iVar.f4338j = objG;
            iVar.f4339k = cVar3;
            iVar.f4342n = 2;
            if (eVar.l(iVar) == aVar) {
                return aVar;
            }
            lVar4 = lVar3;
            cVar = cVar3;
            if (lVar4 != null) {
                lVar4.invoke(cVar);
            }
            eVar.f4293c.b();
            obj = objG;
            if (fd.f.a(obj) != null) {
                iVar.f4336h = obj;
                iVar.f4337i = null;
                iVar.f4338j = null;
                iVar.f4339k = null;
                iVar.f4342n = 3;
                if (eVar.l(iVar) == aVar) {
                    return aVar;
                }
            }
        } else {
            obj = objG;
            if (fd.f.a(obj) != null) {
                iVar.f4336h = obj;
                iVar.f4337i = null;
                iVar.f4338j = null;
                iVar.f4339k = null;
                iVar.f4342n = 3;
                if (eVar.l(iVar) == aVar) {
                    return aVar;
                }
            }
        }
        thA = fd.f.a(obj);
        if (thA == null) {
            return fd.o.f7408a;
        }
        throw new ob.e.d(null, thA, 1);
    }
}
