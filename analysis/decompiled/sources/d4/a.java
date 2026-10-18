package d4;

import android.util.Pair;
import androidx.appcompat.widget.y0;
import java.io.IOException;
import java.util.Objects;
import m5.g0;
import m5.p;
import n3.i1;
import n3.s0;
import n3.t0;
import okhttp3.internal.http.HttpStatusCodesKt;
import s3.h;
import s3.i;
import s3.j;
import s3.t;
import s3.w;

/* JADX INFO: compiled from: WavExtractor.java */
/* JADX INFO: loaded from: classes.dex */
public final class a implements h {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public j f6000a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public w f6001b;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public b f6004e;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f6002c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public long f6003d = -1;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f6005f = -1;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public long f6006g = -1;

    /* JADX INFO: renamed from: d4.a$a, reason: collision with other inner class name */
    /* JADX INFO: compiled from: WavExtractor.java */
    public static final class C0104a implements b {

        /* JADX INFO: renamed from: m, reason: collision with root package name */
        public static final int[] f6007m = {-1, -1, -1, -1, 2, 4, 6, 8, -1, -1, -1, -1, 2, 4, 6, 8};

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        public static final int[] f6008n = {7, 8, 9, 10, 11, 12, 13, 14, 16, 17, 19, 21, 23, 25, 28, 31, 34, 37, 41, 45, 50, 55, 60, 66, 73, 80, 88, 97, 107, 118, 130, 143, 157, 173, 190, 209, 230, 253, 279, HttpStatusCodesKt.HTTP_TEMP_REDIRECT, 337, 371, HttpStatusCodesKt.HTTP_CLIENT_TIMEOUT, 449, 494, 544, 598, 658, 724, 796, 876, 963, 1060, 1166, 1282, 1411, 1552, 1707, 1878, 2066, 2272, 2499, 2749, 3024, 3327, 3660, 4026, 4428, 4871, 5358, 5894, 6484, 7132, 7845, 8630, 9493, 10442, 11487, 12635, 13899, 15289, 16818, 18500, 20350, 22385, 24623, 27086, 29794, 32767};

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final j f6009a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final w f6010b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final d4.b f6011c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public final int f6012d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final byte[] f6013e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public final m5.w f6014f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        public final int f6015g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public final s0 f6016h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public int f6017i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public long f6018j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public int f6019k;

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        public long f6020l;

        public C0104a(j jVar, w wVar, d4.b bVar) throws i1 {
            this.f6009a = jVar;
            this.f6010b = wVar;
            this.f6011c = bVar;
            int iMax = Math.max(1, bVar.f6030b / 10);
            this.f6015g = iMax;
            byte[] bArr = bVar.f6033e;
            int length = bArr.length;
            byte b10 = bArr[0];
            byte b11 = bArr[1];
            int i10 = ((bArr[3] & 255) << 8) | (bArr[2] & 255);
            this.f6012d = i10;
            int i11 = bVar.f6029a;
            int i12 = bVar.f6031c;
            int i13 = (((i12 - (i11 * 4)) * 8) / (bVar.f6032d * i11)) + 1;
            if (i10 != i13) {
                throw i1.a("Expected frames per block: " + i13 + "; got: " + i10, null);
            }
            int i14 = g0.f10384a;
            int i15 = ((iMax + i10) - 1) / i10;
            this.f6013e = new byte[i12 * i15];
            this.f6014f = new m5.w(i10 * 2 * i11 * i15);
            int i16 = bVar.f6030b;
            int i17 = ((bVar.f6031c * i16) * 8) / i10;
            s0.a aVar = new s0.a();
            aVar.f11705k = "audio/raw";
            aVar.f11700f = i17;
            aVar.f11701g = i17;
            aVar.f11706l = iMax * 2 * i11;
            aVar.f11718x = bVar.f6029a;
            aVar.f11719y = i16;
            aVar.f11720z = 2;
            this.f6016h = new s0(aVar);
        }

