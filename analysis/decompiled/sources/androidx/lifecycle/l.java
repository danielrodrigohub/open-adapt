package androidx.lifecycle;

import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.Dispatchers;
import kotlinx.coroutines.Job;

/* JADX INFO: compiled from: Lifecycle.kt */
/* JADX INFO: loaded from: classes.dex */
public abstract class l implements CoroutineScope {

    /* JADX INFO: compiled from: Lifecycle.kt */
    @ld.e(c = "androidx.lifecycle.LifecycleCoroutineScope$launchWhenCreated$1", f = "Lifecycle.kt", l = {79}, m = "invokeSuspend")
    public static final class a extends ld.i implements qd.p<CoroutineScope, jd.d<? super fd.o>, Object> {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public int f2220h;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public final /* synthetic */ qd.p<CoroutineScope, jd.d<? super fd.o>, Object> f2222j;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        public a(qd.p<? super CoroutineScope, ? super jd.d<? super fd.o>, ? extends Object> pVar, jd.d<? super a> dVar) {
            super(2, dVar);
            this.f2222j = pVar;
        }

        @Override // ld.a
        public final jd.d<fd.o> create(Object obj, jd.d<?> dVar) {
            return l.this.new a(this.f2222j, dVar);
        }

        @Override // qd.p
        public final Object invoke(CoroutineScope coroutineScope, jd.d<? super fd.o> dVar) {
            return ((a) create(coroutineScope, dVar)).invokeSuspend(fd.o.f7408a);
        }

        @Override // ld.a
        public final Object invokeSuspend(Object obj) throws Throwable {
            kd.a aVar = kd.a.COROUTINE_SUSPENDED;
            int i10 = this.f2220h;
            if (i10 == 0) {
                d3.e.p(obj);
                i iVarB = l.this.b();
                qd.p<CoroutineScope, jd.d<? super fd.o>, Object> pVar = this.f2222j;
                this.f2220h = 1;
                if (BuildersKt.withContext(Dispatchers.getMain().getImmediate(), new z(iVarB, i.c.CREATED, pVar, null), this) == aVar) {
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

    public abstract i b();

    public final Job c(qd.p<? super CoroutineScope, ? super jd.d<? super fd.o>, ? extends Object> pVar) {
        return BuildersKt__Builders_commonKt.launch$default(this, null, null, new a(pVar, null), 3, null);
    }
}
