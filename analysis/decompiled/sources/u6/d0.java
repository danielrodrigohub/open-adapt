package u6;

/* JADX INFO: compiled from: Iterators.java */
/* JADX INFO: loaded from: classes.dex */
public final class d0<T> extends a<T> {

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public static final a f15921l = new d0(new Object[0]);

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final T[] f15922j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final int f15923k;

    /* JADX WARN: Multi-variable type inference failed */
    public d0(Object[] objArr) {
        super(0, 0);
        this.f15922j = objArr;
        this.f15923k = 0;
    }

    @Override // u6.a
    public final T a(int i10) {
        return this.f15922j[this.f15923k + i10];
    }
}
