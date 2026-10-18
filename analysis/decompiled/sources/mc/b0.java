package mc;

import androidx.fragment.app.r0;

/* JADX INFO: compiled from: SessionInfo.kt */
/* JADX INFO: loaded from: classes.dex */
public final class b0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final a0 f10972a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final long f10973b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f10974c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final int f10975d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final int f10976e;

    public b0(a0 a0Var, long j10, int i10, int i11, int i12) {
        androidx.appcompat.widget.o.d(i12, "state");
        this.f10972a = a0Var;
        this.f10973b = j10;
        this.f10974c = i10;
        this.f10975d = i11;
        this.f10976e = i12;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof b0)) {
            return false;
        }
        b0 b0Var = (b0) obj;
        return p4.h.c(this.f10972a, b0Var.f10972a) && this.f10973b == b0Var.f10973b && this.f10974c == b0Var.f10974c && this.f10975d == b0Var.f10975d && this.f10976e == b0Var.f10976e;
    }

    public final int hashCode() {
        return q.g.a(this.f10976e) + r0.e(this.f10975d, r0.e(this.f10974c, (Long.hashCode(this.f10973b) + (this.f10972a.hashCode() * 31)) * 31, 31), 31);
    }

    public final String toString() {
        StringBuilder sbC = a0.b.c("SessionInfo(id=");
        sbC.append(this.f10972a);
        sbC.append(", timestamp=");
        sbC.append(this.f10973b);
        sbC.append(", size=");
        sbC.append(this.f10974c);
        sbC.append(", crc=");
        sbC.append(this.f10975d);
        sbC.append(", state=");
        sbC.append(k1.a.e(this.f10976e));
        sbC.append(')');
        return sbC.toString();
    }
}
