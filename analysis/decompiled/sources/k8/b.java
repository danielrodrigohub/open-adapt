package k8;

import com.nike.adapt.presenter.profile.AdaptUser;

/* JADX INFO: compiled from: FetchProfilePresenter.kt */
/* JADX INFO: loaded from: classes.dex */
public final class b implements f8.c<AdaptUser> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ a f9743a;

    public b(a aVar) {
        this.f9743a = aVar;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // f8.c
    public final void a(f8.b bVar) {
        if (bVar instanceof f8.e) {
            s7.b.f15149a.a(new g(this.f9743a.f9740h, (AdaptUser) ((f8.e) bVar).f7088a));
        } else if (bVar instanceof f8.d) {
            s7.b.f15149a.a(new g(this.f9743a.f9740h, null));
        }
    }
}
