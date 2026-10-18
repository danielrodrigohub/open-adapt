package x9;

import fd.o;
import v9.r;

/* JADX INFO: compiled from: PresetPercentInBoundsConditionalCheck.kt */
/* JADX INFO: loaded from: classes.dex */
public final class m extends b<r> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final w9.a f18111a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final qd.l<r, o> f18112b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final r f18113c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final boolean f18114d;

    /* JADX WARN: Multi-variable type inference failed */
    public m(w9.a aVar, ea.h.a aVar2, qd.l<? super r, o> lVar) {
        p4.h.j(aVar2, "absolute");
        p4.h.j(lVar, "publishConditionError");
        this.f18111a = aVar;
        this.f18112b = lVar;
        this.f18113c = new r(aVar.f17253h, "For shoe " + aVar.f17254i + " The Set Preset command attempted to set an absolute percent of " + aVar2.f6646j + ". This is not within the bounds of 1-100");
        int i10 = aVar2.f6646j;
        boolean z10 = true;
        if (i10 >= 1 && i10 <= 100) {
            z10 = false;
        }
        this.f18114d = z10;
    }

    @Override // x9.b
    public final w9.a a() {
        return this.f18111a;
    }

    @Override // x9.b
    public final v9.m b() {
        return this.f18113c;
    }

    @Override // x9.b
    public final String c() {
        return "PresetPercentInBoundsConditionalCheck";
    }

    @Override // x9.b
    public final boolean d() {
        return this.f18114d;
    }

    @Override // x9.b
    public final qd.l<r, o> e() {
        return this.f18112b;
    }
}
