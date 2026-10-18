package y0;

/* JADX INFO: compiled from: EntityDeletionOrUpdateAdapter.java */
/* JADX INFO: loaded from: classes.dex */
public abstract class p<T> extends h0 {
    public p(d0 d0Var) {
        super(d0Var);
    }

    public abstract void e(d1.g gVar, T t10);

    public final int f(T[] tArr) {
        d1.g gVarA = a();
        try {
            int iP = 0;
            for (T t10 : tArr) {
                e(gVarA, t10);
                iP += gVarA.p();
            }
            d(gVarA);
            return iP;
        } catch (Throwable th) {
            d(gVarA);
            throw th;
        }
    }
}
