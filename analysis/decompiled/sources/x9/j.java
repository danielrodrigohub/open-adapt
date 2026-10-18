package x9;

import fd.o;
import v9.r;

/* JADX INFO: compiled from: ModeNameIsValidConditionalCheck.kt */
/* JADX INFO: loaded from: classes.dex */
public final class j extends b<r> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final w9.a f18097a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f18098b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final qd.l<r, o> f18099c;

    /* JADX WARN: Multi-variable type inference failed */
    public j(w9.a aVar, String str, qd.l<? super r, o> lVar) {
        p4.h.j(str, "modeName");
        p4.h.j(lVar, "publishConditionError");
        this.f18097a = aVar;
        this.f18098b = str;
        this.f18099c = lVar;
    }

    @Override // x9.b
    public final w9.a a() {
        return this.f18097a;
    }

    @Override // x9.b
    public final v9.m b() {
        return new r(this.f18097a.f17253h, "Mode name must not be empty.");
    }

    @Override // x9.b
    public final String c() {
        return "ModeNameIsValidConditionalCheck";
    }

    @Override // x9.b
    public final boolean d() {
        return yd.o.b0(this.f18098b);
    }

    @Override // x9.b
    public final qd.l<r, o> e() {
        return this.f18099c;
    }
}
