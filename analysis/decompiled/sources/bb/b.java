package bb;

import com.newrelic.agent.android.harvest.HarvestTimer;
import fa.g;
import fb.l;
import java.util.Objects;
import jd.d;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineDispatcher;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.Dispatchers;
import kotlinx.coroutines.TimeoutKt;
import ld.e;
import ld.i;
import p4.h;
import qd.p;
import yd.o;

/* JADX INFO: compiled from: AdaptKitFirmwareRepository.kt */
/* JADX INFO: loaded from: classes.dex */
public final class b implements bb.a {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final l f3749b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ra.c f3750c = ra.c.f14744c;

    /* JADX INFO: compiled from: AdaptKitFirmwareRepository.kt */
    @e(c = "com.nike.android.adaptkit.repository.firmware.AdaptKitFirmwareRepositoryImpl$checkFirmware$2", f = "AdaptKitFirmwareRepository.kt", l = {36}, m = "invokeSuspend")
    public static final class a extends i implements p<CoroutineScope, d<? super fa.b>, Object> {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public int f3751h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public final /* synthetic */ fb.c f3752i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public final /* synthetic */ b f3753j;

        /* JADX INFO: renamed from: bb.b$a$a, reason: collision with other inner class name */
        /* JADX INFO: compiled from: AdaptKitFirmwareRepository.kt */
        @e(c = "com.nike.android.adaptkit.repository.firmware.AdaptKitFirmwareRepositoryImpl$checkFirmware$2$1", f = "AdaptKitFirmwareRepository.kt", l = {37}, m = "invokeSuspend")
        public static final class C0061a extends i implements p<CoroutineScope, d<? super fa.b>, Object> {

            /* JADX INFO: renamed from: h, reason: collision with root package name */
            public b f3754h;

            /* JADX INFO: renamed from: i, reason: collision with root package name */
            public fb.c f3755i;

            /* JADX INFO: renamed from: j, reason: collision with root package name */
            public int f3756j;

            /* JADX INFO: renamed from: k, reason: collision with root package name */
            public final /* synthetic */ b f3757k;

            /* JADX INFO: renamed from: l, reason: collision with root package name */
            public final /* synthetic */ fb.c f3758l;

            /* JADX INFO: renamed from: bb.b$a$a$a, reason: collision with other inner class name */
            /* JADX INFO: compiled from: AdaptKitFirmwareRepository.kt */
            public static final class C0062a implements ta.a<va.a> {

                /* JADX INFO: renamed from: a, reason: collision with root package name */
                public final /* synthetic */ d<fa.b> f3759a;

                /* JADX INFO: renamed from: b, reason: collision with root package name */
                public final /* synthetic */ fb.c f3760b;

                /* JADX WARN: Multi-variable type inference failed */
                public C0062a(d<? super fa.b> dVar, fb.c cVar) {
                    this.f3759a = dVar;
                    this.f3760b = cVar;
                }

                /* JADX WARN: Code duplicated, block: B:23:0x004f A[DONT_INVERT] */
                /* JADX WARN: Code duplicated, block: B:24:0x0051  */
                /* JADX WARN: Code duplicated, block: B:25:0x0059  */
                @Override // ta.a
                public final void a(va.a aVar) {
                    Object c0129b;
                    va.a aVar2 = aVar;
                    h.j(aVar2, "response");
                    d<fa.b> dVar = this.f3759a;
                    int i10 = fa.b.f7123a;
                    fb.c cVar = this.f3760b;
                    h.j(cVar, "currentVersion");
                    boolean z10 = aVar2.f16961h;
                    String str = aVar2.f16962i;
                    fb.c cVar2 = str != null ? new fb.c(str) : null;
                    boolean z11 = aVar2.f16963j;
                    boolean z12 = aVar2.f16964k;
                    String str2 = aVar2.f16965l;
                    String str3 = aVar2.f16966m;
                    if (z10 && cVar2 != null) {
                        if (!(str2 == null || str2.length() == 0)) {
                            if (!(str3 == null || o.b0(str3))) {
                                c0129b = new fa.b.c(cVar, z10, cVar2, z11, z12, str2, str3);
                            } else if (z10) {
                                c0129b = new fa.b.a(cVar, "updatedVersion or md5 or url not present");
                            } else {
                                c0129b = new fa.b.C0129b(cVar);
                            }
                        } else if (z10) {
                            c0129b = new fa.b.a(cVar, "updatedVersion or md5 or url not present");
                        } else {
                            c0129b = new fa.b.C0129b(cVar);
                        }
                    } else if (z10) {
                        c0129b = new fa.b.a(cVar, "updatedVersion or md5 or url not present");
                    } else {
                        c0129b = new fa.b.C0129b(cVar);
                    }
                    dVar.resumeWith(c0129b);
                }

