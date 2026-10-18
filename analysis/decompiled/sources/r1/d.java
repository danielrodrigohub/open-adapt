package r1;

import android.content.Context;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;
import k1.l;

/* JADX INFO: compiled from: ConstraintTracker.java */
/* JADX INFO: loaded from: classes.dex */
public abstract class d<T> {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final String f14202f = l.e("ConstraintTracker");

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final w1.a f14203a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Context f14204b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Object f14205c = new Object();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final Set<p1.a<T>> f14206d = new LinkedHashSet();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public T f14207e;

    /* JADX INFO: compiled from: ConstraintTracker.java */
    public class a implements Runnable {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public final /* synthetic */ List f14208h;

        public a(List list) {
            this.f14208h = list;
        }

        @Override // java.lang.Runnable
        public final void run() {
            Iterator it = this.f14208h.iterator();
            while (it.hasNext()) {
                ((p1.a) it.next()).a(d.this.f14207e);
            }
        }
    }

    public d(Context context, w1.a aVar) {
        this.f14204b = context.getApplicationContext();
        this.f14203a = aVar;
    }

    public abstract T a();

    public final void b(p1.a<T> aVar) {
        synchronized (this.f14205c) {
            if (this.f14206d.remove(aVar) && this.f14206d.isEmpty()) {
                e();
            }
        }
    }

    public final void c(T t10) {
        synchronized (this.f14205c) {
            T t11 = this.f14207e;
            if (t11 != t10 && (t11 == null || !t11.equals(t10))) {
                this.f14207e = t10;
                ((w1.b) this.f14203a).f17059c.execute(new a(new ArrayList(this.f14206d)));
            }
        }
    }

    public abstract void d();

    public abstract void e();
}
