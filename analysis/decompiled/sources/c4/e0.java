package c4;

import java.util.List;
import n3.s0;

/* JADX INFO: compiled from: UserDataReader.java */
/* JADX INFO: loaded from: classes.dex */
public final class e0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final List<s0> f3967a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final s3.w[] f3968b;

    public e0(List<s0> list) {
        this.f3967a = list;
        this.f3968b = new s3.w[list.size()];
    }

    public final void a(long j10, m5.w wVar) {
        if (wVar.f10477c - wVar.f10476b < 9) {
            return;
        }
        int iE = wVar.e();
        int iE2 = wVar.e();
        int iT = wVar.t();
        if (iE == 434 && iE2 == 1195456820 && iT == 3) {
            s3.b.b(j10, wVar, this.f3968b);
        }
    }

    public final void b(s3.j jVar, d0.d dVar) {
        for (int i10 = 0; i10 < this.f3968b.length; i10++) {
            dVar.a();
            s3.w wVarP = jVar.p(dVar.c(), 3);
            s0 s0Var = this.f3967a.get(i10);
            String str = s0Var.f11687s;
            m5.a.b("application/cea-608".equals(str) || "application/cea-708".equals(str), "Invalid closed caption mime type provided: " + str);
            s0.a aVar = new s0.a();
            aVar.f11695a = dVar.b();
            aVar.f11705k = str;
            aVar.f11698d = s0Var.f11679k;
            aVar.f11697c = s0Var.f11678j;
            aVar.C = s0Var.K;
            aVar.f11707m = s0Var.f11689u;
            wVarP.b(new s0(aVar));
            this.f3968b[i10] = wVarP;
        }
    }
}
