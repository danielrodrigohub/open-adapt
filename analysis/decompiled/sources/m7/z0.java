package m7;

import java.nio.charset.Charset;
import java.util.Objects;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;

/* JADX INFO: compiled from: Protobuf.java */
/* JADX INFO: loaded from: classes.dex */
public final class z0 {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final z0 f10805c = new z0();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ConcurrentMap<Class<?>, c1<?>> f10807b = new ConcurrentHashMap();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final h0 f10806a = new h0();

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    public final <T> c1<T> a(Class<T> cls) {
        c1<T> c1VarW;
        t0 t0Var;
        Class<?> cls2;
        Charset charset = y.f10801a;
        Objects.requireNonNull(cls, "messageType");
        c1<T> c1Var = (c1) this.f10807b.get(cls);
        if (c1Var != null) {
            return c1Var;
        }
        h0 h0Var = this.f10806a;
        Objects.requireNonNull(h0Var);
        Class<?> cls3 = d1.f10628a;
        if (!w.class.isAssignableFrom(cls) && (cls2 = d1.f10628a) != null && !cls2.isAssignableFrom(cls)) {
            throw new IllegalArgumentException("Message classes must extend GeneratedMessageV3 or GeneratedMessageLite");
        }
        n0 n0VarA = h0Var.f10664a.a(cls);
        if (n0VarA.b()) {
            if (w.class.isAssignableFrom(cls)) {
                i1<?, ?> i1Var = d1.f10631d;
                p<?> pVar = r.f10747a;
                t0Var = new t0(i1Var, r.f10747a, n0VarA.c());
            } else {
                i1<?, ?> i1Var2 = d1.f10629b;
                p<?> pVar2 = r.f10748b;
                if (pVar2 == null) {
                    throw new IllegalStateException("Protobuf runtime is not correctly loaded.");
                }
                t0Var = new t0(i1Var2, pVar2, n0VarA.c());
            }
            c1VarW = t0Var;
        } else {
            if (w.class.isAssignableFrom(cls)) {
                if (n0VarA.a() == 1) {
                    v0 v0Var = w0.f10797b;
                    f0.b bVar = f0.f10639b;
                    i1<?, ?> i1Var3 = d1.f10631d;
                    p<?> pVar3 = r.f10747a;
                    c1VarW = s0.w(n0VarA, v0Var, bVar, i1Var3, r.f10747a, m0.f10701b);
                } else {
                    c1VarW = s0.w(n0VarA, w0.f10797b, f0.f10639b, d1.f10631d, null, m0.f10701b);
                }
            } else {
                if (n0VarA.a() == 1) {
                    u0 u0Var = w0.f10796a;
                    f0.a aVar = f0.f10638a;
                    i1<?, ?> i1Var4 = d1.f10629b;
                    p<?> pVar4 = r.f10748b;
                    if (pVar4 == null) {
                        throw new IllegalStateException("Protobuf runtime is not correctly loaded.");
                    }
                    c1VarW = s0.w(n0VarA, u0Var, aVar, i1Var4, pVar4, m0.f10700a);
                } else {
                    c1VarW = s0.w(n0VarA, w0.f10796a, f0.f10638a, d1.f10630c, null, m0.f10700a);
                }
            }
        }
        c1<T> c1Var2 = (c1) this.f10807b.putIfAbsent((Class<?>) cls, (c1<?>) c1VarW);
        return c1Var2 != null ? c1Var2 : c1VarW;
    }

    public final <T> c1<T> b(T t10) {
        return a(t10.getClass());
    }
}
