package bd;

import android.content.Context;
import fd.h;
import java.util.List;
import kotlinx.serialization.DeserializationStrategy;
import kotlinx.serialization.SerializationStrategy;
import rd.o;

/* JADX INFO: compiled from: SecureDataStoreImpl.kt */
/* JADX INFO: loaded from: classes.dex */
public final class f implements zc.c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final h f3796a;

    /* JADX INFO: compiled from: SecureDataStoreImpl.kt */
    public static final class a extends o implements qd.a<d> {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public final /* synthetic */ bd.a f3797h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public final /* synthetic */ Context f3798i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public final /* synthetic */ cd.a f3799j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public final /* synthetic */ List<yc.a.b> f3800k;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        public a(bd.a aVar, Context context, cd.a aVar2, List<? extends yc.a.b> list) {
            super(0);
            this.f3797h = aVar;
            this.f3798i = context;
            this.f3799j = aVar2;
            this.f3800k = list;
        }

        @Override // qd.a
        public final d invoke() {
            return new d(this.f3797h, new cd.d(this.f3798i, this.f3799j), this.f3800k);
        }
    }

    public f(Context context, bd.a aVar, cd.a aVar2, List<? extends yc.a.b> list) {
        p4.h.j(context, "applicationContext");
        p4.h.j(aVar, "host");
        this.f3796a = (h) androidx.lifecycle.o.x(new a(aVar, context, aVar2, list));
    }

    @Override // zc.b
    public final Object c(Object obj, SerializationStrategy serializationStrategy, jd.d dVar) {
        Object objC = ((zc.a) this.f3796a.getValue()).c(obj, serializationStrategy, dVar);
        return objC == kd.a.COROUTINE_SUSPENDED ? objC : fd.o.f7408a;
    }

    @Override // zc.b
    public final Object e(DeserializationStrategy deserializationStrategy, jd.d dVar) {
        return ((zc.a) this.f3796a.getValue()).e(deserializationStrategy, dVar);
    }
}
