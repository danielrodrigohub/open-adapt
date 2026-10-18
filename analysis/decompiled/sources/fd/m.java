package fd;

/* JADX INFO: compiled from: UShort.kt */
/* JADX INFO: loaded from: classes.dex */
public final class m implements Comparable<m> {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final a f7406i = new a();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final short f7407h;

    /* JADX INFO: compiled from: UShort.kt */
    public static final class a {
    }

    @Override // java.lang.Comparable
    public final /* synthetic */ int compareTo(m mVar) {
        return p4.h.l(this.f7407h & 65535, mVar.f7407h & 65535);
    }

    public final boolean equals(Object obj) {
        return (obj instanceof m) && this.f7407h == ((m) obj).f7407h;
    }

    public final int hashCode() {
        return this.f7407h;
    }

    public final String toString() {
        return String.valueOf(this.f7407h & 65535);
    }
}
