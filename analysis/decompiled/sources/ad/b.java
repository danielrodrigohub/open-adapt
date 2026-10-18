package ad;

import cd.a.d;
import com.nike.persistence.implementation.PersistenceManager;
import fd.o;
import java.util.Objects;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.Dispatchers;
import kotlinx.serialization.SerializersKt;
import kotlinx.serialization.json.Json;
import ld.i;
import qd.p;
import rd.x;

/* JADX INFO: compiled from: PersistenceManager.kt */
/* JADX INFO: loaded from: classes.dex */
@ld.e(c = "com.nike.persistence.implementation.PersistenceManager$init$1$2$1", f = "PersistenceManager.kt", l = {46}, m = "invokeSuspend")
public final class b extends i implements p<CoroutineScope, jd.d<? super PersistenceManager.Settings>, Object> {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public Json.Default f607h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f608i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final /* synthetic */ cd.a f609j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final /* synthetic */ PersistenceManager f610k;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public b(cd.a aVar, PersistenceManager persistenceManager, jd.d<? super b> dVar) {
        super(2, dVar);
        this.f609j = aVar;
        this.f610k = persistenceManager;
    }

    @Override // ld.a
    public final jd.d<o> create(Object obj, jd.d<?> dVar) {
        return new b(this.f609j, this.f610k, dVar);
    }

    @Override // qd.p
    public final Object invoke(CoroutineScope coroutineScope, jd.d<? super PersistenceManager.Settings> dVar) {
        return ((b) create(coroutineScope, dVar)).invokeSuspend(o.f7408a);
    }

    @Override // ld.a
    public final Object invokeSuspend(Object obj) throws Throwable {
        Json.Default r10;
        kd.a aVar = kd.a.COROUTINE_SUSPENDED;
        int i10 = this.f608i;
        if (i10 == 0) {
            d3.e.p(obj);
            Json.Default r11 = Json.Default;
            cd.a aVar2 = this.f609j;
            String str = this.f610k.f5943d;
            this.f607h = r11;
            this.f608i = 1;
            Objects.requireNonNull(aVar2);
            Object objWithContext = BuildersKt.withContext(Dispatchers.getIO(), aVar2.new d(str, null), this);
            if (objWithContext == aVar) {
                return aVar;
            }
            r10 = r11;
            obj = objWithContext;
        } else {
            if (i10 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            r10 = this.f607h;
            d3.e.p(obj);
        }
        return r10.decodeFromString(SerializersKt.serializer(r10.getSerializersModule(), x.b(PersistenceManager.Settings.class)), (String) obj);
    }
}
