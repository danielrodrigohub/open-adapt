package b7;

import java.nio.charset.Charset;
import java.util.Objects;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;

/* JADX INFO: compiled from: Protobuf.java */
/* JADX INFO: loaded from: classes.dex */
public final class a1 {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final a1 f3353c = new a1();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ConcurrentMap<Class<?>, e1<?>> f3355b = new ConcurrentHashMap();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final i0 f3354a = new i0();

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    public final <T> e1<T> a(Class<T> cls) {
        e1<T> e1VarZ;
        u0 u0Var;
        Class<?> cls2;
        Charset charset = z.f3564a;
        Objects.requireNonNull(cls, "messageType");
        e1<T> e1Var = (e1) this.f3355b.get(cls);
        if (e1Var != null) {
            return e1Var;
        }
        i0 i0Var = this.f3354a;
        Objects.requireNonNull(i0Var);
        Class<?> cls3 = f1.f3390a;
        if (!x.class.isAssignableFrom(cls) && (cls2 = f1.f3390a) != null && !cls2.isAssignableFrom(cls)) {
            throw new IllegalArgumentException("Message classes must extend GeneratedMessage or GeneratedMessageLite");
        }
        o0 o0VarA = i0Var.f3426a.a(cls);
        if (o0VarA.b()) {
            if (x.class.isAssignableFrom(cls)) {
                l1<?, ?> l1Var = f1.f3393d;
                q<?> qVar = s.f3500a;
                u0Var = new u0(l1Var, s.f3500a, o0VarA.c());
            } else {
                l1<?, ?> l1Var2 = f1.f3391b;
                q<?> qVar2 = s.f3501b;
                if (qVar2 == null) {
                    throw new IllegalStateException("Protobuf runtime is not correctly loaded.");
                }
                u0Var = new u0(l1Var2, qVar2, o0VarA.c());
            }
            e1VarZ = u0Var;
        } else {
            if (x.class.isAssignableFrom(cls)) {
                if (o0VarA.a() == 1) {
                    w0 w0Var = x0.f3561b;
                    g0.b bVar = g0.f3395b;
                    l1<?, ?> l1Var3 = f1.f3393d;
                    q<?> qVar3 = s.f3500a;
                    e1VarZ = t0.z(o0VarA, w0Var, bVar, l1Var3, s.f3500a, n0.f3461b);
                } else {
                    e1VarZ = t0.z(o0VarA, x0.f3561b, g0.f3395b, f1.f3393d, null, n0.f3461b);
                }
            } else {
                if (o0VarA.a() == 1) {
                    v0 v0Var = x0.f3560a;
                    g0.a aVar = g0.f3394a;
                    l1<?, ?> l1Var4 = f1.f3391b;
                    q<?> qVar4 = s.f3501b;
                    if (qVar4 == null) {
                        throw new IllegalStateException("Protobuf runtime is not correctly loaded.");
                    }
                    e1VarZ = t0.z(o0VarA, v0Var, aVar, l1Var4, qVar4, n0.f3460a);
                } else {
                    e1VarZ = t0.z(o0VarA, x0.f3560a, g0.f3394a, f1.f3392c, null, n0.f3460a);
                }
            }
        }
        e1<T> e1Var2 = (e1) this.f3355b.putIfAbsent((Class<?>) cls, (e1<?>) e1VarZ);
        return e1Var2 != null ? e1Var2 : e1VarZ;
    }

    public final <T> e1<T> b(T t10) {
        return a(t10.getClass());
    }
}
