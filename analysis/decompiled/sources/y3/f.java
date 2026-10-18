package y3;

import java.io.IOException;
import s3.i;

/* JADX INFO: compiled from: VarintReader.java */
/* JADX INFO: loaded from: classes.dex */
public final class f {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final long[] f18587d = {128, 64, 32, 16, 8, 4, 2, 1};

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final byte[] f18588a = new byte[8];

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f18589b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f18590c;

    public static long a(byte[] bArr, int i10, boolean z10) {
        long j10 = ((long) bArr[0]) & 255;
        if (z10) {
            j10 &= ~f18587d[i10 - 1];
        }
        for (int i11 = 1; i11 < i10; i11++) {
            j10 = (j10 << 8) | (((long) bArr[i11]) & 255);
        }
        return j10;
    }

    public static int b(int i10) {
        int i11 = 0;
        while (true) {
            long[] jArr = f18587d;
            if (i11 >= 8) {
                return -1;
            }
            if ((jArr[i11] & ((long) i10)) != 0) {
                return i11 + 1;
            }
            i11++;
        }
    }

    public final long c(i iVar, boolean z10, boolean z11, int i10) throws IOException {
        if (this.f18589b == 0) {
            if (!iVar.e(this.f18588a, 0, 1, z10)) {
                return -1L;
            }
            int iB = b(this.f18588a[0] & 255);
            this.f18590c = iB;
            if (iB == -1) {
                throw new IllegalStateException("No valid varint length mask found");
            }
            this.f18589b = 1;
        }
        int i11 = this.f18590c;
        if (i11 > i10) {
            this.f18589b = 0;
            return -2L;
        }
        if (i11 != 1) {
            iVar.readFully(this.f18588a, 1, i11 - 1);
        }
        this.f18589b = 0;
        return a(this.f18588a, this.f18590c, z11);
    }
}
