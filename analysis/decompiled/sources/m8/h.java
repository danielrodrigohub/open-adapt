package m8;

import com.nike.adapt.presenter.profile.AdaptUser;
import qd.l;
import rd.o;

/* JADX INFO: compiled from: FetchProfileRepository.kt */
/* JADX INFO: loaded from: classes.dex */
public final class h extends o implements l<Throwable, fd.o> {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ f8.c<AdaptUser> f10829h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public h(f8.c<AdaptUser> cVar) {
        super(1);
        this.f10829h = cVar;
    }

    @Override // qd.l
    public final fd.o invoke(Throwable th) {
        Throwable th2 = th;
        p4.h.j(th2, "it");
        this.f10829h.a(new f8.d(th2));
        return fd.o.f7408a;
    }
}
