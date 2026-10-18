package c4;

import java.io.IOException;
import java.util.Objects;
import m5.g0;

/* JADX INFO: compiled from: TsBinarySearchSeeker.java */
/* JADX INFO: loaded from: classes.dex */
public final class a0 extends s3.a {

    /* JADX INFO: compiled from: TsBinarySearchSeeker.java */
    public static final class a implements s3.a.f {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final m5.d0 f3878a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final m5.w f3879b = new m5.w();

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final int f3880c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public final int f3881d;

        public a(int i10, m5.d0 d0Var, int i11) {
            this.f3880c = i10;
            this.f3878a = d0Var;
            this.f3881d = i11;
        }

        @Override // s3.a.f
        public final void a() {
            m5.w wVar = this.f3879b;
            byte[] bArr = g0.f10389f;
            Objects.requireNonNull(wVar);
            wVar.B(bArr, bArr.length);
        }

        @Override // s3.a.f
        public final s3.a.e b(s3.i iVar, long j10) throws IOException {
            long jU = iVar.u();
            int iMin = (int) Math.min(this.f3881d, iVar.a() - jU);
            this.f3879b.A(iMin);
            iVar.s(this.f3879b.f10475a, 0, iMin);
            m5.w wVar = this.f3879b;
            int i10 = wVar.f10477c;
            long j11 = -1;
            long j12 = -1;
            long j13 = -9223372036854775807L;
            while (true) {
                int i11 = wVar.f10477c;
                int i12 = wVar.f10476b;
                if (i11 - i12 < 188) {
                    break;
                }
                byte[] bArr = wVar.f10475a;
                while (i12 < i10 && bArr[i12] != 71) {
                    i12++;
                }
                int i13 = i12 + 188;
                if (i13 > i10) {
                    break;
                }
                long jO = d3.e.o(wVar, i12, this.f3880c);
                if (jO != -9223372036854775807L) {
                    long jB = this.f3878a.b(jO);
                    if (jB > j10) {
                        return j13 == -9223372036854775807L ? s3.a.e.a(jB, jU) : s3.a.e.b(jU + j12);
                    }
                    if (100000 + jB > j10) {
                        return s3.a.e.b(jU + ((long) i12));
                    }
                    j13 = jB;
                    j12 = i12;
                }
                wVar.D(i13);
                j11 = i13;
            }
            return j13 != -9223372036854775807L ? s3.a.e.c(j13, jU + j11) : s3.a.e.f15020d;
        }
    }

    public a0(m5.d0 d0Var, long j10, long j11, int i10, int i11) {
        super(new s3.a.b(), new a(i10, d0Var, i11), j10, j10 + 1, 0L, j11, 188L, 940);
    }
}
