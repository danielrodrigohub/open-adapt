package m5;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import java.util.ArrayDeque;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArraySet;

/* JADX INFO: compiled from: ListenerSet.java */
/* JADX INFO: loaded from: classes.dex */
public final class o<T> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final m5.c f10417a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final l f10418b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final b<T> f10419c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final CopyOnWriteArraySet<c<T>> f10420d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final ArrayDeque<Runnable> f10421e = new ArrayDeque<>();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final ArrayDeque<Runnable> f10422f = new ArrayDeque<>();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public boolean f10423g;

    /* JADX INFO: compiled from: ListenerSet.java */
    public interface a<T> {
        void invoke(T t10);
    }

    /* JADX INFO: compiled from: ListenerSet.java */
    public interface b<T> {
        void a(T t10, j jVar);
    }

    /* JADX INFO: compiled from: ListenerSet.java */
    public static final class c<T> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final T f10424a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public j.a f10425b = new j.a();

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public boolean f10426c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public boolean f10427d;

        public c(T t10) {
            this.f10424a = t10;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || c.class != obj.getClass()) {
                return false;
            }
            return this.f10424a.equals(((c) obj).f10424a);
        }

        public final int hashCode() {
            return this.f10424a.hashCode();
        }
    }

    public o(CopyOnWriteArraySet<c<T>> copyOnWriteArraySet, Looper looper, m5.c cVar, b<T> bVar) {
        this.f10417a = cVar;
        this.f10420d = copyOnWriteArraySet;
        this.f10419c = bVar;
        this.f10418b = cVar.b(looper, new Handler.Callback() { // from class: m5.m
            /* JADX WARN: Type inference fix 'apply assigned field type' failed
            java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
            	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
            	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
            	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
            	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
            	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
            	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
            	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
             */
            @Override // android.os.Handler.Callback
            public final boolean handleMessage(Message message) {
                o oVar = this.f10413h;
                Iterator it = oVar.f10420d.iterator();
                while (it.hasNext()) {
                    o.c cVar2 = (o.c) it.next();
                    o.b<T> bVar2 = oVar.f10419c;
                    if (!cVar2.f10427d && cVar2.f10426c) {
                        j jVarB = cVar2.f10425b.b();
                        cVar2.f10425b = new j.a();
                        cVar2.f10426c = false;
                        bVar2.a(cVar2.f10424a, jVarB);
                    }
                    if (oVar.f10418b.c()) {
                        return true;
                    }
                }
                return true;
            }
        });
    }

    public final void a() {
        if (this.f10422f.isEmpty()) {
            return;
        }
        if (!this.f10418b.c()) {
            l lVar = this.f10418b;
            lVar.f(lVar.j(0));
        }
        boolean z10 = !this.f10421e.isEmpty();
        this.f10421e.addAll(this.f10422f);
        this.f10422f.clear();
        if (z10) {
            return;
        }
        while (!this.f10421e.isEmpty()) {
            this.f10421e.peekFirst().run();
            this.f10421e.removeFirst();
        }
    }

    public final void b(final int i10, final a<T> aVar) {
        final CopyOnWriteArraySet copyOnWriteArraySet = new CopyOnWriteArraySet(this.f10420d);
        this.f10422f.add(new Runnable() { // from class: m5.n
            @Override // java.lang.Runnable
            public final void run() {
                CopyOnWriteArraySet<o.c> copyOnWriteArraySet2 = copyOnWriteArraySet;
                int i11 = i10;
                o.a aVar2 = aVar;
                for (o.c cVar : copyOnWriteArraySet2) {
                    if (!cVar.f10427d) {
                        if (i11 != -1) {
                            cVar.f10425b.a(i11);
                        }
                        cVar.f10426c = true;
                        aVar2.invoke(cVar.f10424a);
                    }
                }
            }
        });
    }

    public final void c() {
        for (c<T> cVar : this.f10420d) {
            b<T> bVar = this.f10419c;
            cVar.f10427d = true;
            if (cVar.f10426c) {
                bVar.a(cVar.f10424a, cVar.f10425b.b());
            }
        }
        this.f10420d.clear();
        this.f10423g = true;
    }

    public final void d(int i10, a<T> aVar) {
        b(i10, aVar);
        a();
    }
}
