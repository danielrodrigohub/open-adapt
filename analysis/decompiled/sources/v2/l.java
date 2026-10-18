package v2;

import java.util.Objects;
import java.util.Queue;

/* JADX INFO: compiled from: ModelCache.java */
/* JADX INFO: loaded from: classes.dex */
public final class l extends l3.i<m.a<Object>, Object> {
    public l() {
        super(500L);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // l3.i
    public final void c(m.a<Object> aVar, Object obj) {
        m.a<Object> aVar2 = aVar;
        Objects.requireNonNull(aVar2);
        Queue<m.a<?>> queue = m.a.f16170d;
        synchronized (queue) {
            queue.offer((m.a<?>) aVar2);
        }
    }
}
