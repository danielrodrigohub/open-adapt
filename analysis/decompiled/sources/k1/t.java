package k1;

import android.content.Context;
import androidx.work.ListenableWorker;
import androidx.work.WorkerParameters;

/* JADX INFO: compiled from: WorkerFactory.java */
/* JADX INFO: loaded from: classes.dex */
public abstract class t {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final String f9622a = l.e("WorkerFactory");

    public abstract ListenableWorker a(Context context, String str, WorkerParameters workerParameters);

    public final ListenableWorker b(Context context, String str, WorkerParameters workerParameters) {
        ListenableWorker listenableWorkerA = a(context, str, workerParameters);
        if (listenableWorkerA == null) {
            Class clsAsSubclass = null;
            try {
                clsAsSubclass = Class.forName(str).asSubclass(ListenableWorker.class);
            } catch (Throwable th) {
                l.c().b(f9622a, androidx.recyclerview.widget.d.c("Invalid class: ", str), th);
            }
            if (clsAsSubclass != null) {
                try {
                    listenableWorkerA = (ListenableWorker) clsAsSubclass.getDeclaredConstructor(Context.class, WorkerParameters.class).newInstance(context, workerParameters);
                } catch (Throwable th2) {
                    l.c().b(f9622a, androidx.recyclerview.widget.d.c("Could not instantiate ", str), th2);
                }
            }
        }
        if (listenableWorkerA == null || !listenableWorkerA.f3026k) {
            return listenableWorkerA;
        }
        throw new IllegalStateException(String.format("WorkerFactory (%s) returned an instance of a ListenableWorker (%s) which has already been invoked. createWorker() must always return a new instance of a ListenableWorker.", getClass().getName(), str));
    }
}
