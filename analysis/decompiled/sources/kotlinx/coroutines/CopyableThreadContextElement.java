package kotlinx.coroutines;

import jd.f;

/* JADX INFO: compiled from: ThreadContextElement.kt */
/* JADX INFO: loaded from: classes.dex */
public interface CopyableThreadContextElement<S> extends ThreadContextElement<S> {
    CopyableThreadContextElement<S> copyForChild();

    f mergeForChild(f.a aVar);
}
