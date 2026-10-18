package okhttp3.internal;

import de.e;
import de.g;
import java.io.IOException;
import okhttp3.MediaType;
import okhttp3.RequestBody;
import p4.h;

/* JADX INFO: compiled from: -RequestBodyCommon.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class _RequestBodyCommonKt {
    public static final long commonContentLength(RequestBody requestBody) {
        h.j(requestBody, "<this>");
        return -1L;
    }

    public static final boolean commonIsDuplex(RequestBody requestBody) {
        h.j(requestBody, "<this>");
        return false;
    }

    public static final boolean commonIsOneShot(RequestBody requestBody) {
        h.j(requestBody, "<this>");
        return false;
    }

    public static final RequestBody commonToRequestBody(final byte[] bArr, final MediaType mediaType, final int i10, final int i11) {
        h.j(bArr, "<this>");
        _UtilCommonKt.checkOffsetAndCount(bArr.length, i10, i11);
        return new RequestBody() { // from class: okhttp3.internal._RequestBodyCommonKt.commonToRequestBody.1
            @Override // okhttp3.RequestBody
            public long contentLength() {
                return i11;
            }

            @Override // okhttp3.RequestBody
            public MediaType contentType() {
                return mediaType;
            }

            @Override // okhttp3.RequestBody
            public void writeTo(e eVar) throws IOException {
                h.j(eVar, "sink");
                eVar.c(bArr, i10, i11);
            }
        };
    }

    public static final RequestBody commonToRequestBody(final g gVar, final MediaType mediaType) {
        h.j(gVar, "<this>");
        return new RequestBody() { // from class: okhttp3.internal._RequestBodyCommonKt.commonToRequestBody.2
            @Override // okhttp3.RequestBody
            public long contentLength() {
                return gVar.j();
            }

            @Override // okhttp3.RequestBody
            public MediaType contentType() {
                return mediaType;
            }

            @Override // okhttp3.RequestBody
            public void writeTo(e eVar) throws IOException {
                h.j(eVar, "sink");
                eVar.N(gVar);
            }
        };
    }
}
