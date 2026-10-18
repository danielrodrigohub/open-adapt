package s4;

import java.io.IOException;
import m5.g0;
import n3.s0;
import p4.m0;
import y0.r;

/* JADX INFO: compiled from: EventSampleStream.java */
/* JADX INFO: loaded from: classes.dex */
public final class g implements m0 {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final s0 f15119h;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public long[] f15121j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public boolean f15122k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public t4.f f15123l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public boolean f15124m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public int f15125n;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final h4.c f15120i = new h4.c();

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public long f15126o = -9223372036854775807L;

    public g(t4.f fVar, s0 s0Var, boolean z10) {
        this.f15119h = s0Var;
        this.f15123l = fVar;
        this.f15121j = fVar.f15473b;
        c(fVar, z10);
    }

    public final void a(long j10) {
        int iB = g0.b(this.f15121j, j10, true);
        this.f15125n = iB;
        if (!(this.f15122k && iB == this.f15121j.length)) {
            j10 = -9223372036854775807L;
        }
        this.f15126o = j10;
    }

    @Override // p4.m0
    public final void b() throws IOException {
    }

    public final void c(t4.f fVar, boolean z10) {
        int i10 = this.f15125n;
        long j10 = i10 == 0 ? -9223372036854775807L : this.f15121j[i10 - 1];
        this.f15122k = z10;
        this.f15123l = fVar;
        long[] jArr = fVar.f15473b;
        this.f15121j = jArr;
        long j11 = this.f15126o;
        if (j11 != -9223372036854775807L) {
            a(j11);
        } else if (j10 != -9223372036854775807L) {
            this.f15125n = g0.b(jArr, j10, false);
        }
    }

    @Override // p4.m0
    public final boolean isReady() {
        return true;
    }

    @Override // p4.m0
    public final int j(r rVar, q3.g gVar, int i10) {
        int i11 = this.f15125n;
        boolean z10 = i11 == this.f15121j.length;
        if (z10 && !this.f15122k) {
            gVar.f13555h = 4;
            return -4;
        }
        if ((i10 & 2) != 0 || !this.f15124m) {
            rVar.f18272c = this.f15119h;
            this.f15124m = true;
            return -5;
        }
        if (z10) {
            return -3;
        }
        if ((i10 & 1) == 0) {
            this.f15125n = i11 + 1;
        }
        if ((i10 & 4) == 0) {
            byte[] bArrA = this.f15120i.a(this.f15123l.f15472a[i11]);
            gVar.q(bArrA.length);
            gVar.f13581j.put(bArrA);
        }
        gVar.f13583l = this.f15121j[i11];
        gVar.f13555h = 1;
        return -4;
    }

    @Override // p4.m0
    public final int p(long j10) {
        int iMax = Math.max(this.f15125n, g0.b(this.f15121j, j10, true));
        int i10 = iMax - this.f15125n;
        this.f15125n = iMax;
        return i10;
    }
}
