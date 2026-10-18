package g7;

import java.lang.reflect.Modifier;

/* JADX INFO: compiled from: UnsafeAllocator.java */
/* JADX INFO: loaded from: classes.dex */
public abstract class x {
    public static void a(Class cls) {
        String strB = b(cls);
        if (strB != null) {
            throw new AssertionError(androidx.recyclerview.widget.d.c("UnsafeAllocator is used for non-instantiable type: ", strB));
        }
    }

    public static String b(Class<?> cls) {
        int modifiers = cls.getModifiers();
        if (Modifier.isInterface(modifiers)) {
            StringBuilder sbC = a0.b.c("Interfaces can't be instantiated! Register an InstanceCreator or a TypeAdapter for this type. Interface name: ");
            sbC.append(cls.getName());
            return sbC.toString();
        }
        if (!Modifier.isAbstract(modifiers)) {
            return null;
        }
        StringBuilder sbC2 = a0.b.c("Abstract classes can't be instantiated! Register an InstanceCreator or a TypeAdapter for this type. Class name: ");
        sbC2.append(cls.getName());
        return sbC2.toString();
    }

    public abstract <T> T c(Class<T> cls) throws Exception;
}
