package hc;

import java.util.TimerTask;

/* JADX INFO: compiled from: FileTransfer.java */
/* JADX INFO: loaded from: classes.dex */
public final class j0 extends TimerTask {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ k0 f8519h;

    public j0(k0 k0Var) {
        this.f8519h = k0Var;
    }

    @Override // java.util.TimerTask, java.lang.Runnable
    public final void run() {
        k0 k0Var = this.f8519h;
        int i10 = k0Var.f8536p;
        int i11 = k0.F;
        if (i10 * k0.F != k0Var.f8537q) {
            androidx.lifecycle.o.q().a(String.format("timeout receiving file at segment %d", Integer.valueOf(this.f8519h.f8536p)), null, false, "FileTransfer");
            this.f8519h.h(gc.g.b.TIMEOUT);
        }
    }
}
