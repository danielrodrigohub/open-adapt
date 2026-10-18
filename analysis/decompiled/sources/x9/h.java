package x9;

import fd.o;
import java.util.Iterator;
import v9.y;

/* JADX INFO: compiled from: ModeDoesNotExistConditionalCheck.kt */
/* JADX INFO: loaded from: classes.dex */
public final class h extends b<y> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final w9.a f18089a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final qd.l<y, o> f18090b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final y f18091c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final boolean f18092d;

    /* JADX WARN: Multi-variable type inference failed */
    public h(w9.a aVar, ea.e eVar, ea.m mVar, qd.l<? super y, o> lVar) {
        Object next;
        p4.h.j(eVar, "adaptKitDeviceMode");
        p4.h.j(mVar, "adaptKitPairedDevices");
        p4.h.j(lVar, "publishConditionError");
        this.f18089a = aVar;
        this.f18090b = lVar;
        this.f18091c = new y(aVar.f17253h, a0.d.c("The mode with ", eVar.f6627h, " already exists"));
        Iterator<T> it = mVar.f6671o.iterator();
        do {
            if (!it.hasNext()) {
                next = null;
                break;
            }
            next = it.next();
        } while (!p4.h.c(((ea.e) next).f6627h, eVar.f6627h));
        this.f18092d = next == null;
    }

    @Override // x9.b
    public final w9.a a() {
        return this.f18089a;
    }

    @Override // x9.b
    public final v9.m b() {
        return this.f18091c;
    }

    @Override // x9.b
    public final String c() {
        return "ModeDoesNotExistConditionalCheck";
    }

    @Override // x9.b
    public final boolean d() {
        return this.f18092d;
    }

    @Override // x9.b
    public final qd.l<y, o> e() {
        return this.f18090b;
    }
}