        /* JADX WARN: Code duplicated, block: B:12:0x0043 A[LOOP:0: B:6:0x0029->B:12:0x0043, LOOP_END] */
        /* JADX WARN: Code duplicated, block: B:41:0x0049 A[SYNTHETIC] */
        /* JADX WARN: Code duplicated, block: B:43:0x0041 A[SYNTHETIC] */
        /* JADX WARN: Code duplicated, block: B:7:0x002b  */
        /* JADX WARN: Code duplicated, block: B:9:0x002f  */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:10:0x003f -> B:11:0x0041). Please report as a decompilation issue!!! */
        /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
            jadx.core.utils.exceptions.JadxOverflowException: Regions stack size limit reached
            	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
            	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
            	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
            */
        @Override // d4.a.b
        public final boolean a(s3.i r21, long r22) throws java.io.IOException {
            /*
                Method dump skipped, instruction units count: 348
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: d4.a.C0104a.a(s3.i, long):boolean");
        }

        @Override // d4.a.b
        public final void b(int i10, long j10) {
            this.f6009a.j(new d(this.f6011c, this.f6012d, i10, j10));
            this.f6010b.b(this.f6016h);
        }

        @Override // d4.a.b
        public final void c(long j10) {
            this.f6017i = 0;
            this.f6018j = j10;
            this.f6019k = 0;
            this.f6020l = 0L;
        }

        public final int d(int i10) {
            return i10 / (this.f6011c.f6029a * 2);
        }

        public final void e(int i10) {
            long jR = this.f6018j + g0.R(this.f6020l, 1000000L, this.f6011c.f6030b);
            int i11 = i10 * 2 * this.f6011c.f6029a;
            this.f6010b.c(jR, 1, i11, this.f6019k - i11, null);
            this.f6020l += (long) i10;
            this.f6019k -= i11;
        }
    }

    /* JADX INFO: compiled from: WavExtractor.java */
    public interface b {
        boolean a(i iVar, long j10) throws IOException;

        void b(int i10, long j10) throws i1;

        void c(long j10);
    }

    /* JADX INFO: compiled from: WavExtractor.java */
    public static final class c implements b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final j f6021a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final w f6022b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final d4.b f6023c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public final s0 f6024d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final int f6025e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public long f6026f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        public int f6027g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public long f6028h;

        public c(j jVar, w wVar, d4.b bVar, String str, int i10) throws i1 {
            this.f6021a = jVar;
            this.f6022b = wVar;
            this.f6023c = bVar;
            int i11 = (bVar.f6029a * bVar.f6032d) / 8;
            if (bVar.f6031c != i11) {
                StringBuilder sbC = y0.c("Expected block size: ", i11, "; got: ");
                sbC.append(bVar.f6031c);
                throw i1.a(sbC.toString(), null);
            }
            int i12 = bVar.f6030b * i11;
            int i13 = i12 * 8;
            int iMax = Math.max(i11, i12 / 10);
            this.f6025e = iMax;
            s0.a aVar = new s0.a();
            aVar.f11705k = str;
            aVar.f11700f = i13;
            aVar.f11701g = i13;
            aVar.f11706l = iMax;
            aVar.f11718x = bVar.f6029a;
            aVar.f11719y = bVar.f6030b;
            aVar.f11720z = i10;
            this.f6024d = new s0(aVar);
        }

        @Override // d4.a.b
        public final boolean a(i iVar, long j10) throws IOException {
            int i10;
            int i11;
            long j11 = j10;
            while (j11 > 0 && (i10 = this.f6027g) < (i11 = this.f6025e)) {
                int iD = this.f6022b.d(iVar, (int) Math.min(i11 - i10, j11), true);
                if (iD == -1) {
                    j11 = 0;
                } else {
                    this.f6027g += iD;
                    j11 -= (long) iD;
                }
            }
            d4.b bVar = this.f6023c;
            int i12 = bVar.f6031c;
            int i13 = this.f6027g / i12;
            if (i13 > 0) {
                long jR = this.f6026f + g0.R(this.f6028h, 1000000L, bVar.f6030b);
                int i14 = i13 * i12;
                int i15 = this.f6027g - i14;
                this.f6022b.c(jR, 1, i14, i15, null);
                this.f6028h += (long) i13;
                this.f6027g = i15;
            }
            return j11 <= 0;
        }

        @Override // d4.a.b
        public final void b(int i10, long j10) {
            this.f6021a.j(new d(this.f6023c, 1, i10, j10));
            this.f6022b.b(this.f6024d);
        }

        @Override // d4.a.b
        public final void c(long j10) {
            this.f6026f = j10;
            this.f6027g = 0;
            this.f6028h = 0L;
        }
    }

    static {
        t0 t0Var = t0.f11725f;
    }

    @Override // s3.h
    public final void a() {
    }

    @Override // s3.h
    public final void b(long j10, long j11) {
        this.f6002c = j10 == 0 ? 0 : 4;
        b bVar = this.f6004e;
        if (bVar != null) {
            bVar.c(j11);
        }
    }

