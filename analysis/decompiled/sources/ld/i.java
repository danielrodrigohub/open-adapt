package ld;

import rd.k;
import rd.x;

/* JADX INFO: compiled from: ContinuationImpl.kt */
/* JADX INFO: loaded from: classes.dex */
public abstract class i extends c implements k<Object> {
    private final int arity;

    public i(int i10, jd.d<Object> dVar) {
        super(dVar);
        this.arity = i10;
    }

    @Override // rd.k
    public int getArity() {
        return this.arity;
    }

    @Override // ld.a
    public String toString() {
        if (getCompletion() != null) {
            return super.toString();
        }
        String strA = x.f14796a.a(this);
        p4.h.i(strA, "renderLambdaToString(this)");
        return strA;
    }

    public i(int i10) {
        this(i10, null);
    }
}
