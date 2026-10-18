package n8;

import com.nike.adapt.adk.Shoe;
import com.nike.adapt.service.AdaptAuthenticationService;
import ha.s;
import o7.x;

/* JADX INFO: compiled from: AdaptAuthenticationService.kt */
/* JADX INFO: loaded from: classes.dex */
public final class c extends rd.o implements qd.l<s, fd.o> {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ AdaptAuthenticationService f12007h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public c(AdaptAuthenticationService adaptAuthenticationService) {
        super(1);
        this.f12007h = adaptAuthenticationService;
    }

    @Override // qd.l
    public final fd.o invoke(s sVar) {
        s sVar2 = sVar;
        p4.h.j(sVar2, "$this$null");
        x.f12420a.b("ResetErrorDialog", "In unknownScannerError");
        AdaptAuthenticationService.c(this.f12007h, new o(Shoe.BOTH, sVar2.toString()));
        return fd.o.f7408a;
    }
}
