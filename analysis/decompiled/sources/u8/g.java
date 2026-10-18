package u8;

import o7.x;

/* JADX INFO: compiled from: ErrorDisplay.kt */
/* JADX INFO: loaded from: classes.dex */
public abstract class g {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final qd.a<Boolean> f16045a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public boolean f16046b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public boolean f16047c;

    public g() {
        this(f.f16044h);
    }

    public void a() {
        this.f16046b = false;
        this.f16047c = false;
    }

    public abstract boolean b();

    public final boolean c(boolean z10, v9.e eVar) {
        p4.h.j(eVar, "connectionState");
        x.f12420a.b(getClass().getSimpleName(), (z10 ? "right" : "left") + " shoe: " + eVar);
        if (this.f16045a.invoke().booleanValue()) {
            a();
            return false;
        }
        boolean z11 = eVar == v9.e.CONNECTED_AND_AUTHENTICATED;
        if (z10) {
            this.f16047c = z11;
        } else {
            this.f16046b = z11;
        }
        return b();
    }

    public g(qd.a<Boolean> aVar) {
        p4.h.j(aVar, "runtimeOverride");
        this.f16045a = aVar;
        this.f16046b = true;
        this.f16047c = true;
    }
}
