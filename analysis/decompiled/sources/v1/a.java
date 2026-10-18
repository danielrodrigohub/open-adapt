package v1;

import java.util.Locale;
import java.util.Objects;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.Future;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import java.util.concurrent.locks.LockSupport;
import java.util.logging.Level;
import java.util.logging.Logger;

/* JADX INFO: compiled from: AbstractFuture.java */
/* JADX INFO: loaded from: classes.dex */
public abstract class a<V> implements x6.a<V> {

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static final boolean f16104k = Boolean.parseBoolean(System.getProperty("guava.concurrent.generate_cancellation_cause", "false"));

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public static final Logger f16105l = Logger.getLogger(a.class.getName());

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public static final AbstractC0282a f16106m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public static final Object f16107n;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public volatile Object f16108h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public volatile d f16109i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public volatile h f16110j;

    /* JADX INFO: renamed from: v1.a$a, reason: collision with other inner class name */
    /* JADX INFO: compiled from: AbstractFuture.java */
    public static abstract class AbstractC0282a {
        public abstract boolean a(a<?> aVar, d dVar, d dVar2);

        public abstract boolean b(a<?> aVar, Object obj, Object obj2);

        public abstract boolean c(a<?> aVar, h hVar, h hVar2);

        public abstract void d(h hVar, h hVar2);

        public abstract void e(h hVar, Thread thread);
    }

    /* JADX INFO: compiled from: AbstractFuture.java */
    public static final class b {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public static final b f16111c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public static final b f16112d;

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final boolean f16113a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final Throwable f16114b;

        static {
            if (a.f16104k) {
                f16112d = null;
                f16111c = null;
            } else {
                f16112d = new b(false, null);
                f16111c = new b(true, null);
            }
        }

        public b(boolean z10, Throwable th) {
            this.f16113a = z10;
            this.f16114b = th;
        }
    }

    /* JADX INFO: compiled from: AbstractFuture.java */
    public static final class c {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final c f16115b = new c(new C0283a());

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final Throwable f16116a;

        /* JADX INFO: renamed from: v1.a$c$a, reason: collision with other inner class name */
        /* JADX INFO: compiled from: AbstractFuture.java */
        public class C0283a extends Throwable {
            public C0283a() {
                super("Failure occurred while trying to finish a future.");
            }

            @Override // java.lang.Throwable
            public final synchronized Throwable fillInStackTrace() {
                return this;
            }
        }

        public c(Throwable th) {
            boolean z10 = a.f16104k;
            Objects.requireNonNull(th);
            this.f16116a = th;
        }
    }

    /* JADX INFO: compiled from: AbstractFuture.java */
    public static final class d {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public static final d f16117d = new d(null, null);

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final Runnable f16118a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final Executor f16119b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public d f16120c;

        public d(Runnable runnable, Executor executor) {
            this.f16118a = runnable;
            this.f16119b = executor;
        }
    }

    /* JADX INFO: compiled from: AbstractFuture.java */
    public static final class e extends AbstractC0282a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final AtomicReferenceFieldUpdater<h, Thread> f16121a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final AtomicReferenceFieldUpdater<h, h> f16122b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final AtomicReferenceFieldUpdater<a, h> f16123c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public final AtomicReferenceFieldUpdater<a, d> f16124d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final AtomicReferenceFieldUpdater<a, Object> f16125e;

        public e(AtomicReferenceFieldUpdater<h, Thread> atomicReferenceFieldUpdater, AtomicReferenceFieldUpdater<h, h> atomicReferenceFieldUpdater2, AtomicReferenceFieldUpdater<a, h> atomicReferenceFieldUpdater3, AtomicReferenceFieldUpdater<a, d> atomicReferenceFieldUpdater4, AtomicReferenceFieldUpdater<a, Object> atomicReferenceFieldUpdater5) {
            this.f16121a = atomicReferenceFieldUpdater;
            this.f16122b = atomicReferenceFieldUpdater2;
            this.f16123c = atomicReferenceFieldUpdater3;
            this.f16124d = atomicReferenceFieldUpdater4;
            this.f16125e = atomicReferenceFieldUpdater5;
        }

