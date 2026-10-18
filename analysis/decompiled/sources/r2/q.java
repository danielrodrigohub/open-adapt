package r2;

import java.util.Objects;

/* JADX INFO: compiled from: EngineResource.java */
/* JADX INFO: loaded from: classes.dex */
public final class q<Z> implements w<Z> {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final boolean f14365h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final boolean f14366i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final w<Z> f14367j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final a f14368k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final p2.f f14369l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public int f14370m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public boolean f14371n;

    /* JADX INFO: compiled from: EngineResource.java */
    public interface a {
        void a(p2.f fVar, q<?> qVar);
    }

    public q(w<Z> wVar, boolean z10, boolean z11, p2.f fVar, a aVar) {
        Objects.requireNonNull(wVar, "Argument must not be null");
        this.f14367j = wVar;
        this.f14365h = z10;
        this.f14366i = z11;
        this.f14369l = fVar;
        Objects.requireNonNull(aVar, "Argument must not be null");
        this.f14368k = aVar;
    }

    @Override // r2.w
    public final int a() {
        return this.f14367j.a();
    }

    @Override // r2.w
    public final Class<Z> b() {
        return this.f14367j.b();
    }

    @Override // r2.w
    public final synchronized void c() {
        if (this.f14370m > 0) {
            throw new IllegalStateException("Cannot recycle a resource while it is still acquired");
        }
        if (this.f14371n) {
            throw new IllegalStateException("Cannot recycle a resource that has already been recycled");
        }
        this.f14371n = true;
        if (this.f14366i) {
            this.f14367j.c();
        }
    }

    public final synchronized void d() {
        if (this.f14371n) {
            throw new IllegalStateException("Cannot acquire a recycled resource");
        }
        this.f14370m++;
    }

    public final void e() {
        boolean z10;
        synchronized (this) {
            int i10 = this.f14370m;
            if (i10 <= 0) {
                throw new IllegalStateException("Cannot release a recycled or not yet acquired resource");
            }
            z10 = true;
            int i11 = i10 - 1;
            this.f14370m = i11;
            if (i11 != 0) {
                z10 = false;
            }
        }
        if (z10) {
            this.f14368k.a(this.f14369l, this);
        }
    }

    @Override // r2.w
    public final Z get() {
        return this.f14367j.get();
    }

    public final synchronized String toString() {
        return "EngineResource{isMemoryCacheable=" + this.f14365h + ", listener=" + this.f14368k + ", key=" + this.f14369l + ", acquired=" + this.f14370m + ", isRecycled=" + this.f14371n + ", resource=" + this.f14367j + '}';
    }
}
