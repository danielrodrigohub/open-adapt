package n8;

import androidx.recyclerview.widget.s;
import com.nike.adapt.adk.Shoe;
import com.nike.adapt.service.AdaptAuthenticationService;
import ha.a0;
import ha.b0;
import ha.u;
import ha.w;
import ha.y;
import ha.z;
import o7.x;

/* JADX INFO: compiled from: AdaptAuthenticationService.kt */
/* JADX INFO: loaded from: classes.dex */
public final class a extends rd.o implements qd.l<u, fd.o> {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ AdaptAuthenticationService f12005h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public a(AdaptAuthenticationService adaptAuthenticationService) {
        super(1);
        this.f12005h = adaptAuthenticationService;
    }

    @Override // qd.l
    public final fd.o invoke(u uVar) {
        u uVar2 = uVar;
        p4.h.j(uVar2, "$this$null");
        x xVar = x.f12420a;
        String strB = uVar2.b();
        int i10 = this.f12005h.f5682i;
        StringBuilder sbE = a4.g.e("Pairing_State_Result : ", strB, " : ");
        sbE.append(s.c(i10));
        xVar.a(sbE.toString());
        if (uVar2 instanceof ha.n) {
            AdaptAuthenticationService.c(this.f12005h, new j(Shoe.LEFT, ((ha.n) uVar2).f8387h));
        } else if (uVar2 instanceof ha.o) {
            AdaptAuthenticationService.c(this.f12005h, new j(Shoe.RIGHT, ((ha.o) uVar2).f8388h));
        } else if (uVar2 instanceof w) {
            AdaptAuthenticationService.c(this.f12005h, new q(Shoe.BOTH));
        } else if (uVar2 instanceof ha.x) {
            AdaptAuthenticationService.c(this.f12005h, new q(Shoe.LEFT));
        } else if (uVar2 instanceof y) {
            AdaptAuthenticationService.c(this.f12005h, new q(Shoe.RIGHT));
        } else if (uVar2 instanceof ha.j) {
            AdaptAuthenticationService.c(this.f12005h, new i(Shoe.LEFT));
        } else if (uVar2 instanceof ha.k) {
            AdaptAuthenticationService.c(this.f12005h, new i(Shoe.RIGHT));
        } else if (uVar2 instanceof a0) {
            AdaptAuthenticationService.c(this.f12005h, new p(Shoe.LEFT));
        } else if (uVar2 instanceof b0) {
            AdaptAuthenticationService.c(this.f12005h, new p(Shoe.RIGHT));
        } else {
            if (uVar2 instanceof ha.h) {
                AdaptAuthenticationService adaptAuthenticationService = this.f12005h;
                adaptAuthenticationService.f5682i = adaptAuthenticationService.f5682i != 3 ? 2 : 4;
                AdaptAuthenticationService.c(adaptAuthenticationService, new r(Shoe.LEFT));
                AdaptAuthenticationService.b(this.f12005h);
            } else if (uVar2 instanceof ha.i) {
                AdaptAuthenticationService adaptAuthenticationService2 = this.f12005h;
                adaptAuthenticationService2.f5682i = adaptAuthenticationService2.f5682i != 2 ? 3 : 4;
                AdaptAuthenticationService.c(adaptAuthenticationService2, new r(Shoe.RIGHT));
                AdaptAuthenticationService.b(this.f12005h);
            } else if (uVar2 instanceof ha.p) {
                AdaptAuthenticationService.c(this.f12005h, new e(Shoe.LEFT, uVar2.b()));
            } else if (uVar2 instanceof ha.q) {
                AdaptAuthenticationService.c(this.f12005h, new e(Shoe.RIGHT, uVar2.b()));
            } else if (uVar2 instanceof z) {
                xVar.a("Pairing Stopped");
            } else if (uVar2 instanceof ha.c) {
                AdaptAuthenticationService.c(this.f12005h, new h(Shoe.LEFT, uVar2.b()));
            } else if (uVar2 instanceof ha.d) {
                AdaptAuthenticationService.c(this.f12005h, new h(Shoe.RIGHT, uVar2.b()));
            } else if (uVar2 instanceof ha.e) {
                AdaptAuthenticationService.c(this.f12005h, new g(Shoe.LEFT));
            } else if (uVar2 instanceof ha.f) {
                AdaptAuthenticationService.c(this.f12005h, new g(Shoe.RIGHT));
            }
        }
        return fd.o.f7408a;
    }
}
