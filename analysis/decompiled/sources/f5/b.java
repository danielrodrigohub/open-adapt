package f5;

import java.util.Collections;
import java.util.List;
import m5.g0;
import z4.g;

/* JADX INFO: compiled from: SubripSubtitle.java */
/* JADX INFO: loaded from: classes.dex */
public final class b implements g {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final z4.a[] f7066h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final long[] f7067i;

    public b(z4.a[] aVarArr, long[] jArr) {
        this.f7066h = aVarArr;
        this.f7067i = jArr;
    }

    @Override // z4.g
    public final int b(long j10) {
        int iB = g0.b(this.f7067i, j10, false);
        if (iB < this.f7067i.length) {
            return iB;
        }
        return -1;
    }

    @Override // z4.g
    public final long g(int i10) {
        m5.a.a(i10 >= 0);
        m5.a.a(i10 < this.f7067i.length);
        return this.f7067i[i10];
    }

    @Override // z4.g
    public final List<z4.a> i(long j10) {
        int iF = g0.f(this.f7067i, j10, false);
        if (iF != -1) {
            z4.a[] aVarArr = this.f7066h;
            if (aVarArr[iF] != z4.a.f19292y) {
                return Collections.singletonList(aVarArr[iF]);
            }
        }
        return Collections.emptyList();
    }

    @Override // z4.g
    public final int j() {
        return this.f7067i.length;
    }
}
