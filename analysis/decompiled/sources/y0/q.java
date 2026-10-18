package y0;

/* JADX INFO: compiled from: EntityInsertionAdapter.java */
/* JADX INFO: loaded from: classes.dex */
public abstract class q<T> extends h0 {
    public q(d0 d0Var) {
        super(d0Var);
    }

    public abstract void e(d1.g gVar, T t10);

    public final void f(T t10) {
        d1.g gVarA = a();
        try {
            e(gVarA, t10);
            gVarA.Z();
        } finally {
            d(gVarA);
        }
    }
}
