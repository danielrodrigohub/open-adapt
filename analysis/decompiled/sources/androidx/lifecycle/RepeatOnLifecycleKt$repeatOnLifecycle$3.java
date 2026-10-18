package androidx.lifecycle;

import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CancellableContinuationImpl;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineScopeKt;
import kotlinx.coroutines.Dispatchers;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.MainCoroutineDispatcher;
import kotlinx.coroutines.sync.Mutex;
import kotlinx.coroutines.sync.MutexKt;

/* JADX INFO: compiled from: RepeatOnLifecycle.kt */
/* JADX INFO: loaded from: classes.dex */
@ld.e(c = "androidx.lifecycle.RepeatOnLifecycleKt$repeatOnLifecycle$3", f = "RepeatOnLifecycle.kt", l = {84}, m = "invokeSuspend")
public final class RepeatOnLifecycleKt$repeatOnLifecycle$3 extends ld.i implements qd.p<CoroutineScope, jd.d<? super fd.o>, Object> {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f2120h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public /* synthetic */ Object f2121i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final /* synthetic */ i f2122j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final /* synthetic */ i.c f2123k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final /* synthetic */ qd.p<CoroutineScope, jd.d<? super fd.o>, Object> f2124l;

    /* JADX INFO: renamed from: androidx.lifecycle.RepeatOnLifecycleKt$repeatOnLifecycle$3$1, reason: invalid class name */
    /* JADX INFO: compiled from: RepeatOnLifecycle.kt */
    @ld.e(c = "androidx.lifecycle.RepeatOnLifecycleKt$repeatOnLifecycle$3$1", f = "RepeatOnLifecycle.kt", l = {166}, m = "invokeSuspend")
    public static final class AnonymousClass1 extends ld.i implements qd.p<CoroutineScope, jd.d<? super fd.o>, Object> {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public rd.w f2125h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public rd.w f2126i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public i.c f2127j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public i f2128k;

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        public CoroutineScope f2129l;

        /* JADX INFO: renamed from: m, reason: collision with root package name */
        public qd.p f2130m;

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        public int f2131n;

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        public final /* synthetic */ i f2132o;

        /* JADX INFO: renamed from: p, reason: collision with root package name */
        public final /* synthetic */ i.c f2133p;

        /* JADX INFO: renamed from: q, reason: collision with root package name */
        public final /* synthetic */ CoroutineScope f2134q;

        /* JADX INFO: renamed from: r, reason: collision with root package name */
        public final /* synthetic */ qd.p<CoroutineScope, jd.d<? super fd.o>, Object> f2135r;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        public AnonymousClass1(i iVar, i.c cVar, CoroutineScope coroutineScope, qd.p<? super CoroutineScope, ? super jd.d<? super fd.o>, ? extends Object> pVar, jd.d<? super AnonymousClass1> dVar) {
            super(2, dVar);
            this.f2132o = iVar;
            this.f2133p = cVar;
            this.f2134q = coroutineScope;
            this.f2135r = pVar;
        }

        @Override // ld.a
        public final jd.d<fd.o> create(Object obj, jd.d<?> dVar) {
            return new AnonymousClass1(this.f2132o, this.f2133p, this.f2134q, this.f2135r, dVar);
        }

        @Override // qd.p
        public final Object invoke(CoroutineScope coroutineScope, jd.d<? super fd.o> dVar) {
            return ((AnonymousClass1) create(coroutineScope, dVar)).invokeSuspend(fd.o.f7408a);
        }

