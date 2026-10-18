package e3;

import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;
import java.util.WeakHashMap;

/* JADX INFO: compiled from: RequestTracker.java */
/* JADX INFO: loaded from: classes.dex */
public final class n {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Set<h3.d> f6335a = Collections.newSetFromMap(new WeakHashMap());

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Set<h3.d> f6336b = new HashSet();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public boolean f6337c;

    /* JADX WARN: Type inference failed for: r2v0, types: [java.util.HashSet, java.util.Set<h3.d>] */
    public final boolean a(h3.d dVar) {
        boolean z10 = true;
        if (dVar == null) {
            return true;
        }
        boolean zRemove = this.f6335a.remove(dVar);
        if (!this.f6336b.remove(dVar) && !zRemove) {
            z10 = false;
        }
        if (z10) {
            dVar.clear();
        }
        return z10;
    }

    /* JADX WARN: Type inference failed for: r2v3, types: [java.util.HashSet, java.util.Set<h3.d>] */
    public final void b() {
        for (h3.d dVar : (ArrayList) l3.l.e(this.f6335a)) {
            if (!dVar.i() && !dVar.e()) {
                dVar.clear();
                if (this.f6337c) {
                    this.f6336b.add(dVar);
                } else {
                    dVar.f();
                }
            }
        }
    }

    public final String toString() {
        return super.toString() + "{numRequests=" + this.f6335a.size() + ", isPaused=" + this.f6337c + "}";
    }
}
