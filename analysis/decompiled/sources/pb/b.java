package pb;

import fd.o;
import ld.e;
import ob.f;
import p4.h;

/* JADX INFO: compiled from: OIDCAuthManagerImpl.kt */
/* JADX INFO: loaded from: classes.dex */
public final class b implements f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final cc.a f13416a;

    /* JADX INFO: compiled from: OIDCAuthManagerImpl.kt */
    @e(c = "com.nike.authcomponent.oidc.internal.OIDCAuthManagerImpl", f = "OIDCAuthManagerImpl.kt", l = {45}, m = "signOut")
    public static final class a extends ld.c {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public b f13417h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public /* synthetic */ Object f13418i;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public int f13420k;

        public a(jd.d<? super a> dVar) {
            super(dVar);
        }

        @Override // ld.a
        public final Object invokeSuspend(Object obj) {
            this.f13418i = obj;
            this.f13420k |= Integer.MIN_VALUE;
            return b.this.c(this);
        }
    }

    public b(cc.a aVar) {
        this.f13416a = aVar;
        ed.e eVarB = b();
        h.j(eVarB, "<this>");
        eVarB.b(new ed.b(3, "Manager_Initialized", "OIDCAuthManager initialized", ec.b.a(null, null, null, 0, 31), ec.a.f6718a.a(null)));
    }

    public final ob.h a() {
        return this.f13416a.e();
    }

    public final ed.e b() {
        return this.f13416a.d().f12530a.f();
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object c(jd.d<? super o> dVar) throws Throwable {
        a aVar;
        b bVar;
        if (dVar instanceof a) {
            aVar = (a) dVar;
            int i10 = aVar.f13420k;
            if ((i10 & Integer.MIN_VALUE) != 0) {
                aVar.f13420k = i10 - Integer.MIN_VALUE;
            } else {
                aVar = new a(dVar);
            }
        } else {
            aVar = new a(dVar);
        }
        Object obj = aVar.f13418i;
        kd.a aVar2 = kd.a.COROUTINE_SUSPENDED;
        int i11 = aVar.f13420k;
        if (i11 == 0) {
            d3.e.p(obj);
            cc.a aVar3 = this.f13416a;
            aVar.f13417h = this;
            aVar.f13420k = 1;
            if (aVar3.f(aVar) == aVar2) {
                return aVar2;
            }
            bVar = this;
        } else {
            if (i11 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            bVar = aVar.f13417h;
            d3.e.p(obj);
        }
        ed.e eVarB = bVar.b();
        h.j(eVarB, "<this>");
        eVarB.b(new ed.b(3, "Signed_Out", "User signed out", ec.b.a(null, null, null, 0, 31), ec.a.f6718a.a(androidx.lifecycle.o.z(ec.a.f6722e, ec.a.f6726i))));
        return o.f7408a;
    }
}
