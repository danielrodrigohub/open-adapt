package w9;

import java.util.Map;
import java.util.Objects;
import java.util.UUID;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.Deferred;

/* JADX INFO: compiled from: AdaptKitPairDevicesController.kt */
/* JADX INFO: loaded from: classes.dex */
@ld.e(c = "com.nike.android.adaptkit.controller.AdaptKitPairedDevicesControllerImpl$firmwareUpdateStart$1$1", f = "AdaptKitPairDevicesController.kt", l = {2278, 2279, 2321, 2322, 2337, 2357, 2358, 2368, 2375}, m = "invokeSuspend")
public final class m0 extends ld.i implements qd.p<CoroutineScope, jd.d<? super fd.o>, Object> {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public Object f17307h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public fb.c f17308i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public ba.e f17309j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public int f17310k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public /* synthetic */ Object f17311l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final /* synthetic */ x f17312m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final /* synthetic */ w9.a f17313n;

    /* JADX INFO: compiled from: AdaptKitPairDevicesController.kt */
    @ld.e(c = "com.nike.android.adaptkit.controller.AdaptKitPairedDevicesControllerImpl$firmwareUpdateStart$1$1$1", f = "AdaptKitPairDevicesController.kt", l = {2348}, m = "invokeSuspend")
    public static final class a extends ld.i implements qd.p<CoroutineScope, jd.d<? super fa.g>, Object> {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public int f17314h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public final /* synthetic */ x f17315i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public final /* synthetic */ fa.b f17316j;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(x xVar, fa.b bVar, jd.d<? super a> dVar) {
            super(2, dVar);
            this.f17315i = xVar;
            this.f17316j = bVar;
        }

        @Override // ld.a
        public final jd.d<fd.o> create(Object obj, jd.d<?> dVar) {
            return new a(this.f17315i, this.f17316j, dVar);
        }

        @Override // qd.p
        public final Object invoke(CoroutineScope coroutineScope, jd.d<? super fa.g> dVar) {
            return ((a) create(coroutineScope, dVar)).invokeSuspend(fd.o.f7408a);
        }

        @Override // ld.a
        public final Object invokeSuspend(Object obj) throws Throwable {
            kd.a aVar = kd.a.COROUTINE_SUSPENDED;
            int i10 = this.f17314h;
            if (i10 == 0) {
                d3.e.p(obj);
                bb.a aVarN0 = x.n0(this.f17315i);
                fa.b.c cVar = (fa.b.c) this.f17316j;
                this.f17314h = 1;
                obj = aVarN0.b(cVar, this);
                if (obj == aVar) {
                    return aVar;
                }
            } else {
                if (i10 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                d3.e.p(obj);
            }
            return obj;
        }
    }

    /* JADX INFO: compiled from: AdaptKitPairDevicesController.kt */
    @ld.e(c = "com.nike.android.adaptkit.controller.AdaptKitPairedDevicesControllerImpl$firmwareUpdateStart$1$1$2", f = "AdaptKitPairDevicesController.kt", l = {2355}, m = "invokeSuspend")
    public static final class b extends ld.i implements qd.p<CoroutineScope, jd.d<? super fa.g>, Object> {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public int f17317h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public final /* synthetic */ x f17318i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public final /* synthetic */ fa.b f17319j;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(x xVar, fa.b bVar, jd.d<? super b> dVar) {
            super(2, dVar);
            this.f17318i = xVar;
            this.f17319j = bVar;
        }

        @Override // ld.a
        public final jd.d<fd.o> create(Object obj, jd.d<?> dVar) {
            return new b(this.f17318i, this.f17319j, dVar);
        }

        @Override // qd.p
        public final Object invoke(CoroutineScope coroutineScope, jd.d<? super fa.g> dVar) {
            return ((b) create(coroutineScope, dVar)).invokeSuspend(fd.o.f7408a);
        }

        @Override // ld.a
        public final Object invokeSuspend(Object obj) throws Throwable {
            kd.a aVar = kd.a.COROUTINE_SUSPENDED;
            int i10 = this.f17317h;
            if (i10 == 0) {
                d3.e.p(obj);
                bb.a aVarN0 = x.n0(this.f17318i);
                fa.b.c cVar = (fa.b.c) this.f17319j;
                this.f17317h = 1;
                obj = aVarN0.b(cVar, this);
                if (obj == aVar) {
                    return aVar;
                }
            } else {
                if (i10 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                d3.e.p(obj);
            }
            return obj;
        }
    }

