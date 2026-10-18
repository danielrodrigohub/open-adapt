package hc;

/* JADX INFO: compiled from: CoreRFBigfoot.kt */
/* JADX INFO: loaded from: classes.dex */
public final class p implements nc.d<Boolean, byte[], fd.o> {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ nc.d<Boolean, byte[], fd.o> f8608h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final /* synthetic */ l f8609i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final /* synthetic */ boolean f8610j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final /* synthetic */ qd.p<Float, Float, fd.o> f8611k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final /* synthetic */ qd.a<fd.o> f8612l;

    /* JADX WARN: Multi-variable type inference failed */
    public p(nc.d<Boolean, byte[], fd.o> dVar, l lVar, boolean z10, qd.p<? super Float, ? super Float, fd.o> pVar, qd.a<fd.o> aVar) {
        this.f8608h = dVar;
        this.f8609i = lVar;
        this.f8610j = z10;
        this.f8611k = pVar;
        this.f8612l = aVar;
    }

    @Override // lc.a
    public final void b(Object obj) {
        k0 k0Var = this.f8609i.f8554o;
        if (k0Var != null) {
            k0Var.e();
        }
        this.f8609i.f8554o = null;
        this.f8612l.invoke();
        if (this.f8610j) {
            g0 g0VarQ = androidx.lifecycle.o.q();
            StringBuilder sbC = a0.b.c(" TRANSFER_GOLD_SLOT_COMPLETE deviceId: ");
            sbC.append(this.f8609i.f8547h);
            g0VarQ.c(sbC.toString(), null, true, "CORE_RF");
        }
    }

    @Override // lc.a
    public final void g() {
        this.f8608h.g();
        g0 g0VarQ = androidx.lifecycle.o.q();
        StringBuilder sbC = a0.b.c(" Firmware  Transfer started:");
        sbC.append(this.f8609i.f8547h);
        g0VarQ.c(sbC.toString(), null, true, "TRANSFER_FIRMWARE");
    }

    @Override // nc.c
    public final Object getValue() {
        return this.f8608h.getValue();
    }

    @Override // lc.a
    public final void i(float f10, float f11) {
        this.f8611k.invoke(Float.valueOf(f10), Float.valueOf(f11));
    }

    @Override // lc.b
    public final void j(Object obj) {
        this.f8608h.j(Boolean.valueOf(((Boolean) obj).booleanValue()));
    }

    @Override // lc.b
    public final void k(Throwable th) {
        p4.h.j(th, "throwable");
        k0 k0Var = this.f8609i.f8554o;
        if (k0Var != null) {
            k0Var.e();
        }
        this.f8609i.f8554o = null;
        this.f8608h.k(th);
        g0 g0VarQ = androidx.lifecycle.o.q();
        StringBuilder sbC = a0.b.c(" Firmware  Transfer error:");
        sbC.append(this.f8609i.f8547h);
        g0VarQ.c(sbC.toString(), th, true, "TRANSFER_FIRMWARE");
        if (this.f8610j) {
            g0 g0VarQ2 = androidx.lifecycle.o.q();
            StringBuilder sbC2 = a0.b.c(" TRANSFER_GOLD_SLOT_ERROR deviceId: ");
            sbC2.append(this.f8609i.f8547h);
            g0VarQ2.c(sbC2.toString(), null, true, "CORE_RF");
        }
    }
}
