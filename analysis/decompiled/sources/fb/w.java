package fb;

import java.util.concurrent.CompletableFuture;
import v9.u6;

/* JADX INFO: compiled from: SessionDownload.kt */
/* JADX INFO: loaded from: classes.dex */
public final class w implements nc.b<Boolean, byte[]> {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ s f7327h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final /* synthetic */ la.c f7328i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final /* synthetic */ mc.b0 f7329j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final /* synthetic */ s.a f7330k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final /* synthetic */ CompletableFuture<fd.o> f7331l;

    public w(s sVar, la.c cVar, mc.b0 b0Var, s.a aVar, CompletableFuture<fd.o> completableFuture) {
        this.f7327h = sVar;
        this.f7328i = cVar;
        this.f7329j = b0Var;
        this.f7330k = aVar;
        this.f7331l = completableFuture;
    }

    public final void a() {
        this.f7331l.complete(fd.o.f7408a);
    }

    @Override // lc.a
    public final void b(Object obj) {
        byte[] bArr = (byte[]) obj;
        try {
            s sVar = this.f7327h;
            if (sVar.f7309k) {
                int length = (int) (((sVar.g().length + bArr.length) / this.f7329j.f10974c) * 100);
                s.a(this.f7327h, bArr);
                byte[] bArrG = this.f7327h.g();
                la.c cVarA = la.c.a(this.f7328i, bArrG.length, 47);
                if (length < 100 || !s.c(this.f7327h, this.f7329j)) {
                    this.f7327h.f7308j.c(cVarA);
                } else {
                    s sVar2 = this.f7327h;
                    sVar2.f7309k = false;
                    sVar2.f7308j.c(cVarA);
                    this.f7327h.f7308j.b(new fd.e<>(this.f7329j, bArrG));
                }
            }
        } catch (Throwable th) {
            try {
                if (th instanceof InterruptedException) {
                    this.f7327h.f7308j.c(la.c.a(this.f7328i, this.f7327h.g().length, 47));
                } else {
                    this.f7327h.f7308j.d(th);
                }
            } finally {
                this.f7330k.j(fd.o.f7408a);
                a();
            }
        }
    }

    @Override // lc.a
    public final void g() {
        this.f7327h.f7308j.c(this.f7328i);
    }

    @Override // lc.a
    public final void i(float f10, float f11) {
    }

    @Override // lc.b
    public final void j(Object obj) {
        ((Boolean) obj).booleanValue();
        y yVar = this.f7327h.f7308j;
        s sVar = this.f7327h;
        String str = sVar.f7300b;
        v9.a.C0295a c0295a = v9.a.f16441i;
        yVar.d(new u6(str, v9.a.f16442j, sVar.f7301c, "Un expected response called. This should not be invoked. CRITICAL FAILURE"));
        this.f7330k.j(fd.o.f7408a);
        a();
    }

    @Override // lc.b
    public final void k(Throwable th) {
        p4.h.j(th, "throwable");
        this.f7330k.k(th);
        this.f7327h.f7308j.d(th);
        a();
    }
}
