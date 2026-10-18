package b2;

import java.util.List;

/* JADX INFO: compiled from: TextKeyframeAnimation.java */
/* JADX INFO: loaded from: classes.dex */
public final class p extends g<d2.b> {
    public p(List<l2.a<d2.b>> list) {
        super(list);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$PrimitiveArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    @Override // b2.a
    public final Object g(l2.a aVar, float f10) {
        T t10;
        l2.c<A> cVar = this.f3171e;
        if (cVar == 0) {
            return (f10 != 1.0f || (t10 = aVar.f9897c) == 0) ? (d2.b) aVar.f9896b : (d2.b) t10;
        }
        float f11 = aVar.f9901g;
        Float f12 = aVar.f9902h;
        float fFloatValue = f12 == null ? Float.MAX_VALUE : f12.floatValue();
        d2.b bVar = (d2.b) aVar.f9896b;
        T t11 = aVar.f9897c;
        return (d2.b) cVar.b(f11, fFloatValue, bVar, t11 == 0 ? bVar : (d2.b) t11, f10, d(), this.f3170d);
    }
}
