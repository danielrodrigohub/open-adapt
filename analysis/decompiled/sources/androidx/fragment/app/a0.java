package androidx.fragment.app;

import android.util.Log;
import java.util.HashMap;
import java.util.Iterator;

/* JADX INFO: compiled from: FragmentManagerViewModel.java */
/* JADX INFO: loaded from: classes.dex */
public final class a0 extends androidx.lifecycle.j0 {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final a f1816i = new a();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final boolean f1820f;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final HashMap<String, m> f1817c = new HashMap<>();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final HashMap<String, a0> f1818d = new HashMap<>();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final HashMap<String, androidx.lifecycle.n0> f1819e = new HashMap<>();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public boolean f1821g = false;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public boolean f1822h = false;

    /* JADX INFO: compiled from: FragmentManagerViewModel.java */
    public class a implements androidx.lifecycle.l0.a {
        @Override // androidx.lifecycle.l0.a
        public final <T extends androidx.lifecycle.j0> T a(Class<T> cls) {
            return new a0(true);
        }
    }

    public a0(boolean z10) {
        this.f1820f = z10;
    }

    @Override // androidx.lifecycle.j0
    public final void a() {
        if (x.L(3)) {
            Log.d("FragmentManager", "onCleared called for " + this);
        }
        this.f1821g = true;
    }

    public final void b(m mVar) {
        if (this.f1822h) {
            if (x.L(2)) {
                Log.v("FragmentManager", "Ignoring removeRetainedFragment as the state is already saved");
                return;
            }
            return;
        }
        if ((this.f1817c.remove(mVar.f1970m) != null) && x.L(2)) {
            Log.v("FragmentManager", "Updating retained Fragments: Removed " + mVar);
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || a0.class != obj.getClass()) {
            return false;
        }
        a0 a0Var = (a0) obj;
        return this.f1817c.equals(a0Var.f1817c) && this.f1818d.equals(a0Var.f1818d) && this.f1819e.equals(a0Var.f1819e);
    }

    public final int hashCode() {
        return this.f1819e.hashCode() + ((this.f1818d.hashCode() + (this.f1817c.hashCode() * 31)) * 31);
    }

    public final String toString() {
        StringBuilder sb2 = new StringBuilder("FragmentManagerViewModel{");
        sb2.append(Integer.toHexString(System.identityHashCode(this)));
        sb2.append("} Fragments (");
        Iterator<m> it = this.f1817c.values().iterator();
        while (it.hasNext()) {
            sb2.append(it.next());
            if (it.hasNext()) {
                sb2.append(", ");
            }
        }
        sb2.append(") Child Non Config (");
        Iterator<String> it2 = this.f1818d.keySet().iterator();
        while (it2.hasNext()) {
            sb2.append(it2.next());
            if (it2.hasNext()) {
                sb2.append(", ");
            }
        }
        sb2.append(") ViewModelStores (");
        Iterator<String> it3 = this.f1819e.keySet().iterator();
        while (it3.hasNext()) {
            sb2.append(it3.next());
            if (it3.hasNext()) {
                sb2.append(", ");
            }
        }
        sb2.append(')');
        return sb2.toString();
    }
}
