package fd;

import java.io.Serializable;

/* JADX INFO: compiled from: Tuples.kt */
/* JADX INFO: loaded from: classes.dex */
public final class i<A, B, C> implements Serializable {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final A f7397h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final B f7398i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final C f7399j;

    public i(A a10, B b10, C c10) {
        this.f7397h = a10;
        this.f7398i = b10;
        this.f7399j = c10;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof i)) {
            return false;
        }
        i iVar = (i) obj;
        return p4.h.c(this.f7397h, iVar.f7397h) && p4.h.c(this.f7398i, iVar.f7398i) && p4.h.c(this.f7399j, iVar.f7399j);
    }

    public final int hashCode() {
        A a10 = this.f7397h;
        int iHashCode = (a10 == null ? 0 : a10.hashCode()) * 31;
        B b10 = this.f7398i;
        int iHashCode2 = (iHashCode + (b10 == null ? 0 : b10.hashCode())) * 31;
        C c10 = this.f7399j;
        return iHashCode2 + (c10 != null ? c10.hashCode() : 0);
    }

    public final String toString() {
        return '(' + this.f7397h + ", " + this.f7398i + ", " + this.f7399j + ')';
    }
}
