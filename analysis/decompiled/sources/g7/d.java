package g7;

import java.io.ObjectInputStream;
import java.io.ObjectStreamClass;
import java.lang.reflect.Field;
import java.lang.reflect.Method;

/* JADX INFO: compiled from: ConstructorConstructor.java */
/* JADX INFO: loaded from: classes.dex */
public final class d implements q<Object> {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final x f7791h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final /* synthetic */ Class f7792i;

    public d(Class cls) {
        x wVar;
        this.f7792i = cls;
        try {
            Class<?> cls2 = Class.forName("sun.misc.Unsafe");
            Field declaredField = cls2.getDeclaredField("theUnsafe");
            declaredField.setAccessible(true);
            wVar = new t(cls2.getMethod("allocateInstance", Class.class), declaredField.get(null));
        } catch (Exception unused) {
            try {
                try {
                    Method declaredMethod = ObjectStreamClass.class.getDeclaredMethod("getConstructorId", Class.class);
                    declaredMethod.setAccessible(true);
                    int iIntValue = ((Integer) declaredMethod.invoke(null, Object.class)).intValue();
                    Method declaredMethod2 = ObjectStreamClass.class.getDeclaredMethod("newInstance", Class.class, Integer.TYPE);
                    declaredMethod2.setAccessible(true);
                    wVar = new u(declaredMethod2, iIntValue);
                } catch (Exception unused2) {
                    Method declaredMethod3 = ObjectInputStream.class.getDeclaredMethod("newInstance", Class.class, Class.class);
                    declaredMethod3.setAccessible(true);
                    wVar = new v(declaredMethod3);
                }
            } catch (Exception unused3) {
                wVar = new w();
            }
        }
        this.f7791h = wVar;
    }

    @Override // g7.q
    public final Object construct() {
        try {
            return this.f7791h.c(this.f7792i);
        } catch (Exception e10) {
            StringBuilder sbC = a0.b.c("Unable to create instance of ");
            sbC.append(this.f7792i);
            sbC.append(". Registering an InstanceCreator or a TypeAdapter for this type, or adding a no-args constructor may fix this problem.");
            throw new RuntimeException(sbC.toString(), e10);
        }
    }
}
