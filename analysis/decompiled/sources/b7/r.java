package b7;

import java.io.IOException;
import java.util.Map;
import java.util.Objects;

/* JADX INFO: compiled from: ExtensionSchemaLite.java */
/* JADX INFO: loaded from: classes.dex */
public final class r extends q<x.d> {
    /* JADX WARN: Incorrect return type in method signature: (Ljava/util/Map$Entry<**>;)I */
    @Override // b7.q
    public final void a(Map.Entry entry) {
        Objects.requireNonNull((x.d) entry.getKey());
    }

    @Override // b7.q
    public final Object b(p pVar, q0 q0Var, int i10) {
        return pVar.f3468a.get(new p.a(q0Var, i10));
    }

    @Override // b7.q
    public final t<x.d> c(Object obj) {
        return ((x.c) obj).extensions;
    }

    @Override // b7.q
    public final t<x.d> d(Object obj) {
        return ((x.c) obj).x();
    }

    @Override // b7.q
    public final boolean e(q0 q0Var) {
        return q0Var instanceof x.c;
    }

    @Override // b7.q
    public final void f(Object obj) {
        ((x.c) obj).extensions.l();
    }

    @Override // b7.q
    public final Object g(Object obj) throws IOException {
        throw null;
    }

    @Override // b7.q
    public final void h(Object obj) throws IOException {
        throw null;
    }

    @Override // b7.q
    public final void i(Object obj) throws IOException {
        throw null;
    }

    @Override // b7.q
    public final void j(Map.Entry entry) throws IOException {
        Objects.requireNonNull((x.d) entry.getKey());
        throw null;
    }
}
