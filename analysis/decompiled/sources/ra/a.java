package ra;

import rd.o;

/* JADX INFO: compiled from: AdaptKitExecutor.kt */
/* JADX INFO: loaded from: classes.dex */
public final class a extends o implements qd.a<fd.o> {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ ta.a f14740h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final /* synthetic */ fb.c f14741i;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public a(ta.a aVar, fb.c cVar) {
        super(0);
        this.f14740h = aVar;
        this.f14741i = cVar;
    }

    @Override // qd.a
    public final fd.o invoke() {
        try {
            this.f14740h.a(((oa.b) ((fd.d) c.f14744c.f6315b).getValue()).a().a(this.f14741i));
        } catch (Throwable th) {
            this.f14740h.b(th);
        }
        return fd.o.f7408a;
    }
}
