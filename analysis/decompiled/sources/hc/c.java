package hc;

/* JADX INFO: compiled from: CoreRFBigfoot.kt */
/* JADX INFO: loaded from: classes.dex */
public final class c extends Throwable {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final int f8416h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public c(int i10) {
        super(androidx.recyclerview.widget.d.e(i10));
        androidx.appcompat.widget.o.d(i10, "stageOfAuthentication");
        this.f8416h = i10;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof c) && this.f8416h == ((c) obj).f8416h;
    }

    public final int hashCode() {
        return q.g.a(this.f8416h);
    }

    @Override // java.lang.Throwable
    public final String toString() {
        StringBuilder sbC = a0.b.c("AuthenticationTimedOutException(stageOfAuthentication=");
        sbC.append(androidx.recyclerview.widget.d.g(this.f8416h));
        sbC.append(')');
        return sbC.toString();
    }
}
