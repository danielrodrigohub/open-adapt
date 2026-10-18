package kotlinx.coroutines.internal;

import a0.b;
import jd.f;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: compiled from: Scopes.kt */
/* JADX INFO: loaded from: classes.dex */
public final class ContextScope implements CoroutineScope {
    private final f coroutineContext;

    public ContextScope(f fVar) {
        this.coroutineContext = fVar;
    }

    @Override // kotlinx.coroutines.CoroutineScope
    public f getCoroutineContext() {
        return this.coroutineContext;
    }

    public String toString() {
        StringBuilder sbC = b.c("CoroutineScope(coroutineContext=");
        sbC.append(getCoroutineContext());
        sbC.append(')');
        return sbC.toString();
    }
}
