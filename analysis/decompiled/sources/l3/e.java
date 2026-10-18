package l3;

import java.util.concurrent.Executor;

/* JADX INFO: compiled from: Executors.java */
/* JADX INFO: loaded from: classes.dex */
public final class e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final a f9930a = new a();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final b f9931b = new b();

    /* JADX INFO: compiled from: Executors.java */
    public class a implements Executor {
        @Override // java.util.concurrent.Executor
        public final void execute(Runnable runnable) {
            l.k(runnable);
        }
    }

    /* JADX INFO: compiled from: Executors.java */
    public class b implements Executor {
        @Override // java.util.concurrent.Executor
        public final void execute(Runnable runnable) {
            runnable.run();
        }
    }
}
