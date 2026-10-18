package fd;

/* JADX INFO: compiled from: UInt.kt */
/* JADX INFO: loaded from: classes.dex */
public final class k implements Comparable<k> {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final a f7402i = new a();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final int f7403h;

    /* JADX INFO: compiled from: UInt.kt */
    public static final class a {
    }

    public /* synthetic */ k(int i10) {
        this.f7403h = i10;
    }

    @Override // java.lang.Comparable
    public final /* synthetic */ int compareTo(k kVar) {
        return g7.c.g(this.f7403h, kVar.f7403h);
    }

    public final boolean equals(Object obj) {
        return (obj instanceof k) && this.f7403h == ((k) obj).f7403h;
    }

    public final int hashCode() {
        return this.f7403h;
    }

    public final String toString() {
        return String.valueOf(((long) this.f7403h) & 4294967295L);
    }
}
