package fe;

import android.os.Looper;
import androidx.appcompat.widget.y0;
import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.ExecutorService;
import java.util.logging.Level;
import org.greenrobot.eventbus.ThreadMode;
import org.greenrobot.eventbus.android.AndroidComponentsImpl;

/* JADX INFO: compiled from: EventBus.java */
/* JADX INFO: loaded from: classes2.dex */
public final class c {

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public static final Map<Class<?>, List<Class<?>>> f7416r = new HashMap();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Map<Class<?>, CopyOnWriteArrayList<o>> f7417a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Map<Object, List<Class<?>>> f7418b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Map<Class<?>, Object> f7419c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final ThreadLocal<C0143c> f7420d = new a();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final m6.e f7421e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final f f7422f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final fe.b f7423g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final fe.a f7424h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final n f7425i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final ExecutorService f7426j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final boolean f7427k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final boolean f7428l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final boolean f7429m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final boolean f7430n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public final boolean f7431o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public final boolean f7432p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public final g f7433q;

    /* JADX INFO: compiled from: EventBus.java */
    public class a extends ThreadLocal<C0143c> {
        @Override // java.lang.ThreadLocal
        public final C0143c initialValue() {
            return new C0143c();
        }
    }

    /* JADX INFO: compiled from: EventBus.java */
    public static /* synthetic */ class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f7434a;

