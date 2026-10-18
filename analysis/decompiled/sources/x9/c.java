package x9;

import fd.o;

/* JADX INFO: compiled from: ConnectedConditionalCheck.kt */
/* JADX INFO: loaded from: classes.dex */
public final class c extends d<v9.j> {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final w9.a f18067e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final qd.l<v9.j, o> f18068f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final boolean f18069g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public c(w9.a aVar, da.d dVar, da.d dVar2, ea.m mVar, qd.l<? super v9.j, o> lVar) {
        super(dVar, dVar2, mVar);
        p4.h.j(aVar, "adaptKitIdentifierShoe");
        p4.h.j(dVar, "leftConnectionState");
        p4.h.j(dVar2, "rightConnectionState");
        p4.h.j(mVar, "adaptKitPairedDevices");
        p4.h.j(lVar, "publishConditionError");
        this.f18067e = aVar;
        this.f18068f = lVar;
        this.f18069g = true;
    }

    @Override // x9.b
    public final w9.a a() {
        return this.f18067e;
    }

    @Override // x9.b
    public final v9.m b() {
        return new v9.j(this.f18067e, this.f18073d);
    }

    @Override // x9.b
    public final String c() {
        return "ConnectedConditionalCheck";
    }

    @Override // x9.b
    public final qd.l<v9.j, o> e() {
        return this.f18068f;
    }

    @Override // x9.d
    public final boolean g() {
        return this.f18069g;
    }
}
