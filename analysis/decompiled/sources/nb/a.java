package nb;

import rd.o;

/* JADX INFO: compiled from: TelemetryExecutors.kt */
/* JADX INFO: loaded from: classes.dex */
public final class a extends o implements qd.a<fd.o> {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ Runnable f12033h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public a(Runnable runnable) {
        super(0);
        this.f12033h = runnable;
    }

    @Override // qd.a
    public final fd.o invoke() {
        this.f12033h.run();
        return fd.o.f7408a;
    }
}