        static {
            int[] iArr = new int[ThreadMode.values().length];
            f7434a = iArr;
            try {
                iArr[ThreadMode.POSTING.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f7434a[ThreadMode.MAIN.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f7434a[ThreadMode.MAIN_ORDERED.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f7434a[ThreadMode.BACKGROUND.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f7434a[ThreadMode.ASYNC.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
        }
    }

    /* JADX INFO: renamed from: fe.c$c, reason: collision with other inner class name */
    /* JADX INFO: compiled from: EventBus.java */
    public static final class C0143c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final List<Object> f7435a = new ArrayList();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public boolean f7436b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public boolean f7437c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public Object f7438d;
    }

    public c(d dVar) {
        g aVar = dVar.f7447h;
        if (aVar == null) {
            ge.a aVar2 = ge.a.f8078c;
            aVar = aVar2 != null ? aVar2.f8079a : new g.a();
        }
        this.f7433q = aVar;
        this.f7417a = new HashMap();
        this.f7418b = new HashMap();
        this.f7419c = new ConcurrentHashMap();
        ge.a aVar3 = ge.a.f8078c;
        m6.e eVar = aVar3 != null ? aVar3.f8080b : null;
        this.f7421e = eVar;
        this.f7422f = eVar != null ? new f(this, Looper.getMainLooper()) : null;
        this.f7423g = new fe.b(this);
        this.f7424h = new fe.a(this);
        this.f7425i = new n();
        this.f7428l = dVar.f7440a;
        this.f7429m = dVar.f7441b;
        this.f7430n = dVar.f7442c;
        this.f7431o = dVar.f7443d;
        this.f7427k = dVar.f7444e;
        this.f7432p = dVar.f7445f;
        this.f7426j = dVar.f7446g;
    }

    public static void a(List<Class<?>> list, Class<?>[] clsArr) {
        for (Class<?> cls : clsArr) {
            if (!list.contains(cls)) {
                list.add(cls);
                a(list, cls.getInterfaces());
            }
        }
    }

    /* JADX WARN: Type inference failed for: r2v1, types: [java.util.ArrayList, java.util.List<fe.i>] */
    public final void b(i iVar) {
        Object obj = iVar.f7456a;
        o oVar = iVar.f7457b;
        iVar.f7456a = null;
        iVar.f7457b = null;
        iVar.f7458c = null;
        ?? r10 = i.f7455d;
        synchronized (r10) {
            if (r10.size() < 10000) {
                r10.add(iVar);
            }
        }
        if (oVar.f7481c) {
            c(oVar, obj);
        }
    }

    public final void c(o oVar, Object obj) {
        try {
            oVar.f7480b.f7464a.invoke(oVar.f7479a, obj);
        } catch (IllegalAccessException e10) {
            throw new IllegalStateException("Unexpected exception", e10);
        } catch (InvocationTargetException e11) {
            Throwable cause = e11.getCause();
            if (!(obj instanceof l)) {
                if (this.f7427k) {
                    throw new e("Invoking subscriber failed", cause);
                }
                if (this.f7428l) {
                    g gVar = this.f7433q;
                    Level level = Level.SEVERE;
                    StringBuilder sbC = a0.b.c("Could not dispatch event: ");
                    sbC.append(obj.getClass());
                    sbC.append(" to subscribing class ");
                    sbC.append(oVar.f7479a.getClass());
                    gVar.d(level, sbC.toString(), cause);
                }
                if (this.f7430n) {
                    e(new l(cause, obj, oVar.f7479a));
                    return;
                }
                return;
            }
            if (this.f7428l) {
                g gVar2 = this.f7433q;
                Level level2 = Level.SEVERE;
                StringBuilder sbC2 = a0.b.c("SubscriberExceptionEvent subscriber ");
                sbC2.append(oVar.f7479a.getClass());
                sbC2.append(" threw an exception");
                gVar2.d(level2, sbC2.toString(), cause);
                l lVar = (l) obj;
                g gVar3 = this.f7433q;
                StringBuilder sbC3 = a0.b.c("Initial event ");
                sbC3.append(lVar.f7462b);
                sbC3.append(" caused exception in ");
                sbC3.append(lVar.f7463c);
                gVar3.d(level2, sbC3.toString(), lVar.f7461a);
            }
        }
    }

    public final boolean d() {
        m6.e eVar = this.f7421e;
        if (eVar != null) {
            Objects.requireNonNull(eVar);
            if (!(Looper.getMainLooper() == Looper.myLooper())) {
                return false;
            }
        }
        return true;
    }

    /* JADX WARN: Type inference failed for: r1v0, types: [java.util.ArrayList, java.util.List, java.util.List<java.lang.Object>] */
    public final void e(Object obj) {
        C0143c c0143c = this.f7420d.get();
        ?? r10 = c0143c.f7435a;
        r10.add(obj);
        if (c0143c.f7436b) {
            return;
        }
        c0143c.f7437c = d();
        c0143c.f7436b = true;
        while (!r10.isEmpty()) {
            try {
                f(r10.remove(0), c0143c);
            } catch (Throwable th) {
                c0143c.f7436b = false;
                c0143c.f7437c = false;
                throw th;
            }
        }
        c0143c.f7436b = false;
        c0143c.f7437c = false;
    }

    /* JADX WARN: Type inference failed for: r1v2, types: [java.util.HashMap, java.util.Map<java.lang.Class<?>, java.util.List<java.lang.Class<?>>>] */
    /* JADX WARN: Type inference failed for: r4v6, types: [java.util.HashMap, java.util.Map<java.lang.Class<?>, java.util.List<java.lang.Class<?>>>] */
    /* JADX WARN: Type inference incomplete: some casts might be missing */
    public final void f(Object obj, C0143c c0143c) throws Error {
        boolean zG;
        List list;
        Class<?> cls = obj.getClass();
        if (this.f7432p) {
            ?? r10 = f7416r;
            synchronized (r10) {
                List list2 = (List) r10.get(cls);
                list = list2;
                if (list2 == null) {
                    ArrayList arrayList = new ArrayList();
                    for (Class<?> superclass = cls; superclass != null; superclass = superclass.getSuperclass()) {
                        arrayList.add(superclass);
                        a(arrayList, superclass.getInterfaces());
                    }
                    f7416r.put(cls, arrayList);
                    list = arrayList;
                }
            }
            int size = list.size();
            zG = false;
            for (int i10 = 0; i10 < size; i10++) {
                zG |= g(obj, c0143c, (Class) list.get(i10));
            }
        } else {
            zG = g(obj, c0143c, cls);
        }
        if (zG) {
            return;
        }
        if (this.f7429m) {
            this.f7433q.a(Level.FINE, "No subscribers registered for event " + cls);
        }
        if (!this.f7431o || cls == h.class || cls == l.class) {
            return;
        }
        e(new h(this, obj, 0));
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [java.util.HashMap, java.util.Map<java.lang.Class<?>, java.util.concurrent.CopyOnWriteArrayList<fe.o>>] */
    public final boolean g(Object obj, C0143c c0143c, Class<?> cls) {
        CopyOnWriteArrayList<o> copyOnWriteArrayList;
        synchronized (this) {
            copyOnWriteArrayList = (CopyOnWriteArrayList) this.f7417a.get(cls);
        }
        if (copyOnWriteArrayList == null || copyOnWriteArrayList.isEmpty()) {
            return false;
        }
        for (o oVar : copyOnWriteArrayList) {
            c0143c.f7438d = obj;
            h(oVar, obj, c0143c.f7437c);
        }
        return true;
    }

    public final void h(o oVar, Object obj, boolean z10) {
        int i10 = b.f7434a[oVar.f7480b.f7465b.ordinal()];
        if (i10 == 1) {
            c(oVar, obj);
            return;
        }
        if (i10 == 2) {
            if (z10) {
                c(oVar, obj);
                return;
            } else {
                this.f7422f.a(oVar, obj);
                return;
            }
        }
        if (i10 == 3) {
            f fVar = this.f7422f;
            if (fVar != null) {
                fVar.a(oVar, obj);
                return;
            } else {
                c(oVar, obj);
                return;
            }
        }
        if (i10 == 4) {
            if (z10) {
                this.f7423g.a(oVar, obj);
                return;
            } else {
                c(oVar, obj);
                return;
            }
        }
        if (i10 == 5) {
            this.f7424h.a(oVar, obj);
        } else {
            StringBuilder sbC = a0.b.c("Unknown thread mode: ");
            sbC.append(oVar.f7480b.f7465b);
            throw new IllegalStateException(sbC.toString());
        }
    }

    /* JADX WARN: Code duplicated, block: B:24:0x0053  */
    /* JADX WARN: Type inference failed for: r1v8, types: [java.util.Map<java.lang.Class<?>, java.util.List<fe.m>>, java.util.concurrent.ConcurrentHashMap] */
    /* JADX WARN: Type inference failed for: r3v0, types: [java.util.Map<java.lang.Class<?>, java.util.List<fe.m>>, java.util.concurrent.ConcurrentHashMap] */
    /* JADX WARN: Type inference failed for: r9v2, types: [java.util.ArrayList, java.util.List<fe.m>] */
    public final void i(Object obj) {
        boolean z10;
        he.a aVarC;
        if (d3.e.l()) {
            try {
                int i10 = AndroidComponentsImpl.f12569d;
                z10 = true;
            } catch (ClassNotFoundException unused) {
                z10 = false;
            }
            if (!z10) {
                throw new RuntimeException("It looks like you are using EventBus on Android, make sure to add the \"eventbus\" Android library to your dependencies.");
            }
        }
        Class<?> cls = obj.getClass();
        n nVar = this.f7425i;
        Objects.requireNonNull(nVar);
        List<m> listB = (List) n.f7470a.get(cls);
        if (listB == null) {
            n.a aVarC2 = nVar.c();
            aVarC2.f7476e = cls;
            aVarC2.f7477f = false;
            aVarC2.f7478g = null;
            while (aVarC2.f7476e != null) {
                he.a aVar = aVarC2.f7478g;
                if (aVar == null || aVar.c() == null) {
                    aVarC = null;
                } else {
                    aVarC = aVarC2.f7478g.c();
                    if (aVarC2.f7476e != aVarC.b()) {
                        aVarC = null;
                    }
                }
                aVarC2.f7478g = aVarC;
                if (aVarC != null) {
                    for (m mVar : aVarC.a()) {
                        if (aVarC2.a(mVar.f7464a, mVar.f7466c)) {
                            aVarC2.f7472a.add(mVar);
                        }
                    }
                } else {
                    nVar.a(aVarC2);
                }
                aVarC2.c();
            }
            listB = nVar.b(aVarC2);
            if (((ArrayList) listB).isEmpty()) {
                throw new e("Subscriber " + cls + " and its super classes have no public methods with the @Subscribe annotation");
            }
            n.f7470a.put(cls, listB);
        }
        synchronized (this) {
            Iterator<m> it = listB.iterator();
            while (it.hasNext()) {
                j(obj, it.next());
            }
        }
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    public final void j(Object obj, m mVar) {
        Object value;
        Class<?> cls = mVar.f7466c;
        o oVar = new o(obj, mVar);
        CopyOnWriteArrayList<o> copyOnWriteArrayList = this.f7417a.get(cls);
        if (copyOnWriteArrayList == null) {
            copyOnWriteArrayList = new CopyOnWriteArrayList<>();
            this.f7417a.put(cls, copyOnWriteArrayList);
        } else if (copyOnWriteArrayList.contains(oVar)) {
            StringBuilder sbC = a0.b.c("Subscriber ");
            sbC.append(obj.getClass());
            sbC.append(" already registered to event ");
            sbC.append(cls);
            throw new e(sbC.toString());
        }
        int size = copyOnWriteArrayList.size();
        for (int i10 = 0; i10 <= size; i10++) {
            if (i10 == size || mVar.f7467d > copyOnWriteArrayList.get(i10).f7480b.f7467d) {
                copyOnWriteArrayList.add(i10, oVar);
                break;
            }
        }
        List<Class<?>> arrayList = this.f7418b.get(obj);
        if (arrayList == null) {
            arrayList = new ArrayList<>();
            this.f7418b.put(obj, arrayList);
        }
        arrayList.add(cls);
        if (mVar.f7468e) {
            if (!this.f7432p) {
                Object obj2 = this.f7419c.get(cls);
                if (obj2 != null) {
                    h(oVar, obj2, d());
                    return;
                }
                return;
            }
            for (Map.Entry<Class<?>, Object> entry : this.f7419c.entrySet()) {
                if (cls.isAssignableFrom(entry.getKey()) && (value = entry.getValue()) != null) {
                    h(oVar, value, d());
                }
            }
        }
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [java.util.HashMap, java.util.Map<java.lang.Object, java.util.List<java.lang.Class<?>>>] */
    /* JADX WARN: Type inference failed for: r0v5, types: [java.util.HashMap, java.util.Map<java.lang.Object, java.util.List<java.lang.Class<?>>>] */
    /* JADX WARN: Type inference failed for: r2v1, types: [java.util.HashMap, java.util.Map<java.lang.Class<?>, java.util.concurrent.CopyOnWriteArrayList<fe.o>>] */
    public final synchronized void k(Object obj) {
        List list = (List) this.f7418b.get(obj);
        if (list != null) {
            Iterator it = list.iterator();
            while (it.hasNext()) {
                List list2 = (List) this.f7417a.get((Class) it.next());
                if (list2 != null) {
                    int size = list2.size();
                    int i10 = 0;
                    while (i10 < size) {
                        o oVar = (o) list2.get(i10);
                        if (oVar.f7479a == obj) {
                            oVar.f7481c = false;
                            list2.remove(i10);
                            i10--;
                            size--;
                        }
                        i10++;
                    }
                }
            }
            this.f7418b.remove(obj);
        } else {
            this.f7433q.a(Level.WARNING, "Subscriber to unregister was not registered before: " + obj.getClass());
        }
    }

    public final String toString() {
        StringBuilder sbC = y0.c("EventBus[indexCount=", 0, ", eventInheritance=");
        sbC.append(this.f7432p);
        sbC.append("]");
        return sbC.toString();
    }
}
