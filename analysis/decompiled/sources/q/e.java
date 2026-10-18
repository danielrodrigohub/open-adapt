package q;

import w4.n;

/* JADX INFO: compiled from: Pools.java */
/* JADX INFO: loaded from: classes.dex */
public final class e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f13476a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Object f13477b;

    public /* synthetic */ e(int i10, n nVar) {
        this.f13476a = i10;
        this.f13477b = nVar;
    }

    public final Object a() {
        int i10 = this.f13476a;
        if (i10 <= 0) {
            return null;
        }
        int i11 = i10 - 1;
        Object obj = this.f13477b;
        Object obj2 = ((Object[]) obj)[i11];
        ((Object[]) obj)[i11] = null;
        this.f13476a = i10 - 1;
        return obj2;
    }

    public final boolean b(Object obj) {
        int i10 = this.f13476a;
        Object[] objArr = (Object[]) this.f13477b;
        if (i10 >= objArr.length) {
            return false;
        }
        objArr[i10] = obj;
        this.f13476a = i10 + 1;
        return true;
    }
}
