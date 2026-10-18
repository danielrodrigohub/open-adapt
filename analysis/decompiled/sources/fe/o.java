package fe;

/* JADX INFO: compiled from: Subscription.java */
/* JADX INFO: loaded from: classes2.dex */
public final class o {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Object f7479a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final m f7480b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public volatile boolean f7481c = true;

    public o(Object obj, m mVar) {
        this.f7479a = obj;
        this.f7480b = mVar;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof o)) {
            return false;
        }
        o oVar = (o) obj;
        return this.f7479a == oVar.f7479a && this.f7480b.equals(oVar.f7480b);
    }

    public final int hashCode() {
        return this.f7480b.f7469f.hashCode() + this.f7479a.hashCode();
    }
}
