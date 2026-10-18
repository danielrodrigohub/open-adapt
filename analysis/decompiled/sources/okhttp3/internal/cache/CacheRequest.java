package okhttp3.internal.cache;

import de.h0;
import java.io.IOException;

/* JADX INFO: compiled from: CacheRequest.kt */
/* JADX INFO: loaded from: classes2.dex */
public interface CacheRequest {
    void abort();

    h0 body() throws IOException;
}
