package oc;

import java.util.List;
import p4.h;

/* JADX INFO: compiled from: BigfootAnimationFrameData.kt */
/* JADX INFO: loaded from: classes.dex */
public final class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f12539a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final List<c> f12540b;

    public a(int i10, List<c> list) {
        this.f12539a = i10;
        this.f12540b = list;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof a)) {
            return false;
        }
        a aVar = (a) obj;
        return this.f12539a == aVar.f12539a && h.c(this.f12540b, aVar.f12540b);
    }

    public final int hashCode() {
        return this.f12540b.hashCode() + (Integer.hashCode(this.f12539a) * 31);
    }

    public final String toString() {
        StringBuilder sbC = a0.b.c("BigfootAnimationFrame(frameDuration=");
        sbC.append(this.f12539a);
        sbC.append(", leds=");
        sbC.append(this.f12540b);
        sbC.append(')');
        return sbC.toString();
    }
}
