package kotlinx.coroutines;

import fd.o;
import jd.d;
import jd.f;
import qd.p;

/* JADX INFO: loaded from: classes.dex */
public final class BuildersKt {
    public static final <T> Deferred<T> async(CoroutineScope coroutineScope, f fVar, CoroutineStart coroutineStart, p<? super CoroutineScope, ? super d<? super T>, ? extends Object> pVar) {
        return BuildersKt__Builders_commonKt.async(coroutineScope, fVar, coroutineStart, pVar);
    }

    public static final Job launch(CoroutineScope coroutineScope, f fVar, CoroutineStart coroutineStart, p<? super CoroutineScope, ? super d<? super o>, ? extends Object> pVar) {
        return BuildersKt__Builders_commonKt.launch(coroutineScope, fVar, coroutineStart, pVar);
    }

    public static final <T> T runBlocking(f fVar, p<? super CoroutineScope, ? super d<? super T>, ? extends Object> pVar) throws InterruptedException {
        return (T) BuildersKt__BuildersKt.runBlocking(fVar, pVar);
    }

    public static final <T> Object withContext(f fVar, p<? super CoroutineScope, ? super d<? super T>, ? extends Object> pVar, d<? super T> dVar) {
        return BuildersKt__Builders_commonKt.withContext(fVar, pVar, dVar);
    }
}
