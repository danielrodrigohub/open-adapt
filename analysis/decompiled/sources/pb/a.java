package pb;

import androidx.fragment.app.p;
import ld.e;
import ob.g;
import p4.h;

/* JADX INFO: compiled from: OIDCAuthManagerImpl.kt */
/* JADX INFO: loaded from: classes.dex */
public final class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ b f13411a;

    /* JADX INFO: renamed from: pb.a$a, reason: collision with other inner class name */
    /* JADX INFO: compiled from: OIDCAuthManagerImpl.kt */
    @e(c = "com.nike.authcomponent.oidc.internal.OIDCAuthManagerImpl$authFactory$1", f = "OIDCAuthManagerImpl.kt", l = {29}, m = "signIn")
    public static final class C0234a extends ld.c {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public a f13412h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public /* synthetic */ Object f13413i;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public int f13415k;

        public C0234a(jd.d<? super C0234a> dVar) {
            super(dVar);
        }

        @Override // ld.a
        public final Object invokeSuspend(Object obj) {
            this.f13413i = obj;
            this.f13415k |= Integer.MIN_VALUE;
            return a.this.a(null, this);
        }
    }

    public a(b bVar) {
        this.f13411a = bVar;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object a(p pVar, jd.d<? super g> dVar) throws Throwable {
        C0234a c0234a;
        a aVar;
        if (dVar instanceof C0234a) {
            c0234a = (C0234a) dVar;
            int i10 = c0234a.f13415k;
            if ((i10 & Integer.MIN_VALUE) != 0) {
                c0234a.f13415k = i10 - Integer.MIN_VALUE;
            } else {
                c0234a = new C0234a(dVar);
            }
        } else {
            c0234a = new C0234a(dVar);
        }
        Object objC = c0234a.f13413i;
        kd.a aVar2 = kd.a.COROUTINE_SUSPENDED;
        int i11 = c0234a.f13415k;
        if (i11 == 0) {
            d3.e.p(objC);
            cc.a aVar3 = this.f13411a.f13416a;
            c0234a.f13412h = this;
            c0234a.f13415k = 1;
            objC = aVar3.c(pVar, c0234a);
            if (objC == aVar2) {
                return aVar2;
            }
            aVar = this;
        } else {
            if (i11 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            aVar = c0234a.f13412h;
            d3.e.p(objC);
        }
        ob.c cVar = (ob.c) objC;
        ed.e eVarB = aVar.f13411a.b();
        h.j(cVar, "<this>");
        h.j(eVarB, "telemetryProvider");
        int iB = ob.d.a(cVar, eVarB).b();
        int i12 = iB == 0 ? -1 : c.f13421a[q.g.a(iB)];
        if (i12 == 1) {
            return new g.b(cVar);
        }
        if (i12 == 2) {
            return new g.a(cVar);
        }
        if (i12 != 3) {
            return i12 != 4 ? new g.b(cVar) : new g.b(cVar);
        }
        return new g.b(cVar);
    }
}
