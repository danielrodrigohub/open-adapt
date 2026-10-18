package i9;

import java.util.Objects;
import x8.k0;

/* JADX INFO: compiled from: AdaptShoesOnboardingFragment.kt */
/* JADX INFO: loaded from: classes.dex */
public final class o extends rd.o implements qd.p<x8.d0, k0, fd.o> {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ g f8923h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public o(g gVar) {
        super(2);
        this.f8923h = gVar;
    }

    @Override // qd.p
    public final fd.o invoke(x8.d0 d0Var, k0 k0Var) {
        x8.d0 d0Var2 = d0Var;
        p4.h.j(d0Var2, "$this$$receiver");
        p4.h.j(k0Var, "it");
        if (d0Var2 != x8.d0.IGNORE) {
            g gVar = this.f8923h;
            g.a aVar = g.K0;
            Objects.requireNonNull(gVar);
        }
        return fd.o.f7408a;
    }
}
