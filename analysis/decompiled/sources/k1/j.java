package k1;

import java.util.concurrent.CancellationException;

/* JADX INFO: compiled from: ListenableFuture.kt */
/* JADX INFO: loaded from: classes.dex */
public final class j extends rd.o implements qd.l<Throwable, fd.o> {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ k<Object> f9594h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public j(k<Object> kVar) {
        super(1);
        this.f9594h = kVar;
    }

    @Override // qd.l
    public final fd.o invoke(Throwable th) {
        Throwable th2 = th;
        if (th2 == null) {
            if (!this.f9594h.f9596i.isDone()) {
                throw new IllegalArgumentException("Failed requirement.".toString());
            }
        } else if (th2 instanceof CancellationException) {
            this.f9594h.f9596i.cancel(true);
        } else {
            v1.c<Object> cVar = this.f9594h.f9596i;
            Throwable cause = th2.getCause();
            if (cause != null) {
                th2 = cause;
            }
            cVar.k(th2);
        }
        return fd.o.f7408a;
    }
}
