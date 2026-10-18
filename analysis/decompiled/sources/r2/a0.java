package r2;

/* JADX INFO: compiled from: SourceGenerator.java */
/* JADX INFO: loaded from: classes.dex */
public final class a0 implements com.bumptech.glide.load.data.d.a<Object> {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ v2.n.a f14221h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final /* synthetic */ b0 f14222i;

    public a0(b0 b0Var, v2.n.a aVar) {
        this.f14222i = b0Var;
        this.f14221h = aVar;
    }

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
    @Override // com.bumptech.glide.load.data.d.a
    public final void c(Exception exc) {
        b0 b0Var = this.f14222i;
        v2.n.a<?> aVar = this.f14221h;
        v2.n.a<?> aVar2 = b0Var.f14229m;
        if (aVar2 != null && aVar2 == aVar) {
            b0 b0Var2 = this.f14222i;
            v2.n.a aVar3 = this.f14221h;
            h.a aVar4 = b0Var2.f14225i;
            p2.f fVar = b0Var2.f14230n;
            com.bumptech.glide.load.data.d<Data> dVar = aVar3.f16176c;
            aVar4.g(fVar, exc, dVar, dVar.e());
        }
    }

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
    @Override // com.bumptech.glide.load.data.d.a
    public final void d(Object obj) {
        b0 b0Var = this.f14222i;
        v2.n.a<?> aVar = this.f14221h;
        v2.n.a<?> aVar2 = b0Var.f14229m;
        if (aVar2 != null && aVar2 == aVar) {
            b0 b0Var2 = this.f14222i;
            v2.n.a aVar3 = this.f14221h;
            l lVar = b0Var2.f14224h.f14267p;
            if (obj != null && lVar.c(aVar3.f16176c.e())) {
                b0Var2.f14228l = obj;
                b0Var2.f14225i.b();
            } else {
                h.a aVar4 = b0Var2.f14225i;
                p2.f fVar = aVar3.f16174a;
                com.bumptech.glide.load.data.d<Data> dVar = aVar3.f16176c;
                aVar4.i(fVar, obj, dVar, dVar.e(), b0Var2.f14230n);
            }
        }
    }
}
