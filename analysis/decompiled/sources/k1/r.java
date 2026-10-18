package k1;

import androidx.work.ListenableWorker;
import java.util.HashSet;
import java.util.Set;
import java.util.UUID;

/* JADX INFO: compiled from: WorkRequest.java */
/* JADX INFO: loaded from: classes.dex */
public abstract class r {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public UUID f9616a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public t1.o f9617b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Set<String> f9618c;

    /* JADX INFO: compiled from: WorkRequest.java */
    public static abstract class a<B extends a<?, ?>, W extends r> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public t1.o f9620b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public Set<String> f9621c = new HashSet();

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public UUID f9619a = UUID.randomUUID();

        /* JADX WARN: Type inference failed for: r0v3, types: [java.util.HashSet, java.util.Set<java.lang.String>] */
        public a(Class<? extends ListenableWorker> cls) {
            this.f9620b = new t1.o(this.f9619a.toString(), cls.getName());
            this.f9621c.add(cls.getName());
        }

        public final W a() {
            n nVar = new n((n.a) this);
            c cVar = this.f9620b.f15359j;
            boolean z10 = cVar.a() || cVar.f9577d || cVar.f9575b || cVar.f9576c;
            t1.o oVar = this.f9620b;
            if (oVar.f15366q) {
                if (z10) {
                    throw new IllegalArgumentException("Expedited jobs only support network and storage constraints");
                }
                if (oVar.f15356g > 0) {
                    throw new IllegalArgumentException("Expedited jobs cannot be delayed");
                }
            }
            this.f9619a = UUID.randomUUID();
            t1.o oVar2 = new t1.o(this.f9620b);
            this.f9620b = oVar2;
            oVar2.f15350a = this.f9619a.toString();
            return nVar;
        }
    }

    public r(UUID uuid, t1.o oVar, Set<String> set) {
        this.f9616a = uuid;
        this.f9617b = oVar;
        this.f9618c = set;
    }

    public final String a() {
        return this.f9616a.toString();
    }
}
