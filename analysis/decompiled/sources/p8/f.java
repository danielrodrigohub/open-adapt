package p8;

import androidx.appcompat.widget.y0;

/* JADX INFO: compiled from: ControllerRequest.kt */
/* JADX INFO: loaded from: classes.dex */
public final class f extends l {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f13325a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f13326b;

    public f(int i10) {
        androidx.appcompat.widget.o.d(1, "percentType");
        this.f13325a = i10;
        this.f13326b = 1;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof f)) {
            return false;
        }
        f fVar = (f) obj;
        return this.f13325a == fVar.f13325a && this.f13326b == fVar.f13326b;
    }

    public final int hashCode() {
        return q.g.a(this.f13326b) + (Integer.hashCode(this.f13325a) * 31);
    }

    public final String toString() {
        int i10 = this.f13325a;
        int i11 = this.f13326b;
        StringBuilder sbC = y0.c("AutoLaceSetRequest(percent=", i10, ", percentType=");
        sbC.append(ed.c.e(i11));
        sbC.append(")");
        return sbC.toString();
    }
}
