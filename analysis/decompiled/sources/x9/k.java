package x9;

import fd.o;
import java.util.Iterator;
import java.util.Objects;
import v9.z;
import w9.u1;

/* JADX INFO: compiled from: PairExistsConditionalCheck.kt */
/* JADX INFO: loaded from: classes.dex */
public final class k extends b<z> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ab.a f18100a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ea.m f18101b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final qd.l<ea.m, o> f18102c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final qd.l<z, o> f18103d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public w9.a f18104e;

    /* JADX WARN: Multi-variable type inference failed */
    public k(ab.a aVar, ea.m mVar, qd.l<? super ea.m, o> lVar, qd.l<? super z, o> lVar2) {
        p4.h.j(aVar, "devicesRepository");
        p4.h.j(mVar, "adaptKitPairedDevices");
        p4.h.j(lVar2, "publishConditionError");
        this.f18100a = aVar;
        this.f18101b = mVar;
        this.f18102c = lVar;
        this.f18103d = lVar2;
        v9.a.C0295a c0295a = v9.a.f16441i;
        this.f18104e = new w9.a(v9.a.f16442j, u1.BOTH);
    }

    @Override // x9.b
    public final w9.a a() {
        return this.f18104e;
    }

    @Override // x9.b
    public final v9.m b() {
        return new z(this.f18104e.f17253h, this.f18101b.f6664h);
    }

    @Override // x9.b
    public final String c() {
        return "PairExistsConditionalCheck";
    }

    @Override // x9.b
    public final boolean d() {
        o oVar;
        Object next;
        ea.m mVar;
        ea.m mVar2;
        Iterator<T> it = this.f18100a.c().iterator();
        do {
            oVar = null;
            if (!it.hasNext()) {
                next = null;
                break;
            }
            next = it.next();
            mVar = (ea.m) next;
            mVar2 = this.f18101b;
            Objects.requireNonNull(mVar);
            p4.h.j(mVar2, "other");
        } while (!(mVar == mVar2 || (p4.h.c(mVar.f6664h, mVar2.f6664h) && mVar.f6667k.d(mVar2.f6667k) && mVar.f6668l.d(mVar2.f6668l))));
        ea.m mVar3 = (ea.m) next;
        if (mVar3 != null) {
            this.f18102c.invoke(mVar3);
            oVar = o.f7408a;
        }
        return oVar == null;
    }

    @Override // x9.b
    public final qd.l<z, o> e() {
        return this.f18103d;
    }
}
