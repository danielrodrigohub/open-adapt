package mc;

/* JADX INFO: compiled from: SessionId.kt */
/* JADX INFO: loaded from: classes.dex */
public final class a0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f10968a;

    public a0(int i10) {
        this.f10968a = i10;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof a0) && this.f10968a == ((a0) obj).f10968a;
    }

    public final int hashCode() {
        return Integer.hashCode(this.f10968a);
    }

    public final String toString() {
        return a0.b.b(a0.b.c("SessionId(id="), this.f10968a, ')');
    }
}
