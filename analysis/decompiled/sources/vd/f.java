package vd;

import java.util.Iterator;

/* JADX INFO: compiled from: Progressions.kt */
/* JADX INFO: loaded from: classes.dex */
public class f implements Iterable<Long>, sd.a {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final long f17030h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final long f17031i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final long f17032j;

    public f(long j10, long j11) {
        this.f17030h = j10;
        this.f17031i = j10 < j11 ? j11 - g7.b.h(g7.b.h(j11, 1L) - g7.b.h(j10, 1L), 1L) : j11;
        this.f17032j = 1L;
    }

    @Override // java.lang.Iterable
    public final Iterator<Long> iterator() {
        return new g(this.f17030h, this.f17031i, this.f17032j);
    }
}
