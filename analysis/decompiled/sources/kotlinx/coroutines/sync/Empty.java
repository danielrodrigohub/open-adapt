package kotlinx.coroutines.sync;

import a0.b;

/* JADX INFO: compiled from: Mutex.kt */
/* JADX INFO: loaded from: classes.dex */
final class Empty {
    public final Object locked;

    public Empty(Object obj) {
        this.locked = obj;
    }

    public String toString() {
        StringBuilder sbC = b.c("Empty[");
        sbC.append(this.locked);
        sbC.append(']');
        return sbC.toString();
    }
}
