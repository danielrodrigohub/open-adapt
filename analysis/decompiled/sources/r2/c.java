package r2;

import java.lang.ref.ReferenceQueue;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.Map;
import java.util.Objects;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

/* JADX INFO: compiled from: ActiveResources.java */
/* JADX INFO: loaded from: classes.dex */
public final class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final boolean f14231a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Map<p2.f, a> f14232b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ReferenceQueue<q<?>> f14233c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public q.a f14234d;

    /* JADX INFO: compiled from: ActiveResources.java */
    public static final class a extends WeakReference<q<?>> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final p2.f f14235a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final boolean f14236b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public w<?> f14237c;

        public a(p2.f fVar, q<?> qVar, ReferenceQueue<? super q<?>> referenceQueue, boolean z10) {
            w<?> wVar;
            super(qVar, referenceQueue);
            Objects.requireNonNull(fVar, "Argument must not be null");
            this.f14235a = fVar;
            if (qVar.f14365h && z10) {
                wVar = qVar.f14367j;
                Objects.requireNonNull(wVar, "Argument must not be null");
            } else {
                wVar = null;
            }
            this.f14237c = wVar;
            this.f14236b = qVar.f14365h;
        }
    }

    public c() {
        ExecutorService executorServiceNewSingleThreadExecutor = Executors.newSingleThreadExecutor(new r2.a());
        this.f14232b = new HashMap();
        this.f14233c = new ReferenceQueue<>();
        this.f14231a = false;
        executorServiceNewSingleThreadExecutor.execute(new b(this));
    }

    /* JADX WARN: Type inference failed for: r5v1, types: [java.util.HashMap, java.util.Map<p2.f, r2.c$a>] */
    public final synchronized void a(p2.f fVar, q<?> qVar) {
        a aVar = (a) this.f14232b.put(fVar, new a(fVar, qVar, this.f14233c, this.f14231a));
        if (aVar != null) {
            aVar.f14237c = null;
            aVar.clear();
        }
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [java.util.HashMap, java.util.Map<p2.f, r2.c$a>] */
    public final void b(a aVar) {
        w<?> wVar;
        synchronized (this) {
            this.f14232b.remove(aVar.f14235a);
            if (aVar.f14236b && (wVar = aVar.f14237c) != null) {
                this.f14234d.a(aVar.f14235a, new q<>(wVar, true, false, aVar.f14235a, this.f14234d));
            }
        }
    }
}
