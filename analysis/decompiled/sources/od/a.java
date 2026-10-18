package od;

import td.b;
import td.c;

/* JADX INFO: compiled from: JDK8PlatformImplementations.kt */
/* JADX INFO: loaded from: classes.dex */
public class a extends nd.a {

    /* JADX INFO: renamed from: od.a$a, reason: collision with other inner class name */
    /* JADX INFO: compiled from: JDK8PlatformImplementations.kt */
    public static final class C0225a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final Integer f12566a;

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
            f12566a = num2;
        }
    }

    @Override // md.a
    public final c b() {
        Integer num = C0225a.f12566a;
        return num == null || num.intValue() >= 24 ? new ud.a() : new b();
    }
}
