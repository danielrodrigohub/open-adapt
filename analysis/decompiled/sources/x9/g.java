package x9;

import fd.o;
import v9.r;

/* JADX INFO: compiled from: LacingPercentInBoundsConditionalCheck.kt */
/* JADX INFO: loaded from: classes.dex */
public final class g extends b<r> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final w9.a f18085a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final qd.l<r, o> f18086b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final r f18087c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final boolean f18088d;

    /* JADX WARN: Multi-variable type inference failed */
    public g(w9.a aVar, ea.h.a aVar2, qd.l<? super r, o> lVar) {
        p4.h.j(aVar2, "absolute");
        p4.h.j(lVar, "publishConditionError");
        this.f18085a = aVar;
        this.f18086b = lVar;
        this.f18087c = new r(aVar.f17253h, "For shoe " + aVar.f17254i + " The lacing command attempted to execute an absolute percent of " + aVar2.f6646j + " is not within the bounds of -1 < percent && percent < 101");
        int i10 = aVar2.f6646j;
        this.f18088d = i10 < 0 || i10 > 100;
    }

    @Override // x9.b
    public final w9.a a() {
        return this.f18085a;
    }

    @Override // x9.b
    public final v9.m b() {
        return this.f18087c;
    }

    @Override // x9.b
    public final String c() {
        return "LacingPercentInBoundsConditionalCheck";
    }

    @Override // x9.b
    public final boolean d() {
        return this.f18088d;
    }

    @Override // x9.b
    public final qd.l<r, o> e() {
        return this.f18086b;
    }
}
