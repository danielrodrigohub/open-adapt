package ya;

import v9.f2;

/* JADX INFO: compiled from: AdaptKitControlsRepositories.kt */
/* JADX INFO: loaded from: classes.dex */
public final class w extends rd.o implements qd.a<fd.o> {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ v9.g f19096h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final /* synthetic */ d f19097i;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public w(v9.g gVar, d dVar) {
        super(0);
        this.f19096h = gVar;
        this.f19097i = dVar;
    }

    @Override // qd.a
    public final fd.o invoke() {
        v9.g f2Var = this.f19096h;
        if (f2Var instanceof f2) {
            f2 f2Var2 = (f2) f2Var;
            if (f2Var2.f16547m == v9.e.CONNECTED_AND_AUTHENTICATED) {
                v9.e eVar = v9.e.CONNECTED_AND_AUTHENTICATED_THROUGH_OTHER_ADAPTKIT;
                String str = f2Var2.f16546l;
                p4.h.j(str, "id");
                f2Var = new f2(str, eVar);
            }
        }
        this.f19097i.f18772o.b(v9.t.f16822a.d(), this.f19097i.f18763f, new v(f2Var));
        return fd.o.f7408a;
    }
}
