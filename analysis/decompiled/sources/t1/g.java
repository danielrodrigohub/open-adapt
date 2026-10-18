package t1;

/* JADX INFO: compiled from: SystemIdInfo.java */
/* JADX INFO: loaded from: classes.dex */
public final class g {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f15338a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f15339b;

    public g(String str, int i10) {
        this.f15338a = str;
        this.f15339b = i10;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof g)) {
            return false;
        }
        g gVar = (g) obj;
        if (this.f15339b != gVar.f15339b) {
            return false;
        }
        return this.f15338a.equals(gVar.f15338a);
    }

    public final int hashCode() {
        return (this.f15338a.hashCode() * 31) + this.f15339b;
    }
}
