package g7;

import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;

/* JADX INFO: compiled from: ConstructorConstructor.java */
/* JADX INFO: loaded from: classes.dex */
public final class k implements q<Object> {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ Constructor f7807h;

    public k(Constructor constructor) {
        this.f7807h = constructor;
    }

    @Override // g7.q
    public final Object construct() {
        try {
            return this.f7807h.newInstance(new Object[0]);
        } catch (IllegalAccessException e10) {
            j7.a.a(e10);
            throw null;
        } catch (InstantiationException e11) {
            StringBuilder sbC = a0.b.c("Failed to invoke ");
            sbC.append(this.f7807h);
            sbC.append(" with no args");
            throw new RuntimeException(sbC.toString(), e11);
        } catch (InvocationTargetException e12) {
            StringBuilder sbC2 = a0.b.c("Failed to invoke ");
            sbC2.append(this.f7807h);
            sbC2.append(" with no args");
            throw new RuntimeException(sbC2.toString(), e12.getTargetException());
        }
    }
}
