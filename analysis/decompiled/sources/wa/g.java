package wa;

import qd.l;
import rd.o;
import v9.d4;
import v9.r3;
import v9.u3;
import v9.u4;
import v9.x3;

/* JADX INFO: compiled from: AdaptKitRemoteBroadcastReceiver.kt */
/* JADX INFO: loaded from: classes.dex */
public final class g extends o implements l<v9.f, fd.o> {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ ia.a<?, ?, ?> f17575h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final /* synthetic */ d.b f17576i;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public g(ia.a<?, ?, ?> aVar, d.b bVar) {
        super(1);
        this.f17575h = aVar;
        this.f17576i = bVar;
    }

    @Override // qd.l
    public final fd.o invoke(v9.f fVar) {
        v9.f fVar2 = fVar;
        p4.h.j(fVar2, "$this$null");
        ia.a<?, ?, ?> aVar = this.f17575h;
        if (aVar instanceof ia.a.d) {
            d dVar = d.f17553h;
            d.b bVar = this.f17576i;
            u4 u4Var = (u4) (fVar2 instanceof u4 ? fVar2 : null);
            if (u4Var != null) {
                aVar.c(dVar.b(), u4Var.getMessage());
                if (fVar2.f16541l) {
                    bVar.f17559c.f17555b = true;
                } else {
                    bVar.f17559c.f17556c = true;
                }
                d.f(dVar, bVar);
            }
        } else if (aVar instanceof ia.a.f) {
            d dVar2 = d.f17553h;
            d.b bVar2 = this.f17576i;
            x3 x3Var = (x3) (fVar2 instanceof x3 ? fVar2 : null);
            if (x3Var != null) {
                aVar.c(dVar2.b(), x3Var.getMessage());
                if (fVar2.f16541l) {
                    bVar2.f17559c.f17555b = true;
                } else {
                    bVar2.f17559c.f17556c = true;
                }
                d.f(dVar2, bVar2);
            }
        } else if (aVar instanceof ia.a.b) {
            d dVar3 = d.f17553h;
            d.b bVar3 = this.f17576i;
            r3 r3Var = (r3) (fVar2 instanceof r3 ? fVar2 : null);
            if (r3Var != null) {
                aVar.c(dVar3.b(), r3Var.getMessage());
                if (fVar2.f16541l) {
                    bVar3.f17559c.f17555b = true;
                } else {
                    bVar3.f17559c.f17556c = true;
                }
                d.f(dVar3, bVar3);
            }
        } else if (aVar instanceof ia.a.e) {
            d dVar4 = d.f17553h;
            d.b bVar4 = this.f17576i;
            u3 u3Var = (u3) (fVar2 instanceof u3 ? fVar2 : null);
            if (u3Var != null) {
                aVar.c(dVar4.b(), u3Var.getMessage());
                if (fVar2.f16541l) {
                    bVar4.f17559c.f17555b = true;
                } else {
                    bVar4.f17559c.f17556c = true;
                }
                d.f(dVar4, bVar4);
            }
        } else if (aVar instanceof ia.a.c) {
            d dVar5 = d.f17553h;
            d.b bVar5 = this.f17576i;
            d4 d4Var = (d4) (fVar2 instanceof d4 ? fVar2 : null);
            if (d4Var != null) {
                aVar.c(dVar5.b(), d4Var.getMessage());
                if (fVar2.f16541l) {
                    bVar5.f17559c.f17555b = true;
                } else {
                    bVar5.f17559c.f17556c = true;
                }
                d.f(dVar5, bVar5);
            }
        } else if (aVar instanceof ia.a.C0174a) {
            d dVar6 = d.f17553h;
            d.b bVar6 = this.f17576i;
            d4 d4Var2 = (d4) (fVar2 instanceof d4 ? fVar2 : null);
            if (d4Var2 != null) {
                aVar.c(dVar6.b(), d4Var2.getMessage());
                if (fVar2.f16541l) {
                    bVar6.f17559c.f17555b = true;
                } else {
                    bVar6.f17559c.f17556c = true;
                }
                d.f(dVar6, bVar6);
            }
        }
        return fd.o.f7408a;
    }
}
