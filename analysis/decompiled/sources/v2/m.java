package v2;

import java.util.ArrayDeque;
import java.util.Queue;

/* JADX INFO: compiled from: ModelCache.java */
/* JADX INFO: loaded from: classes.dex */
public final class m<A, B> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final l3.i<a<A>, B> f16169a = new l();

    /* JADX INFO: compiled from: ModelCache.java */
    public static final class a<A> {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public static final Queue<a<?>> f16170d;

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public int f16171a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f16172b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public A f16173c;

        static {
            char[] cArr = l3.l.f9945a;
            f16170d = new ArrayDeque(0);
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v0, types: [java.util.ArrayDeque, java.util.Queue<v2.m$a<?>>] */
        public static a a(Object obj) {
            a aVar;
            ?? r10 = f16170d;
            synchronized (r10) {
                aVar = (a) r10.poll();
            }
            if (aVar == null) {
                aVar = new a();
            }
            aVar.f16173c = obj;
            aVar.f16172b = 0;
            aVar.f16171a = 0;
            return aVar;
        }

        public final boolean equals(Object obj) {
            if (!(obj instanceof a)) {
                return false;
            }
            a aVar = (a) obj;
            return this.f16172b == aVar.f16172b && this.f16171a == aVar.f16171a && this.f16173c.equals(aVar.f16173c);
        }

        public final int hashCode() {
            return this.f16173c.hashCode() + (((this.f16171a * 31) + this.f16172b) * 31);
        }
    }
}
