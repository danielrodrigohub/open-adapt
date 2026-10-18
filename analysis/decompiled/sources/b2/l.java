package b2;

import android.graphics.PointF;
import java.util.List;

/* JADX INFO: compiled from: ScaleKeyframeAnimation.java */
/* JADX INFO: loaded from: classes.dex */
public final class l extends g<l2.d> {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final l2.d f3200i;

    public l(List<l2.a<l2.d>> list) {
        super(list);
        this.f3200i = new l2.d();
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
        l2.d dVar;
        T t11 = aVar.f9896b;
        if (t11 == 0 || (t10 = aVar.f9897c) == 0) {
            throw new IllegalStateException("Missing values for keyframe.");
        }
        l2.d dVar2 = (l2.d) t11;
        l2.d dVar3 = (l2.d) t10;
        l2.c<A> cVar = this.f3171e;
        if (cVar != 0 && (dVar = (l2.d) cVar.b(aVar.f9901g, aVar.f9902h.floatValue(), dVar2, dVar3, f10, e(), this.f3170d)) != null) {
            return dVar;
        }
        l2.d dVar4 = this.f3200i;
        float f11 = dVar2.f9916a;
        float f12 = dVar3.f9916a;
        PointF pointF = k2.f.f9637a;
        float fC = androidx.appcompat.widget.o.c(f12, f11, f10, f11);
        float f13 = dVar2.f9917b;
        float fC2 = androidx.appcompat.widget.o.c(dVar3.f9917b, f13, f10, f13);
        dVar4.f9916a = fC;
        dVar4.f9917b = fC2;
        return dVar4;
    }
}
