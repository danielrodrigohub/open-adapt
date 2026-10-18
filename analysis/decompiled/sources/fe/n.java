package fe;

import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: compiled from: SubscriberMethodFinder.java */
/* JADX INFO: loaded from: classes2.dex */
public final class n {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final Map<Class<?>, List<m>> f7470a = new ConcurrentHashMap();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final a[] f7471b = new a[4];

    /* JADX INFO: compiled from: SubscriberMethodFinder.java */
    public static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final List<m> f7472a = new ArrayList();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final Map<Class, Object> f7473b = new HashMap();

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final Map<String, Class> f7474c = new HashMap();

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public final StringBuilder f7475d = new StringBuilder(128);

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public Class<?> f7476e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public boolean f7477f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        public he.a f7478g;

        /* JADX WARN: Type inference incomplete: some casts might be missing */
        /*  JADX ERROR: JadxRuntimeException in pass: ModVisitor
            jadx.core.utils.exceptions.JadxRuntimeException: Can't change immutable type java.lang.Object to fe.n$a for r2v1 'this'  java.lang.Object
            	at jadx.core.dex.instructions.args.SSAVar.setType(SSAVar.java:114)
            	at jadx.core.dex.instructions.args.RegisterArg.setType(RegisterArg.java:52)
            	at jadx.core.dex.visitors.ModVisitor.removeCheckCast(ModVisitor.java:417)
            	at jadx.core.dex.visitors.ModVisitor.replaceStep(ModVisitor.java:152)
            	at jadx.core.dex.visitors.ModVisitor.visit(ModVisitor.java:96)
            */
        public final boolean a(java.lang.reflect.Method r3, java.lang.Class<?> r4) {
            /*
                r2 = this;
                java.util.Map<java.lang.Class, java.lang.Object> r0 = r2.f7473b
                java.lang.Object r0 = r0.put(r4, r3)
                if (r0 != 0) goto La
                r3 = 1
                return r3
            La:
                boolean r1 = r0 instanceof java.lang.reflect.Method
                if (r1 == 0) goto L22
                java.lang.reflect.Method r0 = (java.lang.reflect.Method) r0
                boolean r0 = r2.b(r0, r4)
                if (r0 == 0) goto L1c
                java.util.Map<java.lang.Class, java.lang.Object> r0 = r2.f7473b
                r0.put(r4, r2)
                goto L22
            L1c:
                java.lang.IllegalStateException r3 = new java.lang.IllegalStateException
                r3.<init>()
                throw r3
            L22:
                boolean r3 = r2.b(r3, r4)
                return r3
            */
            throw new UnsupportedOperationException("Method not decompiled: fe.n.a.a(java.lang.reflect.Method, java.lang.Class):boolean");
        }

        /* JADX WARN: Type inference incomplete: some casts might be missing */
        public final boolean b(Method method, Class<?> cls) {
            this.f7475d.setLength(0);
            this.f7475d.append(method.getName());
            StringBuilder sb2 = this.f7475d;
            sb2.append('>');
            sb2.append(cls.getName());
            String string = this.f7475d.toString();
            Class<?> declaringClass = method.getDeclaringClass();
            Class clsPut = this.f7474c.put(string, declaringClass);
            if (clsPut == null || clsPut.isAssignableFrom(declaringClass)) {
                return true;
            }
            this.f7474c.put(string, clsPut);
            return false;
        }

        public final void c() {
            if (this.f7477f) {
                this.f7476e = null;
                return;
            }
            Class<? super Object> superclass = this.f7476e.getSuperclass();
            this.f7476e = superclass;
            String name = superclass.getName();
            if (name.startsWith("java.") || name.startsWith("javax.") || name.startsWith("android.") || name.startsWith("androidx.")) {
                this.f7476e = null;
            }
        }

        /* JADX WARN: Type inference failed for: r0v0, types: [java.util.ArrayList, java.util.List<fe.m>] */
        /* JADX WARN: Type inference failed for: r0v1, types: [java.util.HashMap, java.util.Map<java.lang.Class, java.lang.Object>] */
        /* JADX WARN: Type inference failed for: r0v2, types: [java.util.HashMap, java.util.Map<java.lang.String, java.lang.Class>] */
        public final void d() {
            this.f7472a.clear();
            this.f7473b.clear();
            this.f7474c.clear();
            this.f7475d.setLength(0);
            this.f7476e = null;
            this.f7477f = false;
            this.f7478g = null;
        }
    }

    /* JADX WARN: Type inference failed for: r11v0, types: [java.util.ArrayList, java.util.List<fe.m>] */
    public final void a(a aVar) {
        Method[] methods;
        k kVar;
        try {
            try {
                methods = aVar.f7476e.getDeclaredMethods();
            } catch (LinkageError e10) {
                StringBuilder sbC = a0.b.c("Could not inspect methods of ");
                sbC.append(aVar.f7476e.getName());
                throw new e(androidx.recyclerview.widget.d.c(sbC.toString(), ". Please make this class visible to EventBus annotation processor to avoid reflection."), e10);
            }
        } catch (Throwable unused) {
            methods = aVar.f7476e.getMethods();
            aVar.f7477f = true;
        }
        for (Method method : methods) {
            int modifiers = method.getModifiers();
            if ((modifiers & 1) != 0 && (modifiers & 5192) == 0) {
                Class<?>[] parameterTypes = method.getParameterTypes();
                if (parameterTypes.length == 1 && (kVar = (k) method.getAnnotation(k.class)) != null) {
                    Class<?> cls = parameterTypes[0];
                    if (aVar.a(method, cls)) {
                        aVar.f7472a.add(new m(method, cls, kVar.threadMode(), kVar.priority(), kVar.sticky()));
                    }
                }
            }
        }
    }

    public final List<m> b(a aVar) {
        ArrayList arrayList = new ArrayList(aVar.f7472a);
        aVar.d();
        synchronized (f7471b) {
            for (int i10 = 0; i10 < 4; i10++) {
                a[] aVarArr = f7471b;
                if (aVarArr[i10] == null) {
                    aVarArr[i10] = aVar;
                    break;
                }
            }
        }
        return arrayList;
    }

    public final a c() {
        synchronized (f7471b) {
            for (int i10 = 0; i10 < 4; i10++) {
                a[] aVarArr = f7471b;
                a aVar = aVarArr[i10];
                if (aVar != null) {
                    aVarArr[i10] = null;
                    return aVar;
                }
            }
            return new a();
        }
    }
}
