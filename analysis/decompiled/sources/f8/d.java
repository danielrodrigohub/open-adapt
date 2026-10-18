package f8;

import p4.h;

/* JADX INFO: compiled from: AdaptResultListener.kt */
/* JADX INFO: loaded from: classes.dex */
public final class d<Result> extends b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Throwable f7087a;

    public d(Throwable th) {
        h.j(th, "throwable");
        this.f7087a = th;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof d) && h.c(this.f7087a, ((d) obj).f7087a);
    }

    public final int hashCode() {
        return this.f7087a.hashCode();
    }

    public final String toString() {
        return "OnFailureAdaptResult(throwable=" + this.f7087a + ")";
    }
}
