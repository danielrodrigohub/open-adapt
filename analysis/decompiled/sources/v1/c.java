package v1;

import java.util.Objects;

/* JADX INFO: compiled from: SettableFuture.java */
/* JADX INFO: loaded from: classes.dex */
public final class c<V> extends a<V> {
    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    public final boolean j(V v10) {
        if (v10 == null) {
            v10 = (V) a.f16107n;
        }
        if (!a.f16106m.b(this, null, v10)) {
            return false;
        }
        a.c(this);
        return true;
    }

    public final boolean k(Throwable th) {
        Objects.requireNonNull(th);
        if (!a.f16106m.b(this, null, new a.c(th))) {
            return false;
        }
        a.c(this);
        return true;
    }

    public final boolean l(x6.a<? extends V> aVar) {
        a.c cVar;
        Objects.requireNonNull(aVar);
        Object obj = this.f16108h;
        if (obj == null) {
            if (aVar.isDone()) {
                if (!a.f16106m.b(this, null, a.f(aVar))) {
                    return false;
                }
                a.c(this);
            } else {
                a.f fVar = new a.f(this, aVar);
                if (a.f16106m.b(this, null, fVar)) {
                    try {
                        aVar.a(fVar, b.INSTANCE);
                    } catch (Throwable th) {
                        try {
                            cVar = new a.c(th);
                        } catch (Throwable unused) {
                            cVar = a.c.f16115b;
                        }
                        a.f16106m.b(this, fVar, cVar);
                    }
                } else {
                    obj = this.f16108h;
                }
            }
            return true;
        }
        if (!(obj instanceof a.b)) {
            return false;
        }
        aVar.cancel(((a.b) obj).f16113a);
        return false;
    }
}
