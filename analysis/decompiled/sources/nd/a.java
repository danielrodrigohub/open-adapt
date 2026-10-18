package nd;

import com.newrelic.agent.android.agentdata.HexAttribute;
import java.lang.reflect.InvocationTargetException;
import p4.h;

/* JADX INFO: compiled from: JDK7PlatformImplementations.kt */
/* JADX INFO: loaded from: classes.dex */
public class a extends md.a {

    /* JADX INFO: renamed from: nd.a$a, reason: collision with other inner class name */
    /* JADX INFO: compiled from: JDK7PlatformImplementations.kt */
    public static final class C0217a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final Integer f12037a;

        static {
            Integer num;
            Integer num2 = null;
            try {
                Object obj = Class.forName("android.os.Build$VERSION").getField("SDK_INT").get(null);
                num = obj instanceof Integer ? (Integer) obj : null;
            } catch (Throwable unused) {
            }
            if (num != null) {
                if (num.intValue() > 0) {
                    num2 = num;
                }
            }
            f12037a = num2;
        }
    }

    @Override // md.a
    public final void a(Throwable th, Throwable th2) throws IllegalAccessException, InvocationTargetException {
        h.j(th, HexAttribute.HEX_ATTR_CAUSE);
        h.j(th2, "exception");
        Integer num = C0217a.f12037a;
        if (num == null || num.intValue() >= 19) {
            th.addSuppressed(th2);
        } else {
            super.a(th, th2);
        }
    }
}