    /* JADX WARN: Code duplicated, block: B:59:0x0188  */
    @Override // s3.h
    public final int e(i iVar, t tVar) throws IOException {
        byte[] bArr;
        int i10;
        m5.a.f(this.f6001b);
        int i11 = g0.f10384a;
        int i12 = this.f6002c;
        int iY = 4;
        if (i12 == 0) {
            m5.a.e(iVar.u() == 0);
            int i13 = this.f6005f;
            if (i13 != -1) {
                iVar.k(i13);
                this.f6002c = 4;
            } else {
                if (!d4.c.a(iVar)) {
                    throw i1.a("Unsupported or unrecognized wav file type.", null);
                }
                iVar.k((int) (iVar.q() - iVar.u()));
                this.f6002c = 1;
            }
            return 0;
        }
        long jH = -1;
        if (i12 == 1) {
            m5.w wVar = new m5.w(8);
            d4.c.a aVarA = d4.c.a.a(iVar, wVar);
            if (aVarA.f6034a != 1685272116) {
                iVar.i();
            } else {
                iVar.t(8);
                wVar.D(0);
                iVar.s(wVar.f10475a, 0, 8);
                jH = wVar.h();
                iVar.k(((int) aVarA.f6035b) + 8);
            }
            this.f6003d = jH;
            this.f6002c = 2;
            return 0;
        }
        if (i12 != 2) {
            if (i12 != 3) {
                if (i12 != 4) {
                    throw new IllegalStateException();
                }
                m5.a.e(this.f6006g != -1);
                long jU = this.f6006g - iVar.u();
                b bVar = this.f6004e;
                Objects.requireNonNull(bVar);
                return bVar.a(iVar, jU) ? -1 : 0;
            }
            iVar.i();
            d4.c.a aVarB = d4.c.b(1684108385, iVar, new m5.w(8));
            iVar.k(8);
            Pair pairCreate = Pair.create(Long.valueOf(iVar.u()), Long.valueOf(aVarB.f6035b));
            this.f6005f = ((Long) pairCreate.first).intValue();
            long jLongValue = ((Long) pairCreate.second).longValue();
            long j10 = this.f6003d;
            if (j10 != -1 && jLongValue == 4294967295L) {
                jLongValue = j10;
            }
            this.f6006g = ((long) this.f6005f) + jLongValue;
            long jA = iVar.a();
            if (jA != -1 && this.f6006g > jA) {
                StringBuilder sbC = a0.b.c("Data exceeds input length: ");
                sbC.append(this.f6006g);
                sbC.append(", ");
                sbC.append(jA);
                p.g("WavExtractor", sbC.toString());
                this.f6006g = jA;
            }
            b bVar2 = this.f6004e;
            Objects.requireNonNull(bVar2);
            bVar2.b(this.f6005f, this.f6006g);
            this.f6002c = 4;
            return 0;
        }
        m5.w wVar2 = new m5.w(16);
        d4.c.a aVarB2 = d4.c.b(1718449184, iVar, wVar2);
        m5.a.e(aVarB2.f6035b >= 16);
        iVar.s(wVar2.f10475a, 0, 16);
        wVar2.D(0);
        int iL = wVar2.l();
        int iL2 = wVar2.l();
        int iK = wVar2.k();
        wVar2.k();
        int iL3 = wVar2.l();
        int iL4 = wVar2.l();
        int i14 = ((int) aVarB2.f6035b) - 16;
        if (i14 > 0) {
            bArr = new byte[i14];
            iVar.s(bArr, 0, i14);
        } else {
            bArr = g0.f10389f;
        }
        iVar.k((int) (iVar.q() - iVar.u()));
        d4.b bVar3 = new d4.b(iL, iL2, iK, iL3, iL4, bArr);
        if (iL == 17) {
            this.f6004e = new C0104a(this.f6000a, this.f6001b, bVar3);
        } else if (iL == 6) {
            this.f6004e = new c(this.f6000a, this.f6001b, bVar3, "audio/g711-alaw", -1);
        } else if (iL == 7) {
            this.f6004e = new c(this.f6000a, this.f6001b, bVar3, "audio/g711-mlaw", -1);
        } else {
            if (iL == 1) {
                iY = g0.y(iL4);
                i10 = iY;
            } else {
                if (iL != 3) {
                    if (iL == 65534) {
                        iY = g0.y(iL4);
                        i10 = iY;
                    }
                } else if (iL4 == 32) {
                    i10 = iY;
                }
                i10 = 0;
            }
            if (i10 == 0) {
                throw i1.c("Unsupported WAV format type: " + iL);
            }
            this.f6004e = new c(this.f6000a, this.f6001b, bVar3, "audio/raw", i10);
        }
        this.f6002c = 3;
        return 0;
    }

    @Override // s3.h
    public final void g(j jVar) {
        this.f6000a = jVar;
        this.f6001b = jVar.p(0, 1);
        jVar.b();
    }

    @Override // s3.h
    public final boolean j(i iVar) throws IOException {
        return d4.c.a(iVar);
    }
}
