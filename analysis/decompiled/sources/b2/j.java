package b2;

import android.graphics.Path;
import android.graphics.PathMeasure;
import android.graphics.PointF;
import java.util.List;

/* JADX INFO: compiled from: PathKeyframeAnimation.java */
/* JADX INFO: loaded from: classes.dex */
public final class j extends g<PointF> {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final PointF f3195i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final float[] f3196j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final PathMeasure f3197k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public i f3198l;

    public j(List<? extends l2.a<PointF>> list) {
        super(list);
        this.f3195i = new PointF();
        this.f3196j = new float[2];
        this.f3197k = new PathMeasure();
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
        PointF pointF;
        i iVar = (i) aVar;
        Path path = iVar.f3193q;
        if (path == null) {
            return (PointF) aVar.f9896b;
        }
        l2.c<A> cVar = this.f3171e;
        if (cVar != 0 && (pointF = (PointF) cVar.b(iVar.f9901g, iVar.f9902h.floatValue(), (PointF) iVar.f9896b, (PointF) iVar.f9897c, e(), f10, this.f3170d)) != null) {
            return pointF;
        }
        if (this.f3198l != iVar) {
            this.f3197k.setPath(path, false);
            this.f3198l = iVar;
        }
        PathMeasure pathMeasure = this.f3197k;
        pathMeasure.getPosTan(pathMeasure.getLength() * f10, this.f3196j, null);
        PointF pointF2 = this.f3195i;
        float[] fArr = this.f3196j;
        pointF2.set(fArr[0], fArr[1]);
        return this.f3195i;
    }
}
