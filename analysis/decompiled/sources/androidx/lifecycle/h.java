package androidx.lifecycle;

import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Objects;

/* JADX INFO: compiled from: LegacySavedStateHandleController.java */
/* JADX INFO: loaded from: classes.dex */
public final class h implements b1.b.a {
    /* JADX WARN: Type inference failed for: r3v7, types: [java.util.HashMap, java.util.Map<java.lang.String, java.lang.Object>] */
    @Override // b1.b.a
    public final void a(b1.d dVar) {
        Object obj;
        boolean z10;
        if (!(dVar instanceof o0)) {
            throw new IllegalStateException("Internal error: OnRecreation should be registered only on components that implement ViewModelStoreOwner");
        }
        n0 n0VarP = ((o0) dVar).P();
        b1.b bVarF = dVar.f();
        Objects.requireNonNull(n0VarP);
        Iterator it = new HashSet(n0VarP.f2229a.keySet()).iterator();
        while (it.hasNext()) {
            j0 j0Var = n0VarP.f2229a.get((String) it.next());
            i iVarA = dVar.a();
            Map<String, Object> map = j0Var.f2209a;
            if (map == null) {
                obj = null;
            } else {
                synchronized (map) {
                    obj = j0Var.f2209a.get("androidx.lifecycle.savedstate.vm.tag");
                }
            }
            SavedStateHandleController savedStateHandleController = (SavedStateHandleController) obj;
            if (savedStateHandleController != null && !(z10 = savedStateHandleController.f2152h)) {
                if (z10) {
                    throw new IllegalStateException("Already attached to lifecycleOwner");
                }
                savedStateHandleController.f2152h = true;
                iVarA.a(savedStateHandleController);
                throw null;
            }
        }
        if (new HashSet(n0VarP.f2229a.keySet()).isEmpty()) {
            return;
        }
        bVarF.c();
    }
}
