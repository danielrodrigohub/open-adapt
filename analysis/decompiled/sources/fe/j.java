package fe;

/* JADX INFO: compiled from: PendingPostQueue.java */
/* JADX INFO: loaded from: classes2.dex */
public final class j {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public i f7459a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public i f7460b;

    public final synchronized void a(i iVar) {
        i iVar2 = this.f7460b;
        if (iVar2 != null) {
            iVar2.f7458c = iVar;
            this.f7460b = iVar;
        } else {
            if (this.f7459a != null) {
                throw new IllegalStateException("Head present, but no tail");
            }
            this.f7460b = iVar;
            this.f7459a = iVar;
        }
        notifyAll();
    }

    public final synchronized i b() {
        i iVar;
        iVar = this.f7459a;
        if (iVar != null) {
            i iVar2 = iVar.f7458c;
            this.f7459a = iVar2;
            if (iVar2 == null) {
                this.f7460b = null;
            }
        }
        return iVar;
    }
}
