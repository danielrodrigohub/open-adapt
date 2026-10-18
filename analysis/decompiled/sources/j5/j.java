package j5;

import android.os.Handler;
import java.util.concurrent.Executor;

/* JADX INFO: compiled from: R8$$SyntheticClass */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class j implements Executor {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ Handler f9376h;

    @Override // java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        this.f9376h.post(runnable);
    }
}
