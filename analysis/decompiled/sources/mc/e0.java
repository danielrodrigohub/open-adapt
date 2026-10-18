package mc;

import androidx.fragment.app.r0;

/* JADX INFO: compiled from: ShoeLedLight.kt */
/* JADX INFO: loaded from: classes.dex */
public final class e0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f11007a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f11008b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f11009c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final int f11010d;

    public e0() {
        this(15);
    }

    public /* synthetic */ e0(int i10) {
        this(0, 0, 0, (i10 & 8) != 0 ? 4 : 0);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof e0)) {
            return false;
        }
        e0 e0Var = (e0) obj;
        return this.f11007a == e0Var.f11007a && this.f11008b == e0Var.f11008b && this.f11009c == e0Var.f11009c && this.f11010d == e0Var.f11010d;
    }

    public final int hashCode() {
        return Integer.hashCode(this.f11010d) + r0.e(this.f11009c, r0.e(this.f11008b, Integer.hashCode(this.f11007a) * 31, 31), 31);
    }

    public final String toString() {
        StringBuilder sbC = a0.b.c("ShoeLedLight(r=");
        sbC.append(this.f11007a);
        sbC.append(", g=");
        sbC.append(this.f11008b);
        sbC.append(", b=");
        sbC.append(this.f11009c);
        sbC.append(", brightness=");
        return a0.b.b(sbC, this.f11010d, ')');
    }

    public e0(int i10, int i11, int i12, int i13) {
        this.f11007a = i10;
        this.f11008b = i11;
        this.f11009c = i12;
        this.f11010d = i13;
    }
}
