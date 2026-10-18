package s3;

import java.io.IOException;

/* JADX INFO: compiled from: TrueHdSampleRechunker.java */
/* JADX INFO: loaded from: classes.dex */
public final class x {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final byte[] f15088a = new byte[10];

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public boolean f15089b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f15090c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public long f15091d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f15092e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f15093f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int f15094g;

    public final void a(w wVar, w.a aVar) {
        if (this.f15090c > 0) {
            wVar.c(this.f15091d, this.f15092e, this.f15093f, this.f15094g, aVar);
            this.f15090c = 0;
        }
    }

    public final void b(w wVar, long j10, int i10, int i11, int i12, w.a aVar) {
        if (!(this.f15094g <= i11 + i12)) {
            throw new IllegalStateException("TrueHD chunk samples must be contiguous in the sample queue.");
        }
        if (this.f15089b) {
            int i13 = this.f15090c;
            int i14 = i13 + 1;
            this.f15090c = i14;
            if (i13 == 0) {
                this.f15091d = j10;
                this.f15092e = i10;
                this.f15093f = 0;
            }
            this.f15093f += i11;
            this.f15094g = i12;
            if (i14 >= 16) {
                a(wVar, aVar);
            }
        }
    }

    public final void c(i iVar) throws IOException {
        if (this.f15089b) {
            return;
        }
        int i10 = 0;
        iVar.s(this.f15088a, 0, 10);
        iVar.i();
        byte[] bArr = this.f15088a;
        if (bArr[4] == -8 && bArr[5] == 114 && bArr[6] == 111 && (bArr[7] & 254) == 186) {
            i10 = 40 << ((bArr[((bArr[7] & 255) == 187 ? 1 : 0) != 0 ? '\t' : '\b'] >> 4) & 7);
        }
        if (i10 == 0) {
            return;
        }
        this.f15089b = true;
    }
}
