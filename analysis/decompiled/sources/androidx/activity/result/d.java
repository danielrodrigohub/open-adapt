package androidx.activity.result;

import a4.g;
import android.annotation.SuppressLint;
import android.os.Bundle;
import android.util.Log;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import java.util.Random;

/* JADX INFO: compiled from: ActivityResultRegistry.java */
/* JADX INFO: loaded from: classes.dex */
public abstract class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public Random f715a = new Random();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Map<Integer, String> f716b = new HashMap();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Map<String, Integer> f717c = new HashMap();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final Map<String, c> f718d = new HashMap();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public ArrayList<String> f719e = new ArrayList<>();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final transient Map<String, b<?>> f720f = new HashMap();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final Map<String, Object> f721g = new HashMap();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final Bundle f722h = new Bundle();

    /* JADX INFO: Add missing generic type declarations: [I] */
    /* JADX INFO: compiled from: ActivityResultRegistry.java */
    public class a<I> extends androidx.activity.result.c<I> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final /* synthetic */ String f723a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final /* synthetic */ e.a f724b;

        public a(String str, e.a aVar) {
            this.f723a = str;
            this.f724b = aVar;
        }

        /* JADX WARN: Type inference failed for: r0v1, types: [java.util.HashMap, java.util.Map<java.lang.String, java.lang.Integer>] */
        @Override // androidx.activity.result.c
        public final void a(Object obj) throws Exception {
            Integer num = (Integer) d.this.f717c.get(this.f723a);
            if (num != null) {
                d.this.f719e.add(this.f723a);
                try {
                    d.this.c(num.intValue(), this.f724b, obj);
                    return;
                } catch (Exception e10) {
                    d.this.f719e.remove(this.f723a);
                    throw e10;
                }
            }
            StringBuilder sbC = a0.b.c("Attempting to launch an unregistered ActivityResultLauncher with contract ");
            sbC.append(this.f724b);
            sbC.append(" and input ");
            sbC.append(obj);
            sbC.append(". You must ensure the ActivityResultLauncher is registered before calling launch().");
            throw new IllegalStateException(sbC.toString());
        }

        @Override // androidx.activity.result.c
        public final void b() {
            d.this.e(this.f723a);
        }
    }

    /* JADX INFO: compiled from: ActivityResultRegistry.java */
    public static class b<O> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final androidx.activity.result.b<O> f726a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final e.a<?, O> f727b;

        public b(androidx.activity.result.b<O> bVar, e.a<?, O> aVar) {
            this.f726a = bVar;
            this.f727b = aVar;
        }
    }

    /* JADX INFO: compiled from: ActivityResultRegistry.java */
    public static class c {
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [java.util.HashMap, java.util.Map<java.lang.Integer, java.lang.String>] */
    /* JADX WARN: Type inference failed for: r0v1, types: [java.util.HashMap, java.util.Map<java.lang.String, java.lang.Integer>] */
    public final void a(int i10, String str) {
        this.f716b.put(Integer.valueOf(i10), str);
        this.f717c.put(str, Integer.valueOf(i10));
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [java.util.HashMap, java.util.Map<java.lang.Integer, java.lang.String>] */
    /* JADX WARN: Type inference failed for: r0v1, types: [java.util.HashMap, java.util.Map<java.lang.String, androidx.activity.result.d$b<?>>] */
    /* JADX WARN: Type inference failed for: r0v4, types: [java.util.HashMap, java.util.Map<java.lang.String, java.lang.Object>] */
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
    /*  JADX ERROR: JadxRuntimeException in pass: FinishTypeInference
        jadx.core.utils.exceptions.JadxRuntimeException: Code variable not set in r4v3 boolean
        	at jadx.core.dex.instructions.args.SSAVar.getCodeVar(SSAVar.java:236)
        	at jadx.core.dex.visitors.typeinference.FinishTypeInference.lambda$visit$0(FinishTypeInference.java:27)
        	at java.base/java.util.ArrayList.forEach(ArrayList.java:1596)
        	at jadx.core.dex.visitors.typeinference.FinishTypeInference.visit(FinishTypeInference.java:22)
        */
    public final boolean b(int r3, int r4, android.content.Intent r5) {
        /*
            r2 = this;
            java.util.Map<java.lang.Integer, java.lang.String> r0 = r2.f716b
            java.lang.Integer r3 = java.lang.Integer.valueOf(r3)
            java.lang.Object r3 = r0.get(r3)
            java.lang.String r3 = (java.lang.String) r3
            if (r3 != 0) goto L10
            r3 = 0
            return r3
        L10:
            java.util.Map<java.lang.String, androidx.activity.result.d$b<?>> r0 = r2.f720f
            java.lang.Object r0 = r0.get(r3)
            androidx.activity.result.d$b r0 = (androidx.activity.result.d.b) r0
            if (r0 == 0) goto L37
            androidx.activity.result.b<O> r1 = r0.f726a
            if (r1 == 0) goto L37
            java.util.ArrayList<java.lang.String> r1 = r2.f719e
            boolean r1 = r1.contains(r3)
            if (r1 == 0) goto L37
            androidx.activity.result.b<O> r1 = r0.f726a
            e.a<?, O> r0 = r0.f727b
            java.lang.Object r4 = r0.c(r4, r5)
            r1.a(r4)
            java.util.ArrayList<java.lang.String> r4 = r2.f719e
            r4.remove(r3)
            goto L46
        L37:
            java.util.Map<java.lang.String, java.lang.Object> r0 = r2.f721g
            r0.remove(r3)
            android.os.Bundle r0 = r2.f722h
            androidx.activity.result.a r1 = new androidx.activity.result.a
            r1.<init>(r4, r5)
            r0.putParcelable(r3, r1)
        L46:
            r3 = 1
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.activity.result.d.b(int, int, android.content.Intent):boolean");
    }

    public abstract void c(int i10, e.a aVar, @SuppressLint({"UnknownNullness"}) Object obj);

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference incomplete: some casts might be missing */
    public final <I, O> androidx.activity.result.c<I> d(String str, e.a<I, O> aVar, androidx.activity.result.b<O> bVar) {
        int i10;
        if (this.f717c.get(str) == null) {
            int iNextInt = this.f715a.nextInt(2147418112);
            while (true) {
                i10 = iNextInt + 65536;
                if (!this.f716b.containsKey(Integer.valueOf(i10))) {
                    break;
                }
                iNextInt = this.f715a.nextInt(2147418112);
            }
            a(i10, str);
        }
        this.f720f.put(str, new b<>(bVar, aVar));
        if (this.f721g.containsKey(str)) {
            Object obj = this.f721g.get(str);
            this.f721g.remove(str);
            bVar.a(obj);
        }
        androidx.activity.result.a aVar2 = (androidx.activity.result.a) this.f722h.getParcelable(str);
        if (aVar2 != null) {
            this.f722h.remove(str);
            bVar.a(aVar.c(aVar2.f713h, aVar2.f714i));
        }
        return new a(str, aVar);
    }

    /* JADX WARN: Type inference failed for: r0v13, types: [java.util.HashMap, java.util.Map<java.lang.String, java.lang.Object>] */
    /* JADX WARN: Type inference failed for: r0v14, types: [java.util.HashMap, java.util.Map<java.lang.String, java.lang.Integer>] */
    /* JADX WARN: Type inference failed for: r0v2, types: [java.util.HashMap, java.util.Map<java.lang.String, androidx.activity.result.d$b<?>>] */
    /* JADX WARN: Type inference failed for: r0v3, types: [java.util.HashMap, java.util.Map<java.lang.String, java.lang.Object>] */
    /* JADX WARN: Type inference failed for: r0v7, types: [java.util.HashMap, java.util.Map<java.lang.String, androidx.activity.result.d$c>] */
    /* JADX WARN: Type inference failed for: r1v3, types: [java.util.HashMap, java.util.Map<java.lang.Integer, java.lang.String>] */
    /* JADX WARN: Type inference failed for: r4v0, types: [java.util.HashMap, java.util.Map<java.lang.String, java.lang.Object>] */
    public final void e(String str) {
        Integer num;
        if (!this.f719e.contains(str) && (num = (Integer) this.f717c.remove(str)) != null) {
            this.f716b.remove(num);
        }
        this.f720f.remove(str);
        if (this.f721g.containsKey(str)) {
            StringBuilder sbE = g.e("Dropping pending result for request ", str, ": ");
            sbE.append(this.f721g.get(str));
            Log.w("ActivityResultRegistry", sbE.toString());
            this.f721g.remove(str);
        }
        if (this.f722h.containsKey(str)) {
            StringBuilder sbE2 = g.e("Dropping pending result for request ", str, ": ");
            sbE2.append(this.f722h.getParcelable(str));
            Log.w("ActivityResultRegistry", sbE2.toString());
            this.f722h.remove(str);
        }
        if (((c) this.f718d.get(str)) != null) {
            throw null;
        }
    }
}
