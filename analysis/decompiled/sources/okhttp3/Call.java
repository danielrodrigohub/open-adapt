package okhttp3;

import de.k0;
import java.io.IOException;

/* JADX INFO: compiled from: Call.kt */
/* JADX INFO: loaded from: classes.dex */
public interface Call extends Cloneable {

    /* JADX INFO: compiled from: Call.kt */
    public interface Factory {
        Call newCall(Request request);
    }

    void cancel();

    /* JADX INFO: renamed from: clone */
    Call mo0clone();

    void enqueue(Callback callback);

    Response execute() throws IOException;

    boolean isCanceled();

    boolean isExecuted();

    Request request();

    k0 timeout();
}
