package m7;

import java.util.Iterator;
import java.util.Map;
import java.util.Objects;
import java.util.logging.Logger;

/* JADX INFO: compiled from: MapFieldSchemaLite.java */
/* JADX INFO: loaded from: classes.dex */
public final class l0 implements k0 {
    @Override // m7.k0
    public final Object a(Object obj, Object obj2) {
        j0 j0Var = (j0) obj;
        j0 j0Var2 = (j0) obj2;
        if (!j0Var2.isEmpty()) {
            if (!j0Var.f10681h) {
                j0Var = j0Var.isEmpty() ? new j0() : new j0(j0Var);
            }
            j0Var.b();
            if (!j0Var2.isEmpty()) {
                j0Var.putAll(j0Var2);
            }
        }
        return j0Var;
    }

    @Override // m7.k0
    public final void b(int i10, Object obj, Object obj2) {
        j0 j0Var = (j0) obj;
        i0 i0Var = (i0) obj2;
        if (j0Var.isEmpty()) {
            return;
        }
        Iterator it = j0Var.entrySet().iterator();
        if (it.hasNext()) {
            Map.Entry entry = (Map.Entry) it.next();
            entry.getKey();
            entry.getValue();
            Objects.requireNonNull(i0Var);
            Logger logger = k.f10688b;
            throw null;
        }
    }

    @Override // m7.k0
    public final boolean c(Object obj) {
        return !((j0) obj).f10681h;
    }

    @Override // m7.k0
    public final Object d(Object obj) {
        ((j0) obj).f10681h = false;
        return obj;
    }

    @Override // m7.k0
    public final void e(Object obj) {
        Objects.requireNonNull((i0) obj);
    }

    @Override // m7.k0
    public final Object f() {
        j0<?, ?> j0Var = j0.f10680i;
        return j0Var.isEmpty() ? new j0() : new j0(j0Var);
    }

    @Override // m7.k0
    public final Map<?, ?> g(Object obj) {
        return (j0) obj;
    }

    @Override // m7.k0
    public final Map<?, ?> h(Object obj) {
        return (j0) obj;
    }
}
