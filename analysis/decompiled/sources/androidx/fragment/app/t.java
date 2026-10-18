package androidx.fragment.app;

/* JADX INFO: compiled from: FragmentFactory.java */
/* JADX INFO: loaded from: classes.dex */
public class t {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final p.g<ClassLoader, p.g<String, Class<?>>> f2035a = new p.g<>();

    public static Class<?> b(ClassLoader classLoader, String str) throws ClassNotFoundException {
        p.g<ClassLoader, p.g<String, Class<?>>> gVar = f2035a;
        p.g<String, Class<?>> orDefault = gVar.getOrDefault(classLoader, null);
        if (orDefault == null) {
            orDefault = new p.g<>();
            gVar.put(classLoader, orDefault);
        }
        Class<?> orDefault2 = orDefault.getOrDefault(str, null);
        if (orDefault2 != null) {
            return orDefault2;
        }
        Class<?> cls = Class.forName(str, false, classLoader);
        orDefault.put(str, cls);
        return cls;
    }

    public static Class<? extends m> c(ClassLoader classLoader, String str) {
        try {
            return b(classLoader, str);
        } catch (ClassCastException e10) {
            throw new m.c(a0.d.c("Unable to instantiate fragment ", str, ": make sure class is a valid subclass of Fragment"), e10);
        } catch (ClassNotFoundException e11) {
            throw new m.c(a0.d.c("Unable to instantiate fragment ", str, ": make sure class name exists"), e11);
        }
    }

    public m a(ClassLoader classLoader, String str) {
        throw null;
    }
}
