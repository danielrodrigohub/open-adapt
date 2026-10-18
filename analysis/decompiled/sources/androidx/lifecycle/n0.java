package androidx.lifecycle;

import java.io.Closeable;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;

/* JADX INFO: compiled from: ViewModelStore.java */
/* JADX INFO: loaded from: classes.dex */
public final class n0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final HashMap<String, j0> f2229a = new HashMap<>();

    /* JADX WARN: Type inference failed for: r3v2, types: [java.util.HashMap, java.util.Map<java.lang.String, java.lang.Object>] */
    public final void a() {
        for (j0 j0Var : this.f2229a.values()) {
            Map<String, Object> map = j0Var.f2209a;
            if (map != null) {
                synchronized (map) {
                    for (Object obj : j0Var.f2209a.values()) {
                        if (obj instanceof Closeable) {
                            try {
                                ((Closeable) obj).close();
                            } catch (IOException e10) {
                                throw new RuntimeException(e10);
                            }
                        }
                    }
                }
            }
            Set<Closeable> set = j0Var.f2210b;
            if (set != null) {
                synchronized (set) {
                    for (Closeable closeable : j0Var.f2210b) {
                        if (closeable instanceof Closeable) {
                            try {
                                closeable.close();
                            } catch (IOException e11) {
                                throw new RuntimeException(e11);
                            }
                        }
                    }
                }
            }
            j0Var.a();
        }
        this.f2229a.clear();
    }
}
