package ra;

import rd.o;

/* JADX INFO: compiled from: AdaptKitExecutor.kt */
/* JADX INFO: loaded from: classes.dex */
public final class b extends o implements qd.a<fd.o> {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ ta.a f14742h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final /* synthetic */ String f14743i;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public b(ta.a aVar, String str) {
        super(0);
        this.f14742h = aVar;
        this.f14743i = str;
    }

    @Override // qd.a
    public final fd.o invoke() {
        try {
            this.f14742h.a(((oa.b) ((fd.d) c.f14744c.f6315b).getValue()).a().b(this.f14743i));
        } catch (Throwable th) {
            this.f14742h.b(th);
        }
        return fd.o.f7408a;
    }
}
