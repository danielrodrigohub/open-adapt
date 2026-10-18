package x9;

import fd.o;
import v9.k;
import v9.p;
import v9.t2;
import w9.u1;

/* JADX INFO: compiled from: FirmwareConditionalCheck.kt */
/* JADX INFO: loaded from: classes.dex */
public final class f<T extends v9.k & t2> extends b<p> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final w9.a f18076a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final fb.c f18077b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final fb.c f18078c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final ea.m f18079d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final fb.c f18080e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final T f18081f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public boolean f18082g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public boolean f18083h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final qd.l<p, o> f18084i;

    public f(w9.a aVar, fb.c cVar, fb.c cVar2, ea.m mVar, fb.c cVar3, T t10) {
        p4.h.j(aVar, "adaptKitIdentifierShoe");
        p4.h.j(cVar, "leftFirmwareVersion");
        p4.h.j(cVar2, "rightFirmwareVersion");
        p4.h.j(mVar, "adaptKitPairedDevices");
        p4.h.j(cVar3, "requiredFirmwareVersion");
        p4.h.j(t10, "adaptKitDeviceRequest");
        this.f18076a = aVar;
        this.f18077b = cVar;
        this.f18078c = cVar2;
        this.f18079d = mVar;
        this.f18080e = cVar3;
        this.f18081f = t10;
        this.f18084i = t10.a();
    }

    @Override // x9.b
    public final w9.a a() {
        return this.f18076a;
    }

    @Override // x9.b
    public final v9.m b() {
        String strValueOf = this.f18082g ? this.f18079d.f6667k.f6612j : null;
        String str = this.f18083h ? this.f18079d.f6668l.f6612j : null;
        if (strValueOf != null && str != null) {
            strValueOf = a0.d.c(strValueOf, ":", str);
        } else if (strValueOf == null) {
            strValueOf = String.valueOf(str);
        }
        return new p(this.f18076a, strValueOf, ((fb.c) hd.b.c(this.f18077b, this.f18078c)).f7257h, this.f18080e.f7257h);
    }

    @Override // x9.b
    public final String c() {
        return "FirmwareConditionalCheck";
    }

    @Override // x9.b
    public final boolean d() {
        boolean z10;
        u1 u1Var = this.f18076a.f17254i;
        u1 u1Var2 = u1.BOTH;
        if (!androidx.appcompat.widget.p.g(u1Var, u1Var2, u1.LEFT) || this.f18077b.compareTo(this.f18080e) >= 0) {
            z10 = false;
        } else {
            this.f18081f.a().invoke(new p(this.f18076a, this.f18079d.f6667k.f6612j, this.f18077b.f7257h, this.f18080e.f7257h));
            this.f18082g = true;
            z10 = true;
        }
        if (!androidx.appcompat.widget.p.g(this.f18076a.f17254i, u1Var2, u1.RIGHT) || this.f18078c.compareTo(this.f18080e) >= 0) {
            return z10;
        }
        this.f18081f.a().invoke(new p(this.f18076a, this.f18079d.f6668l.f6612j, this.f18078c.f7257h, this.f18080e.f7257h));
        this.f18083h = true;
        return true;
    }

    @Override // x9.b
    public final qd.l<p, o> e() {
        return this.f18084i;
    }
}
