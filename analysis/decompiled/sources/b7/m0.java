package b7;

import java.util.Iterator;
import java.util.Map;
import java.util.Objects;

/* JADX INFO: compiled from: MapFieldSchemaLite.java */
/* JADX INFO: loaded from: classes.dex */
public final class m0 implements l0 {
    @Override // b7.l0
    public final Object a(Object obj, Object obj2) {
        k0 k0Var = (k0) obj;
        k0 k0Var2 = (k0) obj2;
        if (!k0Var2.isEmpty()) {
            if (!k0Var.f3444h) {
                k0Var = k0Var.isEmpty() ? new k0() : new k0(k0Var);
            }
            k0Var.b();
            if (!k0Var2.isEmpty()) {
                k0Var.putAll(k0Var2);
            }
        }
        return k0Var;
    }

    @Override // b7.l0
    public final int b(int i10, Object obj, Object obj2) {
        k0 k0Var = (k0) obj;
        j0 j0Var = (j0) obj2;
        if (k0Var.isEmpty()) {
            return 0;
        }
        Iterator it = k0Var.entrySet().iterator();
        if (!it.hasNext()) {
            return 0;
        }
        Map.Entry entry = (Map.Entry) it.next();
        entry.getKey();
        entry.getValue();
        Objects.requireNonNull(j0Var);
        l.w(i10);
        throw null;
    }

    @Override // b7.l0
    public final boolean c(Object obj) {
        return !((k0) obj).f3444h;
    }

    @Override // b7.l0
    public final Object d(Object obj) {
        ((k0) obj).f3444h = false;
        return obj;
    }

    @Override // b7.l0
    public final void e(Object obj) {
        Objects.requireNonNull((j0) obj);
    }

    @Override // b7.l0
    public final Object f() {
        k0 k0Var = k0.f3443i;
        return k0Var.isEmpty() ? new k0() : new k0(k0Var);
    }

    @Override // b7.l0
    public final Map<?, ?> g(Object obj) {
        return (k0) obj;
    }

    @Override // b7.l0
    public final Map<?, ?> h(Object obj) {
        return (k0) obj;
    }
}
