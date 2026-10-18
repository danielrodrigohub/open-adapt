package r4;

import java.util.Objects;
import n3.s0;

/* JADX INFO: compiled from: MediaChunk.java */
/* JADX INFO: loaded from: classes.dex */
public abstract class m extends e {

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final long f14605j;

    public m(l5.j jVar, l5.m mVar, s0 s0Var, int i10, Object obj, long j10, long j11, long j12) {
        super(jVar, mVar, 1, s0Var, i10, obj, j10, j11);
        Objects.requireNonNull(s0Var);
        this.f14605j = j12;
    }

    public long c() {
        long j10 = this.f14605j;
        if (j10 != -1) {
            return 1 + j10;
        }
        return -1L;
    }

    public abstract boolean d();
}
