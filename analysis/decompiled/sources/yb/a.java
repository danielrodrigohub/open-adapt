package yb;

import fd.o;
import java.util.Iterator;
import kotlinx.coroutines.CoroutineScope;
import ld.i;
import qd.p;

/* JADX INFO: compiled from: NativeOIDCWrapper.kt */
/* JADX INFO: loaded from: classes.dex */
@ld.e(c = "com.nike.authcomponent.oidc.internal.nativeoidc.NativeOIDCWrapper$1", f = "NativeOIDCWrapper.kt", l = {56, 57}, m = "invokeSuspend")
public final class a extends i implements p<CoroutineScope, jd.d<? super o>, Object> {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public e f19118h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public Iterator f19119i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int f19120j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final /* synthetic */ e f19121k;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public a(e eVar, jd.d<? super a> dVar) {
        super(2, dVar);
        this.f19121k = eVar;
    }

    @Override // ld.a
    public final jd.d<o> create(Object obj, jd.d<?> dVar) {
        return new a(this.f19121k, dVar);
    }

    @Override // qd.p
    public final Object invoke(CoroutineScope coroutineScope, jd.d<? super o> dVar) {
        return ((a) create(coroutineScope, dVar)).invokeSuspend(o.f7408a);
    }

    /* JADX WARN: Code duplicated, block: B:16:0x003e  */
    /* JADX WARN: Code duplicated, block: B:21:0x0050 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:24:? A[LOOP:0: B:14:0x0038->B:24:?, LOOP_END, SYNTHETIC] */
    @Override // ld.a
    public final Object invokeSuspend(Object obj) throws Throwable {
        e eVar;
        Iterator it;
        String str;
        kd.a aVar = kd.a.COROUTINE_SUSPENDED;
        int i10 = this.f19120j;
        if (i10 != 0) {
            if (i10 == 1) {
                d3.e.p(obj);
            } else {
                if (i10 != 2) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                it = this.f19119i;
                eVar = this.f19118h;
                d3.e.p(obj);
            }
            while (it.hasNext()) {
                str = (String) it.next();
                this.f19118h = eVar;
                this.f19119i = it;
                this.f19120j = 2;
                if (e.f(eVar, str, this) == aVar) {
                    return aVar;
                }
            }
            return o.f7408a;
        }
        d3.e.p(obj);
        ac.a aVar2 = this.f19121k.f19141d;
        this.f19120j = 1;
        obj = aVar2.b(this);
        if (obj == aVar) {
            return aVar;
        }
        eVar = this.f19121k;
        it = ((Iterable) obj).iterator();
        while (it.hasNext()) {
            str = (String) it.next();
            this.f19118h = eVar;
            this.f19119i = it;
            this.f19120j = 2;
            if (e.f(eVar, str, this) == aVar) {
                return aVar;
            }
        }
        return o.f7408a;
    }
}
