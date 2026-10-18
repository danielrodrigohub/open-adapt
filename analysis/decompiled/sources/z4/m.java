package z4;

import java.util.List;
import java.util.Objects;

/* JADX INFO: compiled from: SubtitleOutputBuffer.java */
/* JADX INFO: loaded from: classes.dex */
public abstract class m extends q3.h implements g {

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public g f19352j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public long f19353k;

    @Override // z4.g
    public final int b(long j10) {
        g gVar = this.f19352j;
        Objects.requireNonNull(gVar);
        return gVar.b(j10 - this.f19353k);
    }

    @Override // z4.g
    public final long g(int i10) {
        g gVar = this.f19352j;
        Objects.requireNonNull(gVar);
        return gVar.g(i10) + this.f19353k;
    }

    @Override // z4.g
    public final List<a> i(long j10) {
        g gVar = this.f19352j;
        Objects.requireNonNull(gVar);
        return gVar.i(j10 - this.f19353k);
    }

    @Override // z4.g
    public final int j() {
        g gVar = this.f19352j;
        Objects.requireNonNull(gVar);
        return gVar.j();
    }

    public final void p() {
        this.f13555h = 0;
        this.f19352j = null;
    }

    public final void q(long j10, g gVar, long j11) {
        this.f13587i = j10;
        this.f19352j = gVar;
        if (j11 != Long.MAX_VALUE) {
            j10 = j11;
        }
        this.f19353k = j10;
    }
}