    /* JADX INFO: compiled from: AdaptKitPairDevicesController.kt */
    @ld.e(c = "com.nike.android.adaptkit.controller.AdaptKitPairedDevicesControllerImpl$firmwareUpdateStart$1$1$leftCheckFirmware$1", f = "AdaptKitPairDevicesController.kt", l = {2319}, m = "invokeSuspend")
    public static final class c extends ld.i implements qd.p<CoroutineScope, jd.d<? super fa.b>, Object> {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public int f17320h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public final /* synthetic */ x f17321i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public final /* synthetic */ fb.c f17322j;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public c(x xVar, fb.c cVar, jd.d<? super c> dVar) {
            super(2, dVar);
            this.f17321i = xVar;
            this.f17322j = cVar;
        }

        @Override // ld.a
        public final jd.d<fd.o> create(Object obj, jd.d<?> dVar) {
            return new c(this.f17321i, this.f17322j, dVar);
        }

        @Override // qd.p
        public final Object invoke(CoroutineScope coroutineScope, jd.d<? super fa.b> dVar) {
            return ((c) create(coroutineScope, dVar)).invokeSuspend(fd.o.f7408a);
        }

        @Override // ld.a
        public final Object invokeSuspend(Object obj) throws Throwable {
            kd.a aVar = kd.a.COROUTINE_SUSPENDED;
            int i10 = this.f17320h;
            if (i10 == 0) {
                d3.e.p(obj);
                bb.a aVarN0 = x.n0(this.f17321i);
                fb.c cVar = this.f17322j;
                this.f17320h = 1;
                obj = aVarN0.a(cVar, this);
                if (obj == aVar) {
                    return aVar;
                }
            } else {
                if (i10 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                d3.e.p(obj);
            }
            return obj;
        }
    }

    /* JADX INFO: compiled from: AdaptKitPairDevicesController.kt */
    @ld.e(c = "com.nike.android.adaptkit.controller.AdaptKitPairedDevicesControllerImpl$firmwareUpdateStart$1$1$rightCheckFirmware$1", f = "AdaptKitPairDevicesController.kt", l = {2320}, m = "invokeSuspend")
    public static final class d extends ld.i implements qd.p<CoroutineScope, jd.d<? super fa.b>, Object> {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public int f17323h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public final /* synthetic */ x f17324i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public final /* synthetic */ fb.c f17325j;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public d(x xVar, fb.c cVar, jd.d<? super d> dVar) {
            super(2, dVar);
            this.f17324i = xVar;
            this.f17325j = cVar;
        }

        @Override // ld.a
        public final jd.d<fd.o> create(Object obj, jd.d<?> dVar) {
            return new d(this.f17324i, this.f17325j, dVar);
        }

        @Override // qd.p
        public final Object invoke(CoroutineScope coroutineScope, jd.d<? super fa.b> dVar) {
            return ((d) create(coroutineScope, dVar)).invokeSuspend(fd.o.f7408a);
        }

