package b4;

import java.util.Arrays;
import java.util.Objects;
import m5.g0;
import m5.w;
import org.checkerframework.checker.nullness.qual.EnsuresNonNullIf;
import s3.m;
import s3.n;
import s3.o;
import s3.p;
import s3.u;

/* JADX INFO: compiled from: FlacReader.java */
/* JADX INFO: loaded from: classes.dex */
public final class b extends h {

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public p f3242n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public a f3243o;

    /* JADX INFO: compiled from: FlacReader.java */
    public static final class a implements f {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public p f3244a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public p.a f3245b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public long f3246c = -1;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public long f3247d = -1;

        public a(p pVar, p.a aVar) {
            this.f3244a = pVar;
            this.f3245b = aVar;
        }

        @Override // b4.f
        public final u a() {
            m5.a.e(this.f3246c != -1);
            return new o(this.f3244a, this.f3246c);
        }

        @Override // b4.f
        public final long b(s3.i iVar) {
            long j10 = this.f3247d;
            if (j10 < 0) {
                return -1L;
            }
            long j11 = -(j10 + 2);
            this.f3247d = -1L;
            return j11;
        }

        @Override // b4.f
        public final void c(long j10) {
            long[] jArr = this.f3245b.f15066a;
            this.f3247d = jArr[g0.f(jArr, j10, true)];
        }
    }

    @Override // b4.h
    public final long c(w wVar) {
        byte[] bArr = wVar.f10475a;
        if (!(bArr[0] == -1)) {
            return -1L;
        }
        int i10 = (bArr[2] & 255) >> 4;
        if (i10 == 6 || i10 == 7) {
            wVar.E(4);
            wVar.z();
        }
        int iB = m.b(wVar, i10);
        wVar.D(0);
        return iB;
    }

    @Override // b4.h
    @EnsuresNonNullIf(expression = {"#3.format"}, result = false)
    public final boolean d(w wVar, long j10, h.a aVar) {
        byte[] bArr = wVar.f10475a;
        p pVar = this.f3242n;
        if (pVar == null) {
            p pVar2 = new p(bArr, 17);
            this.f3242n = pVar2;
            aVar.f3279a = pVar2.d(Arrays.copyOfRange(bArr, 9, wVar.f10477c), null);
            return true;
        }
        if ((bArr[0] & 127) == 3) {
            p.a aVarB = n.b(wVar);
            p pVarA = pVar.a(aVarB);
            this.f3242n = pVarA;
            this.f3243o = new a(pVarA, aVarB);
            return true;
        }
        if (!(bArr[0] == -1)) {
            return true;
        }
        a aVar2 = this.f3243o;
        if (aVar2 != null) {
            aVar2.f3246c = j10;
            aVar.f3280b = aVar2;
        }
        Objects.requireNonNull(aVar.f3279a);
        return false;
    }

    @Override // b4.h
    public final void e(boolean z10) {
        super.e(z10);
        if (z10) {
            this.f3242n = null;
            this.f3243o = null;
        }
    }
}
