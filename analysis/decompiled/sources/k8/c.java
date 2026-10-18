package k8;

import com.newrelic.agent.android.NewRelic;
import com.nike.adapt.presenter.profile.AdaptUser;

/* JADX INFO: compiled from: FetchProfilePresenter.kt */
/* JADX INFO: loaded from: classes.dex */
public final class c implements f8.c<AdaptUser> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ a f9744a;

    public c(a aVar) {
        this.f9744a = aVar;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // f8.c
    public final void a(f8.b bVar) {
        if (bVar instanceof f8.e) {
            f8.e eVar = (f8.e) bVar;
            NewRelic.setUserId(((AdaptUser) eVar.f7088a).getNuid());
            s7.b.f15149a.a(new g(this.f9744a.f9740h, (AdaptUser) eVar.f7088a));
        } else if (bVar instanceof f8.d) {
            s7.b.f15149a.a(new g(this.f9744a.f9740h, null));
        }
    }
}
