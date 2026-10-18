package c4;

import java.util.Objects;
import m5.g0;

/* JADX INFO: compiled from: PsDurationReader.java */
/* JADX INFO: loaded from: classes.dex */
public final class v {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public boolean f4197c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public boolean f4198d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public boolean f4199e;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final m5.d0 f4195a = new m5.d0(0);

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public long f4200f = -9223372036854775807L;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public long f4201g = -9223372036854775807L;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public long f4202h = -9223372036854775807L;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final m5.w f4196b = new m5.w();

    public static long c(m5.w wVar) {
        int i10 = wVar.f10476b;
        if (wVar.f10477c - i10 < 9) {
            return -9223372036854775807L;
        }
        byte[] bArr = new byte[9];
        wVar.d(bArr, 0, 9);
        wVar.D(i10);
        if ((bArr[0] & 196) == 68 && (bArr[2] & 4) == 4 && (bArr[4] & 4) == 4 && (bArr[5] & 1) == 1 && (bArr[8] & 3) == 3) {
            return (((((long) bArr[0]) & 56) >> 3) << 30) | ((((long) bArr[0]) & 3) << 28) | ((((long) bArr[1]) & 255) << 20) | (((((long) bArr[2]) & 248) >> 3) << 15) | ((((long) bArr[2]) & 3) << 13) | ((((long) bArr[3]) & 255) << 5) | ((((long) bArr[4]) & 248) >> 3);
        }
        return -9223372036854775807L;
    }

    public final void a(s3.i iVar) {
        m5.w wVar = this.f4196b;
        byte[] bArr = g0.f10389f;
        Objects.requireNonNull(wVar);
        wVar.B(bArr, bArr.length);
        this.f4197c = true;
        iVar.i();
    }

    public final int b(byte[] bArr, int i10) {
        return (bArr[i10 + 3] & 255) | ((bArr[i10] & 255) << 24) | ((bArr[i10 + 1] & 255) << 16) | ((bArr[i10 + 2] & 255) << 8);
    }
}
