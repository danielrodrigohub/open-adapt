package t2;

import java.util.ArrayDeque;
import java.util.HashMap;
import java.util.Map;
import java.util.Objects;
import java.util.Queue;
import java.util.concurrent.locks.ReentrantLock;

/* JADX INFO: compiled from: DiskCacheWriteLocker.java */
/* JADX INFO: loaded from: classes.dex */
public final class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Map<String, a> f15383a = new HashMap();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final b f15384b = new b();

    /* JADX INFO: compiled from: DiskCacheWriteLocker.java */
    public static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final ReentrantLock f15385a = new ReentrantLock();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f15386b;
    }

    /* JADX INFO: compiled from: DiskCacheWriteLocker.java */
    public static class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final Queue<a> f15387a = new ArrayDeque();
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [java.util.HashMap, java.util.Map<java.lang.String, t2.c$a>] */
    /* JADX WARN: Type inference failed for: r1v4, types: [java.util.HashMap, java.util.Map<java.lang.String, t2.c$a>] */
    /* JADX WARN: Type inference failed for: r3v2, types: [java.util.ArrayDeque, java.util.Queue<t2.c$a>] */
    /* JADX WARN: Type inference failed for: r6v9, types: [java.util.ArrayDeque, java.util.Queue<t2.c$a>] */
    public final void a(String str) {
        a aVar;
        synchronized (this) {
            Object obj = this.f15383a.get(str);
            Objects.requireNonNull(obj, "Argument must not be null");
            aVar = (a) obj;
            int i10 = aVar.f15386b;
            if (i10 < 1) {
                throw new IllegalStateException("Cannot release a lock that is not held, safeKey: " + str + ", interestedThreads: " + aVar.f15386b);
            }
            int i11 = i10 - 1;
            aVar.f15386b = i11;
            if (i11 == 0) {
                a aVar2 = (a) this.f15383a.remove(str);
                if (!aVar2.equals(aVar)) {
                    throw new IllegalStateException("Removed the wrong lock, expected to remove: " + aVar + ", but actually removed: " + aVar2 + ", safeKey: " + str);
                }
                b bVar = this.f15384b;
                synchronized (bVar.f15387a) {
                    if (bVar.f15387a.size() < 10) {
                        bVar.f15387a.offer(aVar2);
                    }
                }
            }
        }
        aVar.f15385a.unlock();
    }
}
