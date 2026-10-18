package ic;

import hc.g0;
import hc.l0;
import java.util.Objects;
import java.util.concurrent.TimeoutException;
import mc.h0;

/* JADX INFO: compiled from: ConnectionManager.kt */
/* JADX INFO: loaded from: classes.dex */
public final class l implements nc.c<mc.h, byte[]> {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ String f9051h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final /* synthetic */ p f9052i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final /* synthetic */ boolean f9053j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final /* synthetic */ l0 f9054k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final /* synthetic */ String f9055l;

    public l(String str, p pVar, boolean z10, l0 l0Var, String str2) {
        this.f9051h = str;
        this.f9052i = pVar;
        this.f9053j = z10;
        this.f9054k = l0Var;
        this.f9055l = str2;
    }

    @Override // nc.c
    public final byte[] getValue() {
        g0 g0VarQ = androidx.lifecycle.o.q();
        StringBuilder sbC = a0.b.c("subscribeAndAuthenticate::UpdateDeviceNotifications: ");
        sbC.append(this.f9051h);
        sbC.append('\t');
        sbC.append(System.identityHashCode(this));
        sbC.append(" Requesting Authentication Key for ");
        sbC.append(this.f9051h);
        sbC.append(", ");
        sbC.append(g7.b.e(this.f9052i.f9066d));
        g0.a.a(g0VarQ, sbC.toString(), null, false, null, 14, null);
        return this.f9052i.f9066d;
    }

    @Override // lc.b
    public final void j(Object obj) throws InterruptedException {
        mc.h hVar = (mc.h) obj;
        p4.h.j(hVar, "response");
        g0 g0VarQ = androidx.lifecycle.o.q();
        StringBuilder sbC = a0.b.c("subscribeAndAuthenticate::UpdateDeviceNotifications: ");
        sbC.append(this.f9051h);
        sbC.append('\t');
        sbC.append(System.identityHashCode(this));
        sbC.append(" Authenticate response: ");
        sbC.append(hVar);
        g0.a.a(g0VarQ, sbC.toString(), null, false, "ConnectionManager", 6, null);
        if (!(hVar instanceof h0)) {
            g gVar = g.f9016b;
            gVar.l(new c(this.f9051h));
            gVar.h();
            return;
        }
        if (this.f9053j) {
            p pVar = this.f9052i;
            byte[] bArr = ((h0) hVar).f11030a;
            Objects.requireNonNull(pVar);
            p4.h.j(bArr, "<set-?>");
            pVar.f9066d = bArr;
        }
        g.f9016b.l(new u(this.f9051h));
        Thread.sleep(20L);
        l0 l0Var = this.f9054k;
        l0Var.e(new k(l0Var, this.f9051h, this.f9055l, this.f9052i));
    }

    @Override // lc.b
    public final void k(Throwable th) {
        p4.h.j(th, "throwable");
        g0 g0VarQ = androidx.lifecycle.o.q();
        StringBuilder sbC = a0.b.c("subscribeAndAuthenticate::UpdateDeviceNotifications: ");
        sbC.append(this.f9051h);
        sbC.append('\t');
        sbC.append(System.identityHashCode(this));
        sbC.append(" error: ");
        sbC.append(th.getMessage());
        g0.a.b(g0VarQ, sbC.toString(), th, false, null, 12, null);
        if (th.getCause() instanceof TimeoutException) {
            g.f9016b.l(new r(this.f9051h));
        } else {
            g.f9016b.l(new c(this.f9051h));
        }
        g.f9016b.h();
    }
}