        @Override // v1.a.AbstractC0282a
        public final boolean a(a<?> aVar, d dVar, d dVar2) {
            AtomicReferenceFieldUpdater<a, d> atomicReferenceFieldUpdater = this.f16124d;
            while (!atomicReferenceFieldUpdater.compareAndSet(aVar, dVar, dVar2)) {
                if (atomicReferenceFieldUpdater.get(aVar) != dVar) {
                    return false;
                }
            }
            return true;
        }

        @Override // v1.a.AbstractC0282a
        public final boolean b(a<?> aVar, Object obj, Object obj2) {
            AtomicReferenceFieldUpdater<a, Object> atomicReferenceFieldUpdater = this.f16125e;
            while (!atomicReferenceFieldUpdater.compareAndSet(aVar, obj, obj2)) {
                if (atomicReferenceFieldUpdater.get(aVar) != obj) {
                    return false;
                }
            }
            return true;
        }

        @Override // v1.a.AbstractC0282a
        public final boolean c(a<?> aVar, h hVar, h hVar2) {
            AtomicReferenceFieldUpdater<a, h> atomicReferenceFieldUpdater = this.f16123c;
            while (!atomicReferenceFieldUpdater.compareAndSet(aVar, hVar, hVar2)) {
                if (atomicReferenceFieldUpdater.get(aVar) != hVar) {
                    return false;
                }
            }
            return true;
        }

        @Override // v1.a.AbstractC0282a
        public final void d(h hVar, h hVar2) {
            this.f16122b.lazySet(hVar, hVar2);
        }

