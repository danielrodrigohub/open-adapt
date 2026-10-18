package p8;

import com.nike.adapt.adk.model.AdaptAnimation;

/* JADX INFO: compiled from: ControllerRequest.kt */
/* JADX INFO: loaded from: classes.dex */
public final class h0 extends l {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final AdaptAnimation f13331a;

    public h0(AdaptAnimation adaptAnimation) {
        this.f13331a = adaptAnimation;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof h0) && p4.h.c(this.f13331a, ((h0) obj).f13331a);
    }

    public final int hashCode() {
        return this.f13331a.hashCode();
    }

    public final String toString() {
        return "StartAnimationRequest(animation=" + this.f13331a + ")";
    }
}
