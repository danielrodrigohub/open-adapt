package r4;

import java.util.NoSuchElementException;

/* JADX INFO: compiled from: BaseMediaChunkIterator.java */
/* JADX INFO: loaded from: classes.dex */
public abstract class b implements n {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final long f14535b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final long f14536c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public long f14537d;

    public b(long j10, long j11) {
        this.f14535b = j10;
        this.f14536c = j11;
        this.f14537d = j10 - 1;
    }

    public final void c() {
        long j10 = this.f14537d;
        if (j10 < this.f14535b || j10 > this.f14536c) {
            throw new NoSuchElementException();
        }
    }

    @Override // r4.n
    public final boolean next() {
        long j10 = this.f14537d + 1;
        this.f14537d = j10;
        return !(j10 > this.f14536c);
    }
}
