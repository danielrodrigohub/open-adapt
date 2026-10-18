package f8;

import p4.h;

/* JADX INFO: compiled from: AdaptResultListener.kt */
/* JADX INFO: loaded from: classes.dex */
public final class e<Result> extends b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Result f7088a;

    public e(Result result) {
        this.f7088a = result;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof e) && h.c(this.f7088a, ((e) obj).f7088a);
    }

    public final int hashCode() {
        Result result = this.f7088a;
        if (result == null) {
            return 0;
        }
        return result.hashCode();
    }

    public final String toString() {
        return "OnSuccessAdaptResult(result=" + this.f7088a + ")";
    }
}
