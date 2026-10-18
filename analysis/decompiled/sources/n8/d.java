package n8;

import com.nike.adapt.service.AdaptAuthenticationService;
import v9.k0;

/* JADX INFO: compiled from: AdaptAuthenticationService.kt */
/* JADX INFO: loaded from: classes.dex */
public final class d extends rd.o implements qd.l<k0, fd.o> {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ AdaptAuthenticationService f12008h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public d(AdaptAuthenticationService adaptAuthenticationService) {
        super(1);
        this.f12008h = adaptAuthenticationService;
    }

    @Override // qd.l
    public final fd.o invoke(k0 k0Var) {
        k0 k0Var2 = k0Var;
        p4.h.j(k0Var2, "$this$pairingListener");
        k0Var2.f16667c = new a(this.f12008h);
        k0Var2.f16668d = new b(this.f12008h);
        k0Var2.f16669e = new c(this.f12008h);
        return fd.o.f7408a;
    }
}
