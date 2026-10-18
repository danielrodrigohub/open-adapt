package cc;

import java.util.concurrent.atomic.AtomicReference;
import kotlinx.coroutines.BuildersKt__BuildersKt;
import rd.o;

/* JADX INFO: compiled from: OIDCRepositoryImpl.kt */
/* JADX INFO: loaded from: classes.dex */
public final class d extends o implements qd.a<AtomicReference<ob.c>> {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ e f4290h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public d(e eVar) {
        super(0);
        this.f4290h = eVar;
    }

    @Override // qd.a
    public final AtomicReference<ob.c> invoke() {
        return new AtomicReference<>(BuildersKt__BuildersKt.runBlocking$default(null, new c(this.f4290h, null), 1, null));
    }
}
