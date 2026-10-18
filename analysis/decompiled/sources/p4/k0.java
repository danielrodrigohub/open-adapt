package p4;

import android.media.MediaCodec;
import java.nio.ByteBuffer;
import java.util.Arrays;
import java.util.Objects;

/* JADX INFO: compiled from: SampleDataQueue.java */
/* JADX INFO: loaded from: classes.dex */
public final class k0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final l5.b f13079a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f13080b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final m5.w f13081c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public a f13082d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public a f13083e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public a f13084f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public long f13085g;

    /* JADX INFO: compiled from: SampleDataQueue.java */
    public static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public long f13086a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public long f13087b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public l5.a f13088c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public a f13089d;

        public a(long j10, int i10) {
            m5.a.e(this.f13088c == null);
            this.f13086a = j10;
            this.f13087b = j10 + ((long) i10);
        }

        public final int a(long j10) {
            return ((int) (j10 - this.f13086a)) + this.f13088c.f9967b;
        }
    }

    public k0(l5.b bVar) {
        this.f13079a = bVar;
        int i10 = ((l5.n) bVar).f10082b;
        this.f13080b = i10;
        this.f13081c = new m5.w(32);
        a aVar = new a(0L, i10);
        this.f13082d = aVar;
        this.f13083e = aVar;
        this.f13084f = aVar;
    }

    public static a d(a aVar, long j10, ByteBuffer byteBuffer, int i10) {
        while (j10 >= aVar.f13087b) {
            aVar = aVar.f13089d;
        }
        while (i10 > 0) {
            int iMin = Math.min(i10, (int) (aVar.f13087b - j10));
            byteBuffer.put(aVar.f13088c.f9966a, aVar.a(j10), iMin);
            i10 -= iMin;
            j10 += (long) iMin;
            if (j10 == aVar.f13087b) {
                aVar = aVar.f13089d;
            }
        }
        return aVar;
    }

    public static a e(a aVar, long j10, byte[] bArr, int i10) {
        while (j10 >= aVar.f13087b) {
            aVar = aVar.f13089d;
        }
        int i11 = i10;
        while (i11 > 0) {
            int iMin = Math.min(i11, (int) (aVar.f13087b - j10));
            System.arraycopy(aVar.f13088c.f9966a, aVar.a(j10), bArr, i10 - i11, iMin);
            i11 -= iMin;
            j10 += (long) iMin;
            if (j10 == aVar.f13087b) {
                aVar = aVar.f13089d;
            }
        }
        return aVar;
    }

    public static a f(a aVar, q3.g gVar, l0.a aVar2, m5.w wVar) {
        if (gVar.t()) {
            long j10 = aVar2.f13119b;
            int iY = 1;
            wVar.A(1);
            a aVarE = e(aVar, j10, wVar.f10475a, 1);
            long j11 = j10 + 1;
            byte b10 = wVar.f10475a[0];
            boolean z10 = (b10 & 128) != 0;
            int i10 = b10 & 127;
            q3.c cVar = gVar.f13580i;
            byte[] bArr = cVar.f13556a;
            if (bArr == null) {
                cVar.f13556a = new byte[16];
            } else {
                Arrays.fill(bArr, (byte) 0);
            }
            aVar = e(aVarE, j11, cVar.f13556a, i10);
            long j12 = j11 + ((long) i10);
            if (z10) {
                wVar.A(2);
                aVar = e(aVar, j12, wVar.f10475a, 2);
                j12 += 2;
                iY = wVar.y();
            }
            int[] iArr = cVar.f13559d;
            if (iArr == null || iArr.length < iY) {
                iArr = new int[iY];
            }
            int[] iArr2 = cVar.f13560e;
            if (iArr2 == null || iArr2.length < iY) {
                iArr2 = new int[iY];
            }
            if (z10) {
                int i11 = iY * 6;
                wVar.A(i11);
                aVar = e(aVar, j12, wVar.f10475a, i11);
                j12 += (long) i11;
                wVar.D(0);
                for (int i12 = 0; i12 < iY; i12++) {
                    iArr[i12] = wVar.y();
                    iArr2[i12] = wVar.w();
                }
            } else {
                iArr[0] = 0;
                iArr2[0] = aVar2.f13118a - ((int) (j12 - aVar2.f13119b));
            }
            s3.w.a aVar3 = aVar2.f13120c;
            int i13 = m5.g0.f10384a;
            byte[] bArr2 = aVar3.f15085b;
            byte[] bArr3 = cVar.f13556a;
            int i14 = aVar3.f15084a;
            int i15 = aVar3.f15086c;
            int i16 = aVar3.f15087d;
            cVar.f13561f = iY;
            cVar.f13559d = iArr;
            cVar.f13560e = iArr2;
            cVar.f13557b = bArr2;
            cVar.f13556a = bArr3;
            cVar.f13558c = i14;
            cVar.f13562g = i15;
            cVar.f13563h = i16;
            MediaCodec.CryptoInfo cryptoInfo = cVar.f13564i;
            cryptoInfo.numSubSamples = iY;
            cryptoInfo.numBytesOfClearData = iArr;
            cryptoInfo.numBytesOfEncryptedData = iArr2;
            cryptoInfo.key = bArr2;
            cryptoInfo.iv = bArr3;
            cryptoInfo.mode = i14;
            if (m5.g0.f10384a >= 24) {
                q3.c.a aVar4 = cVar.f13565j;
                Objects.requireNonNull(aVar4);
                aVar4.f13567b.set(i15, i16);
                aVar4.f13566a.setPattern(aVar4.f13567b);
            }
            long j13 = aVar2.f13119b;
            int i17 = (int) (j12 - j13);
            aVar2.f13119b = j13 + ((long) i17);
            aVar2.f13118a -= i17;
        }
        if (!gVar.m()) {
            gVar.q(aVar2.f13118a);
            return d(aVar, aVar2.f13119b, gVar.f13581j, aVar2.f13118a);
        }
        wVar.A(4);
        a aVarE2 = e(aVar, aVar2.f13119b, wVar.f10475a, 4);
        int iW = wVar.w();
        aVar2.f13119b += 4;
        aVar2.f13118a -= 4;
        gVar.q(iW);
        a aVarD = d(aVarE2, aVar2.f13119b, gVar.f13581j, iW);
        aVar2.f13119b += (long) iW;
        int i18 = aVar2.f13118a - iW;
        aVar2.f13118a = i18;
        ByteBuffer byteBuffer = gVar.f13584m;
        if (byteBuffer == null || byteBuffer.capacity() < i18) {
            gVar.f13584m = ByteBuffer.allocate(i18);
        } else {
            gVar.f13584m.clear();
        }
        return d(aVarD, aVar2.f13119b, gVar.f13584m, aVar2.f13118a);
    }

    public final void a(a aVar) {
        if (aVar.f13088c == null) {
            return;
        }
        l5.n nVar = (l5.n) this.f13079a;
        synchronized (nVar) {
            a aVar2 = aVar;
            while (aVar2 != null) {
                l5.a[] aVarArr = nVar.f10086f;
                int i10 = nVar.f10085e;
                nVar.f10085e = i10 + 1;
                l5.a aVar3 = aVar2.f13088c;
                Objects.requireNonNull(aVar3);
                aVarArr[i10] = aVar3;
                nVar.f10084d--;
                aVar2 = aVar2.f13089d;
                if (aVar2 == null || aVar2.f13088c == null) {
                    aVar2 = null;
                }
            }
            nVar.notifyAll();
        }
        aVar.f13088c = null;
        aVar.f13089d = null;
    }

    public final void b(long j10) {
        a aVar;
        if (j10 == -1) {
            return;
        }
        while (true) {
            aVar = this.f13082d;
            if (j10 < aVar.f13087b) {
                break;
            }
            l5.b bVar = this.f13079a;
            l5.a aVar2 = aVar.f13088c;
            l5.n nVar = (l5.n) bVar;
            synchronized (nVar) {
                l5.a[] aVarArr = nVar.f10086f;
                int i10 = nVar.f10085e;
                nVar.f10085e = i10 + 1;
                aVarArr[i10] = aVar2;
                nVar.f10084d--;
                nVar.notifyAll();
            }
            a aVar3 = this.f13082d;
            aVar3.f13088c = null;
            a aVar4 = aVar3.f13089d;
            aVar3.f13089d = null;
            this.f13082d = aVar4;
        }
        if (this.f13083e.f13086a < aVar.f13086a) {
            this.f13083e = aVar;
        }
    }

    public final int c(int i10) {
        l5.a aVar;
        a aVar2 = this.f13084f;
        if (aVar2.f13088c == null) {
            l5.n nVar = (l5.n) this.f13079a;
            synchronized (nVar) {
                int i11 = nVar.f10084d + 1;
                nVar.f10084d = i11;
                int i12 = nVar.f10085e;
                if (i12 > 0) {
                    l5.a[] aVarArr = nVar.f10086f;
                    int i13 = i12 - 1;
                    nVar.f10085e = i13;
                    aVar = aVarArr[i13];
                    Objects.requireNonNull(aVar);
                    nVar.f10086f[nVar.f10085e] = null;
                } else {
                    l5.a aVar3 = new l5.a(new byte[nVar.f10082b], 0);
                    l5.a[] aVarArr2 = nVar.f10086f;
                    if (i11 > aVarArr2.length) {
                        nVar.f10086f = (l5.a[]) Arrays.copyOf(aVarArr2, aVarArr2.length * 2);
                    }
                    aVar = aVar3;
                }
            }
            a aVar4 = new a(this.f13084f.f13087b, this.f13080b);
            aVar2.f13088c = aVar;
            aVar2.f13089d = aVar4;
        }
        return Math.min(i10, (int) (this.f13084f.f13087b - this.f13085g));
    }
}
