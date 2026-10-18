package yb;

import fd.o;
import ld.i;
import qd.p;
import rd.u;

/* JADX INFO: compiled from: NativeOIDCWrapper.kt */
/* JADX INFO: loaded from: classes.dex */
@ld.e(c = "com.nike.authcomponent.oidc.internal.nativeoidc.NativeOIDCWrapper$doRevokeRefreshToken$2$2", f = "NativeOIDCWrapper.kt", l = {165}, m = "invokeSuspend")
public final class d extends i implements p<Throwable, jd.d<? super o>, Object> {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f19133h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public /* synthetic */ Object f19134i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final /* synthetic */ u f19135j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final /* synthetic */ e f19136k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final /* synthetic */ String f19137l;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public d(u uVar, e eVar, String str, jd.d<? super d> dVar) {
        super(2, dVar);
        this.f19135j = uVar;
        this.f19136k = eVar;
        this.f19137l = str;
    }

    @Override // ld.a
    public final jd.d<o> create(Object obj, jd.d<?> dVar) {
        d dVar2 = new d(this.f19135j, this.f19136k, this.f19137l, dVar);
        dVar2.f19134i = obj;
        return dVar2;
    }

    @Override // qd.p
    public final Object invoke(Throwable th, jd.d<? super o> dVar) {
        return ((d) create(th, dVar)).invokeSuspend(o.f7408a);
    }

    @Override // ld.a
    public final Object invokeSuspend(Object obj) throws Throwable {
        Throwable th;
        kd.a aVar = kd.a.COROUTINE_SUSPENDED;
        int i10 = this.f19133h;
        if (i10 == 0) {
            d3.e.p(obj);
            Throwable th2 = (Throwable) this.f19134i;
            this.f19135j.f14793h = true;
            ac.a aVar2 = this.f19136k.f19141d;
            String str = this.f19137l;
            this.f19134i = th2;
            this.f19133h = 1;
            if (aVar2.a(str, this) == aVar) {
                return aVar;
            }
            th = th2;
        } else {
            if (i10 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            th = (Throwable) this.f19134i;
            d3.e.p(obj);
        }
        ec.b.d(this.f19136k.h(), th);
        return o.f7408a;
    }
}
