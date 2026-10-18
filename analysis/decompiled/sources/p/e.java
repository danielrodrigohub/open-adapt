package p;

import java.util.LinkedHashMap;
import java.util.Locale;
import java.util.Map;
import java.util.Objects;

/* JADX INFO: compiled from: LruCache.java */
/* JADX INFO: loaded from: classes.dex */
public class e<K, V> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final LinkedHashMap<K, V> f12588a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f12589b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f12590c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f12591d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f12592e;

    public e(int i10) {
        if (i10 <= 0) {
            throw new IllegalArgumentException("maxSize <= 0");
        }
        this.f12590c = i10;
        this.f12588a = new LinkedHashMap<>(0, 0.75f, true);
    }

    public final V a(K k10) {
        Objects.requireNonNull(k10, "key == null");
        synchronized (this) {
            V v10 = this.f12588a.get(k10);
            if (v10 != null) {
                this.f12591d++;
                return v10;
            }
            this.f12592e++;
            return null;
        }
    }

    public final V b(K k10, V v10) {
        V vPut;
        if (k10 == null || v10 == null) {
            throw new NullPointerException("key == null || value == null");
        }
        synchronized (this) {
            this.f12589b++;
            vPut = this.f12588a.put(k10, v10);
            if (vPut != null) {
                this.f12589b--;
            }
        }
        c(this.f12590c);
        return vPut;
    }

    public final void c(int i10) {
        while (true) {
            synchronized (this) {
                if (this.f12589b < 0 || (this.f12588a.isEmpty() && this.f12589b != 0)) {
                    break;
                }
                if (this.f12589b > i10 && !this.f12588a.isEmpty()) {
                    Map.Entry<K, V> next = this.f12588a.entrySet().iterator().next();
                    K key = next.getKey();
                    next.getValue();
                    this.f12588a.remove(key);
                    this.f12589b--;
                }
                return;
            }
        }
        throw new IllegalStateException(getClass().getName() + ".sizeOf() is reporting inconsistent results!");
    }

    public final synchronized String toString() {
        int i10;
        int i11;
        i10 = this.f12591d;
        i11 = this.f12592e + i10;
        return String.format(Locale.US, "LruCache[maxSize=%d,hits=%d,misses=%d,hitRate=%d%%]", Integer.valueOf(this.f12590c), Integer.valueOf(this.f12591d), Integer.valueOf(this.f12592e), Integer.valueOf(i11 != 0 ? (i10 * 100) / i11 : 0));
    }
}
