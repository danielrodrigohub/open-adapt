package z7;

import a8.f;
import a8.i;
import a8.j;
import androidx.lifecycle.o;
import com.nike.adapt.network.dataopt.datastream.NspStreamServiceApi;
import fd.h;
import g0.n;
import jd.d;
import ld.c;
import ld.e;
import o7.x;

/* JADX INFO: compiled from: NspStreamApi.kt */
/* JADX INFO: loaded from: classes.dex */
public final class b implements z7.a {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final b f19378b = new b();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final h f19379c = (h) o.x(a.f19380h);

    /* JADX INFO: compiled from: NspStreamApi.kt */
    public static final class a extends rd.o implements qd.a<NspStreamServiceApi> {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public static final a f19380h = new a();

        public a() {
            super(0);
        }

        @Override // qd.a
        public final NspStreamServiceApi invoke() {
            int i10 = w7.a.f17233a;
            n nVar = n.f7520c;
            NspStreamServiceApi nspStreamServiceApi = n.f7523f;
            if (nspStreamServiceApi != null) {
                return nspStreamServiceApi;
            }
            NspStreamServiceApi nspStreamServiceApi2 = (NspStreamServiceApi) w7.a.C0303a.a(nVar, NspStreamServiceApi.class, "https://nsphttpsgcl.prd.nsp.nike.com", false, 4, null);
            n.f7523f = nspStreamServiceApi2;
            return nspStreamServiceApi2;
        }
    }

    /* JADX INFO: renamed from: z7.b$b, reason: collision with other inner class name */
    /* JADX INFO: compiled from: NspStreamApi.kt */
    @e(c = "com.nike.adapt.network.dataopt.datastream.NspStreamApiImpl", f = "NspStreamApi.kt", l = {28, 32}, m = "syncShoeStats")
    public static final class C0334b extends c {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public /* synthetic */ Object f19381h;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public int f19383j;

        public C0334b(d<? super C0334b> dVar) {
            super(dVar);
        }

        @Override // ld.a
        public final Object invokeSuspend(Object obj) {
            this.f19381h = obj;
            this.f19383j |= Integer.MIN_VALUE;
            return b.this.a(null, this);
        }
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override // z7.a
    public final Object a(a8.d dVar, d<? super Boolean> dVar2) throws Throwable {
        C0334b c0334b;
        if (dVar2 instanceof C0334b) {
            c0334b = (C0334b) dVar2;
            int i10 = c0334b.f19383j;
            if ((i10 & Integer.MIN_VALUE) != 0) {
                c0334b.f19383j = i10 - Integer.MIN_VALUE;
            } else {
                c0334b = new C0334b(dVar2);
            }
        } else {
            c0334b = new C0334b(dVar2);
        }
        Object objSendStatsRight = c0334b.f19381h;
        kd.a aVar = kd.a.COROUTINE_SUSPENDED;
        int i11 = c0334b.f19383j;
        try {
            if (i11 != 0) {
                if (i11 == 1) {
                    d3.e.p(objSendStatsRight);
                    p4.h.j((f) objSendStatsRight, "<this>");
                    throw null;
                }
                if (i11 != 2) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                d3.e.p(objSendStatsRight);
                p4.h.j((f) objSendStatsRight, "<this>");
                throw null;
            }
            d3.e.p(objSendStatsRight);
            if (dVar instanceof i) {
                c0334b.f19383j = 1;
                objSendStatsRight = ((NspStreamServiceApi) f19379c.getValue()).sendStatsLeft((i) dVar, c0334b);
                if (objSendStatsRight == aVar) {
                    return aVar;
                }
                p4.h.j((f) objSendStatsRight, "<this>");
                throw null;
            }
            NspStreamServiceApi nspStreamServiceApi = (NspStreamServiceApi) f19379c.getValue();
            p4.h.h(dVar, "null cannot be cast to non-null type com.nike.adapt.network.dataopt.datastream.model.ShoeStatsRight");
            c0334b.f19383j = 2;
            objSendStatsRight = nspStreamServiceApi.sendStatsRight((j) dVar, c0334b);
            if (objSendStatsRight == aVar) {
                return aVar;
            }
            p4.h.j((f) objSendStatsRight, "<this>");
            throw null;
        } catch (Throwable th) {
            x.f12420a.a("synShoeStats api : " + th.getCause() + " : " + th.getMessage());
            return Boolean.FALSE;
        }
    }
}
