package q;

import androidx.fragment.app.r0;
import java.util.Arrays;
import java.util.Comparator;

/* JADX INFO: compiled from: PriorityGoalRow.java */
/* JADX INFO: loaded from: classes.dex */
public final class f extends q.b {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public h[] f13478f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public h[] f13479g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f13480h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public b f13481i;

    /* JADX INFO: compiled from: PriorityGoalRow.java */
    public class a implements Comparator<h> {
        @Override // java.util.Comparator
        public final int compare(h hVar, h hVar2) {
            return hVar.f13486i - hVar2.f13486i;
        }
    }

    /* JADX INFO: compiled from: PriorityGoalRow.java */
    public class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public h f13482a;

        public b() {
        }

        public final String toString() {
            String string = "[ ";
            if (this.f13482a != null) {
                for (int i10 = 0; i10 < 9; i10++) {
                    StringBuilder sbC = a0.b.c(string);
                    sbC.append(this.f13482a.f13492o[i10]);
                    sbC.append(" ");
                    string = sbC.toString();
                }
            }
            StringBuilder sbH = r0.h(string, "] ");
            sbH.append(this.f13482a);
            return sbH.toString();
        }
    }

    public f(c cVar) {
        super(cVar);
        this.f13478f = new h[128];
        this.f13479g = new h[128];
        this.f13480h = 0;
        this.f13481i = new b();
    }

    /* JADX WARN: Code duplicated, block: B:31:0x0053  */
    @Override // q.b, q.d.a
    public final h a(boolean[] zArr) {
        int i10 = -1;
        for (int i11 = 0; i11 < this.f13480h; i11++) {
            h[] hVarArr = this.f13478f;
            h hVar = hVarArr[i11];
            if (!zArr[hVar.f13486i]) {
                b bVar = this.f13481i;
                bVar.f13482a = hVar;
                int i12 = 8;
                boolean z10 = true;
                if (i10 == -1) {
                    while (true) {
                        if (i12 >= 0) {
                            float f10 = bVar.f13482a.f13492o[i12];
                            if (f10 <= 0.0f) {
                                if (f10 < 0.0f) {
                                    break;
                                }
                                i12--;
                            }
                        }
                        z10 = false;
                        break;
                    }
                    if (z10) {
                        i10 = i11;
                    }
                } else {
                    h hVar2 = hVarArr[i10];
                    while (true) {
                        if (i12 >= 0) {
                            float f11 = hVar2.f13492o[i12];
                            float f12 = bVar.f13482a.f13492o[i12];
                            if (f12 != f11) {
                                if (f12 < f11) {
                                    break;
                                }
                                break;
                            }
                            i12--;
                        }
                        z10 = false;
                        break;
                    }
                    if (z10) {
                        i10 = i11;
                    }
                }
            }
        }
        if (i10 == -1) {
            return null;
        }
        return this.f13478f[i10];
    }

    @Override // q.b
    public final boolean g() {
        return this.f13480h == 0;
    }

    @Override // q.b
    public final void k(d dVar, q.b bVar, boolean z10) {
        h hVar = bVar.f13450a;
        if (hVar == null) {
            return;
        }
        q.b.a aVar = bVar.f13453d;
        int iE = aVar.e();
        for (int i10 = 0; i10 < iE; i10++) {
            h hVarG = aVar.g(i10);
            float fA = aVar.a(i10);
            b bVar2 = this.f13481i;
            bVar2.f13482a = hVarG;
            boolean z11 = true;
            if (hVarG.f13485h) {
                for (int i11 = 0; i11 < 9; i11++) {
                    float[] fArr = bVar2.f13482a.f13492o;
                    fArr[i11] = (hVar.f13492o[i11] * fA) + fArr[i11];
                    if (Math.abs(fArr[i11]) < 1.0E-4f) {
                        bVar2.f13482a.f13492o[i11] = 0.0f;
                    } else {
                        z11 = false;
                    }
                }
                if (z11) {
                    f.this.m(bVar2.f13482a);
                }
                z11 = false;
            } else {
                for (int i12 = 0; i12 < 9; i12++) {
                    float f10 = hVar.f13492o[i12];
                    if (f10 != 0.0f) {
                        float f11 = f10 * fA;
                        if (Math.abs(f11) < 1.0E-4f) {
                            f11 = 0.0f;
                        }
                        bVar2.f13482a.f13492o[i12] = f11;
                    } else {
                        bVar2.f13482a.f13492o[i12] = 0.0f;
                    }
                }
            }
            if (z11) {
                l(hVarG);
            }
            this.f13451b = (bVar.f13451b * fA) + this.f13451b;
        }
        m(hVar);
    }

    public final void l(h hVar) {
        int i10;
        int i11 = this.f13480h + 1;
        h[] hVarArr = this.f13478f;
        if (i11 > hVarArr.length) {
            h[] hVarArr2 = (h[]) Arrays.copyOf(hVarArr, hVarArr.length * 2);
            this.f13478f = hVarArr2;
            this.f13479g = (h[]) Arrays.copyOf(hVarArr2, hVarArr2.length * 2);
        }
        h[] hVarArr3 = this.f13478f;
        int i12 = this.f13480h;
        hVarArr3[i12] = hVar;
        int i13 = i12 + 1;
        this.f13480h = i13;
        if (i13 > 1 && hVarArr3[i13 - 1].f13486i > hVar.f13486i) {
            int i14 = 0;
            while (true) {
                i10 = this.f13480h;
                if (i14 >= i10) {
                    break;
                }
                this.f13479g[i14] = this.f13478f[i14];
                i14++;
            }
            Arrays.sort(this.f13479g, 0, i10, new a());
            for (int i15 = 0; i15 < this.f13480h; i15++) {
                this.f13478f[i15] = this.f13479g[i15];
            }
        }
        hVar.f13485h = true;
        hVar.b(this);
    }

    public final void m(h hVar) {
        int i10 = 0;
        while (i10 < this.f13480h) {
            if (this.f13478f[i10] == hVar) {
                while (true) {
                    int i11 = this.f13480h;
                    if (i10 >= i11 - 1) {
                        this.f13480h = i11 - 1;
                        hVar.f13485h = false;
                        return;
                    } else {
                        h[] hVarArr = this.f13478f;
                        int i12 = i10 + 1;
                        hVarArr[i10] = hVarArr[i12];
                        i10 = i12;
                    }
                }
            } else {
                i10++;
            }
        }
    }

    @Override // q.b
    public final String toString() {
        StringBuilder sbH = r0.h("", " goal -> (");
        sbH.append(this.f13451b);
        sbH.append(") : ");
        String string = sbH.toString();
        for (int i10 = 0; i10 < this.f13480h; i10++) {
            this.f13481i.f13482a = this.f13478f[i10];
            StringBuilder sbC = a0.b.c(string);
            sbC.append(this.f13481i);
            sbC.append(" ");
            string = sbC.toString();
        }
        return string;
    }
}
