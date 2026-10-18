package androidx.room;

import android.annotation.SuppressLint;
import android.database.Cursor;
import android.database.sqlite.SQLiteException;
import android.util.Log;
import d1.g;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.IdentityHashMap;
import java.util.Iterator;
import java.util.Locale;
import java.util.Map;
import java.util.Objects;
import java.util.Set;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.locks.ReentrantReadWriteLock;
import y0.d0;

/* JADX INFO: compiled from: InvalidationTracker.java */
/* JADX INFO: loaded from: classes.dex */
public final class c {

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public static final String[] f2853l = {"UPDATE", "DELETE", "INSERT"};

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String[] f2855b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Map<String, Set<String>> f2856c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final d0 f2857d;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public volatile g f2860g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final b f2861h;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public AtomicBoolean f2858e = new AtomicBoolean(false);

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public volatile boolean f2859f = false;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @SuppressLint({"RestrictedApi"})
    public final m.b<AbstractC0036c, d> f2862i = new m.b<>();

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final Object f2863j = new Object();

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public a f2864k = new a();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final HashMap<String, Integer> f2854a = new HashMap<>();

    /* JADX INFO: compiled from: InvalidationTracker.java */
    public class a implements Runnable {
        public a() {
        }

        public final Set<Integer> a() {
            HashSet hashSet = new HashSet();
            Cursor cursorO = c.this.f2857d.o(new d1.a("SELECT * FROM room_table_modification_log WHERE invalidated = 1;"));
            while (cursorO.moveToNext()) {
                try {
                    hashSet.add(Integer.valueOf(cursorO.getInt(0)));
                } catch (Throwable th) {
                    cursorO.close();
                    throw th;
                }
            }
            cursorO.close();
            if (!hashSet.isEmpty()) {
                c.this.f2860g.p();
            }
            return hashSet;
        }

        @Override // java.lang.Runnable
        public final void run() {
            Set<Integer> setA;
            ReentrantReadWriteLock.ReadLock lock = c.this.f2857d.f18162h.readLock();
            lock.lock();
            try {
                try {
                    if (!c.this.c()) {
                        lock.unlock();
                        Objects.requireNonNull(c.this);
                        return;
                    }
                    if (!c.this.f2858e.compareAndSet(true, false)) {
                        lock.unlock();
                        Objects.requireNonNull(c.this);
                        return;
                    }
                    if (c.this.f2857d.j()) {
                        lock.unlock();
                        Objects.requireNonNull(c.this);
                        return;
                    }
                    try {
                        d1.b bVarX = c.this.f2857d.f18157c.X();
                        bVarX.P();
                        try {
                            setA = a();
                            try {
                                bVarX.L();
                                bVarX.d();
                            } catch (Throwable th) {
                                th = th;
                                bVarX.d();
                                throw th;
                            }
                        } catch (Throwable th2) {
                            th = th2;
                        }
                    } catch (SQLiteException e10) {
                        e = e10;
                        Log.e("ROOM", "Cannot run invalidation tracker. Is the db closed?", e);
                    } catch (IllegalStateException e11) {
                        e = e11;
                        Log.e("ROOM", "Cannot run invalidation tracker. Is the db closed?", e);
                    }
                    lock.unlock();
                    Objects.requireNonNull(c.this);
                    if (setA != null || setA.isEmpty()) {
                    }
                    synchronized (c.this.f2862i) {
                        Iterator<Map.Entry<AbstractC0036c, d>> it = c.this.f2862i.iterator();
                        while (true) {
                            m.b.e eVar = (m.b.e) it;
                            if (eVar.hasNext()) {
                                d dVar = (d) ((Map.Entry) eVar.next()).getValue();
                                int length = dVar.f2871a.length;
                                Set<String> hashSet = null;
                                for (int i10 = 0; i10 < length; i10++) {
                                    if (setA.contains(Integer.valueOf(dVar.f2871a[i10]))) {
                                        if (length == 1) {
                                            hashSet = dVar.f2874d;
                                        } else {
                                            if (hashSet == null) {
                                                hashSet = new HashSet<>(length);
                                            }
                                            hashSet.add(dVar.f2872b[i10]);
                                        }
                                    }
                                }
                                if (hashSet != null) {
                                    dVar.f2873c.a(hashSet);
                                }
                            }
                        }
                    }
                    return;
                } catch (Throwable th3) {
                    lock.unlock();
                    Objects.requireNonNull(c.this);
                    throw th3;
                }
            } catch (SQLiteException | IllegalStateException e12) {
                e = e12;
                setA = null;
            }
            Log.e("ROOM", "Cannot run invalidation tracker. Is the db closed?", e);
            lock.unlock();
            Objects.requireNonNull(c.this);
            if (setA != null) {
            }
        }
    }

