package fe;

/* JADX INFO: compiled from: NoSubscriberEvent.java */
/* JADX INFO: loaded from: classes2.dex */
public final class h {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f7452a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Object f7453b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Object f7454c;

    public /* synthetic */ h(Object obj, Object obj2, int i10) {
        this.f7452a = i10;
        this.f7453b = obj;
        this.f7454c = obj2;
    }

    public final String toString() {
        switch (this.f7452a) {
            case 1:
                return ((String) this.f7453b) + ", " + ((String) this.f7454c);
            default:
                return super.toString();
        }
    }
}
