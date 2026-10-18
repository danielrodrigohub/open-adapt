package i9;

import com.nike.adapt.adk.Shoe;

/* JADX INFO: compiled from: AdaptShoeState.kt */
/* JADX INFO: loaded from: classes.dex */
public final class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Shoe f8829a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f8830b;

    public a(Shoe shoe, int i10) {
        p4.h.j(shoe, "shoe");
        androidx.appcompat.widget.o.d(i10, "state");
        this.f8829a = shoe;
        this.f8830b = i10;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof a)) {
            return false;
        }
        a aVar = (a) obj;
        return this.f8829a == aVar.f8829a && this.f8830b == aVar.f8830b;
    }

    public final int hashCode() {
        return q.g.a(this.f8830b) + (this.f8829a.hashCode() * 31);
    }

    public final String toString() {
        return "AdaptShoeStateADK(shoe=" + this.f8829a + ", state=" + da.c.c(this.f8830b) + ")";
    }
}
