package l5;

import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: compiled from: HttpDataSource.java */
/* JADX INFO: loaded from: classes.dex */
public final class a0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Map<String, String> f9968a = new HashMap();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public Map<String, String> f9969b;

    public final synchronized Map<String, String> a() {
        if (this.f9969b == null) {
            this.f9969b = Collections.unmodifiableMap(new HashMap(this.f9968a));
        }
        return this.f9969b;
    }
}
