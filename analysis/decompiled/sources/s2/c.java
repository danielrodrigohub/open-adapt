package s2;

import java.util.ArrayDeque;
import java.util.Queue;
import s2.l;

/* JADX INFO: compiled from: BaseKeyPool.java */
/* JADX INFO: loaded from: classes.dex */
public abstract class c<T extends l> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Queue<T> f14963a;

    public c() {
        char[] cArr = l3.l.f9945a;
        this.f14963a = new ArrayDeque(20);
    }

    public abstract T a();

    public final T b() {
        T t10 = (T) this.f14963a.poll();
        return t10 == null ? (T) a() : t10;
    }

    public final void c(T t10) {
        if (this.f14963a.size() < 20) {
            this.f14963a.offer(t10);
        }
    }
}
