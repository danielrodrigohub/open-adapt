package l3;

import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;

/* JADX INFO: compiled from: LruCache.java */
/* JADX INFO: loaded from: classes.dex */
public class i<T, Y> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Map<T, a<Y>> f9936a = new LinkedHashMap(100, 0.75f, true);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public long f9937b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public long f9938c;

    /* JADX INFO: compiled from: LruCache.java */
    public static final class a<Y> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final Y f9939a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final int f9940b;

        public a(Y y7, int i10) {
            this.f9939a = y7;
            this.f9940b = i10;
        }
    }

    public i(long j10) {
        this.f9937b = j10;
    }

    public final synchronized Y a(T t10) {
        a aVar;
        aVar = (a) this.f9936a.get(t10);
        return aVar != null ? aVar.f9939a : null;
    }

    public int b(Y y7) {
        return 1;
    }

    public void c(T t10, Y y7) {
    }

    public final synchronized Y d(T t10, Y y7) {
        int iB = b(y7);
        long j10 = iB;
        if (j10 >= this.f9937b) {
            c(t10, y7);
            return null;
        }
        if (y7 != null) {
            this.f9938c += j10;
        }
        a<Y> aVarPut = this.f9936a.put(t10, y7 == null ? null : new a<>(y7, iB));
        if (aVarPut != null) {
            this.f9938c -= (long) aVarPut.f9940b;
            if (!aVarPut.f9939a.equals(y7)) {
                c(t10, aVarPut.f9939a);
            }
        }
        e(this.f9937b);
        return aVarPut != null ? aVarPut.f9939a : null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final synchronized void e(long j10) {
        while (this.f9938c > j10) {
            Iterator it = this.f9936a.entrySet().iterator();
            Map.Entry entry = (Map.Entry) it.next();
            a aVar = (a) entry.getValue();
            this.f9938c -= (long) aVar.f9940b;
            Object key = entry.getKey();
            it.remove();
            c(key, aVar.f9939a);
        }
    }
}