                @Override // ta.a
                public final void b(Throwable th) {
                    this.f3759a.resumeWith(new fa.b.a(this.f3760b, String.valueOf(th.getMessage())));
                }
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C0061a(b bVar, fb.c cVar, d<? super C0061a> dVar) {
                super(2, dVar);
                this.f3757k = bVar;
                this.f3758l = cVar;
            }

            @Override // ld.a
            public final d<fd.o> create(Object obj, d<?> dVar) {
                return new C0061a(this.f3757k, this.f3758l, dVar);
            }

            @Override // qd.p
            public final Object invoke(CoroutineScope coroutineScope, d<? super fa.b> dVar) {
                return ((C0061a) create(coroutineScope, dVar)).invokeSuspend(fd.o.f7408a);
            }

            @Override // ld.a
            public final Object invokeSuspend(Object obj) throws Throwable {
                kd.a aVar = kd.a.COROUTINE_SUSPENDED;
                int i10 = this.f3756j;
                if (i10 == 0) {
                    d3.e.p(obj);
                    b bVar = this.f3757k;
                    fb.c cVar = this.f3758l;
                    this.f3754h = bVar;
                    this.f3755i = cVar;
                    this.f3756j = 1;
                    jd.i iVar = new jd.i(androidx.lifecycle.o.t(this));
                    ra.c cVar2 = bVar.f3750c;
                    C0062a c0062a = new C0062a(iVar, cVar);
                    Objects.requireNonNull(cVar2);
                    h.j(cVar, "currentVersion");
                    z9.a.NETWORK.b(new ra.a(c0062a, cVar));
                    obj = iVar.a();
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
        public a(fb.c cVar, b bVar, d<? super a> dVar) {
            super(2, dVar);
            this.f3752i = cVar;
            this.f3753j = bVar;
        }

        @Override // ld.a
        public final d<fd.o> create(Object obj, d<?> dVar) {
            return new a(this.f3752i, this.f3753j, dVar);
        }

        @Override // qd.p
        public final Object invoke(CoroutineScope coroutineScope, d<? super fa.b> dVar) {
            return ((a) create(coroutineScope, dVar)).invokeSuspend(fd.o.f7408a);
        }

        @Override // ld.a
        public final Object invokeSuspend(Object obj) throws Throwable {
            kd.a aVar = kd.a.COROUTINE_SUSPENDED;
            int i10 = this.f3751h;
            if (i10 == 0) {
                d3.e.p(obj);
                C0061a c0061a = new C0061a(this.f3753j, this.f3752i, null);
                this.f3751h = 1;
                obj = TimeoutKt.withTimeoutOrNull(10000L, c0061a, this);
                if (obj == aVar) {
                    return aVar;
                }
            } else {
                if (i10 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                d3.e.p(obj);
            }
            fa.b bVar = (fa.b) obj;
            return bVar == null ? new fa.b.a(this.f3752i, "Timeout during call") : bVar;
        }
    }

    /* JADX INFO: renamed from: bb.b$b, reason: collision with other inner class name */
    /* JADX INFO: compiled from: AdaptKitFirmwareRepository.kt */
    @e(c = "com.nike.android.adaptkit.repository.firmware.AdaptKitFirmwareRepositoryImpl", f = "AdaptKitFirmwareRepository.kt", l = {62}, m = "downloadFirmware")
    public static final class C0063b extends ld.c {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public /* synthetic */ Object f3761h;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public int f3763j;

        public C0063b(d<? super C0063b> dVar) {
            super(dVar);
        }

        @Override // ld.a
        public final Object invokeSuspend(Object obj) {
            this.f3761h = obj;
            this.f3763j |= Integer.MIN_VALUE;
            return b.this.b(null, this);
        }
    }

    /* JADX INFO: compiled from: AdaptKitFirmwareRepository.kt */
    @e(c = "com.nike.android.adaptkit.repository.firmware.AdaptKitFirmwareRepositoryImpl$downloadFirmware$2", f = "AdaptKitFirmwareRepository.kt", l = {63}, m = "invokeSuspend")
    public static final class c extends i implements p<CoroutineScope, d<? super g>, Object> {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public int f3764h;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public final /* synthetic */ fa.b.c f3766j;

        /* JADX INFO: compiled from: AdaptKitFirmwareRepository.kt */
        @e(c = "com.nike.android.adaptkit.repository.firmware.AdaptKitFirmwareRepositoryImpl$downloadFirmware$2$1", f = "AdaptKitFirmwareRepository.kt", l = {64}, m = "invokeSuspend")
        public static final class a extends i implements p<CoroutineScope, d<? super g>, Object> {

            /* JADX INFO: renamed from: h, reason: collision with root package name */
            public b f3767h;

            /* JADX INFO: renamed from: i, reason: collision with root package name */
            public fa.b.c f3768i;

            /* JADX INFO: renamed from: j, reason: collision with root package name */
            public int f3769j;

            /* JADX INFO: renamed from: k, reason: collision with root package name */
            public final /* synthetic */ b f3770k;

            /* JADX INFO: renamed from: l, reason: collision with root package name */
            public final /* synthetic */ fa.b.c f3771l;

            /* JADX INFO: renamed from: bb.b$c$a$a, reason: collision with other inner class name */
            /* JADX INFO: compiled from: AdaptKitFirmwareRepository.kt */
            public static final class C0064a implements ta.a<byte[]> {

                /* JADX INFO: renamed from: a, reason: collision with root package name */
                public final /* synthetic */ b f3772a;

                /* JADX INFO: renamed from: b, reason: collision with root package name */
                public final /* synthetic */ fa.b.c f3773b;

                /* JADX INFO: renamed from: c, reason: collision with root package name */
                public final /* synthetic */ d<g> f3774c;

                /* JADX WARN: Multi-variable type inference failed */
                public C0064a(b bVar, fa.b.c cVar, d<? super g> dVar) {
                    this.f3772a = bVar;
                    this.f3773b = cVar;
                    this.f3774c = dVar;
                }

                @Override // ta.a
                public final void a(byte[] bArr) {
                    byte[] bArr2 = bArr;
                    h.j(bArr2, "response");
                    String strA = this.f3772a.f3749b.a(this.f3773b.f7132m);
                    String strB = this.f3772a.f3749b.b(bArr2);
                    if (h.c(strA, strB)) {
                        this.f3774c.resumeWith(new g.b(this.f3773b.f7129j, bArr2));
                    } else {
                        this.f3774c.resumeWith(new g.c(strA, strB));
                    }
                }

                @Override // ta.a
                public final void b(Throwable th) {
                    this.f3774c.resumeWith(new g.a(String.valueOf(th.getMessage())));
                }
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public a(b bVar, fa.b.c cVar, d<? super a> dVar) {
                super(2, dVar);
                this.f3770k = bVar;
                this.f3771l = cVar;
            }

            @Override // ld.a
            public final d<fd.o> create(Object obj, d<?> dVar) {
                return new a(this.f3770k, this.f3771l, dVar);
            }

            @Override // qd.p
            public final Object invoke(CoroutineScope coroutineScope, d<? super g> dVar) {
                return ((a) create(coroutineScope, dVar)).invokeSuspend(fd.o.f7408a);
            }

            @Override // ld.a
            public final Object invokeSuspend(Object obj) throws Throwable {
                kd.a aVar = kd.a.COROUTINE_SUSPENDED;
                int i10 = this.f3769j;
                if (i10 == 0) {
                    d3.e.p(obj);
                    b bVar = this.f3770k;
                    fa.b.c cVar = this.f3771l;
                    this.f3767h = bVar;
                    this.f3768i = cVar;
                    this.f3769j = 1;
                    jd.i iVar = new jd.i(androidx.lifecycle.o.t(this));
                    ra.c cVar2 = bVar.f3750c;
                    String str = cVar.f7133n;
                    C0064a c0064a = new C0064a(bVar, cVar, iVar);
                    Objects.requireNonNull(cVar2);
                    h.j(str, "fullUrl");
                    z9.a.NETWORK.b(new ra.b(c0064a, str));
                    obj = iVar.a();
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
        public c(fa.b.c cVar, d<? super c> dVar) {
            super(2, dVar);
            this.f3766j = cVar;
        }

        @Override // ld.a
        public final d<fd.o> create(Object obj, d<?> dVar) {
            return b.this.new c(this.f3766j, dVar);
        }

        @Override // qd.p
        public final Object invoke(CoroutineScope coroutineScope, d<? super g> dVar) {
            return ((c) create(coroutineScope, dVar)).invokeSuspend(fd.o.f7408a);
        }

        @Override // ld.a
        public final Object invokeSuspend(Object obj) throws Throwable {
            kd.a aVar = kd.a.COROUTINE_SUSPENDED;
            int i10 = this.f3764h;
            if (i10 == 0) {
                d3.e.p(obj);
                a aVar2 = new a(b.this, this.f3766j, null);
                this.f3764h = 1;
                obj = TimeoutKt.withTimeoutOrNull(HarvestTimer.DEFAULT_HARVEST_PERIOD, aVar2, this);
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

    public b(l lVar) {
        this.f3749b = lVar;
    }

    @Override // bb.a
    public final Object a(fb.c cVar, d<? super fa.b> dVar) {
        return BuildersKt.withContext(Dispatchers.getIO(), new a(cVar, this, null), dVar);
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override // bb.a
    public final Object b(fa.b.c cVar, d<? super g> dVar) throws Throwable {
        C0063b c0063b;
        if (dVar instanceof C0063b) {
            c0063b = (C0063b) dVar;
            int i10 = c0063b.f3763j;
            if ((i10 & Integer.MIN_VALUE) != 0) {
                c0063b.f3763j = i10 - Integer.MIN_VALUE;
            } else {
                c0063b = new C0063b(dVar);
            }
        } else {
            c0063b = new C0063b(dVar);
        }
        Object objWithContext = c0063b.f3761h;
        kd.a aVar = kd.a.COROUTINE_SUSPENDED;
        int i11 = c0063b.f3763j;
        try {
            if (i11 == 0) {
                d3.e.p(objWithContext);
                CoroutineDispatcher io = Dispatchers.getIO();
                c cVar2 = new c(cVar, null);
                c0063b.f3763j = 1;
                objWithContext = BuildersKt.withContext(io, cVar2, c0063b);
                if (objWithContext == aVar) {
                    return aVar;
                }
            } else {
                if (i11 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                d3.e.p(objWithContext);
            }
            g gVar = (g) objWithContext;
            return gVar == null ? new g.a("Timed out") : gVar;
        } catch (Throwable th) {
            return new g.a(th.toString());
        }
    }
}
