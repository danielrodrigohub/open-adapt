package l7;

import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.util.Objects;

/* JADX INFO: compiled from: TypeToken.java */
/* JADX INFO: loaded from: classes.dex */
public class a<T> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Class<? super T> f10167a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Type f10168b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f10169c;

    public a() {
        Type genericSuperclass = getClass().getGenericSuperclass();
        if (genericSuperclass instanceof ParameterizedType) {
            ParameterizedType parameterizedType = (ParameterizedType) genericSuperclass;
            if (parameterizedType.getRawType() == a.class) {
                Type typeA = g7.a.a(parameterizedType.getActualTypeArguments()[0]);
                this.f10168b = typeA;
                this.f10167a = (Class<? super T>) g7.a.f(typeA);
                this.f10169c = typeA.hashCode();
                return;
            }
        } else if (genericSuperclass == a.class) {
            throw new IllegalStateException("TypeToken must be created with a type argument: new TypeToken<...>() {}; When using code shrinkers (ProGuard, R8, ...) make sure that generic signatures are preserved.");
        }
        throw new IllegalStateException("Must only create direct subclasses of TypeToken");
    }

    public final boolean equals(Object obj) {
        return (obj instanceof a) && g7.a.d(this.f10168b, ((a) obj).f10168b);
    }

    public final int hashCode() {
        return this.f10169c;
    }

    public final String toString() {
        return g7.a.j(this.f10168b);
    }

    public a(Type type) {
        Objects.requireNonNull(type);
        Type typeA = g7.a.a(type);
        this.f10168b = typeA;
        this.f10167a = (Class<? super T>) g7.a.f(typeA);
        this.f10169c = typeA.hashCode();
    }
}
