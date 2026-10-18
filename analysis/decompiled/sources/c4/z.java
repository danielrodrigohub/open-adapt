package c4;

import java.util.List;
import n3.s0;

/* JADX INFO: compiled from: SeiReader.java */
/* JADX INFO: loaded from: classes.dex */
public final class z {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final List<s0> f4227a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final s3.w[] f4228b;

    public z(List<s0> list) {
        this.f4227a = list;
        this.f4228b = new s3.w[list.size()];
    }

    public final void a(long j10, m5.w wVar) {
        s3.b.a(j10, wVar, this.f4228b);
    }

    public final void b(s3.j jVar, d0.d dVar) {
        for (int i10 = 0; i10 < this.f4228b.length; i10++) {
            dVar.a();
            s3.w wVarP = jVar.p(dVar.c(), 3);
            s0 s0Var = this.f4227a.get(i10);
            String str = s0Var.f11687s;
            m5.a.b("application/cea-608".equals(str) || "application/cea-708".equals(str), "Invalid closed caption mime type provided: " + str);
            String strB = s0Var.f11676h;
            if (strB == null) {
                strB = dVar.b();
            }
            s0.a aVar = new s0.a();
            aVar.f11695a = strB;
            aVar.f11705k = str;
            aVar.f11698d = s0Var.f11679k;
            aVar.f11697c = s0Var.f11678j;
            aVar.C = s0Var.K;
            aVar.f11707m = s0Var.f11689u;
            wVarP.b(new s0(aVar));
            this.f4228b[i10] = wVarP;
        }
    }
}