    /* JADX INFO: compiled from: InvalidationTracker.java */
    public static class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final long[] f2866a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final boolean[] f2867b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final int[] f2868c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public boolean f2869d;

        public b(int i10) {
            long[] jArr = new long[i10];
            this.f2866a = jArr;
            boolean[] zArr = new boolean[i10];
            this.f2867b = zArr;
            this.f2868c = new int[i10];
            Arrays.fill(jArr, 0L);
            Arrays.fill(zArr, false);
        }

        public final int[] a() {
            synchronized (this) {
                if (!this.f2869d) {
                    return null;
                }
                int length = this.f2866a.length;
                for (int i10 = 0; i10 < length; i10++) {
                    int i11 = 1;
                    boolean z10 = this.f2866a[i10] > 0;
                    boolean[] zArr = this.f2867b;
                    if (z10 != zArr[i10]) {
                        int[] iArr = this.f2868c;
                        if (!z10) {
                            i11 = 2;
                        }
                        iArr[i10] = i11;
                    } else {
                        this.f2868c[i10] = 0;
                    }
                    zArr[i10] = z10;
                }
                this.f2869d = false;
                return (int[]) this.f2868c.clone();
            }
        }
    }

    /* JADX INFO: renamed from: androidx.room.c$c, reason: collision with other inner class name */
    /* JADX INFO: compiled from: InvalidationTracker.java */
    public static abstract class AbstractC0036c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String[] f2870a;

        public AbstractC0036c(String[] strArr) {
            this.f2870a = (String[]) Arrays.copyOf(strArr, strArr.length);
        }

        public abstract void a(Set<String> set);
    }

    /* JADX INFO: compiled from: InvalidationTracker.java */
    public static class d {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final int[] f2871a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final String[] f2872b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final AbstractC0036c f2873c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public final Set<String> f2874d;

        public d(AbstractC0036c abstractC0036c, int[] iArr, String[] strArr) {
            this.f2873c = abstractC0036c;
            this.f2871a = iArr;
            this.f2872b = strArr;
            if (iArr.length != 1) {
                this.f2874d = null;
                return;
            }
            HashSet hashSet = new HashSet();
            hashSet.add(strArr[0]);
            this.f2874d = Collections.unmodifiableSet(hashSet);
        }

        public final void a(String[] strArr) {
            Set<String> set = null;
            if (this.f2872b.length == 1) {
                for (String str : strArr) {
                    if (str.equalsIgnoreCase(this.f2872b[0])) {
                        set = this.f2874d;
                        break;
                    }
                }
            } else {
                HashSet hashSet = new HashSet();
                for (String str2 : strArr) {
                    for (String str3 : this.f2872b) {
                        if (str3.equalsIgnoreCase(str2)) {
                            hashSet.add(str3);
                            break;
                        }
                    }
                }
                if (hashSet.size() > 0) {
                    set = hashSet;
                }
            }
            if (set != null) {
                this.f2873c.a(set);
            }
        }
    }

    public c(d0 d0Var, Map<String, String> map, Map<String, Set<String>> map2, String... strArr) {
        this.f2857d = d0Var;
        this.f2861h = new b(strArr.length);
        this.f2856c = map2;
        Collections.newSetFromMap(new IdentityHashMap());
        int length = strArr.length;
        this.f2855b = new String[length];
        for (int i10 = 0; i10 < length; i10++) {
            String str = strArr[i10];
            Locale locale = Locale.US;
            String lowerCase = str.toLowerCase(locale);
            this.f2854a.put(lowerCase, Integer.valueOf(i10));
            String str2 = map.get(strArr[i10]);
            if (str2 != null) {
                this.f2855b[i10] = str2.toLowerCase(locale);
            } else {
                this.f2855b[i10] = lowerCase;
            }
        }
        for (Map.Entry<String, String> entry : map.entrySet()) {
            String value = entry.getValue();
            Locale locale2 = Locale.US;
            String lowerCase2 = value.toLowerCase(locale2);
            if (this.f2854a.containsKey(lowerCase2)) {
                String lowerCase3 = entry.getKey().toLowerCase(locale2);
                HashMap<String, Integer> map3 = this.f2854a;
                map3.put(lowerCase3, map3.get(lowerCase2));
            }
        }
    }

    public static void b(StringBuilder sb2, String str, String str2) {
        a1.d.g(sb2, "`", "room_table_modification_trigger_", str, "_");
        sb2.append(str2);
        sb2.append("`");
    }

    @SuppressLint({"RestrictedApi"})
    public final void a(AbstractC0036c abstractC0036c) {
        d dVarM;
        boolean z10;
        String[] strArr = abstractC0036c.f2870a;
        HashSet hashSet = new HashSet();
        for (String str : strArr) {
            String lowerCase = str.toLowerCase(Locale.US);
            if (this.f2856c.containsKey(lowerCase)) {
                hashSet.addAll(this.f2856c.get(lowerCase));
            } else {
                hashSet.add(str);
            }
        }
        String[] strArr2 = (String[]) hashSet.toArray(new String[hashSet.size()]);
        int length = strArr2.length;
        int[] iArr = new int[length];
        int length2 = strArr2.length;
        for (int i10 = 0; i10 < length2; i10++) {
            Integer num = this.f2854a.get(strArr2[i10].toLowerCase(Locale.US));
            if (num == null) {
                StringBuilder sbC = a0.b.c("There is no table with name ");
                sbC.append(strArr2[i10]);
                throw new IllegalArgumentException(sbC.toString());
            }
            iArr[i10] = num.intValue();
        }
        d dVar = new d(abstractC0036c, iArr, strArr2);
        synchronized (this.f2862i) {
            dVarM = this.f2862i.m(abstractC0036c, dVar);
        }
        if (dVarM == null) {
            b bVar = this.f2861h;
            synchronized (bVar) {
                z10 = false;
                for (int i11 = 0; i11 < length; i11++) {
                    int i12 = iArr[i11];
                    long[] jArr = bVar.f2866a;
                    long j10 = jArr[i12];
                    jArr[i12] = 1 + j10;
                    if (j10 == 0) {
                        bVar.f2869d = true;
                        z10 = true;
                    }
                }
            }
            if (z10) {
                e();
            }
        }
    }

    public final boolean c() {
        if (!this.f2857d.n()) {
            return false;
        }
        if (!this.f2859f) {
            this.f2857d.f18157c.X();
        }
        if (this.f2859f) {
            return true;
        }
        Log.e("ROOM", "database is not initialized even though it is open");
        return false;
    }

    public final void d(d1.b bVar, int i10) {
        bVar.k("INSERT OR IGNORE INTO room_table_modification_log VALUES(" + i10 + ", 0)");
        String str = this.f2855b[i10];
        StringBuilder sb2 = new StringBuilder();
        String[] strArr = f2853l;
        for (int i11 = 0; i11 < 3; i11++) {
            String str2 = strArr[i11];
            sb2.setLength(0);
            sb2.append("CREATE TEMP TRIGGER IF NOT EXISTS ");
            b(sb2, str, str2);
            sb2.append(" AFTER ");
            sb2.append(str2);
            sb2.append(" ON `");
            a1.d.g(sb2, str, "` BEGIN UPDATE ", "room_table_modification_log", " SET ");
            a1.d.g(sb2, "invalidated", " = 1", " WHERE ", "table_id");
            sb2.append(" = ");
            sb2.append(i10);
            sb2.append(" AND ");
            sb2.append("invalidated");
            sb2.append(" = 0");
            sb2.append("; END");
            bVar.k(sb2.toString());
        }
    }

    public final void e() {
        if (this.f2857d.n()) {
            f(this.f2857d.f18157c.X());
        }
    }

    public final void f(d1.b bVar) {
        if (bVar.C()) {
            return;
        }
        try {
            ReentrantReadWriteLock.ReadLock lock = this.f2857d.f18162h.readLock();
            lock.lock();
            try {
                synchronized (this.f2863j) {
                    int[] iArrA = this.f2861h.a();
                    if (iArrA == null) {
                        lock.unlock();
                        return;
                    }
                    int length = iArrA.length;
                    if (bVar.H()) {
                        bVar.P();
                    } else {
                        bVar.e();
                    }
                    for (int i10 = 0; i10 < length; i10++) {
                        try {
                            int i11 = iArrA[i10];
                            if (i11 == 1) {
                                d(bVar, i10);
                            } else if (i11 == 2) {
                                String str = this.f2855b[i10];
                                StringBuilder sb2 = new StringBuilder();
                                String[] strArr = f2853l;
                                for (int i12 = 0; i12 < 3; i12++) {
                                    String str2 = strArr[i12];
                                    sb2.setLength(0);
                                    sb2.append("DROP TRIGGER IF EXISTS ");
                                    b(sb2, str, str2);
                                    bVar.k(sb2.toString());
                                }
                            }
                        } catch (Throwable th) {
                            bVar.d();
                            throw th;
                        }
                    }
                    bVar.L();
                    bVar.d();
                    lock.unlock();
                }
            } catch (Throwable th2) {
                lock.unlock();
                throw th2;
            }
        } catch (SQLiteException | IllegalStateException e10) {
            Log.e("ROOM", "Cannot run invalidation tracker. Is the db closed?", e10);
        }
    }
}
