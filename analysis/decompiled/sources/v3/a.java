package v3;

import java.io.IOException;
import java.util.Objects;
import m5.w;
import s3.i;
import s3.m;
import s3.p;
import y0.c0;

/* JADX INFO: compiled from: FlacBinarySearchSeeker.java */
/* JADX INFO: loaded from: classes.dex */
public final class a extends s3.a {

    /* JADX INFO: renamed from: v3.a$a, reason: collision with other inner class name */
    /* JADX INFO: compiled from: FlacBinarySearchSeeker.java */
    public static final class C0289a implements s3.a.f {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final p f16216a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final int f16217b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final m.a f16218c = new m.a();

        public C0289a(p pVar, int i10) {
            this.f16216a = pVar;
            this.f16217b = i10;
        }

        @Override // s3.a.f
        public final s3.a.e b(i iVar, long j10) throws IOException {
            long jU = iVar.u();
            long jC = c(iVar);
            long jQ = iVar.q();
            iVar.t(Math.max(6, this.f16216a.f15056c));
            long jC2 = c(iVar);
            long jQ2 = iVar.q();
            if (jC > j10 || jC2 <= j10) {
                return jC2 <= j10 ? s3.a.e.c(jC2, jQ2) : s3.a.e.a(jC, jU);
            }
            return s3.a.e.b(jQ);
        }

        public final long c(i iVar) throws IOException {
            int iG;
            while (iVar.q() < iVar.a() - 6) {
                p pVar = this.f16216a;
                int i10 = this.f16217b;
                m.a aVar = this.f16218c;
                long jQ = iVar.q();
                byte[] bArr = new byte[2];
                int i11 = 0;
                boolean zA = false;
                iVar.s(bArr, 0, 2);
                if ((((bArr[0] & 255) << 8) | (bArr[1] & 255)) != i10) {
                    iVar.i();
                    iVar.t((int) (jQ - iVar.u()));
                } else {
                    w wVar = new w(16);
                    System.arraycopy(bArr, 0, wVar.f10475a, 0, 2);
                    byte[] bArr2 = wVar.f10475a;
                    while (i11 < 14 && (iG = iVar.g(bArr2, 2 + i11, 14 - i11)) != -1) {
                        i11 += iG;
                    }
                    wVar.C(i11);
                    iVar.i();
                    iVar.t((int) (jQ - iVar.u()));
                    zA = m.a(wVar, pVar, i10, aVar);
                }
                if (zA) {
                    break;
                }
                iVar.t(1);
            }
            if (iVar.q() < iVar.a() - 6) {
                return this.f16218c.f15051a;
            }
            iVar.t((int) (iVar.a() - iVar.q()));
            return this.f16216a.f15063j;
        }
    }

    public a(p pVar, int i10, long j10, long j11) {
        long j12;
        long j13;
        Objects.requireNonNull(pVar);
        c0 c0Var = new c0(pVar, 3);
        C0289a c0289a = new C0289a(pVar, i10);
        long jC = pVar.c();
        long j14 = pVar.f15063j;
        int i11 = pVar.f15057d;
        if (i11 > 0) {
            j12 = (((long) i11) + ((long) pVar.f15056c)) / 2;
            j13 = 1;
        } else {
            int i12 = pVar.f15054a;
            j12 = ((((i12 != pVar.f15055b || i12 <= 0) ? 4096L : i12) * ((long) pVar.f15060g)) * ((long) pVar.f15061h)) / 8;
            j13 = 64;
        }
        super(c0Var, c0289a, jC, j14, j10, j11, j12 + j13, Math.max(6, pVar.f15056c));
    }
}
