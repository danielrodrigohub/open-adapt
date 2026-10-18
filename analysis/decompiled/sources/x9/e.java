package x9;

import fd.o;

/* JADX INFO: compiled from: DisconnectedConditionalCheck.kt */
/* JADX INFO: loaded from: classes.dex */
public final class e extends d<v9.h> {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final w9.a f18074e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final qd.l<v9.h, o> f18075f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public e(w9.a aVar, da.d dVar, da.d dVar2, ea.m mVar, qd.l<? super v9.h, o> lVar) {
        super(dVar, dVar2, mVar);
        p4.h.j(aVar, "adaptKitIdentifierShoe");
        p4.h.j(dVar, "leftConnectionState");
        p4.h.j(dVar2, "rightConnectionState");
        p4.h.j(mVar, "adaptKitPairedDevices");
        p4.h.j(lVar, "publishConditionError");
        this.f18074e = aVar;
        this.f18075f = lVar;
    }

    @Override // x9.b
    public final w9.a a() {
        return this.f18074e;
    }

    @Override // x9.b
    public final v9.m b() {
        return new v9.h(this.f18074e, this.f18073d);
    }

    @Override // x9.b
    public final String c() {
        return "DisconnectedConditionalCheck";
    }

    @Override // x9.b
    public final qd.l<v9.h, o> e() {
        return this.f18075f;
    }

    @Override // x9.d
    public final boolean g() {
        return false;
    }
}
