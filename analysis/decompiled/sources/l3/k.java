package l3;

/* JADX INFO: compiled from: MultiClassKey.java */
/* JADX INFO: loaded from: classes.dex */
public final class k {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public Class<?> f9942a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public Class<?> f9943b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Class<?> f9944c;

    public k() {
    }

    public final void a(Class<?> cls, Class<?> cls2, Class<?> cls3) {
        this.f9942a = cls;
        this.f9943b = cls2;
        this.f9944c = cls3;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || k.class != obj.getClass()) {
            return false;
        }
        k kVar = (k) obj;
        return this.f9942a.equals(kVar.f9942a) && this.f9943b.equals(kVar.f9943b) && l.b(this.f9944c, kVar.f9944c);
    }

    public final int hashCode() {
        int iHashCode = (this.f9943b.hashCode() + (this.f9942a.hashCode() * 31)) * 31;
        Class<?> cls = this.f9944c;
        return iHashCode + (cls != null ? cls.hashCode() : 0);
    }

    public final String toString() {
        StringBuilder sbC = a0.b.c("MultiClassKey{first=");
        sbC.append(this.f9942a);
        sbC.append(", second=");
        sbC.append(this.f9943b);
        sbC.append('}');
        return sbC.toString();
    }

    public k(Class<?> cls, Class<?> cls2, Class<?> cls3) {
        a(cls, cls2, cls3);
    }
}
