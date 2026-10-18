package o7;

import java.util.concurrent.ExecutorService;

/* JADX INFO: compiled from: AdaptExecutor.kt */
/* JADX INFO: loaded from: classes.dex */
public enum b {
    IO(e.f12373c),
    NETWORK(e.f12374d);


    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final ExecutorService f12367h;

    b(ExecutorService executorService) {
        this.f12367h = executorService;
    }
}
