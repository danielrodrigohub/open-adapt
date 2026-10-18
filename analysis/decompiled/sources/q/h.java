package q;

import java.util.Arrays;

/* JADX INFO: compiled from: SolverVariable.java */
/* JADX INFO: loaded from: classes.dex */
public final class h implements Comparable<h> {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public boolean f13485h;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public float f13489l;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public int f13493p;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f13486i = -1;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int f13487j = -1;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public int f13488k = 0;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public boolean f13490m = false;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public float[] f13491n = new float[9];

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public float[] f13492o = new float[9];

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public b[] f13494q = new b[16];

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public int f13495r = 0;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public int f13496s = 0;

    public h(int i10) {
        this.f13493p = i10;
    }

    public final void b(b bVar) {
        int i10 = 0;
        while (true) {
            int i11 = this.f13495r;
            if (i10 >= i11) {
                b[] bVarArr = this.f13494q;
                if (i11 >= bVarArr.length) {
                    this.f13494q = (b[]) Arrays.copyOf(bVarArr, bVarArr.length * 2);
                }
                b[] bVarArr2 = this.f13494q;
                int i12 = this.f13495r;
                bVarArr2[i12] = bVar;
                this.f13495r = i12 + 1;
                return;
            }
            if (this.f13494q[i10] == bVar) {
                return;
            } else {
                i10++;
            }
        }
    }

    @Override // java.lang.Comparable
    public final int compareTo(h hVar) {
        return this.f13486i - hVar.f13486i;
    }

    public final void g(b bVar) {
        int i10 = this.f13495r;
        int i11 = 0;
        while (i11 < i10) {
            if (this.f13494q[i11] == bVar) {
                while (i11 < i10 - 1) {
                    b[] bVarArr = this.f13494q;
                    int i12 = i11 + 1;
                    bVarArr[i11] = bVarArr[i12];
                    i11 = i12;
                }
                this.f13495r--;
                return;
            }
            i11++;
        }
    }

    public final void i() {
        this.f13493p = 5;
        this.f13488k = 0;
        this.f13486i = -1;
        this.f13487j = -1;
        this.f13489l = 0.0f;
        this.f13490m = false;
        int i10 = this.f13495r;
        for (int i11 = 0; i11 < i10; i11++) {
            this.f13494q[i11] = null;
        }
        this.f13495r = 0;
        this.f13496s = 0;
        this.f13485h = false;
        Arrays.fill(this.f13492o, 0.0f);
    }

    public final void j(d dVar, float f10) {
        this.f13489l = f10;
        this.f13490m = true;
        int i10 = this.f13495r;
        this.f13487j = -1;
        for (int i11 = 0; i11 < i10; i11++) {
            this.f13494q[i11].j(dVar, this, false);
        }
        this.f13495r = 0;
    }

    public final void k(d dVar, b bVar) {
        int i10 = this.f13495r;
        for (int i11 = 0; i11 < i10; i11++) {
            this.f13494q[i11].k(dVar, bVar, false);
        }
        this.f13495r = 0;
    }

    public final String toString() {
        StringBuilder sbC = a0.b.c("");
        sbC.append(this.f13486i);
        return sbC.toString();
    }
}
