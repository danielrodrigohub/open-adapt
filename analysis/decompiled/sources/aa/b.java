package aa;

import fd.o;
import qd.l;

/* JADX INFO: compiled from: Post.kt */
/* JADX INFO: loaded from: classes.dex */
public final class b implements Runnable {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ l<Object, o> f550h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final /* synthetic */ Object f551i;

    public b(l<Object, o> lVar, Object obj) {
        this.f550h = lVar;
        this.f551i = obj;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f550h.invoke(this.f551i);
    }
}
