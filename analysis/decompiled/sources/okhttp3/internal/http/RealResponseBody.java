package okhttp3.internal.http;

import de.f;
import okhttp3.MediaType;
import okhttp3.ResponseBody;
import p4.h;

/* JADX INFO: compiled from: RealResponseBody.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class RealResponseBody extends ResponseBody {
    private final long contentLength;
    private final String contentTypeString;
    private final f source;

    public RealResponseBody(String str, long j10, f fVar) {
        h.j(fVar, "source");
        this.contentTypeString = str;
        this.contentLength = j10;
        this.source = fVar;
    }

    @Override // okhttp3.ResponseBody
    public long contentLength() {
        return this.contentLength;
    }

    @Override // okhttp3.ResponseBody
    public MediaType contentType() {
        String str = this.contentTypeString;
        if (str != null) {
            return MediaType.Companion.parse(str);
        }
        return null;
    }

    @Override // okhttp3.ResponseBody
    public f source() {
        return this.source;
    }
}