        @Override // v1.a.AbstractC0282a
        public final void e(h hVar, Thread thread) {
            this.f16121a.lazySet(hVar, thread);
        }
    }

    /* JADX INFO: compiled from: AbstractFuture.java */
    public static final class f<V> implements Runnable {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public final a<V> f16126h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public final x6.a<? extends V> f16127i;

        public f(a<V> aVar, x6.a<? extends V> aVar2) {
            this.f16126h = aVar;
            this.f16127i = aVar2;
        }

        @Override // java.lang.Runnable
        public final void run() {
            if (this.f16126h.f16108h != this) {
                return;
            }
            if (a.f16106m.b(this.f16126h, this, a.f(this.f16127i))) {
                a.c(this.f16126h);
            }
        }
    }

    /* JADX INFO: compiled from: AbstractFuture.java */
    public static final class g extends AbstractC0282a {
        @Override // v1.a.AbstractC0282a
        public final boolean a(a<?> aVar, d dVar, d dVar2) {
            synchronized (aVar) {
                if (aVar.f16109i != dVar) {
                    return false;
                }
                aVar.f16109i = dVar2;
                return true;
            }
        }

        @Override // v1.a.AbstractC0282a
        public final boolean b(a<?> aVar, Object obj, Object obj2) {
            synchronized (aVar) {
                if (aVar.f16108h != obj) {
                    return false;
                }
                aVar.f16108h = obj2;
                return true;
            }
        }

        @Override // v1.a.AbstractC0282a
        public final boolean c(a<?> aVar, h hVar, h hVar2) {
            synchronized (aVar) {
                if (aVar.f16110j != hVar) {
                    return false;
                }
                aVar.f16110j = hVar2;
                return true;
            }
        }

        @Override // v1.a.AbstractC0282a
        public final void d(h hVar, h hVar2) {
            hVar.f16130b = hVar2;
        }

        @Override // v1.a.AbstractC0282a
        public final void e(h hVar, Thread thread) {
            hVar.f16129a = thread;
        }
    }

    /* JADX INFO: compiled from: AbstractFuture.java */
    public static final class h {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public static final h f16128c = new h(false);

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public volatile Thread f16129a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public volatile h f16130b;

        public h(boolean z10) {
        }

        public h() {
            a.f16106m.e(this, Thread.currentThread());
        }
    }

    static {
        AbstractC0282a gVar;
        try {
            gVar = new e(AtomicReferenceFieldUpdater.newUpdater(h.class, Thread.class, "a"), AtomicReferenceFieldUpdater.newUpdater(h.class, h.class, "b"), AtomicReferenceFieldUpdater.newUpdater(a.class, h.class, "j"), AtomicReferenceFieldUpdater.newUpdater(a.class, d.class, "i"), AtomicReferenceFieldUpdater.newUpdater(a.class, Object.class, "h"));
            th = null;
        } catch (Throwable th) {
            th = th;
            gVar = new g();
        }
        f16106m = gVar;
        if (th != null) {
            f16105l.log(Level.SEVERE, "SafeAtomicHelper is broken!", th);
        }
        f16107n = new Object();
    }

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
    public static void c(a<?> aVar) {
        d dVar;
        d dVar2;
        d dVar3 = null;
        while (true) {
            h hVar = aVar.f16110j;
            if (f16106m.c(aVar, hVar, h.f16128c)) {
                while (hVar != null) {
                    Thread thread = hVar.f16129a;
                    if (thread != null) {
                        hVar.f16129a = null;
                        LockSupport.unpark(thread);
                    }
                    hVar = hVar.f16130b;
                }
                do {
                    dVar = aVar.f16109i;
                } while (!f16106m.a(aVar, dVar, d.f16117d));
                while (true) {
                    dVar2 = dVar3;
                    dVar3 = dVar;
                    if (dVar3 == null) {
                        break;
                    }
                    dVar = dVar3.f16120c;
                    dVar3.f16120c = dVar2;
                }
                while (dVar2 != null) {
                    dVar3 = dVar2.f16120c;
                    Runnable runnable = dVar2.f16118a;
                    if (runnable instanceof f) {
                        f fVar = (f) runnable;
                        aVar = fVar.f16126h;
                        if (aVar.f16108h == fVar) {
                            if (f16106m.b(aVar, fVar, f(fVar.f16127i))) {
                            }
                        } else {
                            continue;
                        }
                    } else {
                        d(runnable, dVar2.f16119b);
                    }
                    dVar2 = dVar3;
                }
                return;
            }
        }
    }

    public static void d(Runnable runnable, Executor executor) {
        try {
            executor.execute(runnable);
        } catch (RuntimeException e10) {
            f16105l.log(Level.SEVERE, "RuntimeException while executing runnable " + runnable + " with executor " + executor, (Throwable) e10);
        }
    }

    public static Object f(x6.a<?> aVar) {
        if (aVar instanceof a) {
            Object obj = ((a) aVar).f16108h;
            if (!(obj instanceof b)) {
                return obj;
            }
            b bVar = (b) obj;
            if (bVar.f16113a) {
                return bVar.f16114b != null ? new b(false, bVar.f16114b) : b.f16112d;
            }
            return obj;
        }
        boolean zIsCancelled = aVar.isCancelled();
        if ((!f16104k) && zIsCancelled) {
            return b.f16112d;
        }
        try {
            Object objG = g(aVar);
            return objG == null ? f16107n : objG;
        } catch (CancellationException e10) {
            if (zIsCancelled) {
                return new b(false, e10);
            }
            return new c(new IllegalArgumentException("get() threw CancellationException, despite reporting isCancelled() == false: " + aVar, e10));
        } catch (ExecutionException e11) {
            return new c(e11.getCause());
        } catch (Throwable th) {
            return new c(th);
        }
    }

    public static <V> V g(Future<V> future) throws ExecutionException {
        V v10;
        boolean z10 = false;
        while (true) {
            try {
                v10 = future.get();
                break;
            } catch (InterruptedException unused) {
                z10 = true;
            } catch (Throwable th) {
                if (z10) {
                    Thread.currentThread().interrupt();
                }
                throw th;
            }
        }
        if (z10) {
            Thread.currentThread().interrupt();
        }
        return v10;
    }

    @Override // x6.a
    public final void a(Runnable runnable, Executor executor) {
        Objects.requireNonNull(executor);
        d dVar = this.f16109i;
        if (dVar != d.f16117d) {
            d dVar2 = new d(runnable, executor);
            do {
                dVar2.f16120c = dVar;
                if (f16106m.a(this, dVar, dVar2)) {
                    return;
                } else {
                    dVar = this.f16109i;
                }
            } while (dVar != d.f16117d);
        }
        d(runnable, executor);
    }

    public final void b(StringBuilder sb2) {
        try {
            Object objG = g(this);
            sb2.append("SUCCESS, result=[");
            sb2.append(objG == this ? "this future" : String.valueOf(objG));
            sb2.append("]");
        } catch (CancellationException unused) {
            sb2.append("CANCELLED");
        } catch (RuntimeException e10) {
            sb2.append("UNKNOWN, cause=[");
            sb2.append(e10.getClass());
            sb2.append(" thrown from get()]");
        } catch (ExecutionException e11) {
            sb2.append("FAILURE, cause=[");
            sb2.append(e11.getCause());
            sb2.append("]");
        }
    }

    @Override // java.util.concurrent.Future
    public final boolean cancel(boolean z10) {
        b bVar;
        Object obj = this.f16108h;
        if (!(obj == null) && !(obj instanceof f)) {
            return false;
        }
        if (f16104k) {
            bVar = new b(z10, new CancellationException("Future.cancel() was called."));
        } else {
            bVar = z10 ? b.f16111c : b.f16112d;
        }
        a<V> aVar = this;
        boolean z11 = false;
        while (true) {
            if (f16106m.b(aVar, obj, bVar)) {
                c(aVar);
                if (!(obj instanceof f)) {
                    return true;
                }
                x6.a<? extends V> aVar2 = ((f) obj).f16127i;
                if (!(aVar2 instanceof a)) {
                    aVar2.cancel(z10);
                    return true;
                }
                aVar = (a) aVar2;
                obj = aVar.f16108h;
                if (!(obj == null) && !(obj instanceof f)) {
                    return true;
                }
                z11 = true;
            } else {
                obj = aVar.f16108h;
                if (!(obj instanceof f)) {
                    return z11;
                }
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final V e(Object obj) throws ExecutionException {
        if (obj instanceof b) {
            Throwable th = ((b) obj).f16114b;
            CancellationException cancellationException = new CancellationException("Task was cancelled.");
            cancellationException.initCause(th);
            throw cancellationException;
        }
        if (obj instanceof c) {
            throw new ExecutionException(((c) obj).f16116a);
        }
        if (obj == f16107n) {
            return null;
        }
        return obj;
    }

    @Override // java.util.concurrent.Future
    public final V get(long j10, TimeUnit timeUnit) throws ExecutionException, InterruptedException, TimeoutException {
        long nanos = timeUnit.toNanos(j10);
        if (Thread.interrupted()) {
            throw new InterruptedException();
        }
        Object obj = this.f16108h;
        boolean z10 = true;
        if ((obj != null) && (!(obj instanceof f))) {
            return e(obj);
        }
        long jNanoTime = nanos > 0 ? System.nanoTime() + nanos : 0L;
        if (nanos >= 1000) {
            h hVar = this.f16110j;
            if (hVar != h.f16128c) {
                h hVar2 = new h();
                while (true) {
                    AbstractC0282a abstractC0282a = f16106m;
                    abstractC0282a.d(hVar2, hVar);
                    if (abstractC0282a.c(this, hVar, hVar2)) {
                        do {
                            LockSupport.parkNanos(this, nanos);
                            if (Thread.interrupted()) {
                                i(hVar2);
                                throw new InterruptedException();
                            }
                            Object obj2 = this.f16108h;
                            if ((obj2 != null) && (!(obj2 instanceof f))) {
                                return e(obj2);
                            }
                            nanos = jNanoTime - System.nanoTime();
                        } while (nanos >= 1000);
                        i(hVar2);
                        break;
                    }
                    hVar = this.f16110j;
                    if (hVar == h.f16128c) {
                    }
                }
            }
            return e(this.f16108h);
        }
        while (nanos > 0) {
            Object obj3 = this.f16108h;
            if ((obj3 != null) && (!(obj3 instanceof f))) {
                return e(obj3);
            }
            if (Thread.interrupted()) {
                throw new InterruptedException();
            }
            nanos = jNanoTime - System.nanoTime();
        }
        String string = toString();
        String string2 = timeUnit.toString();
        Locale locale = Locale.ROOT;
        String lowerCase = string2.toLowerCase(locale);
        String strC = "Waited " + j10 + " " + timeUnit.toString().toLowerCase(locale);
        if (nanos + 1000 < 0) {
            String strC2 = androidx.recyclerview.widget.d.c(strC, " (plus ");
            long j11 = -nanos;
            long jConvert = timeUnit.convert(j11, TimeUnit.NANOSECONDS);
            long nanos2 = j11 - timeUnit.toNanos(jConvert);
            if (jConvert != 0 && nanos2 <= 1000) {
                z10 = false;
            }
            if (jConvert > 0) {
                String strC3 = strC2 + jConvert + " " + lowerCase;
                if (z10) {
                    strC3 = androidx.recyclerview.widget.d.c(strC3, ",");
                }
                strC2 = androidx.recyclerview.widget.d.c(strC3, " ");
            }
            if (z10) {
                strC2 = strC2 + nanos2 + " nanoseconds ";
            }
            strC = androidx.recyclerview.widget.d.c(strC2, "delay)");
        }
        if (isDone()) {
            throw new TimeoutException(androidx.recyclerview.widget.d.c(strC, " but future completed as timeout expired"));
        }
        throw new TimeoutException(a0.d.c(strC, " for ", string));
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final String h() {
        Object obj = this.f16108h;
        if (obj instanceof f) {
            StringBuilder sbC = a0.b.c("setFuture=[");
            x6.a<? extends V> aVar = ((f) obj).f16127i;
            return a1.f.d(sbC, aVar == this ? "this future" : String.valueOf(aVar), "]");
        }
        if (!(this instanceof ScheduledFuture)) {
            return null;
        }
        StringBuilder sbC2 = a0.b.c("remaining delay=[");
        sbC2.append(((ScheduledFuture) this).getDelay(TimeUnit.MILLISECONDS));
        sbC2.append(" ms]");
        return sbC2.toString();
    }

    public final void i(h hVar) {
        hVar.f16129a = null;
        while (true) {
            h hVar2 = this.f16110j;
            if (hVar2 == h.f16128c) {
                return;
            }
            h hVar3 = null;
            while (hVar2 != null) {
                h hVar4 = hVar2.f16130b;
                if (hVar2.f16129a != null) {
                    hVar3 = hVar2;
                } else if (hVar3 != null) {
                    hVar3.f16130b = hVar4;
                    if (hVar3.f16129a == null) {
                    }
                } else if (!f16106m.c(this, hVar2, hVar4)) {
                }
                hVar2 = hVar4;
            }
            return;
        }
    }

    @Override // java.util.concurrent.Future
    public final boolean isCancelled() {
        return this.f16108h instanceof b;
    }

    @Override // java.util.concurrent.Future
    public final boolean isDone() {
        Object obj = this.f16108h;
        return (!(obj instanceof f)) & (obj != null);
    }

    public final String toString() {
        String string;
        StringBuilder sb2 = new StringBuilder();
        sb2.append(super.toString());
        sb2.append("[status=");
        if (this.f16108h instanceof b) {
            sb2.append("CANCELLED");
        } else if (isDone()) {
            b(sb2);
        } else {
            try {
                string = h();
            } catch (RuntimeException e10) {
                StringBuilder sbC = a0.b.c("Exception thrown from implementation: ");
                sbC.append(e10.getClass());
                string = sbC.toString();
            }
            if (string != null && !string.isEmpty()) {
                sb2.append("PENDING, info=[");
                sb2.append(string);
                sb2.append("]");
            } else if (isDone()) {
                b(sb2);
            } else {
                sb2.append("PENDING");
            }
        }
        sb2.append("]");
        return sb2.toString();
    }

    @Override // java.util.concurrent.Future
    public final V get() throws ExecutionException, InterruptedException {
        Object obj;
        if (!Thread.interrupted()) {
            Object obj2 = this.f16108h;
            if ((obj2 != null) & (!(obj2 instanceof f))) {
                return e(obj2);
            }
            h hVar = this.f16110j;
            if (hVar != h.f16128c) {
                h hVar2 = new h();
                do {
                    AbstractC0282a abstractC0282a = f16106m;
                    abstractC0282a.d(hVar2, hVar);
                    if (abstractC0282a.c(this, hVar, hVar2)) {
                        do {
                            LockSupport.park(this);
                            if (!Thread.interrupted()) {
                                obj = this.f16108h;
                            } else {
                                i(hVar2);
                                throw new InterruptedException();
                            }
                        } while (!((obj != null) & (!(obj instanceof f))));
                        return e(obj);
                    }
                    hVar = this.f16110j;
                } while (hVar != h.f16128c);
            }
            return e(this.f16108h);
        }
        throw new InterruptedException();
    }
}
