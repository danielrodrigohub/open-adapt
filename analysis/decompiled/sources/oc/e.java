package oc;

import androidx.fragment.app.r0;

/* JADX INFO: compiled from: BigfootUserAnimation.kt */
/* JADX INFO: loaded from: classes.dex */
public final class e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f12556a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f12557b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f12558c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final int f12559d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final int f12560e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final int f12561f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final int f12562g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final int f12563h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final int f12564i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final int f12565j;

    public e(int i10, int i11, int i12, int i13, int i14, int i15, int i16, int i17, int i18, int i19) {
        this.f12556a = i10;
        this.f12557b = i11;
        this.f12558c = i12;
        this.f12559d = i13;
        this.f12560e = i14;
        this.f12561f = i15;
        this.f12562g = i16;
        this.f12563h = i17;
        this.f12564i = i18;
        this.f12565j = i19;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof e)) {
            return false;
        }
        e eVar = (e) obj;
        return this.f12556a == eVar.f12556a && this.f12557b == eVar.f12557b && this.f12558c == eVar.f12558c && this.f12559d == eVar.f12559d && this.f12560e == eVar.f12560e && this.f12561f == eVar.f12561f && this.f12562g == eVar.f12562g && this.f12563h == eVar.f12563h && this.f12564i == eVar.f12564i && this.f12565j == eVar.f12565j;
    }

    public final int hashCode() {
        return Integer.hashCode(this.f12565j) + r0.e(this.f12564i, r0.e(this.f12563h, r0.e(this.f12562g, r0.e(this.f12561f, r0.e(this.f12560e, r0.e(this.f12559d, r0.e(this.f12558c, r0.e(this.f12557b, Integer.hashCode(this.f12556a) * 31, 31), 31), 31), 31), 31), 31), 31), 31);
    }

    public final String toString() {
        StringBuilder sbC = a0.b.c("BigfootUserAnimation(id=");
        sbC.append(this.f12556a);
        sbC.append(", red=");
        sbC.append(this.f12557b);
        sbC.append(", green=");
        sbC.append(this.f12558c);
        sbC.append(", blue=");
        sbC.append(this.f12559d);
        sbC.append(", prequelMillis=");
        sbC.append(this.f12560e);
        sbC.append(", enterMillis=");
        sbC.append(this.f12561f);
        sbC.append(", onMillis=");
        sbC.append(this.f12562g);
        sbC.append(", exitMillis=");
        sbC.append(this.f12563h);
        sbC.append(", offMillis=");
        sbC.append(this.f12564i);
        sbC.append(", sequelMillis=");
        return a0.b.b(sbC, this.f12565j, ')');
    }
}
