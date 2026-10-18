package gd;

/* JADX INFO: compiled from: IndexedValue.kt */
/* JADX INFO: loaded from: classes.dex */
public final class t<T> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f8073a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final T f8074b;

    public t(int i10, T t10) {
        this.f8073a = i10;
        this.f8074b = t10;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof t)) {
            return false;
        }
        t tVar = (t) obj;
        return this.f8073a == tVar.f8073a && p4.h.c(this.f8074b, tVar.f8074b);
    }

    public final int hashCode() {
        int i10 = this.f8073a * 31;
        T t10 = this.f8074b;
        return i10 + (t10 == null ? 0 : t10.hashCode());
    }

    public final String toString() {
        StringBuilder sbC = a0.b.c("IndexedValue(index=");
        sbC.append(this.f8073a);
        sbC.append(", value=");
        sbC.append(this.f8074b);
        sbC.append(')');
        return sbC.toString();
    }
}
