package m5;

import androidx.appcompat.widget.y0;
import java.util.Arrays;

/* JADX INFO: compiled from: LongArray.java */
/* JADX INFO: loaded from: classes.dex */
public final class q {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f10429a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public long[] f10430b = new long[32];

    public final void a(long j10) {
        int i10 = this.f10429a;
        long[] jArr = this.f10430b;
        if (i10 == jArr.length) {
            this.f10430b = Arrays.copyOf(jArr, i10 * 2);
        }
        long[] jArr2 = this.f10430b;
        int i11 = this.f10429a;
        this.f10429a = i11 + 1;
        jArr2[i11] = j10;
    }

    public final long b(int i10) {
        if (i10 >= 0 && i10 < this.f10429a) {
            return this.f10430b[i10];
        }
        StringBuilder sbC = y0.c("Invalid index ", i10, ", size is ");
        sbC.append(this.f10429a);
        throw new IndexOutOfBoundsException(sbC.toString());
    }
}
