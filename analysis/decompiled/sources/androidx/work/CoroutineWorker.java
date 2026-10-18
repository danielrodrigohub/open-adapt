package androidx.work;

import android.content.Context;
import fd.o;
import java.util.Objects;
import jd.d;
import k1.f;
import k1.k;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CompletableJob;
import kotlinx.coroutines.CoroutineDispatcher;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineScopeKt;
import kotlinx.coroutines.Dispatchers;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.JobKt__JobKt;
import ld.e;
import ld.i;
import p4.h;
import qd.p;

/* JADX INFO: compiled from: CoroutineWorker.kt */
/* JADX INFO: loaded from: classes.dex */
public abstract class CoroutineWorker extends ListenableWorker {

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final CompletableJob f3013m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final v1.c<ListenableWorker.a> f3014n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public final CoroutineDispatcher f3015o;

    /* JADX INFO: compiled from: CoroutineWorker.kt */
    public static final class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            if (CoroutineWorker.this.f3014n.f16108h instanceof v1.a.b) {
                Job.DefaultImpls.cancel$default(CoroutineWorker.this.f3013m, null, 1, null);
            }
        }
    }

    /* JADX INFO: compiled from: CoroutineWorker.kt */
    @e(c = "androidx.work.CoroutineWorker$getForegroundInfoAsync$1", f = "CoroutineWorker.kt", l = {134}, m = "invokeSuspend")
    public static final class b extends i implements p<CoroutineScope, d<? super o>, Object> {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public k f3017h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public int f3018i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public final /* synthetic */ k<f> f3019j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public final /* synthetic */ CoroutineWorker f3020k;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(k<f> kVar, CoroutineWorker coroutineWorker, d<? super b> dVar) {
            super(2, dVar);
            this.f3019j = kVar;
            this.f3020k = coroutineWorker;
        }

        @Override // ld.a
        public final d<o> create(Object obj, d<?> dVar) {
            return new b(this.f3019j, this.f3020k, dVar);
        }

        @Override // qd.p
        public final Object invoke(CoroutineScope coroutineScope, d<? super o> dVar) throws Throwable {
            b bVar = (b) create(coroutineScope, dVar);
            o oVar = o.f7408a;
            bVar.invokeSuspend(oVar);
            return oVar;
        }

        /* JADX WARN: Type inference incomplete: some casts might be missing */
        @Override // ld.a
        public final Object invokeSuspend(Object obj) throws Throwable {
            int i10 = this.f3018i;
            if (i10 != 0) {
                if (i10 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                k kVar = this.f3017h;
                d3.e.p(obj);
                kVar.f9596i.j((R) obj);
                return o.f7408a;
            }
            d3.e.p(obj);
            k<f> kVar2 = this.f3019j;
            CoroutineWorker coroutineWorker = this.f3020k;
            this.f3017h = kVar2;
            this.f3018i = 1;
            Objects.requireNonNull(coroutineWorker);
            throw new IllegalStateException("Not implemented");
        }
    }

    /* JADX INFO: compiled from: CoroutineWorker.kt */
    @e(c = "androidx.work.CoroutineWorker$startWork$1", f = "CoroutineWorker.kt", l = {68}, m = "invokeSuspend")
    public static final class c extends i implements p<CoroutineScope, d<? super o>, Object> {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public int f3021h;

        public c(d<? super c> dVar) {
            super(2, dVar);
        }

        @Override // ld.a
        public final d<o> create(Object obj, d<?> dVar) {
            return CoroutineWorker.this.new c(dVar);
        }

        @Override // qd.p
        public final Object invoke(CoroutineScope coroutineScope, d<? super o> dVar) {
            return ((c) create(coroutineScope, dVar)).invokeSuspend(o.f7408a);
        }

        @Override // ld.a
        public final Object invokeSuspend(Object obj) throws Throwable {
            kd.a aVar = kd.a.COROUTINE_SUSPENDED;
            int i10 = this.f3021h;
            try {
                if (i10 == 0) {
                    d3.e.p(obj);
                    CoroutineWorker coroutineWorker = CoroutineWorker.this;
                    this.f3021h = 1;
                    obj = coroutineWorker.h();
                    if (obj == aVar) {
                        return aVar;
                    }
                } else {
                    if (i10 != 1) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    d3.e.p(obj);
                }
                CoroutineWorker.this.f3014n.j((ListenableWorker.a) obj);
            } catch (Throwable th) {
                CoroutineWorker.this.f3014n.k(th);
            }
            return o.f7408a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CoroutineWorker(Context context, WorkerParameters workerParameters) {
        super(context, workerParameters);
        h.j(context, "appContext");
        h.j(workerParameters, "params");
        this.f3013m = JobKt__JobKt.Job$default(null, 1, null);
        v1.c<ListenableWorker.a> cVar = new v1.c<>();
        this.f3014n = cVar;
        cVar.a(new a(), ((w1.b) this.f3024i.f3035d).f17057a);
        this.f3015o = Dispatchers.getDefault();
    }

    @Override // androidx.work.ListenableWorker
    public final x6.a<f> a() {
        CompletableJob completableJobJob$default = JobKt__JobKt.Job$default(null, 1, null);
        CoroutineScope CoroutineScope = CoroutineScopeKt.CoroutineScope(this.f3015o.plus(completableJobJob$default));
        k kVar = new k(completableJobJob$default);
        BuildersKt__Builders_commonKt.launch$default(CoroutineScope, null, null, new b(kVar, this, null), 3, null);
        return kVar;
    }

    @Override // androidx.work.ListenableWorker
    public final void d() {
        this.f3014n.cancel(false);
    }

    @Override // androidx.work.ListenableWorker
    public final x6.a<ListenableWorker.a> f() {
        BuildersKt__Builders_commonKt.launch$default(CoroutineScopeKt.CoroutineScope(this.f3015o.plus(this.f3013m)), null, null, new c(null), 3, null);
        return this.f3014n;
    }

    public abstract Object h();
}
