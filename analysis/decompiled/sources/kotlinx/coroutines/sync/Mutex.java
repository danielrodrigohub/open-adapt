package kotlinx.coroutines.sync;

import fd.o;
import jd.d;

/* JADX INFO: compiled from: Mutex.kt */
/* JADX INFO: loaded from: classes.dex */
public interface Mutex {
    Object lock(Object obj, d<? super o> dVar);

    void unlock(Object obj);
}
