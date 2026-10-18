package i0;

/* JADX INFO: compiled from: Pools.java */
/* JADX INFO: loaded from: classes.dex */
public class f<T> implements e<T> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Object[] f8650a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f8651b;

    public f(int i10) {
        if (i10 <= 0) {
            throw new IllegalArgumentException("The max pool size must be > 0");
        }
        this.f8650a = new Object[i10];
    }

    @Override // i0.e
    public boolean a(T t10) {
        int i10;
        boolean z10;
        int i11 = 0;
        while (true) {
            i10 = this.f8651b;
            if (i11 >= i10) {
                z10 = false;
                break;
            }
            if (this.f8650a[i11] == t10) {
                z10 = true;
                break;
            }
            i11++;
        }
        if (z10) {
            throw new IllegalStateException("Already in the pool!");
        }
        Object[] objArr = this.f8650a;
        if (i10 >= objArr.length) {
            return false;
        }
        objArr[i10] = t10;
        this.f8651b = i10 + 1;
        return true;
    }

    @Override // i0.e
    public T b() {
        int i10 = this.f8651b;
        if (i10 <= 0) {
            return null;
        }
        int i11 = i10 - 1;
        Object[] objArr = this.f8650a;
        T t10 = (T) objArr[i11];
        objArr[i11] = null;
        this.f8651b = i10 - 1;
        return t10;
    }
}
