package bd;

import p4.h;

/* JADX INFO: compiled from: OptionLocalScope.kt */
/* JADX INFO: loaded from: classes.dex */
public final class e implements yc.a.c {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final String f3795h;

    public e(String str) {
        h.j(str, "name");
        this.f3795h = str;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof e) && h.c(this.f3795h, ((e) obj).f3795h);
    }

    public final int hashCode() {
        return this.f3795h.hashCode();
    }

    public final String toString() {
        return a0.d.d(a0.b.c("OptionLocalScope(name="), this.f3795h, ')');
    }
}
