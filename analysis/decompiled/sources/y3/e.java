package y3;

import java.io.IOException;
import m5.w;
import s3.i;

/* JADX INFO: compiled from: Sniffer.java */
/* JADX INFO: loaded from: classes.dex */
public final class e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final w f18585a = new w(8);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f18586b;

    public final long a(i iVar) throws IOException {
        s3.e eVar = (s3.e) iVar;
        int i10 = 0;
        eVar.p(this.f18585a.f10475a, 0, 1, false);
        int i11 = this.f18585a.f10475a[0] & 255;
        if (i11 == 0) {
            return Long.MIN_VALUE;
        }
        int i12 = 128;
        int i13 = 0;
        while ((i11 & i12) == 0) {
            i12 >>= 1;
            i13++;
        }
        int i14 = i11 & (~i12);
        eVar.p(this.f18585a.f10475a, 1, i13, false);
        while (i10 < i13) {
            i10++;
            i14 = (this.f18585a.f10475a[i10] & 255) + (i14 << 8);
        }
        this.f18586b = i13 + 1 + this.f18586b;
        return i14;
    }
}
