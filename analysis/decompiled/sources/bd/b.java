package bd;

import fd.o;
import java.util.Objects;
import kotlinx.serialization.BinaryFormat;
import kotlinx.serialization.DeserializationStrategy;
import kotlinx.serialization.StringFormat;
import ld.i;
import qd.l;

/* JADX INFO: compiled from: FileDataStoreImpl.kt */
/* JADX INFO: loaded from: classes.dex */
@ld.e(c = "com.nike.persistence.implementation.datastores.FileDataStoreImpl$readInstance$2", f = "FileDataStoreImpl.kt", l = {32, 35}, m = "invokeSuspend")
public final class b extends i implements l<jd.d<Object>, Object> {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public StringFormat f3780h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public DeserializationStrategy f3781i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int f3782j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final /* synthetic */ d f3783k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final /* synthetic */ DeserializationStrategy<Object> f3784l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final /* synthetic */ String f3785m;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public b(d dVar, DeserializationStrategy<Object> deserializationStrategy, String str, jd.d<? super b> dVar2) {
        super(1, dVar2);
        this.f3783k = dVar;
        this.f3784l = deserializationStrategy;
        this.f3785m = str;
    }

    @Override // ld.a
    public final jd.d<o> create(jd.d<?> dVar) {
        return new b(this.f3783k, this.f3784l, this.f3785m, dVar);
    }

    @Override // qd.l
    public final Object invoke(jd.d<Object> dVar) {
        return ((b) create(dVar)).invokeSuspend(o.f7408a);
    }

    @Override // ld.a
    public final Object invokeSuspend(Object obj) throws Throwable {
        BinaryFormat binaryFormat;
        DeserializationStrategy<Object> deserializationStrategy;
        StringFormat stringFormat;
        DeserializationStrategy<Object> deserializationStrategy2;
        kd.a aVar = kd.a.COROUTINE_SUSPENDED;
        int i10 = this.f3782j;
        if (i10 != 0) {
            if (i10 == 1) {
                deserializationStrategy2 = this.f3781i;
                stringFormat = this.f3780h;
                d3.e.p(obj);
                return stringFormat.decodeFromString(deserializationStrategy2, (String) obj);
            }
            if (i10 != 2) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            deserializationStrategy = this.f3781i;
            binaryFormat = (BinaryFormat) this.f3780h;
            d3.e.p(obj);
            return binaryFormat.decodeFromByteArray(deserializationStrategy, (byte[]) obj);
        }
        d3.e.p(obj);
        d dVar = this.f3783k;
        dd.e eVar = dVar.f3794d;
        if (eVar instanceof dd.e.c) {
            stringFormat = ((dd.e.c) eVar).f6182j;
            DeserializationStrategy<Object> deserializationStrategy3 = this.f3784l;
            cd.e eVar2 = dVar.f3792b;
            String str = this.f3785m;
            this.f3780h = stringFormat;
            this.f3781i = deserializationStrategy3;
            this.f3782j = 1;
            obj = eVar2.d(str, this);
            if (obj == aVar) {
                return aVar;
            }
            deserializationStrategy2 = deserializationStrategy3;
            return stringFormat.decodeFromString(deserializationStrategy2, (String) obj);
        }
        if (!(eVar instanceof dd.e.a)) {
            throw new j2.a();
        }
        Objects.requireNonNull((dd.e.a) eVar);
        binaryFormat = null;
        DeserializationStrategy<Object> deserializationStrategy4 = this.f3784l;
        cd.e eVar3 = this.f3783k.f3792b;
        String str2 = this.f3785m;
        this.f3780h = null;
        this.f3781i = deserializationStrategy4;
        this.f3782j = 2;
        Object objB = eVar3.b(str2, this);
        if (objB == aVar) {
            return aVar;
        }
        deserializationStrategy = deserializationStrategy4;
        obj = objB;
        return binaryFormat.decodeFromByteArray(deserializationStrategy, (byte[]) obj);
    }
}
