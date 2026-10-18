package okhttp3.internal.http2;

import de.f;
import java.io.IOException;
import java.util.List;
import p4.h;

/* JADX INFO: compiled from: PushObserver.kt */
/* JADX INFO: loaded from: classes2.dex */
public interface PushObserver {
    public static final Companion Companion = Companion.$$INSTANCE;
    public static final PushObserver CANCEL = new Companion.PushObserverCancel();

    /* JADX INFO: compiled from: PushObserver.kt */
    public static final class Companion {
        public static final /* synthetic */ Companion $$INSTANCE = new Companion();

        /* JADX INFO: compiled from: PushObserver.kt */
        public static final class PushObserverCancel implements PushObserver {
            @Override // okhttp3.internal.http2.PushObserver
            public boolean onData(int i10, f fVar, int i11, boolean z10) throws IOException {
                h.j(fVar, "source");
                fVar.a(i11);
                return true;
            }

            @Override // okhttp3.internal.http2.PushObserver
            public boolean onHeaders(int i10, List<Header> list, boolean z10) {
                h.j(list, "responseHeaders");
                return true;
            }

            @Override // okhttp3.internal.http2.PushObserver
            public boolean onRequest(int i10, List<Header> list) {
                h.j(list, "requestHeaders");
                return true;
            }

            @Override // okhttp3.internal.http2.PushObserver
            public void onReset(int i10, ErrorCode errorCode) {
                h.j(errorCode, "errorCode");
            }
        }

        private Companion() {
        }
    }

    boolean onData(int i10, f fVar, int i11, boolean z10) throws IOException;

    boolean onHeaders(int i10, List<Header> list, boolean z10);

    boolean onRequest(int i10, List<Header> list);

    void onReset(int i10, ErrorCode errorCode);
}
