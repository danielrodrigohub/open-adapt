package u3;

import m5.g0;
import s3.u;
import s3.v;
import s3.w;

/* JADX INFO: compiled from: ChunkReader.java */
/* JADX INFO: loaded from: classes.dex */
public final class e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final w f15714a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f15715b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f15716c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final long f15717d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final int f15718e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f15719f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int f15720g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f15721h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f15722i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int f15723j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public long[] f15724k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public int[] f15725l;

    public e(int i10, int i11, long j10, int i12, w wVar) {
        boolean z10 = true;
        if (i11 != 1 && i11 != 2) {
            z10 = false;
        }
        m5.a.a(z10);
        this.f15717d = j10;
        this.f15718e = i12;
        this.f15714a = wVar;
        int i13 = (((i10 % 10) + 48) << 8) | ((i10 / 10) + 48);
        this.f15715b = (i11 == 2 ? 1667497984 : 1651965952) | i13;
        this.f15716c = i11 == 2 ? i13 | 1650720768 : -1;
        this.f15724k = new long[512];
        this.f15725l = new int[512];
    }

    public final v a(int i10) {
        return new v(((this.f15717d * ((long) 1)) / ((long) this.f15718e)) * ((long) this.f15725l[i10]), this.f15724k[i10]);
    }

    public final u.a b(long j10) {
        int i10 = (int) (j10 / ((this.f15717d * ((long) 1)) / ((long) this.f15718e)));
        int iE = g0.e(this.f15725l, i10, true, true);
        if (this.f15725l[iE] == i10) {
            v vVarA = a(iE);
            return new u.a(vVarA, vVarA);
        }
        v vVarA2 = a(iE);
        int i11 = iE + 1;
        return i11 < this.f15724k.length ? new u.a(vVarA2, a(i11)) : new u.a(vVarA2, vVarA2);
    }
}
