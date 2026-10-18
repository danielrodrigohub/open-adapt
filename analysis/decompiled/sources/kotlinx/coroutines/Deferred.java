package kotlinx.coroutines;

import jd.d;

/* JADX INFO: compiled from: Deferred.kt */
/* JADX INFO: loaded from: classes.dex */
public interface Deferred<T> extends Job {
    Object await(d<? super T> dVar);
}
