package k1;

import android.content.Context;
import androidx.work.ListenableWorker;
import androidx.work.WorkerParameters;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;

/* JADX INFO: compiled from: DelegatingWorkerFactory.java */
/* JADX INFO: loaded from: classes.dex */
public final class e extends t {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final String f9588c = l.e("DelegatingWkrFctry");

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final List<t> f9589b = new CopyOnWriteArrayList();

    /* JADX WARN: Type inference failed for: r0v0, types: [java.util.List<k1.t>, java.util.concurrent.CopyOnWriteArrayList] */
    @Override // k1.t
    public final ListenableWorker a(Context context, String str, WorkerParameters workerParameters) {
        Iterator it = this.f9589b.iterator();
        while (it.hasNext()) {
            try {
                ListenableWorker listenableWorkerA = ((t) it.next()).a(context, str, workerParameters);
                if (listenableWorkerA != null) {
                    return listenableWorkerA;
                }
            } catch (Throwable th) {
                l.c().b(f9588c, String.format("Unable to instantiate a ListenableWorker (%s)", str), th);
                throw th;
            }
        }
        return null;
    }
}
