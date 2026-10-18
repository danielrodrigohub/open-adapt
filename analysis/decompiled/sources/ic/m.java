package ic;

import hc.g0;
import hc.l0;
import java.util.concurrent.atomic.AtomicBoolean;
import mc.j0;

/* JADX INFO: compiled from: ConnectionManager.kt */
/* JADX INFO: loaded from: classes.dex */
public final class m implements nc.a<j0> {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final AtomicBoolean f9056h = new AtomicBoolean(false);

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final /* synthetic */ String f9057i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final /* synthetic */ boolean f9058j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final /* synthetic */ l0 f9059k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final /* synthetic */ p f9060l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final /* synthetic */ String f9061m;

    public m(String str, boolean z10, l0 l0Var, p pVar, String str2) {
        this.f9057i = str;
        this.f9058j = z10;
        this.f9059k = l0Var;
        this.f9060l = pVar;
        this.f9061m = str2;
    }

    @Override // lc.b
    public final void j(Object obj) throws InterruptedException {
        j0 j0Var = (j0) obj;
        p4.h.j(j0Var, "response");
        g0 g0VarQ = androidx.lifecycle.o.q();
        StringBuilder sbC = a0.b.c("subscribeAndAuthenticate::UpdateDeviceNotifications: ");
        sbC.append(this.f9057i);
        sbC.append('\t');
        sbC.append(System.identityHashCode(this));
        sbC.append(" response: ");
        sbC.append(j0Var);
        g0.a.a(g0VarQ, sbC.toString(), null, false, null, 14, null);
        int iOrdinal = j0Var.ordinal();
        if (iOrdinal == 0) {
            this.f9056h.set(true);
            g.f9016b.l(new x(this.f9057i));
        } else if (iOrdinal == 5) {
            g.f9016b.l(new r(this.f9057i));
        } else if (iOrdinal == 6) {
            g.f9016b.l(new a(this.f9057i));
        }
        int iOrdinal2 = j0Var.ordinal();
        if (iOrdinal2 != 0) {
            if (iOrdinal2 != 2) {
                g.f9016b.h();
                return;
            }
            if (j0Var == j0.BONDED_AND_READY) {
                if (this.f9056h.get()) {
                    if (this.f9058j) {
                        g.f9016b.l(new d(this.f9057i));
                    } else {
                        g.f9016b.l(new e(this.f9057i));
                    }
                }
                Thread.sleep(20L);
                l0 l0Var = this.f9059k;
                l0Var.I(new l(this.f9057i, this.f9060l, this.f9058j, l0Var, this.f9061m));
            }
        }
    }

    @Override // lc.b
    public final void k(Throwable th) {
        p4.h.j(th, "throwable");
        g0.a.b(androidx.lifecycle.o.q(), String.valueOf(th.getMessage()), th, false, null, 12, null);
        g gVar = g.f9016b;
        gVar.l(new r(this.f9057i));
        gVar.h();
    }
}
