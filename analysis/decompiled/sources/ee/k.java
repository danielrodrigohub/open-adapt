package ee;

import de.a0;
import fd.o;
import java.util.Iterator;
import qd.p;

/* JADX INFO: compiled from: -FileSystem.kt */
/* JADX INFO: loaded from: classes2.dex */
@ld.e(c = "okio.internal._FileSystemKt$commonListRecursively$1", f = "-FileSystem.kt", l = {93}, m = "invokeSuspend")
public final class k extends ld.h implements p<xd.f<? super a0>, jd.d<? super o>, Object> {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public gd.f f6788h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public Iterator f6789i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int f6790j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public /* synthetic */ Object f6791k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final /* synthetic */ a0 f6792l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final /* synthetic */ de.k f6793m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final /* synthetic */ boolean f6794n;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public k(a0 a0Var, de.k kVar, boolean z10, jd.d<? super k> dVar) {
        super(2, dVar);
        this.f6792l = a0Var;
        this.f6793m = kVar;
        this.f6794n = z10;
    }

    @Override // ld.a
    public final jd.d<o> create(Object obj, jd.d<?> dVar) {
        k kVar = new k(this.f6792l, this.f6793m, this.f6794n, dVar);
        kVar.f6791k = obj;
        return kVar;
    }

    @Override // qd.p
    public final Object invoke(xd.f<? super a0> fVar, jd.d<? super o> dVar) {
        return ((k) create(fVar, dVar)).invokeSuspend(o.f7408a);
    }

    @Override // ld.a
    public final Object invokeSuspend(Object obj) throws Throwable {
        xd.f fVar;
        gd.f fVar2;
        Iterator<a0> it;
        kd.a aVar = kd.a.COROUTINE_SUSPENDED;
        int i10 = this.f6790j;
        if (i10 == 0) {
            d3.e.p(obj);
            fVar = (xd.f) this.f6791k;
            fVar2 = new gd.f();
            fVar2.n(this.f6792l);
            it = this.f6793m.list(this.f6792l).iterator();
        } else {
            if (i10 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            it = this.f6789i;
            fVar2 = this.f6788h;
            fVar = (xd.f) this.f6791k;
            d3.e.p(obj);
        }
        gd.f fVar3 = fVar2;
        xd.f fVar4 = fVar;
        while (it.hasNext()) {
            a0 next = it.next();
            de.k kVar = this.f6793m;
            boolean z10 = this.f6794n;
            this.f6791k = fVar4;
            this.f6788h = fVar3;
            this.f6789i = it;
            this.f6790j = 1;
            if (i.a(fVar4, kVar, fVar3, next, z10, false, this) == aVar) {
                return aVar;
            }
        }
        return o.f7408a;
    }
}
