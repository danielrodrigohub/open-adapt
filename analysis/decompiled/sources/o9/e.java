package o9;

import com.nike.adapt.adk.Shoe;
import com.nike.adapt.ui.shoecontroller.ShoeControllerActivity;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineDispatcher;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.Dispatchers;
import p8.z;

/* JADX INFO: compiled from: ShoeControllerActivity.kt */
/* JADX INFO: loaded from: classes.dex */
@ld.e(c = "com.nike.adapt.ui.shoecontroller.ShoeControllerActivity$handleOptInData$1", f = "ShoeControllerActivity.kt", l = {776}, m = "invokeSuspend")
public final class e extends ld.i implements qd.p<CoroutineScope, jd.d<? super fd.o>, Object> {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f12500h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final /* synthetic */ ShoeControllerActivity f12501i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final /* synthetic */ Shoe f12502j;

    /* JADX INFO: compiled from: ShoeControllerActivity.kt */
    @ld.e(c = "com.nike.adapt.ui.shoecontroller.ShoeControllerActivity$handleOptInData$1$1", f = "ShoeControllerActivity.kt", l = {777}, m = "invokeSuspend")
    public static final class a extends ld.i implements qd.p<CoroutineScope, jd.d<? super fd.o>, Object> {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public int f12503h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public final /* synthetic */ ShoeControllerActivity f12504i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public final /* synthetic */ Shoe f12505j;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(ShoeControllerActivity shoeControllerActivity, Shoe shoe, jd.d<? super a> dVar) {
            super(2, dVar);
            this.f12504i = shoeControllerActivity;
            this.f12505j = shoe;
        }

        @Override // ld.a
        public final jd.d<fd.o> create(Object obj, jd.d<?> dVar) {
            return new a(this.f12504i, this.f12505j, dVar);
        }

        @Override // qd.p
        public final Object invoke(CoroutineScope coroutineScope, jd.d<? super fd.o> dVar) {
            return ((a) create(coroutineScope, dVar)).invokeSuspend(fd.o.f7408a);
        }

        @Override // ld.a
        public final Object invokeSuspend(Object obj) throws Throwable {
            kd.a aVar = kd.a.COROUTINE_SUSPENDED;
            int i10 = this.f12503h;
            if (i10 == 0) {
                d3.e.p(obj);
                int i11 = m8.b.f10811a;
                m8.c cVar = m8.c.f10812b;
                this.f12503h = 1;
                obj = cVar.a(this);
                if (obj == aVar) {
                    return aVar;
                }
            } else {
                if (i10 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                d3.e.p(obj);
            }
            if (p4.h.c(obj, Boolean.TRUE)) {
                this.f12504i.w0().requestTo(this.f12505j, z.f13351a);
            }
            return fd.o.f7408a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public e(ShoeControllerActivity shoeControllerActivity, Shoe shoe, jd.d<? super e> dVar) {
        super(2, dVar);
        this.f12501i = shoeControllerActivity;
        this.f12502j = shoe;
    }

    @Override // ld.a
    public final jd.d<fd.o> create(Object obj, jd.d<?> dVar) {
        return new e(this.f12501i, this.f12502j, dVar);
    }

    @Override // qd.p
    public final Object invoke(CoroutineScope coroutineScope, jd.d<? super fd.o> dVar) {
        return ((e) create(coroutineScope, dVar)).invokeSuspend(fd.o.f7408a);
    }

    @Override // ld.a
    public final Object invokeSuspend(Object obj) throws Throwable {
        kd.a aVar = kd.a.COROUTINE_SUSPENDED;
        int i10 = this.f12500h;
        if (i10 == 0) {
            d3.e.p(obj);
            CoroutineDispatcher coroutineDispatcher = Dispatchers.getDefault();
            a aVar2 = new a(this.f12501i, this.f12502j, null);
            this.f12500h = 1;
            if (BuildersKt.withContext(coroutineDispatcher, aVar2, this) == aVar) {
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
