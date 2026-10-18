package ic;

import hc.g0;
import hc.l0;

/* JADX INFO: compiled from: ConnectionManager.kt */
/* JADX INFO: loaded from: classes.dex */
public final class j implements nc.c<Boolean, Long> {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ l0 f9038h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final /* synthetic */ String f9039i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final /* synthetic */ String f9040j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final /* synthetic */ String f9041k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final /* synthetic */ p f9042l;

    /* JADX INFO: compiled from: ConnectionManager.kt */
    public static final class a implements nc.a<mc.c> {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public final /* synthetic */ String f9043h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public final /* synthetic */ String f9044i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public final /* synthetic */ String f9045j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public final /* synthetic */ p f9046k;

        public a(String str, String str2, String str3, p pVar) {
            this.f9043h = str;
            this.f9044i = str2;
            this.f9045j = str3;
            this.f9046k = pVar;
        }

        public final void a() throws InterruptedException {
            Thread.sleep(20L);
            g gVar = g.f9016b;
            String str = this.f9044i;
            String str2 = this.f9045j;
            p4.h.i(str2, "address");
            gVar.l(new b(str, str2, this.f9043h, g7.b.e(this.f9046k.f9066d)));
            gVar.h();
        }

        @Override // lc.b
        public final void j(Object obj) throws InterruptedException {
            mc.c cVar = (mc.c) obj;
            p4.h.j(cVar, "response");
            g0 g0VarQ = androidx.lifecycle.o.q();
            StringBuilder sbC = a0.b.c("HealthCheck[firmwareVersion: ");
            sbC.append(this.f9043h);
            sbC.append(" Battery[percent: ");
            sbC.append(cVar.f10977h);
            sbC.append(" state: ");
            sbC.append(ca.a.a(cVar.f10978i));
            sbC.append("]]");
            g0.a.a(g0VarQ, sbC.toString(), null, true, null, 10, null);
            a();
        }

        @Override // lc.b
        public final void k(Throwable th) throws InterruptedException {
            p4.h.j(th, "throwable");
            g0 g0VarQ = androidx.lifecycle.o.q();
            StringBuilder sbC = a0.b.c("HealthCheckError[message: ");
            sbC.append(th.getMessage());
            sbC.append("]]");
            g0.a.a(g0VarQ, sbC.toString(), null, true, null, 10, null);
            a();
        }
    }

    public j(l0 l0Var, String str, String str2, String str3, p pVar) {
        this.f9038h = l0Var;
        this.f9039i = str;
        this.f9040j = str2;
        this.f9041k = str3;
        this.f9042l = pVar;
    }

    public final void a() {
        Thread.sleep(20L);
        this.f9038h.w(new a(this.f9039i, this.f9040j, this.f9041k, this.f9042l));
    }

    @Override // nc.c
    public final Long getValue() {
        return Long.valueOf(System.currentTimeMillis());
    }

    @Override // lc.b
    public final void j(Object obj) {
        ((Boolean) obj).booleanValue();
        a();
    }

    @Override // lc.b
    public final void k(Throwable th) {
        p4.h.j(th, "throwable");
        a();
    }
}
