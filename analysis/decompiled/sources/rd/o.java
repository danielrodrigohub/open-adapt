package rd;

import java.io.Serializable;

/* JADX INFO: compiled from: Lambda.kt */
/* JADX INFO: loaded from: classes.dex */
public abstract class o<R> implements k<R>, Serializable {
    private final int arity;

    public o(int i10) {
        this.arity = i10;
    }

    @Override // rd.k
    public int getArity() {
        return this.arity;
    }

    public String toString() {
        String strA = x.f14796a.a(this);
        p4.h.i(strA, "renderLambdaToString(this)");
        return strA;
    }
}
