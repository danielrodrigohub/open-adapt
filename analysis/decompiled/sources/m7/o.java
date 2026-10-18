package m7;

import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import okhttp3.internal.http2.Settings;

/* JADX INFO: compiled from: ExtensionRegistryLite.java */
/* JADX INFO: loaded from: classes.dex */
public final class o {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static volatile o f10712b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final o f10713c = new o(true);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Map<a, w.e<?, ?>> f10714a;

    /* JADX INFO: compiled from: ExtensionRegistryLite.java */
    public static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final Object f10715a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final int f10716b;

        public a(Object obj, int i10) {
            this.f10715a = obj;
            this.f10716b = i10;
        }

        public final boolean equals(Object obj) {
            if (!(obj instanceof a)) {
                return false;
            }
            a aVar = (a) obj;
            return this.f10715a == aVar.f10715a && this.f10716b == aVar.f10716b;
        }

        public final int hashCode() {
            return (System.identityHashCode(this.f10715a) * Settings.DEFAULT_INITIAL_WINDOW_SIZE) + this.f10716b;
        }
    }

    public o() {
        this.f10714a = new HashMap();
    }

    public static o a() {
        o oVar = f10712b;
        if (oVar == null) {
            synchronized (o.class) {
                oVar = f10712b;
                if (oVar == null) {
                    Class<?> cls = n.f10710a;
                    o oVar2 = null;
                    if (cls != null) {
                        try {
                            oVar2 = (o) cls.getDeclaredMethod("getEmptyRegistry", new Class[0]).invoke(null, new Object[0]);
                        } catch (Exception unused) {
                        }
                    }
                    if (oVar2 == null) {
                        oVar2 = f10713c;
                    }
                    f10712b = oVar2;
                    oVar = oVar2;
                }
            }
        }
        return oVar;
    }

    public o(boolean z10) {
        this.f10714a = Collections.emptyMap();
    }
}
