package e3;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.Set;
import java.util.WeakHashMap;

/* JADX INFO: compiled from: ActivityFragmentLifecycle.java */
/* JADX INFO: loaded from: classes.dex */
public final class a implements h {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final Set<i> f6316h = Collections.newSetFromMap(new WeakHashMap());

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public boolean f6317i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public boolean f6318j;

    public final void a() {
        this.f6318j = true;
        Iterator it = ((ArrayList) l3.l.e(this.f6316h)).iterator();
        while (it.hasNext()) {
            ((i) it.next()).k();
        }
    }

    @Override // e3.h
    public final void b(i iVar) {
        this.f6316h.add(iVar);
        if (this.f6318j) {
            iVar.k();
        } else if (this.f6317i) {
            iVar.g();
        } else {
            iVar.h();
        }
    }

    @Override // e3.h
    public final void c(i iVar) {
        this.f6316h.remove(iVar);
    }

    public final void d() {
        this.f6317i = true;
        Iterator it = ((ArrayList) l3.l.e(this.f6316h)).iterator();
        while (it.hasNext()) {
            ((i) it.next()).g();
        }
    }

    public final void e() {
        this.f6317i = false;
        Iterator it = ((ArrayList) l3.l.e(this.f6316h)).iterator();
        while (it.hasNext()) {
            ((i) it.next()).h();
        }
    }
}
