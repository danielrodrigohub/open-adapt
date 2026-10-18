package s2;

import android.util.Log;
import java.util.HashMap;
import java.util.Map;
import java.util.NavigableMap;
import java.util.TreeMap;

/* JADX INFO: compiled from: LruArrayPool.java */
/* JADX INFO: loaded from: classes.dex */
public final class i implements s2.b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final g<a, Object> f14970a = new g<>();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final b f14971b = new b();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Map<Class<?>, NavigableMap<Integer, Integer>> f14972c = new HashMap();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final Map<Class<?>, s2.a<?>> f14973d = new HashMap();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final int f14974e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f14975f;

    /* JADX INFO: compiled from: LruArrayPool.java */
    public static final class a implements l {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final b f14976a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f14977b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public Class<?> f14978c;

        public a(b bVar) {
            this.f14976a = bVar;
        }

        @Override // s2.l
        public final void a() {
            this.f14976a.c(this);
        }

        public final boolean equals(Object obj) {
            if (!(obj instanceof a)) {
                return false;
            }
            a aVar = (a) obj;
            return this.f14977b == aVar.f14977b && this.f14978c == aVar.f14978c;
        }

        public final int hashCode() {
            int i10 = this.f14977b * 31;
            Class<?> cls = this.f14978c;
            return i10 + (cls != null ? cls.hashCode() : 0);
        }

        public final String toString() {
            StringBuilder sbC = a0.b.c("Key{size=");
            sbC.append(this.f14977b);
            sbC.append("array=");
            sbC.append(this.f14978c);
            sbC.append('}');
            return sbC.toString();
        }
    }

    /* JADX INFO: compiled from: LruArrayPool.java */
    public static final class b extends c<a> {
        @Override // s2.c
        public final l a() {
            return new a(this);
        }

        public final a d(int i10, Class<?> cls) {
            a aVarB = b();
            aVarB.f14977b = i10;
            aVarB.f14978c = cls;
            return aVarB;
        }
    }

    public i(int i10) {
        this.f14974e = i10;
    }

    @Override // s2.b
    public final synchronized void a(int i10) {
        try {
            if (i10 >= 40) {
                synchronized (this) {
                    g(0);
                }
            } else if (i10 >= 20 || i10 == 15) {
                g(this.f14974e / 2);
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    @Override // s2.b
    public final synchronized void b() {
        g(0);
    }

    @Override // s2.b
    public final synchronized <T> void c(T t10) {
        Class<?> cls = t10.getClass();
        s2.a<T> aVarH = h(cls);
        int iB = aVarH.b(t10);
        int iC = aVarH.c() * iB;
        int iIntValue = 1;
        if (iC <= this.f14974e / 2) {
            a aVarD = this.f14971b.d(iB, cls);
            this.f14970a.b(aVarD, t10);
            NavigableMap<Integer, Integer> navigableMapJ = j(cls);
            Integer num = navigableMapJ.get(Integer.valueOf(aVarD.f14977b));
            Integer numValueOf = Integer.valueOf(aVarD.f14977b);
            if (num != null) {
                iIntValue = 1 + num.intValue();
            }
            navigableMapJ.put(numValueOf, Integer.valueOf(iIntValue));
            this.f14975f += iC;
            g(this.f14974e);
        }
    }

    /* JADX WARN: Code duplicated, block: B:16:0x002c  */
    @Override // s2.b
    public final synchronized <T> T d(int i10, Class<T> cls) {
        Integer numCeilingKey;
        boolean z10;
        numCeilingKey = j(cls).ceilingKey(Integer.valueOf(i10));
        z10 = true;
        if (numCeilingKey == null) {
            z10 = false;
        } else {
            int i11 = this.f14975f;
            if (!(i11 == 0 || this.f14974e / i11 >= 2) && numCeilingKey.intValue() > i10 * 8) {
                z10 = false;
            }
        }
        return (T) i(z10 ? this.f14971b.d(numCeilingKey.intValue(), cls) : this.f14971b.d(i10, cls), cls);
    }

    @Override // s2.b
    public final synchronized Object e() {
        return i(this.f14971b.d(8, byte[].class), byte[].class);
    }

    public final void f(int i10, Class<?> cls) {
        NavigableMap<Integer, Integer> navigableMapJ = j(cls);
        Integer num = navigableMapJ.get(Integer.valueOf(i10));
        if (num != null) {
            if (num.intValue() == 1) {
                navigableMapJ.remove(Integer.valueOf(i10));
                return;
            } else {
                navigableMapJ.put(Integer.valueOf(i10), Integer.valueOf(num.intValue() - 1));
                return;
            }
        }
        throw new NullPointerException("Tried to decrement empty size, size: " + i10 + ", this: " + this);
    }

    public final void g(int i10) {
        while (this.f14975f > i10) {
            Object objD = this.f14970a.d();
            c3.d.g(objD);
            s2.a aVarH = h(objD.getClass());
            this.f14975f -= aVarH.c() * aVarH.b(objD);
            f(aVarH.b(objD), objD.getClass());
            if (Log.isLoggable(aVarH.a(), 2)) {
                String strA = aVarH.a();
                StringBuilder sbC = a0.b.c("evicted: ");
                sbC.append(aVarH.b(objD));
                Log.v(strA, sbC.toString());
            }
        }
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    public final <T> s2.a<T> h(Class<T> cls) {
        s2.a<T> fVar = (s2.a) this.f14973d.get(cls);
        if (fVar == null) {
            if (cls.equals(int[].class)) {
                fVar = new h();
            } else {
                if (!cls.equals(byte[].class)) {
                    StringBuilder sbC = a0.b.c("No array pool found for: ");
                    sbC.append(cls.getSimpleName());
                    throw new IllegalArgumentException(sbC.toString());
                }
                fVar = new f();
            }
            this.f14973d.put((Class<?>) cls, (s2.a<?>) fVar);
        }
        return fVar;
    }

    public final <T> T i(a aVar, Class<T> cls) {
        s2.a<T> aVarH = h(cls);
        T t10 = (T) this.f14970a.a(aVar);
        if (t10 != null) {
            this.f14975f -= aVarH.c() * aVarH.b(t10);
            f(aVarH.b(t10), cls);
        }
        if (t10 != null) {
            return t10;
        }
        if (Log.isLoggable(aVarH.a(), 2)) {
            String strA = aVarH.a();
            StringBuilder sbC = a0.b.c("Allocated ");
            sbC.append(aVar.f14977b);
            sbC.append(" bytes");
            Log.v(strA, sbC.toString());
        }
        return aVarH.newArray(aVar.f14977b);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    public final NavigableMap<Integer, Integer> j(Class<?> cls) {
        NavigableMap<Integer, Integer> navigableMap = this.f14972c.get(cls);
        if (navigableMap != null) {
            return navigableMap;
        }
        TreeMap treeMap = new TreeMap();
        this.f14972c.put(cls, treeMap);
        return treeMap;
    }
}
