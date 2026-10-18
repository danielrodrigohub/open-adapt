package p8;

import androidx.appcompat.widget.y0;

/* JADX INFO: compiled from: ControllerRequest.kt */
/* JADX INFO: loaded from: classes.dex */
public final class c0 extends l {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f13315a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f13316b;

    public c0(int i10) {
        androidx.appcompat.widget.o.d(1, "percentType");
        this.f13315a = i10;
        this.f13316b = 1;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof c0)) {
            return false;
        }
        c0 c0Var = (c0) obj;
        return this.f13315a == c0Var.f13315a && this.f13316b == c0Var.f13316b;
    }

    public final int hashCode() {
        return q.g.a(this.f13316b) + (Integer.hashCode(this.f13315a) * 31);
    }

    public final String toString() {
        int i10 = this.f13315a;
        int i11 = this.f13316b;
        StringBuilder sbC = y0.c("MoveByRequest(percent=", i10, ", percentType=");
        sbC.append(ed.c.e(i11));
        sbC.append(")");
        return sbC.toString();
    }
}
