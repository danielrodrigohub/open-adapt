package yd;

/* JADX INFO: compiled from: Regex.kt */
/* JADX INFO: loaded from: classes.dex */
public final class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f19188a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final vd.e f19189b;

    public c(String str, vd.e eVar) {
        this.f19188a = str;
        this.f19189b = eVar;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof c)) {
            return false;
        }
        c cVar = (c) obj;
        return p4.h.c(this.f19188a, cVar.f19188a) && p4.h.c(this.f19189b, cVar.f19189b);
    }

    public final int hashCode() {
        return this.f19189b.hashCode() + (this.f19188a.hashCode() * 31);
    }

    public final String toString() {
        StringBuilder sbC = a0.b.c("MatchGroup(value=");
        sbC.append(this.f19188a);
        sbC.append(", range=");
        sbC.append(this.f19189b);
        sbC.append(')');
        return sbC.toString();
    }
}