        @Override // ld.a
        public final Object invokeSuspend(Object obj) throws Throwable {
            kd.a aVar = kd.a.COROUTINE_SUSPENDED;
            int i10 = this.f17323h;
            if (i10 == 0) {
                d3.e.p(obj);
                bb.a aVarN0 = x.n0(this.f17324i);
                fb.c cVar = this.f17325j;
                this.f17323h = 1;
                obj = aVarN0.a(cVar, this);
                if (obj == aVar) {
                    return aVar;
                }
            } else {
                if (i10 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                d3.e.p(obj);
            }
            return obj;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public m0(x xVar, w9.a aVar, jd.d<? super m0> dVar) {
        super(2, dVar);
        this.f17312m = xVar;
        this.f17313n = aVar;
    }

    @Override // ld.a
    public final jd.d<fd.o> create(Object obj, jd.d<?> dVar) {
        m0 m0Var = new m0(this.f17312m, this.f17313n, dVar);
        m0Var.f17311l = obj;
        return m0Var;
    }

    @Override // qd.p
    public final Object invoke(CoroutineScope coroutineScope, jd.d<? super fd.o> dVar) {
        return ((m0) create(coroutineScope, dVar)).invokeSuspend(fd.o.f7408a);
    }

    /* JADX WARN: Code duplicated, block: B:100:0x0322  */
    /* JADX WARN: Code duplicated, block: B:102:0x033d A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:21:0x00db A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:22:0x00dc  */
    /* JADX WARN: Code duplicated, block: B:25:0x00e5 A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:57:0x0218 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:60:0x0231  */
    /* JADX WARN: Code duplicated, block: B:64:0x0245  */
    /* JADX WARN: Code duplicated, block: B:66:0x026d A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:69:0x0275  */
    /* JADX WARN: Code duplicated, block: B:70:0x0292  */
    /* JADX WARN: Code duplicated, block: B:73:0x0297  */
    /* JADX WARN: Code duplicated, block: B:74:0x02b5  */
    /* JADX WARN: Code duplicated, block: B:76:0x02b8  */
    /* JADX WARN: Code duplicated, block: B:78:0x02c6 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:80:0x02ca  */
    /* JADX WARN: Code duplicated, block: B:82:0x02cd  */
    /* JADX WARN: Code duplicated, block: B:84:0x02db A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:86:0x02df  */
    /* JADX WARN: Code duplicated, block: B:89:0x02f6 A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:95:0x0302  */
    /* JADX WARN: Code duplicated, block: B:97:0x031d A[RETURN] */
    @Override // ld.a
    public final Object invokeSuspend(Object obj) throws Throwable {
        CoroutineScope coroutineScope;
        Object objS0;
        fb.c cVar;
        fb.c cVar2;
        ba.e eVar;
        Object objS1;
        CoroutineScope coroutineScope2;
        ba.e eVar2;
        fb.c cVar3;
        CoroutineScope coroutineScope3;
        boolean z10;
        boolean z11;
        boolean z12;
        Deferred deferredAsync$default;
        CoroutineScope coroutineScope4;
        Object objAwait;
        kd.a aVar;
        fa.b bVar;
        Object objAwait2;
        fa.b bVar2;
        boolean z13;
        Deferred deferredAsync$default2;
        Deferred deferredAsync$default3;
        fa.g gVar;
        Object objAwait3;
        fa.b.c cVar4;
        Object objB;
        fa.g gVar2;
        Object objAwait4;
        x xVar;
        boolean z14;
        kd.a aVar2 = kd.a.COROUTINE_SUSPENDED;
        switch (this.f17310k) {
            case 0:
                d3.e.p(obj);
                coroutineScope = (CoroutineScope) this.f17311l;
                fb.c cVarA = this.f17312m.A0().a();
                fb.c cVarA2 = this.f17312m.B0().a();
                x xVar2 = this.f17312m;
                ya.b bVarA0 = xVar2.A0();
                this.f17311l = coroutineScope;
                this.f17307h = cVarA;
                this.f17308i = cVarA2;
                this.f17310k = 1;
                objS0 = x.s0(xVar2, bVarA0, this);
                if (objS0 == aVar2) {
                    return aVar2;
                }
                cVar = cVarA;
                cVar2 = cVarA2;
                eVar = (ba.e) objS0;
                x xVar3 = this.f17312m;
                ya.b bVarB0 = xVar3.B0();
                this.f17311l = coroutineScope;
                this.f17307h = cVar;
                this.f17308i = cVar2;
                this.f17309j = eVar;
                this.f17310k = 2;
                objS1 = x.s0(xVar3, bVarB0, this);
                if (objS1 == aVar2) {
                    return aVar2;
                }
                coroutineScope2 = coroutineScope;
                eVar2 = eVar;
                ba.e eVar3 = (ba.e) objS1;
                if (eVar2 != null || eVar3 == null) {
                    ya.b bVarA1 = this.f17312m.A0();
                    ba.e.b bVar3 = ba.e.b.ERROR;
                    bVarA1.i(new fa.k.b(new ba.e(0, bVar3)));
                    this.f17312m.B0().i(new fa.k.b(new ba.e(0, bVar3)));
                    return fd.o.f7408a;
                }
                fb.m mVar = this.f17312m.f17388h;
                String string = UUID.randomUUID().toString();
                p4.h.i(string, "randomUUID().toString()");
                long jCurrentTimeMillis = System.currentTimeMillis();
                String string2 = UUID.randomUUID().toString();
                p4.h.i(string2, "randomUUID().toString()");
                String string3 = UUID.randomUUID().toString();
                p4.h.i(string3, "randomUUID().toString()");
                Objects.requireNonNull(mVar);
                synchronized (mVar) {
                    mVar.f7271h = 1;
                    fa.c cVar5 = mVar.f7273j;
                    mVar.f7274k = new fa.d(cVar5, cVar5);
                    cVar3 = cVar2;
                    coroutineScope3 = coroutineScope2;
                    fa.d dVar = new fa.d(fa.c.a(mVar.f7273j, null, null, new fa.k.o(eVar2), 3), fa.c.a(mVar.f7273j, null, null, new fa.k.o(eVar3), 3));
                    mVar.f7269f = 0;
                    mVar.f7270g = 0;
                    mVar.f7268e = string;
                    mVar.f7272i = jCurrentTimeMillis;
                    mVar.f7266c = string2;
                    mVar.f7267d = string3;
                    Map<String, String> mapB = mVar.b(null, dVar);
                    mapB.put("FW_UPGRADE_TELEMETRY", "FW_UPGRADE_OVERALL_START");
                    u1 u1Var = u1.LEFT;
                    mapB.put("FW_STATE_LEFT", mVar.c(u1Var, dVar));
                    u1 u1Var2 = u1.RIGHT;
                    mapB.put("FW_STATE_RIGHT", mVar.c(u1Var2, dVar));
                    mVar.e(mapB);
                    int iOrdinal = u1.BOTH.ordinal();
                    if (iOrdinal != 0) {
                        z10 = true;
                        if (iOrdinal == 1) {
                            mVar.f(u1Var2, dVar);
                        } else if (iOrdinal == 2) {
                            mVar.f(u1Var, dVar);
                            mVar.f(u1Var2, dVar);
                        }
                    } else {
                        z10 = true;
                        mVar.f(u1Var, dVar);
                    }
                    mVar.f7274k = dVar;
                }
                if (eVar2.f3631h < 30) {
                    this.f17312m.A0().i(new fa.k.b(eVar2));
                    z11 = z10;
                } else {
                    z11 = false;
                }
                if (eVar3.f3631h < 30) {
                    this.f17312m.B0().i(new fa.k.b(eVar3));
                    z12 = z10;
                } else {
                    z12 = z11;
                }
                if (z12) {
                    return fd.o.f7408a;
                }
                Deferred deferredAsync$default4 = BuildersKt__Builders_commonKt.async$default(coroutineScope3, null, null, new c(this.f17312m, cVar, null), 3, null);
                deferredAsync$default = BuildersKt__Builders_commonKt.async$default(coroutineScope3, null, null, new d(this.f17312m, cVar3, null), 3, null);
                coroutineScope4 = coroutineScope3;
                this.f17311l = coroutineScope4;
                this.f17307h = deferredAsync$default;
                this.f17308i = null;
                this.f17309j = null;
                this.f17310k = 3;
                objAwait = deferredAsync$default4.await(this);
                aVar = aVar2;
                if (objAwait == aVar) {
                    return aVar;
                }
                bVar = (fa.b) objAwait;
                this.f17311l = coroutineScope4;
                this.f17307h = bVar;
                this.f17310k = 4;
                objAwait2 = deferredAsync$default.await(this);
                if (objAwait2 == aVar) {
                    return aVar;
                }
                bVar2 = (fa.b) objAwait2;
                x xVar4 = this.f17312m;
                x.u0(xVar4, xVar4.A0(), bVar);
                x xVar5 = this.f17312m;
                x.u0(xVar5, xVar5.B0(), bVar2);
                z13 = bVar instanceof fa.b.c;
                if (z13 && (bVar2 instanceof fa.b.c)) {
                    cVar4 = (fa.b.c) bVar;
                    if (p4.h.c(cVar4.f7132m, ((fa.b.c) bVar2).f7132m)) {
                        ya.b bVarA2 = this.f17312m.A0();
                        fa.k.l lVar = fa.k.l.f7214h;
                        bVarA2.i(lVar);
                        this.f17312m.B0().i(lVar);
                        bb.a aVarN0 = x.n0(this.f17312m);
                        this.f17311l = null;
                        this.f17307h = null;
                        this.f17310k = 5;
                        objB = aVarN0.b(cVar4, this);
                        if (objB == aVar) {
                            return aVar;
                        }
                        gVar = (fa.g) objB;
                        gVar2 = gVar;
                        x xVar6 = this.f17312m;
                        boolean zT0 = x.t0(xVar6, gVar, xVar6.A0());
                        xVar = this.f17312m;
                        if (x.t0(xVar, gVar2, xVar.B0()) && zT0 && (((z14 = gVar instanceof fa.g.b)) || (gVar2 instanceof fa.g.b))) {
                            if (z14) {
                                this.f17311l = gVar2;
                                this.f17307h = null;
                                this.f17310k = 8;
                                if (this.f17312m.A0().b(this.f17313n.f17253h, (fa.g.b) gVar, this) == aVar) {
                                    return aVar;
                                }
                            }
                            if (gVar2 instanceof fa.g.b) {
                                this.f17311l = null;
                                this.f17307h = null;
                                this.f17310k = 9;
                                if (this.f17312m.B0().b(this.f17313n.f17253h, (fa.g.b) gVar2, this) == aVar) {
                                    return aVar;
                                }
                            }
                        }
                        return fd.o.f7408a;
                    }
                }
                if (z13) {
                    this.f17312m.A0().i(fa.k.l.f7214h);
                    deferredAsync$default2 = BuildersKt__Builders_commonKt.async$default(coroutineScope4, null, null, new a(this.f17312m, bVar, null), 3, null);
                } else {
                    deferredAsync$default2 = null;
                }
                if (bVar2 instanceof fa.b.c) {
                    this.f17312m.B0().i(fa.k.l.f7214h);
                    deferredAsync$default3 = BuildersKt__Builders_commonKt.async$default(coroutineScope4, null, null, new b(this.f17312m, bVar2, null), 3, null);
                } else {
                    deferredAsync$default3 = null;
                }
                if (deferredAsync$default2 != null) {
                    this.f17311l = deferredAsync$default3;
                    this.f17307h = null;
                    this.f17310k = 6;
                    objAwait3 = deferredAsync$default2.await(this);
                    if (objAwait3 == aVar) {
                        return aVar;
                    }
                    gVar = (fa.g) objAwait3;
                } else {
                    gVar = null;
                }
                if (deferredAsync$default3 != null) {
                    this.f17311l = gVar;
                    this.f17307h = null;
                    this.f17310k = 7;
                    objAwait4 = deferredAsync$default3.await(this);
                    if (objAwait4 == aVar) {
                        return aVar;
                    }
                    gVar2 = (fa.g) objAwait4;
                } else {
                    gVar2 = null;
                }
                x xVar7 = this.f17312m;
                boolean zT1 = x.t0(xVar7, gVar, xVar7.A0());
                xVar = this.f17312m;
                if (x.t0(xVar, gVar2, xVar.B0())) {
                    if (z14) {
                        this.f17311l = gVar2;
                        this.f17307h = null;
                        this.f17310k = 8;
                        if (this.f17312m.A0().b(this.f17313n.f17253h, (fa.g.b) gVar, this) == aVar) {
                            return aVar;
                        }
                    }
                    if (gVar2 instanceof fa.g.b) {
                        this.f17311l = null;
                        this.f17307h = null;
                        this.f17310k = 9;
                        if (this.f17312m.B0().b(this.f17313n.f17253h, (fa.g.b) gVar2, this) == aVar) {
                            return aVar;
                        }
                    }
                }
                return fd.o.f7408a;
            case 1:
                fb.c cVar6 = this.f17308i;
                fb.c cVar7 = (fb.c) this.f17307h;
                CoroutineScope coroutineScope5 = (CoroutineScope) this.f17311l;
                d3.e.p(obj);
                objS0 = obj;
                cVar2 = cVar6;
                coroutineScope = coroutineScope5;
                cVar = cVar7;
                eVar = (ba.e) objS0;
                x xVar8 = this.f17312m;
                ya.b bVarB1 = xVar8.B0();
                this.f17311l = coroutineScope;
                this.f17307h = cVar;
                this.f17308i = cVar2;
                this.f17309j = eVar;
                this.f17310k = 2;
                objS1 = x.s0(xVar8, bVarB1, this);
                if (objS1 == aVar2) {
                    return aVar2;
                }
                coroutineScope2 = coroutineScope;
                eVar2 = eVar;
                ba.e eVar4 = (ba.e) objS1;
                if (eVar2 != null) {
                }
                ya.b bVarA3 = this.f17312m.A0();
                ba.e.b bVar4 = ba.e.b.ERROR;
                bVarA3.i(new fa.k.b(new ba.e(0, bVar4)));
                this.f17312m.B0().i(new fa.k.b(new ba.e(0, bVar4)));
                return fd.o.f7408a;
            case 2:
                eVar2 = this.f17309j;
                cVar2 = this.f17308i;
                cVar = (fb.c) this.f17307h;
                coroutineScope2 = (CoroutineScope) this.f17311l;
                d3.e.p(obj);
                objS1 = obj;
                ba.e eVar5 = (ba.e) objS1;
                if (eVar2 != null) {
                }
                ya.b bVarA4 = this.f17312m.A0();
                ba.e.b bVar5 = ba.e.b.ERROR;
                bVarA4.i(new fa.k.b(new ba.e(0, bVar5)));
                this.f17312m.B0().i(new fa.k.b(new ba.e(0, bVar5)));
                return fd.o.f7408a;
            case 3:
                deferredAsync$default = (Deferred) this.f17307h;
                CoroutineScope coroutineScope6 = (CoroutineScope) this.f17311l;
                d3.e.p(obj);
                aVar = aVar2;
                coroutineScope4 = coroutineScope6;
                objAwait = obj;
                bVar = (fa.b) objAwait;
                this.f17311l = coroutineScope4;
                this.f17307h = bVar;
                this.f17310k = 4;
                objAwait2 = deferredAsync$default.await(this);
                if (objAwait2 == aVar) {
                    return aVar;
                }
                bVar2 = (fa.b) objAwait2;
                x xVar9 = this.f17312m;
                x.u0(xVar9, xVar9.A0(), bVar);
                x xVar10 = this.f17312m;
                x.u0(xVar10, xVar10.B0(), bVar2);
                z13 = bVar instanceof fa.b.c;
                if (z13) {
                    cVar4 = (fa.b.c) bVar;
                    if (p4.h.c(cVar4.f7132m, ((fa.b.c) bVar2).f7132m)) {
                        ya.b bVarA5 = this.f17312m.A0();
                        fa.k.l lVar2 = fa.k.l.f7214h;
                        bVarA5.i(lVar2);
                        this.f17312m.B0().i(lVar2);
                        bb.a aVarN1 = x.n0(this.f17312m);
                        this.f17311l = null;
                        this.f17307h = null;
                        this.f17310k = 5;
                        objB = aVarN1.b(cVar4, this);
                        if (objB == aVar) {
                            return aVar;
                        }
                        gVar = (fa.g) objB;
                        gVar2 = gVar;
                        x xVar11 = this.f17312m;
                        boolean zT2 = x.t0(xVar11, gVar, xVar11.A0());
                        xVar = this.f17312m;
                        if (x.t0(xVar, gVar2, xVar.B0())) {
                            if (z14) {
                                this.f17311l = gVar2;
                                this.f17307h = null;
                                this.f17310k = 8;
                                if (this.f17312m.A0().b(this.f17313n.f17253h, (fa.g.b) gVar, this) == aVar) {
                                    return aVar;
                                }
                            }
                            if (gVar2 instanceof fa.g.b) {
                                this.f17311l = null;
                                this.f17307h = null;
                                this.f17310k = 9;
                                if (this.f17312m.B0().b(this.f17313n.f17253h, (fa.g.b) gVar2, this) == aVar) {
                                    return aVar;
                                }
                            }
                        }
                        return fd.o.f7408a;
                    }
                }
                if (z13) {
                    this.f17312m.A0().i(fa.k.l.f7214h);
                    deferredAsync$default2 = BuildersKt__Builders_commonKt.async$default(coroutineScope4, null, null, new a(this.f17312m, bVar, null), 3, null);
                } else {
                    deferredAsync$default2 = null;
                }
                if (bVar2 instanceof fa.b.c) {
                    this.f17312m.B0().i(fa.k.l.f7214h);
                    deferredAsync$default3 = BuildersKt__Builders_commonKt.async$default(coroutineScope4, null, null, new b(this.f17312m, bVar2, null), 3, null);
                } else {
                    deferredAsync$default3 = null;
                }
                if (deferredAsync$default2 != null) {
                    this.f17311l = deferredAsync$default3;
                    this.f17307h = null;
                    this.f17310k = 6;
                    objAwait3 = deferredAsync$default2.await(this);
                    if (objAwait3 == aVar) {
                        return aVar;
                    }
                    gVar = (fa.g) objAwait3;
                } else {
                    gVar = null;
                }
                if (deferredAsync$default3 != null) {
                    this.f17311l = gVar;
                    this.f17307h = null;
                    this.f17310k = 7;
                    objAwait4 = deferredAsync$default3.await(this);
                    if (objAwait4 == aVar) {
                        return aVar;
                    }
                    gVar2 = (fa.g) objAwait4;
                } else {
                    gVar2 = null;
                }
                x xVar12 = this.f17312m;
                boolean zT3 = x.t0(xVar12, gVar, xVar12.A0());
                xVar = this.f17312m;
                if (x.t0(xVar, gVar2, xVar.B0())) {
                    if (z14) {
                        this.f17311l = gVar2;
                        this.f17307h = null;
                        this.f17310k = 8;
                        if (this.f17312m.A0().b(this.f17313n.f17253h, (fa.g.b) gVar, this) == aVar) {
                            return aVar;
                        }
                    }
                    if (gVar2 instanceof fa.g.b) {
                        this.f17311l = null;
                        this.f17307h = null;
                        this.f17310k = 9;
                        if (this.f17312m.B0().b(this.f17313n.f17253h, (fa.g.b) gVar2, this) == aVar) {
                            return aVar;
                        }
                    }
                }
                return fd.o.f7408a;
            case 4:
                fa.b bVar6 = (fa.b) this.f17307h;
                CoroutineScope coroutineScope7 = (CoroutineScope) this.f17311l;
                d3.e.p(obj);
                aVar = aVar2;
                coroutineScope4 = coroutineScope7;
                bVar = bVar6;
                objAwait2 = obj;
                bVar2 = (fa.b) objAwait2;
                x xVar13 = this.f17312m;
                x.u0(xVar13, xVar13.A0(), bVar);
                x xVar14 = this.f17312m;
                x.u0(xVar14, xVar14.B0(), bVar2);
                z13 = bVar instanceof fa.b.c;
                if (z13) {
                    cVar4 = (fa.b.c) bVar;
                    if (p4.h.c(cVar4.f7132m, ((fa.b.c) bVar2).f7132m)) {
                        ya.b bVarA6 = this.f17312m.A0();
                        fa.k.l lVar3 = fa.k.l.f7214h;
                        bVarA6.i(lVar3);
                        this.f17312m.B0().i(lVar3);
                        bb.a aVarN2 = x.n0(this.f17312m);
                        this.f17311l = null;
                        this.f17307h = null;
                        this.f17310k = 5;
                        objB = aVarN2.b(cVar4, this);
                        if (objB == aVar) {
                            return aVar;
                        }
                        gVar = (fa.g) objB;
                        gVar2 = gVar;
                        x xVar15 = this.f17312m;
                        boolean zT4 = x.t0(xVar15, gVar, xVar15.A0());
                        xVar = this.f17312m;
                        if (x.t0(xVar, gVar2, xVar.B0())) {
                            if (z14) {
                                this.f17311l = gVar2;
                                this.f17307h = null;
                                this.f17310k = 8;
                                if (this.f17312m.A0().b(this.f17313n.f17253h, (fa.g.b) gVar, this) == aVar) {
                                    return aVar;
                                }
                            }
                            if (gVar2 instanceof fa.g.b) {
                                this.f17311l = null;
                                this.f17307h = null;
                                this.f17310k = 9;
                                if (this.f17312m.B0().b(this.f17313n.f17253h, (fa.g.b) gVar2, this) == aVar) {
                                    return aVar;
                                }
                            }
                        }
                        return fd.o.f7408a;
                    }
                }
                if (z13) {
                    this.f17312m.A0().i(fa.k.l.f7214h);
                    deferredAsync$default2 = BuildersKt__Builders_commonKt.async$default(coroutineScope4, null, null, new a(this.f17312m, bVar, null), 3, null);
                } else {
                    deferredAsync$default2 = null;
                }
                if (bVar2 instanceof fa.b.c) {
                    this.f17312m.B0().i(fa.k.l.f7214h);
                    deferredAsync$default3 = BuildersKt__Builders_commonKt.async$default(coroutineScope4, null, null, new b(this.f17312m, bVar2, null), 3, null);
                } else {
                    deferredAsync$default3 = null;
                }
                if (deferredAsync$default2 != null) {
                    this.f17311l = deferredAsync$default3;
                    this.f17307h = null;
                    this.f17310k = 6;
                    objAwait3 = deferredAsync$default2.await(this);
                    if (objAwait3 == aVar) {
                        return aVar;
                    }
                    gVar = (fa.g) objAwait3;
                } else {
                    gVar = null;
                }
                if (deferredAsync$default3 != null) {
                    this.f17311l = gVar;
                    this.f17307h = null;
                    this.f17310k = 7;
                    objAwait4 = deferredAsync$default3.await(this);
                    if (objAwait4 == aVar) {
                        return aVar;
                    }
                    gVar2 = (fa.g) objAwait4;
                } else {
                    gVar2 = null;
                }
                x xVar16 = this.f17312m;
                boolean zT5 = x.t0(xVar16, gVar, xVar16.A0());
                xVar = this.f17312m;
                if (x.t0(xVar, gVar2, xVar.B0())) {
                    if (z14) {
                        this.f17311l = gVar2;
                        this.f17307h = null;
                        this.f17310k = 8;
                        if (this.f17312m.A0().b(this.f17313n.f17253h, (fa.g.b) gVar, this) == aVar) {
                            return aVar;
                        }
                    }
                    if (gVar2 instanceof fa.g.b) {
                        this.f17311l = null;
                        this.f17307h = null;
                        this.f17310k = 9;
                        if (this.f17312m.B0().b(this.f17313n.f17253h, (fa.g.b) gVar2, this) == aVar) {
                            return aVar;
                        }
                    }
                }
                return fd.o.f7408a;
            case 5:
                d3.e.p(obj);
                aVar = aVar2;
                objB = obj;
                gVar = (fa.g) objB;
                gVar2 = gVar;
                x xVar17 = this.f17312m;
                boolean zT6 = x.t0(xVar17, gVar, xVar17.A0());
                xVar = this.f17312m;
                if (x.t0(xVar, gVar2, xVar.B0())) {
                    if (z14) {
                        this.f17311l = gVar2;
                        this.f17307h = null;
                        this.f17310k = 8;
                        if (this.f17312m.A0().b(this.f17313n.f17253h, (fa.g.b) gVar, this) == aVar) {
                            return aVar;
                        }
                    }
                    if (gVar2 instanceof fa.g.b) {
                        this.f17311l = null;
                        this.f17307h = null;
                        this.f17310k = 9;
                        if (this.f17312m.B0().b(this.f17313n.f17253h, (fa.g.b) gVar2, this) == aVar) {
                            return aVar;
                        }
                    }
                }
                return fd.o.f7408a;
            case 6:
                deferredAsync$default3 = (Deferred) this.f17311l;
                d3.e.p(obj);
                aVar = aVar2;
                objAwait3 = obj;
                gVar = (fa.g) objAwait3;
                if (deferredAsync$default3 != null) {
                    this.f17311l = gVar;
                    this.f17307h = null;
                    this.f17310k = 7;
                    objAwait4 = deferredAsync$default3.await(this);
                    if (objAwait4 == aVar) {
                        return aVar;
                    }
                    gVar2 = (fa.g) objAwait4;
                } else {
                    gVar2 = null;
                }
                x xVar18 = this.f17312m;
                boolean zT7 = x.t0(xVar18, gVar, xVar18.A0());
                xVar = this.f17312m;
                if (x.t0(xVar, gVar2, xVar.B0())) {
                    if (z14) {
                        this.f17311l = gVar2;
                        this.f17307h = null;
                        this.f17310k = 8;
                        if (this.f17312m.A0().b(this.f17313n.f17253h, (fa.g.b) gVar, this) == aVar) {
                            return aVar;
                        }
                    }
                    if (gVar2 instanceof fa.g.b) {
                        this.f17311l = null;
                        this.f17307h = null;
                        this.f17310k = 9;
                        if (this.f17312m.B0().b(this.f17313n.f17253h, (fa.g.b) gVar2, this) == aVar) {
                            return aVar;
                        }
                    }
                }
                return fd.o.f7408a;
            case 7:
                fa.g gVar3 = (fa.g) this.f17311l;
                d3.e.p(obj);
                aVar = aVar2;
                gVar = gVar3;
                objAwait4 = obj;
                gVar2 = (fa.g) objAwait4;
                x xVar19 = this.f17312m;
                boolean zT8 = x.t0(xVar19, gVar, xVar19.A0());
                xVar = this.f17312m;
                if (x.t0(xVar, gVar2, xVar.B0())) {
                    if (z14) {
                        this.f17311l = gVar2;
                        this.f17307h = null;
                        this.f17310k = 8;
                        if (this.f17312m.A0().b(this.f17313n.f17253h, (fa.g.b) gVar, this) == aVar) {
                            return aVar;
                        }
                    }
                    if (gVar2 instanceof fa.g.b) {
                        this.f17311l = null;
                        this.f17307h = null;
                        this.f17310k = 9;
                        if (this.f17312m.B0().b(this.f17313n.f17253h, (fa.g.b) gVar2, this) == aVar) {
                            return aVar;
                        }
                    }
                }
                return fd.o.f7408a;
            case 8:
                gVar2 = (fa.g) this.f17311l;
                d3.e.p(obj);
                aVar = aVar2;
                if (gVar2 instanceof fa.g.b) {
                    this.f17311l = null;
                    this.f17307h = null;
                    this.f17310k = 9;
                    if (this.f17312m.B0().b(this.f17313n.f17253h, (fa.g.b) gVar2, this) == aVar) {
                        return aVar;
                    }
                }
                return fd.o.f7408a;
            case 9:
                d3.e.p(obj);
                return fd.o.f7408a;
            default:
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }
}
