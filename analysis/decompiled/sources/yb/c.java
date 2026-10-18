package yb;

import com.nike.authcomponent.oidc.internal.nativeoidc.webservice.OIDCAuthWebService;
import com.nike.authcomponent.oidc.internal.nativeoidc.webservice.model.OIDCAuthConfigurationJSON;
import fd.o;
import ld.i;
import qd.l;

/* JADX INFO: compiled from: NativeOIDCWrapper.kt */
/* JADX INFO: loaded from: classes.dex */
@ld.e(c = "com.nike.authcomponent.oidc.internal.nativeoidc.NativeOIDCWrapper$doRevokeRefreshToken$2$1", f = "NativeOIDCWrapper.kt", l = {157}, m = "invokeSuspend")
public final class c extends i implements l<jd.d<? super o>, Object> {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f19129h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final /* synthetic */ e f19130i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final /* synthetic */ OIDCAuthConfigurationJSON f19131j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final /* synthetic */ String f19132k;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public c(e eVar, OIDCAuthConfigurationJSON oIDCAuthConfigurationJSON, String str, jd.d<? super c> dVar) {
        super(1, dVar);
        this.f19130i = eVar;
        this.f19131j = oIDCAuthConfigurationJSON;
        this.f19132k = str;
    }

    @Override // ld.a
    public final jd.d<o> create(jd.d<?> dVar) {
        return new c(this.f19130i, this.f19131j, this.f19132k, dVar);
    }

    @Override // qd.l
    public final Object invoke(jd.d<? super o> dVar) {
        return ((c) create(dVar)).invokeSuspend(o.f7408a);
    }

    @Override // ld.a
    public final Object invokeSuspend(Object obj) throws Throwable {
        kd.a aVar = kd.a.COROUTINE_SUSPENDED;
        int i10 = this.f19129h;
        if (i10 == 0) {
            d3.e.p(obj);
            OIDCAuthWebService oIDCAuthWebServiceCreate = this.f19130i.f19139b.create();
            String revoke_endpoint = this.f19131j.getRevoke_endpoint();
            this.f19130i.f19138a.f12531b.e();
            String str = this.f19132k;
            this.f19129h = 1;
            if (oIDCAuthWebServiceCreate.revokeRefreshToken(revoke_endpoint, "5049d3b1ed877abc784ac3233c0cf83", str, this) == aVar) {
                return aVar;
            }
        } else {
            if (i10 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            d3.e.p(obj);
        }
        return o.f7408a;
    }
}
