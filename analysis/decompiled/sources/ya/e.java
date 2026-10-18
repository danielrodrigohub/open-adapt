package ya;

import android.app.Application;
import hc.l0;

/* JADX INFO: compiled from: AdaptKitControlsRepositories.kt */
/* JADX INFO: loaded from: classes.dex */
public final class e extends rd.o implements qd.a<fd.o> {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ d f19015h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final /* synthetic */ String f19016i;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public e(d dVar, String str) {
        super(0);
        this.f19015h = dVar;
        this.f19016i = str;
    }

    @Override // qd.a
    public final fd.o invoke() {
        byte[] bArrF;
        byte[] bArrF2;
        if (aa.a.a()) {
            ic.s sVarK0 = this.f19015h.k0();
            Application applicationD = v9.t.f16822a.d();
            d dVar = this.f19015h;
            String str = dVar.f18763f;
            String str2 = this.f19016i;
            l0 l0Var = dVar.A;
            try {
                bArrF2 = g7.b.f(dVar.f18759b.f6614l);
            } catch (Throwable unused) {
                bArrF2 = hc.b.f8408j;
            }
            byte[] bArr = bArrF2;
            p4.h.i(bArr, "try {\n                  …                        }");
            sVarK0.e(applicationD, str, str2, l0Var, bArr);
        } else {
            ic.s sVarK1 = this.f19015h.k0();
            Application applicationD2 = v9.t.f16822a.d();
            d dVar2 = this.f19015h;
            String str3 = dVar2.f18763f;
            String str4 = this.f19016i;
            l0 l0Var2 = dVar2.A;
            try {
                bArrF = g7.b.f(dVar2.f18759b.f6614l);
            } catch (Throwable unused2) {
                bArrF = hc.b.f8408j;
            }
            byte[] bArr2 = bArrF;
            p4.h.i(bArr2, "try {\n                  …                        }");
            sVarK1.c(applicationD2, str3, str4, l0Var2, bArr2);
        }
        return fd.o.f7408a;
    }
}
