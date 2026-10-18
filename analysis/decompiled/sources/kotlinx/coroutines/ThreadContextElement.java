package kotlinx.coroutines;

import jd.f;

/* JADX INFO: compiled from: ThreadContextElement.kt */
/* JADX INFO: loaded from: classes.dex */
public interface ThreadContextElement<S> extends f.a {
    void restoreThreadContext(f fVar, S s10);

    S updateThreadContext(f fVar);
}
