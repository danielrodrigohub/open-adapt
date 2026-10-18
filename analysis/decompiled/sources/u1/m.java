package u1;

import android.annotation.SuppressLint;
import android.content.Context;
import androidx.work.ListenableWorker;
import java.util.Objects;
import java.util.UUID;

/* JADX INFO: compiled from: WorkForegroundRunnable.java */
/* JADX INFO: loaded from: classes.dex */
public final class m implements Runnable {

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public static final String f15647n = k1.l.e("WorkForegroundRunnable");

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final v1.c<Void> f15648h = new v1.c<>();

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final Context f15649i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final t1.o f15650j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final ListenableWorker f15651k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final k1.g f15652l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final w1.a f15653m;

    /* JADX INFO: compiled from: WorkForegroundRunnable.java */
    public class a implements Runnable {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public final /* synthetic */ v1.c f15654h;

        public a(v1.c cVar) {
            this.f15654h = cVar;
        }

        @Override // java.lang.Runnable
        public final void run() {
            this.f15654h.l(m.this.f15651k.a());
        }
    }

    /* JADX INFO: compiled from: WorkForegroundRunnable.java */
    public class b implements Runnable {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public final /* synthetic */ v1.c f15656h;

        public b(v1.c cVar) {
            this.f15656h = cVar;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // java.lang.Runnable
        public final void run() {
            try {
                k1.f fVar = (k1.f) this.f15656h.get();
                if (fVar == null) {
                    throw new IllegalStateException(String.format("Worker was marked important (%s) but did not provide ForegroundInfo", m.this.f15650j.f15352c));
                }
                k1.l.c().a(m.f15647n, String.format("Updating notification for %s", m.this.f15650j.f15352c), new Throwable[0]);
                m mVar = m.this;
                ListenableWorker listenableWorker = mVar.f15651k;
                listenableWorker.f3027l = true;
                v1.c<Void> cVar = mVar.f15648h;
                k1.g gVar = mVar.f15652l;
                Context context = mVar.f15649i;
                UUID uuid = listenableWorker.f3024i.f3032a;
                o oVar = (o) gVar;
                Objects.requireNonNull(oVar);
                v1.c cVar2 = new v1.c();
                ((w1.b) oVar.f15663a).a(new n(oVar, cVar2, uuid, fVar, context));
                cVar.l(cVar2);
            } catch (Throwable th) {
                m.this.f15648h.k(th);
            }
        }
    }

    @SuppressLint({"LambdaLast"})
    public m(Context context, t1.o oVar, ListenableWorker listenableWorker, k1.g gVar, w1.a aVar) {
        this.f15649i = context;
        this.f15650j = oVar;
        this.f15651k = listenableWorker;
        this.f15652l = gVar;
        this.f15653m = aVar;
    }

    @Override // java.lang.Runnable
    @SuppressLint({"UnsafeExperimentalUsageError"})
    public final void run() {
        if (!this.f15650j.f15366q || f0.a.a()) {
            this.f15648h.j(null);
            return;
        }
        v1.c cVar = new v1.c();
        ((w1.b) this.f15653m).f17059c.execute(new a(cVar));
        cVar.a(new b(cVar), ((w1.b) this.f15653m).f17059c);
    }
}
