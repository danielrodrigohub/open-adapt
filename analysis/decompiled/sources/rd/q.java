package rd;

/* JADX INFO: compiled from: PackageReference.kt */
/* JADX INFO: loaded from: classes.dex */
public final class q implements f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Class<?> f14792a;

    public q(Class cls) {
        p4.h.j(cls, "jClass");
        this.f14792a = cls;
    }

    @Override // rd.f
    public final Class<?> b() {
        return this.f14792a;
    }

    public final boolean equals(Object obj) {
        return (obj instanceof q) && p4.h.c(this.f14792a, ((q) obj).f14792a);
    }

    public final int hashCode() {
        return this.f14792a.hashCode();
    }

    public final String toString() {
        return this.f14792a.toString() + " (Kotlin reflection is not available)";
    }
}
