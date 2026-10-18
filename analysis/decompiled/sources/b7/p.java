package b7;

import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import okhttp3.internal.http2.Settings;

/* JADX INFO: compiled from: ExtensionRegistryLite.java */
/* JADX INFO: loaded from: classes.dex */
public final class p {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static volatile p f3466b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final p f3467c = new p(true);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Map<a, x.e<?, ?>> f3468a;

    /* JADX INFO: compiled from: ExtensionRegistryLite.java */
    public static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final Object f3469a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final int f3470b;

        public a(Object obj, int i10) {
            this.f3469a = obj;
            this.f3470b = i10;
        }

        public final boolean equals(Object obj) {
            if (!(obj instanceof a)) {
                return false;
            }
            a aVar = (a) obj;
            return this.f3469a == aVar.f3469a && this.f3470b == aVar.f3470b;
        }

        public final int hashCode() {
            return (System.identityHashCode(this.f3469a) * Settings.DEFAULT_INITIAL_WINDOW_SIZE) + this.f3470b;
        }
    }

    public p() {
        this.f3468a = new HashMap();
    }

    public static p a() {
        p pVar = f3466b;
        if (pVar == null) {
            synchronized (p.class) {
                pVar = f3466b;
                if (pVar == null) {
                    Class<?> cls = o.f3462a;
                    p pVar2 = null;
                    if (cls != null) {
                        try {
                            pVar2 = (p) cls.getDeclaredMethod("getEmptyRegistry", new Class[0]).invoke(null, new Object[0]);
                        } catch (Exception unused) {
                        }
                    }
                    if (pVar2 == null) {
                        pVar2 = f3467c;
                    }
                    f3466b = pVar2;
                    pVar = pVar2;
                }
            }
        }
        return pVar;
    }

    public p(boolean z10) {
        this.f3468a = Collections.emptyMap();
    }
}
