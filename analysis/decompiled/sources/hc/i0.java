package hc;

/* JADX INFO: compiled from: FileTransfer.java */
/* JADX INFO: loaded from: classes.dex */
public final class i0 implements Runnable {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ int f8513h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final /* synthetic */ k0 f8514i;

    public i0(k0 k0Var, int i10) {
        this.f8514i = k0Var;
        this.f8513h = i10;
    }

    @Override // java.lang.Runnable
    public final void run() {
        gc.f.a aVarA = gc.f.A();
        aVarA.m(this.f8513h);
        gc.f fVarH = aVarA.h();
        d dVar = d.FIRMWARE_RETRANSMIT_SEGMENT;
        try {
            this.f8514i.f8532l.i(new m0((byte) 16, m0.a.EVENT, fVarH.m()));
        } catch (kc.f e10) {
            this.f8514i.e();
            this.f8514i.g(e10);
        }
    }
}
