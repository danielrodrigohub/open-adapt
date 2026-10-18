package m7;

import java.io.IOException;
import java.util.Map;
import java.util.Objects;

/* JADX INFO: compiled from: ExtensionSchemaLite.java */
/* JADX INFO: loaded from: classes.dex */
public final class q extends p<w.d> {
    /* JADX WARN: Incorrect return type in method signature: (Ljava/util/Map$Entry<**>;)I */
    @Override // m7.p
    public final void a(Map.Entry entry) {
        Objects.requireNonNull((w.d) entry.getKey());
    }

    @Override // m7.p
    public final Object b(o oVar, p0 p0Var, int i10) {
        return oVar.f10714a.get(new o.a(p0Var, i10));
    }

    @Override // m7.p
    public final s<w.d> c(Object obj) {
        return ((w.c) obj).extensions;
    }

    @Override // m7.p
    public final s<w.d> d(Object obj) {
        return ((w.c) obj).x();
    }

    @Override // m7.p
    public final boolean e(p0 p0Var) {
        return p0Var instanceof w.c;
    }

    @Override // m7.p
    public final void f(Object obj) {
        ((w.c) obj).extensions.m();
    }

    @Override // m7.p
    public final void g(Map.Entry entry) throws IOException {
        Objects.requireNonNull((w.d) entry.getKey());
        throw null;
    }
}
