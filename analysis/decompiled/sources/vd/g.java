package vd;

import gd.x;
import java.util.NoSuchElementException;

/* JADX INFO: compiled from: ProgressionIterators.kt */
/* JADX INFO: loaded from: classes.dex */
public final class g extends x {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final long f17033h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final long f17034i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public boolean f17035j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public long f17036k;

    public g(long j10, long j11, long j12) {
        this.f17033h = j12;
        this.f17034i = j11;
        boolean z10 = true;
        if (j12 <= 0 ? j10 < j11 : j10 > j11) {
            z10 = false;
        }
        this.f17035j = z10;
        this.f17036k = z10 ? j10 : j11;
    }

    @Override // gd.x
    public final long a() {
        long j10 = this.f17036k;
        if (j10 != this.f17034i) {
            this.f17036k = this.f17033h + j10;
        } else {
            if (!this.f17035j) {
                throw new NoSuchElementException();
            }
            this.f17035j = false;
        }
        return j10;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.f17035j;
    }
}
