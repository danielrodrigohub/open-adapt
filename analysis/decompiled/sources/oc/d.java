package oc;

import androidx.appcompat.widget.o;
import androidx.fragment.app.r0;
import q.g;

/* JADX INFO: compiled from: BigfootColor.kt */
/* JADX INFO: loaded from: classes.dex */
public final class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f12552a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f12553b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f12554c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final int f12555d;

    public d(int i10, int i11, int i12, int i13) {
        o.d(i13, "brightness");
        this.f12552a = i10;
        this.f12553b = i11;
        this.f12554c = i12;
        this.f12555d = i13;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof d)) {
            return false;
        }
        d dVar = (d) obj;
        return this.f12552a == dVar.f12552a && this.f12553b == dVar.f12553b && this.f12554c == dVar.f12554c && this.f12555d == dVar.f12555d;
    }

    public final int hashCode() {
        return g.a(this.f12555d) + r0.e(this.f12554c, r0.e(this.f12553b, Integer.hashCode(this.f12552a) * 31, 31), 31);
    }

    public final String toString() {
        StringBuilder sbC = a0.b.c("BigfootColor(red=");
        sbC.append(this.f12552a);
        sbC.append(", green=");
        sbC.append(this.f12553b);
        sbC.append(", blue=");
        sbC.append(this.f12554c);
        sbC.append(", brightness=");
        sbC.append(o.k(this.f12555d));
        sbC.append(')');
        return sbC.toString();
    }
}
