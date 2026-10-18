package n3;

/* JADX INFO: compiled from: RendererConfiguration.java */
/* JADX INFO: loaded from: classes.dex */
public final class u1 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final u1 f11732b = new u1(false);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final boolean f11733a;

    public u1(boolean z10) {
        this.f11733a = z10;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return obj != null && u1.class == obj.getClass() && this.f11733a == ((u1) obj).f11733a;
    }

    public final int hashCode() {
        return !this.f11733a ? 1 : 0;
    }
}
