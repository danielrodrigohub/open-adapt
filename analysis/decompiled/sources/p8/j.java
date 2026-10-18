package p8;

import com.nike.adapt.adk.model.AdaptDeviceColor;

/* JADX INFO: compiled from: ControllerRequest.kt */
/* JADX INFO: loaded from: classes.dex */
public final class j extends l {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final AdaptDeviceColor f13334a;

    public j(AdaptDeviceColor adaptDeviceColor) {
        this.f13334a = adaptDeviceColor;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof j) && p4.h.c(this.f13334a, ((j) obj).f13334a);
    }

    public final int hashCode() {
        return this.f13334a.hashCode();
    }

    public final String toString() {
        return "ChangeColorRequest(bigfootDeviceColor=" + this.f13334a + ")";
    }
}
