package ee;

import de.j0;
import de.n;
import java.io.IOException;

/* JADX INFO: compiled from: FixedLengthSource.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class b extends n {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final long f6748h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final boolean f6749i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public long f6750j;

    public b(j0 j0Var, long j10, boolean z10) {
        super(j0Var);
        this.f6748h = j10;
        this.f6749i = z10;
    }

    @Override // de.n, de.j0
    public final long read(de.c cVar, long j10) throws IOException {
        p4.h.j(cVar, "sink");
        long j11 = this.f6750j;
        long j12 = this.f6748h;
        if (j11 > j12) {
            j10 = 0;
        } else if (this.f6749i) {
            long j13 = j12 - j11;
            if (j13 == 0) {
                return -1L;
            }
            j10 = Math.min(j10, j13);
        }
        long j14 = super.read(cVar, j10);
        if (j14 != -1) {
            this.f6750j += j14;
        }
        long j15 = this.f6750j;
        long j16 = this.f6748h;
        if ((j15 >= j16 || j14 != -1) && j15 <= j16) {
            return j14;
        }
        if (j14 > 0 && j15 > j16) {
            long j17 = cVar.f6199i - (j15 - j16);
            de.c cVar2 = new de.c();
            cVar2.s(cVar);
            cVar.write(cVar2, j17);
            cVar2.x();
        }
        StringBuilder sbC = a0.b.c("expected ");
        sbC.append(this.f6748h);
        sbC.append(" bytes but got ");
        sbC.append(this.f6750j);
        throw new IOException(sbC.toString());
    }
}
