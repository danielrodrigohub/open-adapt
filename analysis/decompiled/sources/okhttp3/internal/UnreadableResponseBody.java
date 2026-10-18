package okhttp3.internal;

import de.c;
import de.f;
import de.j0;
import de.k0;
import de.w;
import okhttp3.MediaType;
import okhttp3.ResponseBody;
import p4.h;

/* JADX INFO: compiled from: -ResponseCommon.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class UnreadableResponseBody extends ResponseBody implements j0 {
    private final long contentLength;
    private final MediaType mediaType;

    public UnreadableResponseBody(MediaType mediaType, long j10) {
        this.mediaType = mediaType;
        this.contentLength = j10;
    }

    @Override // okhttp3.ResponseBody, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
    }

    @Override // okhttp3.ResponseBody
    public long contentLength() {
        return this.contentLength;
    }

    @Override // okhttp3.ResponseBody
    public MediaType contentType() {
        return this.mediaType;
    }

    @Override // de.j0
    public long read(c cVar, long j10) {
        h.j(cVar, "sink");
        throw new IllegalStateException("Unreadable ResponseBody! These Response objects have bodies that are stripped:\n * Response.cacheResponse\n * Response.networkResponse\n * Response.priorResponse\n * EventSourceListener\n * WebSocketListener\n(It is safe to call contentType() and contentLength() on these response bodies.)");
    }

    @Override // okhttp3.ResponseBody
    public f source() {
        return w.b(this);
    }

    @Override // de.j0
    public k0 timeout() {
        return k0.NONE;
    }
}
