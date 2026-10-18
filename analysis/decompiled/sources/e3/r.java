package e3;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.Set;
import java.util.WeakHashMap;

/* JADX INFO: compiled from: TargetTracker.java */
/* JADX INFO: loaded from: classes.dex */
public final class r implements i {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final Set<i3.i<?>> f6357h = Collections.newSetFromMap(new WeakHashMap());

    @Override // e3.i
    public final void g() {
        Iterator it = ((ArrayList) l3.l.e(this.f6357h)).iterator();
        while (it.hasNext()) {
            ((i3.i) it.next()).g();
        }
    }

    @Override // e3.i
    public final void h() {
        Iterator it = ((ArrayList) l3.l.e(this.f6357h)).iterator();
        while (it.hasNext()) {
            ((i3.i) it.next()).h();
        }
    }

    @Override // e3.i
    public final void k() {
        Iterator it = ((ArrayList) l3.l.e(this.f6357h)).iterator();
        while (it.hasNext()) {
            ((i3.i) it.next()).k();
        }
    }
}
