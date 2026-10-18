package c4;

import java.io.IOException;
import java.util.Objects;
import m5.g0;

/* JADX INFO: compiled from: PsBinarySearchSeeker.java */
/* JADX INFO: loaded from: classes.dex */
public final class u extends s3.a {

    /* JADX INFO: compiled from: PsBinarySearchSeeker.java */
    public static final class a implements s3.a.f {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final m5.d0 f4193a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final m5.w f4194b = new m5.w();

        public a(m5.d0 d0Var) {
            this.f4193a = d0Var;
        }

        @Override // s3.a.f
        public final void a() {
            m5.w wVar = this.f4194b;
            byte[] bArr = g0.f10389f;
            Objects.requireNonNull(wVar);
            wVar.B(bArr, bArr.length);
        }

        @Override // s3.a.f
        public final s3.a.e b(s3.i iVar, long j10) throws IOException {
            int i10;
            int i11;
            int iG;
            long jU = iVar.u();
            int iMin = (int) Math.min(20000L, iVar.a() - jU);
            this.f4194b.A(iMin);
            iVar.s(this.f4194b.f10475a, 0, iMin);
            m5.w wVar = this.f4194b;
            int i12 = -1;
            int i13 = -1;
            long j11 = -9223372036854775807L;
            while (true) {
                int i14 = wVar.f10477c;
                int i15 = wVar.f10476b;
                if (i14 - i15 < 4) {
                    return j11 != -9223372036854775807L ? s3.a.e.c(j11, jU + ((long) i12)) : s3.a.e.f15020d;
                }
                if (u.g(wVar.f10475a, i15) != 442) {
                    wVar.E(1);
                } else {
                    wVar.E(4);
                    long jC = v.c(wVar);
                    if (jC != -9223372036854775807L) {
                        long jB = this.f4193a.b(jC);
                        if (jB > j10) {
                            return j11 == -9223372036854775807L ? s3.a.e.a(jB, jU) : s3.a.e.b(jU + ((long) i13));
                        }
                        if (100000 + jB > j10) {
                            return s3.a.e.b(jU + ((long) wVar.f10476b));
                        }
                        i13 = wVar.f10476b;
                        j11 = jB;
                    }
                    int i16 = wVar.f10477c;
                    if (i16 - wVar.f10476b < 10) {
                        wVar.D(i16);
                    } else {
                        wVar.E(9);
                        int iT = wVar.t() & 7;
                        if (wVar.f10477c - wVar.f10476b < iT) {
                            wVar.D(i16);
                        } else {
                            wVar.E(iT);
                            int i17 = wVar.f10477c;
                            int i18 = wVar.f10476b;
                            if (i17 - i18 < 4) {
                                wVar.D(i16);
                            } else if (u.g(wVar.f10475a, i18) == 443) {
                                wVar.E(4);
                                int iY = wVar.y();
                                if (wVar.f10477c - wVar.f10476b < iY) {
                                    wVar.D(i16);
                                } else {
                                    wVar.E(iY);
                                    while (true) {
                                        i10 = wVar.f10477c;
                                        i11 = wVar.f10476b;
                                        if (i10 - i11 < 4 || (iG = u.g(wVar.f10475a, i11)) == 442 || iG == 441 || (iG >>> 8) != 1) {
                                            break;
                                        }
                                        wVar.E(4);
                                        if (wVar.f10477c - wVar.f10476b < 2) {
                                            wVar.D(i16);
                                            break;
                                        }
                                        wVar.D(Math.min(wVar.f10477c, wVar.f10476b + wVar.y()));
                                    }
                                }
                            } else {
                                while (true) {
                                    i10 = wVar.f10477c;
                                    i11 = wVar.f10476b;
                                    if (i10 - i11 < 4) {
                                        break;
                                    }
                                    break;
                                    wVar.D(Math.min(wVar.f10477c, wVar.f10476b + wVar.y()));
                                }
                            }
                        }
                    }
                    i12 = wVar.f10476b;
                }
            }
        }
    }

    public u(m5.d0 d0Var, long j10, long j11) {
        super(new s3.a.b(), new a(d0Var), j10, j10 + 1, 0L, j11, 188L, 1000);
    }

    public static int g(byte[] bArr, int i10) {
        return (bArr[i10 + 3] & 255) | ((bArr[i10] & 255) << 24) | ((bArr[i10 + 1] & 255) << 16) | ((bArr[i10 + 2] & 255) << 8);
    }
}