        /* JADX WARN: Code duplicated, block: B:23:0x0085  */
        /* JADX WARN: Code duplicated, block: B:26:0x008f  */
        /* JADX WARN: Code duplicated, block: B:33:0x00a0  */
        /* JADX WARN: Code duplicated, block: B:36:0x00aa  */
        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r10v0, types: [T, androidx.lifecycle.RepeatOnLifecycleKt$repeatOnLifecycle$3$1$1$1, androidx.lifecycle.p] */
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
        @Override // ld.a
        public final Object invokeSuspend(Object obj) throws Throwable {
            rd.w wVar;
            rd.w wVar2;
            Job job;
            n nVar;
            Job job2;
            n nVar2;
            kd.a aVar = kd.a.COROUTINE_SUSPENDED;
            int i10 = this.f2131n;
            if (i10 != 0) {
                if (i10 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                wVar2 = this.f2126i;
                wVar = this.f2125h;
                try {
                    d3.e.p(obj);
                    job2 = (Job) wVar.f14795h;
                    if (job2 != null) {
                        Job.DefaultImpls.cancel$default(job2, null, 1, null);
                    }
                    nVar2 = (n) wVar2.f14795h;
                    if (nVar2 != null) {
                        this.f2132o.c(nVar2);
                    }
                    return fd.o.f7408a;
                } catch (Throwable th) {
                    th = th;
                    job = (Job) wVar.f14795h;
                    if (job != null) {
                        Job.DefaultImpls.cancel$default(job, null, 1, null);
                    }
                    nVar = (n) wVar2.f14795h;
                    if (nVar != null) {
                        this.f2132o.c(nVar);
                    }
                    throw th;
                }
            }
            d3.e.p(obj);
            if (this.f2132o.b() == i.c.DESTROYED) {
                return fd.o.f7408a;
            }
            final rd.w wVar3 = new rd.w();
            rd.w wVar4 = new rd.w();
            try {
                i.c cVar = this.f2133p;
                i iVar = this.f2132o;
                final CoroutineScope coroutineScope = this.f2134q;
                final qd.p<CoroutineScope, jd.d<? super fd.o>, Object> pVar = this.f2135r;
                this.f2125h = wVar3;
                this.f2126i = wVar4;
                this.f2127j = cVar;
                this.f2128k = iVar;
                this.f2129l = coroutineScope;
                this.f2130m = pVar;
                this.f2131n = 1;
                final CancellableContinuationImpl cancellableContinuationImpl = new CancellableContinuationImpl(o.t(this), 1);
                cancellableContinuationImpl.initCancellability();
                final i.b bVarJ = i.b.j(cVar);
                final i.b bVarB = i.b.b(cVar);
                final Mutex mutexMutex$default = MutexKt.Mutex$default(false, 1, null);
                ?? r10 = new n() { // from class: androidx.lifecycle.RepeatOnLifecycleKt$repeatOnLifecycle$3$1$1$1

                    /* JADX INFO: compiled from: RepeatOnLifecycle.kt */
                    @ld.e(c = "androidx.lifecycle.RepeatOnLifecycleKt$repeatOnLifecycle$3$1$1$1$1", f = "RepeatOnLifecycle.kt", l = {171, 110}, m = "invokeSuspend")
                    public static final class a extends ld.i implements qd.p<CoroutineScope, jd.d<? super fd.o>, Object> {

                        /* JADX INFO: renamed from: h, reason: collision with root package name */
                        public Mutex f2143h;

                        /* JADX INFO: renamed from: i, reason: collision with root package name */
                        public qd.p f2144i;

                        /* JADX INFO: renamed from: j, reason: collision with root package name */
                        public int f2145j;

                        /* JADX INFO: renamed from: k, reason: collision with root package name */
                        public final /* synthetic */ Mutex f2146k;

                        /* JADX INFO: renamed from: l, reason: collision with root package name */
                        public final /* synthetic */ qd.p<CoroutineScope, jd.d<? super fd.o>, Object> f2147l;

                        /* JADX INFO: renamed from: androidx.lifecycle.RepeatOnLifecycleKt$repeatOnLifecycle$3$1$1$1$a$a, reason: collision with other inner class name */
                        /* JADX INFO: compiled from: RepeatOnLifecycle.kt */
                        @ld.e(c = "androidx.lifecycle.RepeatOnLifecycleKt$repeatOnLifecycle$3$1$1$1$1$1$1", f = "RepeatOnLifecycle.kt", l = {111}, m = "invokeSuspend")
                        public static final class C0024a extends ld.i implements qd.p<CoroutineScope, jd.d<? super fd.o>, Object> {

                            /* JADX INFO: renamed from: h, reason: collision with root package name */
                            public int f2148h;

                            /* JADX INFO: renamed from: i, reason: collision with root package name */
                            public /* synthetic */ Object f2149i;

                            /* JADX INFO: renamed from: j, reason: collision with root package name */
                            public final /* synthetic */ qd.p<CoroutineScope, jd.d<? super fd.o>, Object> f2150j;

                            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                            /* JADX WARN: Multi-variable type inference failed */
                            public C0024a(qd.p<? super CoroutineScope, ? super jd.d<? super fd.o>, ? extends Object> pVar, jd.d<? super C0024a> dVar) {
                                super(2, dVar);
                                this.f2150j = pVar;
                            }

                            @Override // ld.a
                            public final jd.d<fd.o> create(Object obj, jd.d<?> dVar) {
                                C0024a c0024a = new C0024a(this.f2150j, dVar);
                                c0024a.f2149i = obj;
                                return c0024a;
                            }

                            @Override // qd.p
                            public final Object invoke(CoroutineScope coroutineScope, jd.d<? super fd.o> dVar) {
                                return ((C0024a) create(coroutineScope, dVar)).invokeSuspend(fd.o.f7408a);
                            }

                            @Override // ld.a
                            public final Object invokeSuspend(Object obj) throws Throwable {
                                kd.a aVar = kd.a.COROUTINE_SUSPENDED;
                                int i10 = this.f2148h;
                                if (i10 == 0) {
                                    d3.e.p(obj);
                                    CoroutineScope coroutineScope = (CoroutineScope) this.f2149i;
                                    qd.p<CoroutineScope, jd.d<? super fd.o>, Object> pVar = this.f2150j;
                                    this.f2148h = 1;
                                    if (pVar.invoke(coroutineScope, this) == aVar) {
                                        return aVar;
                                    }
                                } else {
                                    if (i10 != 1) {
                                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                                    }
                                    d3.e.p(obj);
                                }
                                return fd.o.f7408a;
                            }
                        }

                        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                        /* JADX WARN: Multi-variable type inference failed */
                        public a(Mutex mutex, qd.p<? super CoroutineScope, ? super jd.d<? super fd.o>, ? extends Object> pVar, jd.d<? super a> dVar) {
                            super(2, dVar);
                            this.f2146k = mutex;
                            this.f2147l = pVar;
                        }

                        @Override // ld.a
                        public final jd.d<fd.o> create(Object obj, jd.d<?> dVar) {
                            return new a(this.f2146k, this.f2147l, dVar);
                        }

                        @Override // qd.p
                        public final Object invoke(CoroutineScope coroutineScope, jd.d<? super fd.o> dVar) {
                            return ((a) create(coroutineScope, dVar)).invokeSuspend(fd.o.f7408a);
                        }

                        @Override // ld.a
                        public final Object invokeSuspend(Object obj) throws Throwable {
                            qd.p<CoroutineScope, jd.d<? super fd.o>, Object> pVar;
                            Mutex mutex;
                            Mutex mutex2;
                            kd.a aVar = kd.a.COROUTINE_SUSPENDED;
                            int i10 = this.f2145j;
                            try {
                                if (i10 == 0) {
                                    d3.e.p(obj);
                                    Mutex mutex3 = this.f2146k;
                                    pVar = this.f2147l;
                                    this.f2143h = mutex3;
                                    this.f2144i = pVar;
                                    this.f2145j = 1;
                                    if (mutex3.lock(null, this) == aVar) {
                                        return aVar;
                                    }
                                    mutex = mutex3;
                                } else {
                                    if (i10 != 1) {
                                        if (i10 != 2) {
                                            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                                        }
                                        mutex2 = this.f2143h;
                                        try {
                                            d3.e.p(obj);
                                            fd.o oVar = fd.o.f7408a;
                                            mutex2.unlock(null);
                                            return oVar;
                                        } catch (Throwable th) {
                                            th = th;
                                            mutex = mutex2;
                                            mutex.unlock(null);
                                            throw th;
                                        }
                                    }
                                    pVar = this.f2144i;
                                    mutex = this.f2143h;
                                    d3.e.p(obj);
                                }
                                C0024a c0024a = new C0024a(pVar, null);
                                this.f2143h = mutex;
                                this.f2144i = null;
                                this.f2145j = 2;
                                if (CoroutineScopeKt.coroutineScope(c0024a, this) == aVar) {
                                    return aVar;
                                }
                                mutex2 = mutex;
                                fd.o oVar2 = fd.o.f7408a;
                                mutex2.unlock(null);
                                return oVar2;
                            } catch (Throwable th2) {
                                th = th2;
                                mutex.unlock(null);
                                throw th;
                            }
                        }
                    }

                    /* JADX WARN: Type inference failed for: r9v3, types: [T, kotlinx.coroutines.Job] */
                    @Override // androidx.lifecycle.n
                    public final void a(q qVar, i.b bVar) {
                        if (bVar == bVarJ) {
                            wVar3.f14795h = BuildersKt__Builders_commonKt.launch$default(coroutineScope, null, null, new a(mutexMutex$default, pVar, null), 3, null);
                            return;
                        }
                        if (bVar == bVarB) {
                            Job job3 = wVar3.f14795h;
                            if (job3 != null) {
                                Job.DefaultImpls.cancel$default(job3, null, 1, null);
                            }
                            wVar3.f14795h = null;
                        }
                        if (bVar == i.b.ON_DESTROY) {
                            cancellableContinuationImpl.resumeWith(fd.o.f7408a);
                        }
                    }
                };
                wVar4.f14795h = r10;
                iVar.a(r10);
                if (cancellableContinuationImpl.getResult() == aVar) {
                    return aVar;
                }
                wVar = wVar3;
                wVar2 = wVar4;
                job2 = (Job) wVar.f14795h;
                if (job2 != null) {
                    Job.DefaultImpls.cancel$default(job2, null, 1, null);
                }
                nVar2 = (n) wVar2.f14795h;
                if (nVar2 != null) {
                    this.f2132o.c(nVar2);
                }
                return fd.o.f7408a;
            } catch (Throwable th2) {
                th = th2;
                wVar = wVar3;
                wVar2 = wVar4;
                job = (Job) wVar.f14795h;
                if (job != null) {
                    Job.DefaultImpls.cancel$default(job, null, 1, null);
                }
                nVar = (n) wVar2.f14795h;
                if (nVar != null) {
                    this.f2132o.c(nVar);
                }
                throw th;
            }
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public RepeatOnLifecycleKt$repeatOnLifecycle$3(i iVar, i.c cVar, qd.p<? super CoroutineScope, ? super jd.d<? super fd.o>, ? extends Object> pVar, jd.d<? super RepeatOnLifecycleKt$repeatOnLifecycle$3> dVar) {
        super(2, dVar);
        this.f2122j = iVar;
        this.f2123k = cVar;
        this.f2124l = pVar;
    }

    @Override // ld.a
    public final jd.d<fd.o> create(Object obj, jd.d<?> dVar) {
        RepeatOnLifecycleKt$repeatOnLifecycle$3 repeatOnLifecycleKt$repeatOnLifecycle$3 = new RepeatOnLifecycleKt$repeatOnLifecycle$3(this.f2122j, this.f2123k, this.f2124l, dVar);
        repeatOnLifecycleKt$repeatOnLifecycle$3.f2121i = obj;
        return repeatOnLifecycleKt$repeatOnLifecycle$3;
    }

    @Override // qd.p
    public final Object invoke(CoroutineScope coroutineScope, jd.d<? super fd.o> dVar) {
        return ((RepeatOnLifecycleKt$repeatOnLifecycle$3) create(coroutineScope, dVar)).invokeSuspend(fd.o.f7408a);
    }

    @Override // ld.a
    public final Object invokeSuspend(Object obj) throws Throwable {
        kd.a aVar = kd.a.COROUTINE_SUSPENDED;
        int i10 = this.f2120h;
        if (i10 == 0) {
            d3.e.p(obj);
            CoroutineScope coroutineScope = (CoroutineScope) this.f2121i;
            MainCoroutineDispatcher immediate = Dispatchers.getMain().getImmediate();
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.f2122j, this.f2123k, coroutineScope, this.f2124l, null);
            this.f2120h = 1;
            if (BuildersKt.withContext(immediate, anonymousClass1, this) == aVar) {
                return aVar;
            }
        } else {
            if (i10 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            d3.e.p(obj);
        }
        return fd.o.f7408a;
    }
}
