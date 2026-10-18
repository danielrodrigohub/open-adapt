package m9;

import com.nike.adapt.adk.InMemoryCache;
import com.nike.adapt.ui.AdaptRestartActivity;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.DelayKt;
import kotlinx.coroutines.Dispatchers;
import kotlinx.coroutines.MainCoroutineDispatcher;

/* JADX INFO: compiled from: FirmwareUpdateCompleteFragment.kt */
/* JADX INFO: loaded from: classes.dex */
@ld.e(c = "com.nike.adapt.ui.settings.FirmwareUpdateCompleteFragment$onCreateView$1$1$1", f = "FirmwareUpdateCompleteFragment.kt", l = {44}, m = "invokeSuspend")
public final class s extends ld.i implements qd.p<CoroutineScope, jd.d<? super fd.o>, Object> {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f10914h;

    /* JADX INFO: compiled from: FirmwareUpdateCompleteFragment.kt */
    @ld.e(c = "com.nike.adapt.ui.settings.FirmwareUpdateCompleteFragment$onCreateView$1$1$1$1", f = "FirmwareUpdateCompleteFragment.kt", l = {46}, m = "invokeSuspend")
    public static final class a extends ld.i implements qd.p<CoroutineScope, jd.d<? super fd.o>, Object> {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public int f10915h;

        public a(jd.d<? super a> dVar) {
            super(2, dVar);
        }

        @Override // ld.a
        public final jd.d<fd.o> create(Object obj, jd.d<?> dVar) {
            return new a(dVar);
        }

        @Override // qd.p
        public final Object invoke(CoroutineScope coroutineScope, jd.d<? super fd.o> dVar) {
            return new a(dVar).invokeSuspend(fd.o.f7408a);
        }

        @Override // ld.a
        public final Object invokeSuspend(Object obj) throws Throwable {
            kd.a aVar = kd.a.COROUTINE_SUSPENDED;
            int i10 = this.f10915h;
            if (i10 == 0) {
                d3.e.p(obj);
                int i11 = o7.n.f12404a;
                this.f10915h = 1;
                if (DelayKt.delay(100L, this) == aVar) {
                    return aVar;
                }
            } else {
                if (i10 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                d3.e.p(obj);
            }
            o7.x.f12420a.a("FirmwareUpdateCrumb Pressed: Got It : FW_STATS");
            InMemoryCache.INSTANCE.setHasShoeUpdates(false);
            AdaptRestartActivity.A.a(false, 3000L);
            return fd.o.f7408a;
        }
    }

    public s(jd.d<? super s> dVar) {
        super(2, dVar);
    }

    @Override // ld.a
    public final jd.d<fd.o> create(Object obj, jd.d<?> dVar) {
        return new s(dVar);
    }

    @Override // qd.p
    public final Object invoke(CoroutineScope coroutineScope, jd.d<? super fd.o> dVar) {
        return new s(dVar).invokeSuspend(fd.o.f7408a);
    }

    @Override // ld.a
    public final Object invokeSuspend(Object obj) throws Throwable {
        kd.a aVar = kd.a.COROUTINE_SUSPENDED;
        int i10 = this.f10914h;
        if (i10 == 0) {
            d3.e.p(obj);
            MainCoroutineDispatcher main = Dispatchers.getMain();
            a aVar2 = new a(null);
            this.f10914h = 1;
            if (BuildersKt.withContext(main, aVar2, this) == aVar) {
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
