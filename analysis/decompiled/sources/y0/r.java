package y0;

import java.util.Objects;

/* JADX INFO: compiled from: InvalidationLiveDataContainer.java */
/* JADX INFO: loaded from: classes.dex */
public final class r {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f18270a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public Object f18271b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Object f18272c;

    public final void a() {
        this.f18271b = null;
        this.f18272c = null;
    }

    public final boolean equals(Object obj) {
        switch (this.f18270a) {
            case 1:
                if (!(obj instanceof i0.d)) {
                    return false;
                }
                Objects.requireNonNull((i0.d) obj);
                if (this.f18271b == null) {
                    return this.f18272c == null;
                }
                return false;
            default:
                return super.equals(obj);
        }
    }

    public final int hashCode() {
        switch (this.f18270a) {
            case 1:
                Object obj = this.f18271b;
                int iHashCode = obj == null ? 0 : obj.hashCode();
                Object obj2 = this.f18272c;
                return iHashCode ^ (obj2 != null ? obj2.hashCode() : 0);
            default:
                return super.hashCode();
        }
    }

    public final String toString() {
        switch (this.f18270a) {
            case 1:
                StringBuilder sbC = a0.b.c("Pair{");
                sbC.append(this.f18271b);
                sbC.append(" ");
                sbC.append(this.f18272c);
                sbC.append("}");
                return sbC.toString();
            default:
                return super.toString();
        }
    }
}
