package s9;

/* JADX INFO: compiled from: InternetConnectionViewModel.kt */
/* JADX INFO: loaded from: classes.dex */
public final class k {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final boolean f15206a = false;

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof k) && this.f15206a == ((k) obj).f15206a;
    }

    public final int hashCode() {
        boolean z10 = this.f15206a;
        if (z10) {
            return 1;
        }
        return z10 ? 1 : 0;
    }

    public final String toString() {
        return "InternetState(internetAvailable=" + this.f15206a + ")";
    }
}
