package g7;

import java.lang.reflect.AccessibleObject;
import java.lang.reflect.Method;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: compiled from: ReflectionAccessFilterHelper.java */
/* JADX INFO: loaded from: classes.dex */
public final class r {

    /* JADX INFO: compiled from: ReflectionAccessFilterHelper.java */
    public static abstract class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final a f7841a;

        /* JADX INFO: renamed from: g7.r$a$a, reason: collision with other inner class name */
        /* JADX INFO: compiled from: ReflectionAccessFilterHelper.java */
        public class C0148a extends a {

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public final /* synthetic */ Method f7842b;

            public C0148a(Method method) {
                this.f7842b = method;
            }

            @Override // g7.r.a
            public final boolean a(AccessibleObject accessibleObject, Object obj) {
                try {
                    return ((Boolean) this.f7842b.invoke(accessibleObject, obj)).booleanValue();
                } catch (Exception e10) {
                    throw new RuntimeException("Failed invoking canAccess", e10);
                }
            }
        }

        /* JADX INFO: compiled from: ReflectionAccessFilterHelper.java */
        public class b extends a {
            @Override // g7.r.a
            public final boolean a(AccessibleObject accessibleObject, Object obj) {
                return true;
            }
        }

        static {
            a c0148a;
            if (m.f7817a >= 9) {
                try {
                    c0148a = new C0148a(AccessibleObject.class.getDeclaredMethod("canAccess", Object.class));
                } catch (NoSuchMethodException unused) {
                    c0148a = null;
                }
            } else {
                c0148a = null;
            }
            if (c0148a == null) {
                c0148a = new b();
            }
            f7841a = c0148a;
        }

        public abstract boolean a(AccessibleObject accessibleObject, Object obj);
    }

    /* JADX WARN: Incorrect return type in method signature: (Ljava/util/List<Le7/t;>;Ljava/lang/Class<*>;)V */
    public static int a(List list, Class cls) {
        Iterator it = list.iterator();
        while (it.hasNext()) {
            int iA = ((e7.t) it.next()).a();
            if (iA != 2) {
                return iA;
            }
        }
        return 1;
    }
}
