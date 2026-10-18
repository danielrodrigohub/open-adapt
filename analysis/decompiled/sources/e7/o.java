package e7;

/* JADX INFO: compiled from: JsonObject.java */
/* JADX INFO: loaded from: classes.dex */
public final class o extends l {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final g7.p<String, l> f6542a = new g7.p<>();

    public final boolean equals(Object obj) {
        return obj == this || ((obj instanceof o) && ((o) obj).f6542a.equals(this.f6542a));
    }

    public final int hashCode() {
        return this.f6542a.hashCode();
    }
}
