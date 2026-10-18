package p8;

import androidx.appcompat.widget.y0;

/* JADX INFO: compiled from: ControllerRequest.kt */
/* JADX INFO: loaded from: classes.dex */
public final class d0 extends l {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f13321a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f13322b;

    public d0(int i10, int i11) {
        androidx.appcompat.widget.o.d(i11, "percentType");
        this.f13321a = i10;
        this.f13322b = i11;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof d0)) {
            return false;
        }
        d0 d0Var = (d0) obj;
        return this.f13321a == d0Var.f13321a && this.f13322b == d0Var.f13322b;
    }

    public final int hashCode() {
        return q.g.a(this.f13322b) + (Integer.hashCode(this.f13321a) * 31);
    }

    public final String toString() {
        int i10 = this.f13321a;
        int i11 = this.f13322b;
        StringBuilder sbC = y0.c("MoveToRequest(percent=", i10, ", percentType=");
        sbC.append(ed.c.e(i11));
        sbC.append(")");
        return sbC.toString();
    }
}
