package bd;

import fd.o;
import java.util.Objects;
import kotlinx.serialization.SerializationStrategy;
import ld.i;
import qd.l;

/* JADX INFO: compiled from: FileDataStoreImpl.kt */
/* JADX INFO: loaded from: classes.dex */
@ld.e(c = "com.nike.persistence.implementation.datastores.FileDataStoreImpl$writeInstance$2", f = "FileDataStoreImpl.kt", l = {46, 49}, m = "invokeSuspend")
public final class c extends i implements l<jd.d<? super o>, Object> {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f3786h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final /* synthetic */ d f3787i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final /* synthetic */ String f3788j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final /* synthetic */ SerializationStrategy<Object> f3789k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final /* synthetic */ Object f3790l;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public c(d dVar, String str, SerializationStrategy<Object> serializationStrategy, Object obj, jd.d<? super c> dVar2) {
        super(1, dVar2);
        this.f3787i = dVar;
        this.f3788j = str;
        this.f3789k = serializationStrategy;
        this.f3790l = obj;
    }

    @Override // ld.a
    public final jd.d<o> create(jd.d<?> dVar) {
        return new c(this.f3787i, this.f3788j, this.f3789k, this.f3790l, dVar);
    }

    @Override // qd.l
    public final Object invoke(jd.d<? super o> dVar) {
        return ((c) create(dVar)).invokeSuspend(o.f7408a);
    }

    @Override // ld.a
    public final Object invokeSuspend(Object obj) throws Throwable {
        kd.a aVar = kd.a.COROUTINE_SUSPENDED;
        int i10 = this.f3786h;
        if (i10 == 0) {
            d3.e.p(obj);
            d dVar = this.f3787i;
            dd.e eVar = dVar.f3794d;
            if (eVar instanceof dd.e.c) {
                cd.e eVar2 = dVar.f3792b;
                String str = this.f3788j;
                String strEncodeToString = ((dd.e.c) eVar).f6182j.encodeToString(this.f3789k, this.f3790l);
                this.f3786h = 1;
                if (eVar2.a(str, strEncodeToString, this) == aVar) {
                    return aVar;
                }
            } else if (eVar instanceof dd.e.a) {
                cd.e eVar3 = dVar.f3792b;
                Objects.requireNonNull((dd.e.a) eVar);
                throw null;
            }
        } else {
            if (i10 != 1 && i10 != 2) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            d3.e.p(obj);
        }
        return o.f7408a;
    }
}
