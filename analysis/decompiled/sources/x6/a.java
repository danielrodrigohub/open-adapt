package x6;

import com.google.errorprone.annotations.DoNotMock;
import java.util.concurrent.Executor;
import java.util.concurrent.Future;

/* JADX INFO: compiled from: ListenableFuture.java */
/* JADX INFO: loaded from: classes.dex */
@DoNotMock("Use the methods in Futures (like immediateFuture) or SettableFuture")
public interface a<V> extends Future<V> {
    void a(Runnable runnable, Executor executor);
}
