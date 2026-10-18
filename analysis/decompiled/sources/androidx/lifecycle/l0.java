package androidx.lifecycle;

import java.util.Objects;

/* JADX INFO: compiled from: ViewModelProvider.kt */
/* JADX INFO: loaded from: classes.dex */
public final class l0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final n0 f2223a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final a f2224b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final u0.a f2225c;

    /* JADX INFO: compiled from: ViewModelProvider.kt */
    public interface a {
        default <T extends j0> T a(Class<T> cls) {
            throw new UnsupportedOperationException("Factory.create(String) is unsupported.  This Factory requires `CreationExtras` to be passed into `create` method.");
        }

        default <T extends j0> T b(Class<T> cls, u0.a aVar) {
            return (T) a(cls);
        }
    }

    /* JADX INFO: compiled from: ViewModelProvider.kt */
    public static class b {
    }

    public l0(n0 n0Var, a aVar, u0.a aVar2) {
        p4.h.j(n0Var, "store");
        p4.h.j(aVar2, "defaultCreationExtras");
        this.f2223a = n0Var;
        this.f2224b = aVar;
        this.f2225c = aVar2;
    }

    public final <T extends j0> T a(Class<T> cls) {
        String canonicalName = cls.getCanonicalName();
        if (canonicalName == null) {
            throw new IllegalArgumentException("Local and anonymous classes can not be ViewModels");
        }
        return (T) b("androidx.lifecycle.ViewModelProvider.DefaultKey:" + canonicalName, cls);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    public final <T extends j0> T b(String str, Class<T> cls) {
        T t10;
        p4.h.j(str, "key");
        T t11 = (T) this.f2223a.f2229a.get(str);
        if (cls.isInstance(t11)) {
            Object obj = this.f2224b;
            if ((obj instanceof b ? (b) obj : null) != null) {
                p4.h.i(t11, "viewModel");
            }
            Objects.requireNonNull(t11, "null cannot be cast to non-null type T of androidx.lifecycle.ViewModelProvider.get");
            return t11;
        }
        u0.c cVar = new u0.c(this.f2225c);
        cVar.f15614a.put(m0.f2228h, str);
        try {
            t10 = (T) this.f2224b.b(cls, cVar);
        } catch (AbstractMethodError unused) {
            t10 = (T) this.f2224b.a(cls);
        }
        j0 j0VarPut = this.f2223a.f2229a.put(str, t10);
        if (j0VarPut != null) {
            j0VarPut.a();
        }
        return t10;
    }
}
