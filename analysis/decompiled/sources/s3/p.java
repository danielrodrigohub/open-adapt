package s3;

import java.util.Collections;
import m5.g0;
import n3.s0;

/* JADX INFO: compiled from: FlacStreamMetadata.java */
/* JADX INFO: loaded from: classes.dex */
public final class p {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f15054a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f15055b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f15056c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final int f15057d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final int f15058e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final int f15059f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final int f15060g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final int f15061h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final int f15062i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final long f15063j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final a f15064k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final f4.a f15065l;

    /* JADX INFO: compiled from: FlacStreamMetadata.java */
    public static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final long[] f15066a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final long[] f15067b;

        public a(long[] jArr, long[] jArr2) {
            this.f15066a = jArr;
            this.f15067b = jArr2;
        }
    }

    public p(byte[] bArr, int i10) {
        m5.v vVar = new m5.v(bArr, bArr.length);
        vVar.k(i10 * 8);
        this.f15054a = vVar.g(16);
        this.f15055b = vVar.g(16);
        this.f15056c = vVar.g(24);
        this.f15057d = vVar.g(24);
        int iG = vVar.g(20);
        this.f15058e = iG;
        this.f15059f = g(iG);
        this.f15060g = vVar.g(3) + 1;
        int iG2 = vVar.g(5) + 1;
        this.f15061h = iG2;
        this.f15062i = b(iG2);
        this.f15063j = (g0.W(vVar.g(4)) << 32) | g0.W(vVar.g(32));
        this.f15064k = null;
        this.f15065l = null;
    }

    public static int b(int i10) {
        if (i10 == 8) {
            return 1;
        }
        if (i10 == 12) {
            return 2;
        }
        if (i10 == 16) {
            return 4;
        }
        if (i10 != 20) {
            return i10 != 24 ? -1 : 6;
        }
        return 5;
    }

    public static int g(int i10) {
        switch (i10) {
            case 8000:
                return 4;
            case 16000:
                return 5;
            case 22050:
                return 6;
            case 24000:
                return 7;
            case 32000:
                return 8;
            case 44100:
                return 9;
            case 48000:
                return 10;
            case 88200:
                return 1;
            case 96000:
                return 11;
            case 176400:
                return 2;
            case 192000:
                return 3;
            default:
                return -1;
        }
    }

    public final p a(a aVar) {
        return new p(this.f15054a, this.f15055b, this.f15056c, this.f15057d, this.f15058e, this.f15060g, this.f15061h, this.f15063j, aVar, this.f15065l);
    }

    public final long c() {
        long j10 = this.f15063j;
        if (j10 == 0) {
            return -9223372036854775807L;
        }
        return (j10 * 1000000) / ((long) this.f15058e);
    }

    public final s0 d(byte[] bArr, f4.a aVar) {
        bArr[4] = -128;
        int i10 = this.f15057d;
        if (i10 <= 0) {
            i10 = -1;
        }
        f4.a aVarE = e(aVar);
        s0.a aVar2 = new s0.a();
        aVar2.f11705k = "audio/flac";
        aVar2.f11706l = i10;
        aVar2.f11718x = this.f15060g;
        aVar2.f11719y = this.f15058e;
        aVar2.f11707m = Collections.singletonList(bArr);
        aVar2.f11703i = aVarE;
        return aVar2.a();
    }

    public final f4.a e(f4.a aVar) {
        f4.a aVar2 = this.f15065l;
        return aVar2 == null ? aVar : aVar2.b(aVar);
    }

    public final long f(long j10) {
        return g0.j((j10 * ((long) this.f15058e)) / 1000000, 0L, this.f15063j - 1);
    }

    public p(int i10, int i11, int i12, int i13, int i14, int i15, int i16, long j10, a aVar, f4.a aVar2) {
        this.f15054a = i10;
        this.f15055b = i11;
        this.f15056c = i12;
        this.f15057d = i13;
        this.f15058e = i14;
        this.f15059f = g(i14);
        this.f15060g = i15;
        this.f15061h = i16;
        this.f15062i = b(i16);
        this.f15063j = j10;
        this.f15064k = aVar;
        this.f15065l = aVar2;
    }
}
