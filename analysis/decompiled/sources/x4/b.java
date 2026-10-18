package x4;

import java.util.Objects;
import m5.g0;
import m5.v;
import s3.w;

/* JADX INFO: compiled from: RtpAc3Reader.java */
/* JADX INFO: loaded from: classes.dex */
public final class b implements i {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final w4.f f17766a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public w f17768c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f17769d;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public long f17771f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public long f17772g;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final v f17767b = new v();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public long f17770e = -9223372036854775807L;

    public b(w4.f fVar) {
        this.f17766a = fVar;
    }

    @Override // x4.i
    public final void a(m5.w wVar, long j10, int i10, boolean z10) {
        int iT = wVar.t() & 3;
        int iT2 = wVar.t() & 255;
        long jR = this.f17772g + g0.R(j10 - this.f17770e, 1000000L, this.f17766a.f17175b);
        if (iT != 0) {
            if (iT == 1 || iT == 2) {
                int i11 = this.f17769d;
                if (i11 > 0) {
                    w wVar2 = this.f17768c;
                    int i12 = g0.f10384a;
                    wVar2.c(this.f17771f, 1, i11, 0, null);
                    this.f17769d = 0;
                }
            } else if (iT != 3) {
                throw new IllegalArgumentException(String.valueOf(iT));
            }
            int i13 = wVar.f10477c - wVar.f10476b;
            w wVar3 = this.f17768c;
            Objects.requireNonNull(wVar3);
            wVar3.f(wVar, i13);
            int i14 = this.f17769d + i13;
            this.f17769d = i14;
            this.f17771f = jR;
            if (z10 && iT == 3) {
                w wVar4 = this.f17768c;
                int i15 = g0.f10384a;
                wVar4.c(jR, 1, i14, 0, null);
                this.f17769d = 0;
                return;
            }
            return;
        }
        int i16 = this.f17769d;
        if (i16 > 0) {
            w wVar5 = this.f17768c;
            int i17 = g0.f10384a;
            wVar5.c(this.f17771f, 1, i16, 0, null);
            this.f17769d = 0;
        }
        if (iT2 == 1) {
            int i18 = wVar.f10477c - wVar.f10476b;
            w wVar6 = this.f17768c;
            Objects.requireNonNull(wVar6);
            wVar6.f(wVar, i18);
            w wVar7 = this.f17768c;
            int i19 = g0.f10384a;
            wVar7.c(jR, 1, i18, 0, null);
            return;
        }
        v vVar = this.f17767b;
        byte[] bArr = wVar.f10475a;
        Objects.requireNonNull(vVar);
        vVar.j(bArr, bArr.length);
        this.f17767b.n(2);
        long j11 = jR;
        for (int i20 = 0; i20 < iT2; i20++) {
            p3.b.a aVarB = p3.b.b(this.f17767b);
            w wVar8 = this.f17768c;
            Objects.requireNonNull(wVar8);
            wVar8.f(wVar, aVarB.f12666d);
            w wVar9 = this.f17768c;
            int i21 = g0.f10384a;
            wVar9.c(j11, 1, aVarB.f12666d, 0, null);
            j11 += ((long) (aVarB.f12667e / aVarB.f12664b)) * 1000000;
            this.f17767b.n(aVarB.f12666d);
        }
    }

    @Override // x4.i
    public final void b(long j10, long j11) {
        this.f17770e = j10;
        this.f17772g = j11;
    }

    @Override // x4.i
    public final void c(long j10) {
        m5.a.e(this.f17770e == -9223372036854775807L);
        this.f17770e = j10;
    }

    @Override // x4.i
    public final void d(s3.j jVar, int i10) {
        w wVarP = jVar.p(i10, 1);
        this.f17768c = wVarP;
        wVarP.b(this.f17766a.f17176c);
    }
}
