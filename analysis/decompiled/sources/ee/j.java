package ee;

import de.a0;
import fd.o;
import qd.p;

/* JADX INFO: compiled from: -FileSystem.kt */
/* JADX INFO: loaded from: classes2.dex */
@ld.e(c = "okio.internal._FileSystemKt$commonDeleteRecursively$sequence$1", f = "-FileSystem.kt", l = {72}, m = "invokeSuspend")
public final class j extends ld.h implements p<xd.f<? super a0>, jd.d<? super o>, Object> {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f6784h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public /* synthetic */ Object f6785i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final /* synthetic */ de.k f6786j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final /* synthetic */ a0 f6787k;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public j(de.k kVar, a0 a0Var, jd.d<? super j> dVar) {
        super(2, dVar);
        this.f6786j = kVar;
        this.f6787k = a0Var;
    }

    @Override // ld.a
    public final jd.d<o> create(Object obj, jd.d<?> dVar) {
        j jVar = new j(this.f6786j, this.f6787k, dVar);
        jVar.f6785i = obj;
        return jVar;
    }

    @Override // qd.p
    public final Object invoke(xd.f<? super a0> fVar, jd.d<? super o> dVar) {
        return ((j) create(fVar, dVar)).invokeSuspend(o.f7408a);
    }

    @Override // ld.a
    public final Object invokeSuspend(Object obj) throws Throwable {
        kd.a aVar = kd.a.COROUTINE_SUSPENDED;
        int i10 = this.f6784h;
        if (i10 == 0) {
            d3.e.p(obj);
            xd.f fVar = (xd.f) this.f6785i;
            de.k kVar = this.f6786j;
            gd.f fVar2 = new gd.f();
            a0 a0Var = this.f6787k;
            this.f6784h = 1;
            if (i.a(fVar, kVar, fVar2, a0Var, false, true, this) == aVar) {
                return aVar;
            }
        } else {
            if (i10 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            d3.e.p(obj);
        }
        return o.f7408a;
    }
}
