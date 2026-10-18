package md;

import com.newrelic.agent.android.agentdata.HexAttribute;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import p4.h;
import td.c;

/* JADX INFO: compiled from: PlatformImplementations.kt */
/* JADX INFO: loaded from: classes.dex */
public class a {

    /* JADX INFO: renamed from: md.a$a, reason: collision with other inner class name */
    /* JADX INFO: compiled from: PlatformImplementations.kt */
    public static final class C0210a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final Method f11124a;

        /* JADX WARN: Code duplicated, block: B:13:0x0035  */
        static {
            Method method;
            boolean z10;
            Method[] methods = Throwable.class.getMethods();
            h.i(methods, "throwableMethods");
            int length = methods.length;
            int i10 = 0;
            while (true) {
                method = null;
                if (i10 >= length) {
                    break;
                }
                Method method2 = methods[i10];
                if (h.c(method2.getName(), "addSuppressed")) {
                    Class<?>[] parameterTypes = method2.getParameterTypes();
                    h.i(parameterTypes, "it.parameterTypes");
                    z10 = h.c(parameterTypes.length == 1 ? parameterTypes[0] : null, Throwable.class);
                }
                if (z10) {
                    method = method2;
                    break;
                }
                i10++;
            }
            f11124a = method;
            int length2 = methods.length;
            for (int i11 = 0; i11 < length2 && !h.c(methods[i11].getName(), "getSuppressed"); i11++) {
            }
        }
    }

    public void a(Throwable th, Throwable th2) throws IllegalAccessException, InvocationTargetException {
        h.j(th, HexAttribute.HEX_ATTR_CAUSE);
        h.j(th2, "exception");
        Method method = C0210a.f11124a;
        if (method != null) {
            method.invoke(th, th2);
        }
    }

    public c b() {
        return new td.b();
    }
}
