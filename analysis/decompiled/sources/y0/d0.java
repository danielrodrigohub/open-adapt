package y0;

import android.annotation.SuppressLint;
import android.app.ActivityManager;
import android.content.Context;
import android.content.Intent;
import android.database.Cursor;
import android.os.Looper;
import android.util.Log;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.BitSet;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.Set;
import java.util.TreeMap;
import java.util.concurrent.Executor;
import java.util.concurrent.locks.ReentrantReadWriteLock;

/* JADX INFO: compiled from: RoomDatabase.java */
/* JADX INFO: loaded from: classes.dex */
public abstract class d0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    @Deprecated
    public volatile d1.b f18155a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public Executor f18156b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public d1.d f18157c;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public boolean f18159e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @Deprecated
    public List<b> f18160f;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public y0.a f18163i;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final ReentrantReadWriteLock f18162h = new ReentrantReadWriteLock();

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final ThreadLocal<Integer> f18164j = new ThreadLocal<>();

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final Map<String, Object> f18165k = Collections.synchronizedMap(new HashMap());

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final androidx.room.c f18158d = e();

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final Map<Class<?>, Object> f18166l = new HashMap();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public Map<Class<? extends z0.a>, z0.a> f18161g = new HashMap();

    /* JADX INFO: compiled from: RoomDatabase.java */
    public static class a<T extends d0> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final Class<T> f18167a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final String f18168b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final Context f18169c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public ArrayList<b> f18170d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public Executor f18171e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public Executor f18172f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        public d1.d.c f18173g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public boolean f18174h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public Intent f18175i;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public boolean f18177k;

        /* JADX INFO: renamed from: m, reason: collision with root package name */
        public Set<Integer> f18179m;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public boolean f18176j = true;

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        public final c f18178l = new c();

        public a(Context context, Class<T> cls, String str) {
            this.f18169c = context;
            this.f18167a = cls;
            this.f18168b = str;
        }

        /* JADX WARN: Type inference failed for: r3v0, types: [java.util.HashSet, java.util.Set<java.lang.Integer>] */
        /* JADX WARN: Type inference failed for: r3v1, types: [java.util.HashSet, java.util.Set<java.lang.Integer>] */
        public final a<T> a(z0.b... bVarArr) {
            if (this.f18179m == null) {
                this.f18179m = new HashSet();
            }
            for (z0.b bVar : bVarArr) {
                this.f18179m.add(Integer.valueOf(bVar.f19250a));
                this.f18179m.add(Integer.valueOf(bVar.f19251b));
            }
            this.f18178l.a(bVarArr);
            return this;
        }

        /* JADX WARN: Type inference failed for: r6v14, types: [java.util.HashMap, java.util.Map<java.lang.Class<? extends z0.a>, z0.a>] */
        /* JADX WARN: Type inference failed for: r9v2, types: [java.util.HashMap, java.util.Map<java.lang.Class<?>, java.lang.Object>] */
        @SuppressLint({"RestrictedApi"})
        public final T b() {
            Executor executor;
            Context context = this.f18169c;
            if (context == null) {
                throw new IllegalArgumentException("Cannot provide null context for the database.");
            }
            if (this.f18167a == null) {
                throw new IllegalArgumentException("Must provide an abstract class that extends RoomDatabase");
            }
            Executor executor2 = this.f18171e;
            if (executor2 == null && this.f18172f == null) {
                l.a.ExecutorC0192a executorC0192a = l.a.f9811d;
                this.f18172f = executorC0192a;
                this.f18171e = executorC0192a;
            } else if (executor2 != null && this.f18172f == null) {
                this.f18172f = executor2;
            } else if (executor2 == null && (executor = this.f18172f) != null) {
                this.f18171e = executor;
            }
            d1.d.c cVar = this.f18173g;
            if (cVar == null) {
                cVar = new e1.c();
            }
            d1.d.c cVar2 = cVar;
            String str = this.f18168b;
            c cVar3 = this.f18178l;
            ArrayList<b> arrayList = this.f18170d;
            boolean z10 = this.f18174h;
            ActivityManager activityManager = (ActivityManager) context.getSystemService("activity");
            n nVar = new n(context, str, cVar2, cVar3, arrayList, z10, (activityManager == null || activityManager.isLowRamDevice()) ? 2 : 3, this.f18171e, this.f18172f, this.f18175i, this.f18176j, this.f18177k);
            Class<T> cls = this.f18167a;
            String name = cls.getPackage().getName();
            String canonicalName = cls.getCanonicalName();
            if (!name.isEmpty()) {
                canonicalName = canonicalName.substring(name.length() + 1);
            }
            String str2 = canonicalName.replace('.', '_') + "_Impl";
            try {
                T t10 = (T) Class.forName(name.isEmpty() ? str2 : name + "." + str2, true, cls.getClassLoader()).newInstance();
                t10.f18157c = t10.f(nVar);
                Set<Class<? extends z0.a>> setH = t10.h();
                BitSet bitSet = new BitSet();
                Iterator<Class<? extends z0.a>> it = setH.iterator();
                while (true) {
                    int i10 = -1;
                    if (!it.hasNext()) {
                        for (int size = nVar.f18262g.size() - 1; size >= 0; size--) {
                            if (!bitSet.get(size)) {
                                throw new IllegalArgumentException("Unexpected auto migration specs found. Annotate AutoMigrationSpec implementation with @ProvidedAutoMigrationSpec annotation or remove this spec from the builder.");
                            }
                        }
                        Iterator it2 = t10.g().iterator();
                        while (true) {
                            if (!it2.hasNext()) {
                                break;
                            }
                            z0.b bVar = (z0.b) it2.next();
                            if (!Collections.unmodifiableMap(nVar.f18259d.f18180a).containsKey(Integer.valueOf(bVar.f19250a))) {
                                nVar.f18259d.a(bVar);
                            }
                        }
                        g0 g0Var = (g0) t10.q(g0.class, t10.f18157c);
                        if (g0Var != null) {
                            g0Var.f18218n = nVar;
                        }
                        if (((j) t10.q(j.class, t10.f18157c)) != null) {
                            Objects.requireNonNull(t10.f18158d);
                            throw null;
                        }
                        t10.f18157c.setWriteAheadLoggingEnabled(nVar.f18264i == 3);
                        t10.f18160f = nVar.f18260e;
                        t10.f18156b = nVar.f18265j;
                        new ArrayDeque();
                        t10.f18159e = nVar.f18263h;
                        Intent intent = nVar.f18267l;
                        if (intent != null) {
                            androidx.room.c cVar4 = t10.f18158d;
                            new androidx.room.d(nVar.f18257b, nVar.f18258c, intent, cVar4, cVar4.f2857d.f18156b);
                        }
                        Map<Class<?>, List<Class<?>>> mapI = t10.i();
                        BitSet bitSet2 = new BitSet();
                        for (Map.Entry<Class<?>, List<Class<?>>> entry : mapI.entrySet()) {
                            Class<?> key = entry.getKey();
                            for (Class<?> cls2 : entry.getValue()) {
                                int size2 = nVar.f18261f.size() - 1;
                                while (true) {
                                    if (size2 < 0) {
                                        size2 = -1;
                                        break;
                                    }
                                    if (cls2.isAssignableFrom(nVar.f18261f.get(size2).getClass())) {
                                        bitSet2.set(size2);
                                        break;
                                    }
                                    size2--;
                                }
                                if (size2 < 0) {
                                    throw new IllegalArgumentException("A required type converter (" + cls2 + ") for " + key.getCanonicalName() + " is missing in the database configuration.");
                                }
                                t10.f18166l.put(cls2, nVar.f18261f.get(size2));
                            }
                        }
                        for (int size3 = nVar.f18261f.size() - 1; size3 >= 0; size3--) {
                            if (!bitSet2.get(size3)) {
                                throw new IllegalArgumentException("Unexpected type converter " + nVar.f18261f.get(size3) + ". Annotate TypeConverter class with @ProvidedTypeConverter annotation or remove this converter from the builder.");
                            }
                        }
                        return t10;
                    }
                    Class<? extends z0.a> next = it.next();
                    for (int size4 = nVar.f18262g.size() - 1; size4 >= 0; size4--) {
                        if (next.isAssignableFrom(nVar.f18262g.get(size4).getClass())) {
                            bitSet.set(size4);
                            i10 = size4;
                            break;
                        }
                    }
                    if (i10 < 0) {
                        StringBuilder sbC = a0.b.c("A required auto migration spec (");
                        sbC.append(next.getCanonicalName());
                        sbC.append(") is missing in the database configuration.");
                        throw new IllegalArgumentException(sbC.toString());
                    }
                    t10.f18161g.put(next, nVar.f18262g.get(i10));
                }
            } catch (ClassNotFoundException unused) {
                StringBuilder sbC2 = a0.b.c("cannot find implementation for ");
                sbC2.append(cls.getCanonicalName());
                sbC2.append(". ");
                sbC2.append(str2);
                sbC2.append(" does not exist");
                throw new RuntimeException(sbC2.toString());
            } catch (IllegalAccessException unused2) {
                StringBuilder sbC3 = a0.b.c("Cannot access the constructor");
                sbC3.append(cls.getCanonicalName());
                throw new RuntimeException(sbC3.toString());
            } catch (InstantiationException unused3) {
                StringBuilder sbC4 = a0.b.c("Failed to create an instance of ");
                sbC4.append(cls.getCanonicalName());
                throw new RuntimeException(sbC4.toString());
            }
        }
    }

    /* JADX INFO: compiled from: RoomDatabase.java */
    public static abstract class b {
        public void a(d1.b bVar) {
        }
    }

    /* JADX INFO: compiled from: RoomDatabase.java */
    public static class c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public HashMap<Integer, TreeMap<Integer, z0.b>> f18180a = new HashMap<>();

        public final void a(z0.b... bVarArr) {
            for (z0.b bVar : bVarArr) {
                int i10 = bVar.f19250a;
                int i11 = bVar.f19251b;
                TreeMap<Integer, z0.b> treeMap = this.f18180a.get(Integer.valueOf(i10));
                if (treeMap == null) {
                    treeMap = new TreeMap<>();
                    this.f18180a.put(Integer.valueOf(i10), treeMap);
                }
                z0.b bVar2 = treeMap.get(Integer.valueOf(i11));
                if (bVar2 != null) {
                    Log.w("ROOM", "Overriding migration " + bVar2 + " with " + bVar);
                }
                treeMap.put(Integer.valueOf(i11), bVar);
            }
        }
    }

    /* JADX INFO: compiled from: RoomDatabase.java */
    public interface d {
        void a();
    }

    public final void a() {
        if (this.f18159e) {
            return;
        }
        if (Looper.getMainLooper().getThread() == Thread.currentThread()) {
            throw new IllegalStateException("Cannot access database on the main thread since it may potentially lock the UI for a long period of time.");
        }
    }

    public final void b() {
        if (!j() && this.f18164j.get() != null) {
            throw new IllegalStateException("Cannot access database on a different coroutine context inherited from a suspending transaction.");
        }
    }

    @Deprecated
    public final void c() {
        a();
        k();
    }

    public abstract void d();

    public abstract androidx.room.c e();

    public abstract d1.d f(n nVar);

    public List g() {
        return Collections.emptyList();
    }

    public Set<Class<? extends z0.a>> h() {
        return Collections.emptySet();
    }

    public Map<Class<?>, List<Class<?>>> i() {
        return Collections.emptyMap();
    }

    public final boolean j() {
        return this.f18157c.X().C();
    }

    public final void k() {
        a();
        d1.b bVarX = this.f18157c.X();
        this.f18158d.f(bVarX);
        if (bVarX.H()) {
            bVarX.P();
        } else {
            bVarX.e();
        }
    }

    public final void l() {
        this.f18157c.X().d();
        if (j()) {
            return;
        }
        androidx.room.c cVar = this.f18158d;
        if (cVar.f2858e.compareAndSet(false, true)) {
            cVar.f2857d.f18156b.execute(cVar.f2864k);
        }
    }

    public final void m(d1.b bVar) {
        androidx.room.c cVar = this.f18158d;
        synchronized (cVar) {
            if (cVar.f2859f) {
                Log.e("ROOM", "Invalidation tracker is initialized twice :/.");
                return;
            }
            e1.a aVar = (e1.a) bVar;
            aVar.k("PRAGMA temp_store = MEMORY;");
            aVar.k("PRAGMA recursive_triggers='ON';");
            aVar.k("CREATE TEMP TABLE room_table_modification_log(table_id INTEGER PRIMARY KEY, invalidated INTEGER NOT NULL DEFAULT 0)");
            cVar.f(aVar);
            cVar.f2860g = aVar.q("UPDATE room_table_modification_log SET invalidated = 0 WHERE invalidated = 1 ");
            cVar.f2859f = true;
        }
    }

    public final boolean n() {
        y0.a aVar = this.f18163i;
        if (aVar != null) {
            return !aVar.f18144a;
        }
        d1.b bVar = this.f18155a;
        return bVar != null && bVar.isOpen();
    }

    public final Cursor o(d1.f fVar) {
        a();
        b();
        return this.f18157c.X().M(fVar);
    }

    @Deprecated
    public final void p() {
        this.f18157c.X().L();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final <T> T q(Class<T> cls, d1.d dVar) {
        if (cls.isInstance(dVar)) {
            return dVar;
        }
        if (dVar instanceof o) {
            return (T) q(cls, ((o) dVar).x());
        }
        return null;
    }
}
