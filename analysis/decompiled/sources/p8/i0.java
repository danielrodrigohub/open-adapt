package p8;

import com.nike.adapt.adk.model.AdaptCustomAnimation;

/* JADX INFO: compiled from: ControllerRequest.kt */
/* JADX INFO: loaded from: classes.dex */
public final class i0 extends l {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final AdaptCustomAnimation f13332a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f13333b;

    public i0(AdaptCustomAnimation adaptCustomAnimation, int i10) {
        p4.h.j(adaptCustomAnimation, "animation");
        this.f13332a = adaptCustomAnimation;
        this.f13333b = i10;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof i0)) {
            return false;
        }
        i0 i0Var = (i0) obj;
        return p4.h.c(this.f13332a, i0Var.f13332a) && this.f13333b == i0Var.f13333b;
    }

    public final int hashCode() {
        return Integer.hashCode(this.f13333b) + (this.f13332a.hashCode() * 31);
    }

    public final String toString() {
        return "StartNewAnimationRequest(animation=" + this.f13332a + ", duration=" + this.f13333b + ")";
    }
}
