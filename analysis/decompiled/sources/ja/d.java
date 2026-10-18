package ja;

import p4.h;

/* JADX INFO: compiled from: AdaptKitRequirements.kt */
/* JADX INFO: loaded from: classes.dex */
public final class d extends android.support.v4.media.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f9486a;

    public d(String str) {
        this.f9486a = str;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof d) && h.c(this.f9486a, ((d) obj).f9486a);
    }

    public final int hashCode() {
        return this.f9486a.hashCode();
    }

    public final String toString() {
        return a0.d.c("RequirementIsMissing(explanation=", this.f9486a, ")");
    }
}
