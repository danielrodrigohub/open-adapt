package fd;

import java.io.Serializable;

/* JADX INFO: compiled from: Tuples.kt */
/* JADX INFO: loaded from: classes.dex */
public final class e<A, B> implements Serializable {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final A f7388h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final B f7389i;

    public e(A a10, B b10) {
        this.f7388h = a10;
        this.f7389i = b10;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof e)) {
            return false;
        }
        e eVar = (e) obj;
        return p4.h.c(this.f7388h, eVar.f7388h) && p4.h.c(this.f7389i, eVar.f7389i);
    }

    public final int hashCode() {
        A a10 = this.f7388h;
        int iHashCode = (a10 == null ? 0 : a10.hashCode()) * 31;
        B b10 = this.f7389i;
        return iHashCode + (b10 != null ? b10.hashCode() : 0);
    }

    public final String toString() {
        return '(' + this.f7388h + ", " + this.f7389i + ')';
    }
}
