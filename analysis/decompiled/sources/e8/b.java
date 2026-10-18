package e8;

import androidx.lifecycle.o;
import com.nike.adapt.BigfootApplication;
import com.nike.adapt.network.identity.AdaptIdentityServiceApi;
import com.nike.adapt.network.identity.model.AdaptIdentity;
import fd.h;
import g0.n;
import java.util.List;
import java.util.Objects;
import retrofit2.Response;

/* JADX INFO: compiled from: AdaptIdentityApi.kt */
/* JADX INFO: loaded from: classes.dex */
public final class b implements e8.a {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final b f6551b = new b();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final h f6552c = (h) o.x(C0118b.f6555h);

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final List<String> f6553d = o.z("nuId", "name", "hometown", "avatar", "dob", "registration", "contact");

    /* JADX INFO: compiled from: AdaptExecutor.kt */
    public static final class a extends rd.o implements qd.a<fd.o> {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public final /* synthetic */ f8.a f6554h;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(f8.a aVar) {
            super(0);
            this.f6554h = aVar;
        }

        @Override // qd.a
        public final fd.o invoke() {
            fd.o oVar;
            try {
                f8.a aVar = this.f6554h;
                String strB = BigfootApplication.f5638p.c().b();
                if (strB != null) {
                    b bVar = b.f6551b;
                    Response<AdaptIdentity> responseExecute = ((AdaptIdentityServiceApi) b.f6552c.getValue()).getIdentity(strB, new c(b.f6553d)).execute();
                    if (responseExecute.isSuccessful()) {
                        AdaptIdentity adaptIdentityBody = responseExecute.body();
                        p4.h.g(adaptIdentityBody);
                        aVar.c(adaptIdentityBody);
                    } else {
                        aVar.b(new Exception("Failed network request with status code of: " + responseExecute.code()));
                    }
                    oVar = fd.o.f7408a;
                } else {
                    oVar = null;
                }
                if (oVar == null) {
                    aVar.b(new Exception("upmId not found"));
                }
            } catch (Throwable th) {
                this.f6554h.b(th);
            }
            return fd.o.f7408a;
        }
    }

    /* JADX INFO: renamed from: e8.b$b, reason: collision with other inner class name */
    /* JADX INFO: compiled from: AdaptIdentityApi.kt */
    public static final class C0118b extends rd.o implements qd.a<AdaptIdentityServiceApi> {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public static final C0118b f6555h = new C0118b();

        public C0118b() {
            super(0);
        }

        @Override // qd.a
        public final AdaptIdentityServiceApi invoke() {
            int i10 = w7.a.f17233a;
            n nVar = n.f7520c;
            AdaptIdentityServiceApi adaptIdentityServiceApi = n.f7521d;
            if (adaptIdentityServiceApi != null) {
                return adaptIdentityServiceApi;
            }
            AdaptIdentityServiceApi adaptIdentityServiceApi2 = (AdaptIdentityServiceApi) w7.a.C0303a.a(nVar, AdaptIdentityServiceApi.class, null, false, 6, null);
            n.f7521d = adaptIdentityServiceApi2;
            return adaptIdentityServiceApi2;
        }
    }

    @Override // e8.a
    public final void a(f8.a<AdaptIdentity> aVar) {
        o7.b bVar = o7.b.NETWORK;
        a aVar2 = new a(aVar);
        Objects.requireNonNull(bVar);
        bVar.f12367h.execute(new w4.h(aVar2, 2));
    }
}
