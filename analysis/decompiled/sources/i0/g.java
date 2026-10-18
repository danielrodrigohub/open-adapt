package i0;

/* JADX INFO: compiled from: Pools.java */
/* JADX INFO: loaded from: classes.dex */
public final class g<T> extends f<T> {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Object f8652c;

    public g(int i10) {
        super(i10);
        this.f8652c = new Object();
    }

    @Override // i0.f, i0.e
    public final boolean a(T t10) {
        boolean zA;
        synchronized (this.f8652c) {
            zA = super.a(t10);
        }
        return zA;
    }

    @Override // i0.f, i0.e
    public final T b() {
        T t10;
        synchronized (this.f8652c) {
            t10 = (T) super.b();
        }
        return t10;
    }
}
