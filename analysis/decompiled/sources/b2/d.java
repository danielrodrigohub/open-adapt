package b2;

import android.graphics.PointF;
import java.util.List;

/* JADX INFO: compiled from: FloatKeyframeAnimation.java */
/* JADX INFO: loaded from: classes.dex */
public final class d extends g<Float> {
    public d(List<l2.a<Float>> list) {
        super(list);
    }

    @Override // b2.a
    public final Object g(l2.a aVar, float f10) {
        return Float.valueOf(m(aVar, f10));
    }

    public final float l() {
        return m(b(), d());
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
    public final float m(l2.a<Float> aVar, float f10) {
        Float f11;
        if (aVar.f9896b == null || aVar.f9897c == null) {
            throw new IllegalStateException("Missing values for keyframe.");
        }
        l2.c<A> cVar = this.f3171e;
        if (cVar != 0 && (f11 = (Float) cVar.b(aVar.f9901g, aVar.f9902h.floatValue(), aVar.f9896b, aVar.f9897c, f10, e(), this.f3170d)) != null) {
            return f11.floatValue();
        }
        if (aVar.f9903i == -3987645.8f) {
            aVar.f9903i = aVar.f9896b.floatValue();
        }
        float f12 = aVar.f9903i;
        if (aVar.f9904j == -3987645.8f) {
            aVar.f9904j = aVar.f9897c.floatValue();
        }
        float f13 = aVar.f9904j;
        PointF pointF = k2.f.f9637a;
        return androidx.appcompat.widget.o.c(f13, f12, f10, f12);
    }
}
