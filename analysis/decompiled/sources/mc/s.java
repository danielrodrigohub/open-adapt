package mc;

/* JADX INFO: compiled from: CoreRFAuthentication.kt */
/* JADX INFO: loaded from: classes.dex */
public final class s extends h {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f11087a = "The Device and The User have miss matching Keys. Must re-pair to the shoes";

    public s() {
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof s) && p4.h.c(this.f11087a, ((s) obj).f11087a);
    }

    public final int hashCode() {
        return this.f11087a.hashCode();
    }

    public final String toString() {
        return a0.d.d(a0.b.c("KeysAreAMissMatch(message="), this.f11087a, ')');
    }

    public s(String str, int i10, rd.h hVar) {
    }
}
