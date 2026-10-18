package b2;

import java.util.List;

/* JADX INFO: compiled from: ColorKeyframeAnimation.java */
/* JADX INFO: loaded from: classes.dex */
public final class b extends g<Integer> {
    public b(List<l2.a<Integer>> list) {
        super(list);
    }

    @Override // b2.a
    public final Object g(l2.a aVar, float f10) {
        return Integer.valueOf(l(aVar, f10));
    }

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
    public final int l(l2.a<Integer> aVar, float f10) {
        Integer num;
        if (aVar.f9896b == null || aVar.f9897c == null) {
            throw new IllegalStateException("Missing values for keyframe.");
        }
        l2.c<A> cVar = this.f3171e;
        return (cVar == 0 || (num = (Integer) cVar.b(aVar.f9901g, aVar.f9902h.floatValue(), aVar.f9896b, aVar.f9897c, f10, e(), this.f3170d)) == null) ? androidx.appcompat.widget.p.e(k2.f.b(f10, 0.0f, 1.0f), aVar.f9896b.intValue(), aVar.f9897c.intValue()) : num.intValue();
    }
}
