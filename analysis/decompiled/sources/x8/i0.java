package x8;

/* JADX INFO: compiled from: ShoeControllerUiHelper.kt */
/* JADX INFO: loaded from: classes.dex */
public final class i0 extends f8.b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f17910a;

    public i0(int i10) {
        this.f17910a = i10;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof i0) && this.f17910a == ((i0) obj).f17910a;
    }

    public final int hashCode() {
        return Integer.hashCode(this.f17910a);
    }

    public final String toString() {
        return a0.d.b("MoveUiToCurrentLacingPercentOfBigfoot(currentPercent=", this.f17910a, ")");
    }
}
