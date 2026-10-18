package x9;

import fd.o;
import java.util.Iterator;
import v9.y;

/* JADX INFO: compiled from: ModeExistsConditionalCheck.kt */
/* JADX INFO: loaded from: classes.dex */
public final class i extends b<y> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final w9.a f18093a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final qd.l<y, o> f18094b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final y f18095c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final boolean f18096d;

    /* JADX WARN: Multi-variable type inference failed */
    public i(w9.a aVar, ea.e eVar, ea.m mVar, qd.l<? super y, o> lVar) {
        Object next;
        p4.h.j(eVar, "adaptKitDeviceMode");
        p4.h.j(mVar, "adaptKitPairedDevices");
        p4.h.j(lVar, "publishConditionError");
        this.f18093a = aVar;
        this.f18094b = lVar;
        this.f18095c = new y(aVar.f17253h, a0.d.c("The mode with ", eVar.f6627h, " already exists"));
        Iterator<T> it = mVar.f6671o.iterator();
        do {
            if (!it.hasNext()) {
                next = null;
                break;
            }
            next = it.next();
        } while (!p4.h.c(((ea.e) next).f6627h, eVar.f6627h));
        this.f18096d = next != null;
    }

    @Override // x9.b
    public final w9.a a() {
        return this.f18093a;
    }

    @Override // x9.b
    public final v9.m b() {
        return this.f18095c;
    }

    @Override // x9.b
    public final String c() {
        return "ModeExistsConditionalCheck";
    }

    @Override // x9.b
    public final boolean d() {
        return this.f18096d;
    }

    @Override // x9.b
    public final qd.l<y, o> e() {
        return this.f18094b;
    }
}
