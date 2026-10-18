package androidx.fragment.app;

import android.util.Log;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;

/* JADX INFO: compiled from: FragmentStore.java */
/* JADX INFO: loaded from: classes.dex */
public final class f0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ArrayList<m> f1882a = new ArrayList<>();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final HashMap<String, e0> f1883b = new HashMap<>();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public a0 f1884c;

    public final void a(m mVar) {
        if (this.f1882a.contains(mVar)) {
            throw new IllegalStateException("Fragment already added: " + mVar);
        }
        synchronized (this.f1882a) {
            this.f1882a.add(mVar);
        }
        mVar.f1976s = true;
    }

    public final void b() {
        this.f1883b.values().removeAll(Collections.singleton(null));
    }

    public final boolean c(String str) {
        return this.f1883b.get(str) != null;
    }

    public final m d(String str) {
        e0 e0Var = this.f1883b.get(str);
        if (e0Var != null) {
            return e0Var.f1874c;
        }
        return null;
    }

    public final m e(String str) {
        for (e0 e0Var : this.f1883b.values()) {
            if (e0Var != null) {
                m mVarE = e0Var.f1874c;
                if (!str.equals(mVarE.f1970m)) {
                    mVarE = mVarE.B.f2047c.e(str);
                }
                if (mVarE != null) {
                    return mVarE;
                }
            }
        }
        return null;
    }

    public final List<e0> f() {
        ArrayList arrayList = new ArrayList();
        for (e0 e0Var : this.f1883b.values()) {
            if (e0Var != null) {
                arrayList.add(e0Var);
            }
        }
        return arrayList;
    }

    public final List<m> g() {
        ArrayList arrayList = new ArrayList();
        for (e0 e0Var : this.f1883b.values()) {
            if (e0Var != null) {
                arrayList.add(e0Var.f1874c);
            } else {
                arrayList.add(null);
            }
        }
        return arrayList;
    }

    public final e0 h(String str) {
        return this.f1883b.get(str);
    }

    public final List<m> i() {
        ArrayList arrayList;
        if (this.f1882a.isEmpty()) {
            return Collections.emptyList();
        }
        synchronized (this.f1882a) {
            arrayList = new ArrayList(this.f1882a);
        }
        return arrayList;
    }

    public final void j(e0 e0Var) {
        m mVar = e0Var.f1874c;
        if (c(mVar.f1970m)) {
            return;
        }
        this.f1883b.put(mVar.f1970m, e0Var);
        if (x.L(2)) {
            Log.v("FragmentManager", "Added fragment to active set " + mVar);
        }
    }

    public final void k(e0 e0Var) {
        m mVar = e0Var.f1874c;
        if (mVar.I) {
            this.f1884c.b(mVar);
        }
        if (this.f1883b.put(mVar.f1970m, null) != null && x.L(2)) {
            Log.v("FragmentManager", "Removed fragment from active set " + mVar);
        }
    }
}
