package n8;

import com.nike.adapt.adk.Shoe;
import com.nike.adapt.service.AdaptAuthenticationService;
import o7.x;

/* JADX INFO: compiled from: AdaptAuthenticationService.kt */
/* JADX INFO: loaded from: classes.dex */
public final class b extends rd.o implements qd.l<ha.r, fd.o> {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ AdaptAuthenticationService f12006h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public b(AdaptAuthenticationService adaptAuthenticationService) {
        super(1);
        this.f12006h = adaptAuthenticationService;
    }

    @Override // qd.l
    public final fd.o invoke(ha.r rVar) {
        ha.r rVar2 = rVar;
        p4.h.j(rVar2, "$this$null");
        x.f12420a.b("ResetErrorDialog", "In failedToStartScannerErrorError");
        AdaptAuthenticationService.c(this.f12006h, new o(Shoe.BOTH, rVar2.toString()));
        return fd.o.f7408a;
    }
}
