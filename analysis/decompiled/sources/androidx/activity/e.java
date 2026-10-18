package androidx.activity;

/* JADX INFO: compiled from: ComponentActivity.java */
/* JADX INFO: loaded from: classes.dex */
public final class e implements Runnable {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ int f695h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final /* synthetic */ e.a.C0114a f696i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final /* synthetic */ ComponentActivity.b f697j;

    public e(ComponentActivity.b bVar, int i10, e.a.C0114a c0114a) {
        this.f697j = bVar;
        this.f695h = i10;
        this.f696i = c0114a;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v1, types: [java.util.HashMap, java.util.Map<java.lang.String, java.lang.Object>] */
    /* JADX WARN: Type inference failed for: r3v0, types: [java.util.HashMap, java.util.Map<java.lang.Integer, java.lang.String>] */
    /* JADX WARN: Type inference failed for: r3v1, types: [java.util.HashMap, java.util.Map<java.lang.String, androidx.activity.result.d$b<?>>] */
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
    /*  JADX ERROR: JadxRuntimeException in pass: FinishTypeInference
        jadx.core.utils.exceptions.JadxRuntimeException: Code variable not set in r2v2 boolean
        	at jadx.core.dex.instructions.args.SSAVar.getCodeVar(SSAVar.java:236)
        	at jadx.core.dex.visitors.typeinference.FinishTypeInference.lambda$visit$0(FinishTypeInference.java:27)
        	at java.base/java.util.ArrayList.forEach(ArrayList.java:1596)
        	at jadx.core.dex.visitors.typeinference.FinishTypeInference.visit(FinishTypeInference.java:22)
        */
    @Override // java.lang.Runnable
    public final void run() {
        /*
            r4 = this;
            androidx.activity.ComponentActivity$b r0 = r4.f697j
            int r1 = r4.f695h
            e.a$a r2 = r4.f696i
            T r2 = r2.f6284a
            java.util.Map<java.lang.Integer, java.lang.String> r3 = r0.f716b
            java.lang.Integer r1 = java.lang.Integer.valueOf(r1)
            java.lang.Object r1 = r3.get(r1)
            java.lang.String r1 = (java.lang.String) r1
            if (r1 != 0) goto L17
            goto L3c
        L17:
            java.util.Map<java.lang.String, androidx.activity.result.d$b<?>> r3 = r0.f720f
            java.lang.Object r3 = r3.get(r1)
            androidx.activity.result.d$b r3 = (androidx.activity.result.d.b) r3
            if (r3 == 0) goto L32
            androidx.activity.result.b<O> r3 = r3.f726a
            if (r3 != 0) goto L26
            goto L32
        L26:
            java.util.ArrayList<java.lang.String> r0 = r0.f719e
            boolean r0 = r0.remove(r1)
            if (r0 == 0) goto L3c
            r3.a(r2)
            goto L3c
        L32:
            android.os.Bundle r3 = r0.f722h
            r3.remove(r1)
            java.util.Map<java.lang.String, java.lang.Object> r0 = r0.f721g
            r0.put(r1, r2)
        L3c:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.activity.e.run():void");
    }
}
