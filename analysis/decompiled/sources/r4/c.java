package r4;

import m5.p;
import p4.l0;
import s3.w;

/* JADX INFO: compiled from: BaseMediaChunkOutput.java */
/* JADX INFO: loaded from: classes.dex */
public final class c implements f.b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int[] f14538a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final l0[] f14539b;

    public c(int[] iArr, l0[] l0VarArr) {
        this.f14538a = iArr;
        this.f14539b = l0VarArr;
    }

    public final w a(int i10) {
        int i11 = 0;
        while (true) {
            int[] iArr = this.f14538a;
            if (i11 >= iArr.length) {
                p.c("BaseMediaChunkOutput", "Unmatched track of type: " + i10);
                return new s3.g();
            }
            if (i10 == iArr[i11]) {
                return this.f14539b[i11];
            }
            i11++;
        }
    }
}
