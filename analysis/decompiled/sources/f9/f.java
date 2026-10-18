package f9;

import ea.m;

/* JADX INFO: compiled from: MyShoesAdapter.kt */
/* JADX INFO: loaded from: classes.dex */
public final class f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public m f7107a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public t9.d f7108b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public t9.d f7109c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final x8.m f7110d;

    public f(m mVar, t9.d dVar, t9.d dVar2, x8.m mVar2) {
        p4.h.j(mVar, "device");
        p4.h.j(dVar, "leftConnection");
        p4.h.j(dVar2, "rightConnection");
        p4.h.j(mVar2, "badgeData");
        this.f7107a = mVar;
        this.f7108b = dVar;
        this.f7109c = dVar2;
        this.f7110d = mVar2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof f)) {
            return false;
        }
        f fVar = (f) obj;
        return p4.h.c(this.f7107a, fVar.f7107a) && this.f7108b == fVar.f7108b && this.f7109c == fVar.f7109c && p4.h.c(this.f7110d, fVar.f7110d);
    }

    public final int hashCode() {
        return this.f7110d.hashCode() + ((this.f7109c.hashCode() + ((this.f7108b.hashCode() + (this.f7107a.hashCode() * 31)) * 31)) * 31);
    }

    public final String toString() {
        return "MyShoesWithConnection(device=" + this.f7107a + ", leftConnection=" + this.f7108b + ", rightConnection=" + this.f7109c + ", badgeData=" + this.f7110d + ")";
    }
}
