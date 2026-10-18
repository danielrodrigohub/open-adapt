package j5;

import m5.g0;
import n3.s0;

/* JADX INFO: compiled from: R8$$SyntheticClass */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class h implements t6.i {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ i f9314h;

    /* JADX WARN: Code duplicated, block: B:32:0x0053  */
    /* JADX WARN: Code duplicated, block: B:54:0x008a  */
    @Override // t6.i
    public final boolean apply(Object obj) {
        boolean z10;
        boolean z11;
        i.e eVar;
        i.e eVar2;
        i iVar = this.f9314h;
        s0 s0Var = (s0) obj;
        synchronized (iVar.f9317c) {
            z10 = false;
            if (!iVar.f9320f.R || iVar.f9319e) {
                z10 = true;
            } else {
                if (s0Var.F <= 2) {
                    z10 = true;
                } else {
                    String str = s0Var.f11687s;
                    if (str != null) {
                        switch (str) {
                            case "audio/eac3-joc":
                            case "audio/ac3":
                            case "audio/ac4":
                            case "audio/eac3":
                                z11 = true;
                                break;
                            default:
                                z11 = false;
                                break;
                        }
                    } else {
                        z11 = false;
                    }
                    if ((z11 && (g0.f10384a < 32 || (eVar2 = iVar.f9321g) == null || !eVar2.f9345b)) || (g0.f10384a >= 32 && (eVar = iVar.f9321g) != null && eVar.f9345b && eVar.c() && iVar.f9321g.d() && iVar.f9321g.a(iVar.f9322h, s0Var))) {
                        z10 = true;
                    }
                }
            }
        }
        return z10;
    }
}
