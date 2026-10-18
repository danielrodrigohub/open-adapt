package p8;

import com.nike.adapt.adk.model.AdaptGestureConfiguration;
import java.util.List;

/* JADX INFO: compiled from: ControllerRequest.kt */
/* JADX INFO: loaded from: classes.dex */
public final class g0 extends l {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final List<AdaptGestureConfiguration> f13329a;

    /* JADX WARN: Multi-variable type inference failed */
    public g0() {
        this(null, 1, 0 == true ? 1 : 0);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public g0(List<? extends AdaptGestureConfiguration> list) {
        p4.h.j(list, "gestureConfigurations");
        this.f13329a = list;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof g0) && p4.h.c(this.f13329a, ((g0) obj).f13329a);
    }

    public final int hashCode() {
        return this.f13329a.hashCode();
    }

    public final String toString() {
        return "SetGestureConfigRequest(gestureConfigurations=" + this.f13329a + ")";
    }

    public /* synthetic */ g0(List list, int i10, rd.h hVar) {
        this(androidx.lifecycle.o.y(AdaptGestureConfiguration.DoubleTapUnlace.INSTANCE));
    }
}
