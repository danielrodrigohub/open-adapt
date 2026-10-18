package fd;

/* JADX INFO: compiled from: UByte.kt */
/* JADX INFO: loaded from: classes.dex */
public final class j implements Comparable<j> {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final a f7400i = new a();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final byte f7401h;

    /* JADX INFO: compiled from: UByte.kt */
    public static final class a {
    }

    @Override // java.lang.Comparable
    public final /* synthetic */ int compareTo(j jVar) {
        return p4.h.l(this.f7401h & 255, jVar.f7401h & 255);
    }

    public final boolean equals(Object obj) {
        return (obj instanceof j) && this.f7401h == ((j) obj).f7401h;
    }

    public final int hashCode() {
        return this.f7401h;
    }

    public final String toString() {
        return String.valueOf(this.f7401h & 255);
    }
}
