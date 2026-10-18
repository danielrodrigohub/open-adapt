package x;

/* JADX INFO: compiled from: ActivityRecreator.java */
/* JADX INFO: loaded from: classes.dex */
public final class c implements Runnable {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ f.a f17612h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final /* synthetic */ Object f17613i;

    public c(f.a aVar, Object obj) {
        this.f17612h = aVar;
        this.f17613i = obj;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f17612h.f17625h = this.f17613i;
    }
}
