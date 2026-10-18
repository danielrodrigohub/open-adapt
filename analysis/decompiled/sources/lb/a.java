package lb;

import de.e;
import de.p;
import de.w;
import java.io.IOException;
import okhttp3.MediaType;
import okhttp3.RequestBody;
import p4.h;

/* JADX INFO: compiled from: GzipRequestInterceptor.kt */
/* JADX INFO: loaded from: classes.dex */
public final class a extends RequestBody {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ RequestBody f10234a;

    public a(RequestBody requestBody) {
        this.f10234a = requestBody;
    }

    @Override // okhttp3.RequestBody
    public final long contentLength() {
        return -1L;
    }

    @Override // okhttp3.RequestBody
    public final MediaType contentType() {
        RequestBody requestBody = this.f10234a;
        h.g(requestBody);
        return requestBody.contentType();
    }

    @Override // okhttp3.RequestBody
    public final void writeTo(e eVar) throws IOException {
        h.j(eVar, "sink");
        e eVarA = w.a(new p(eVar));
        RequestBody requestBody = this.f10234a;
        try {
            h.g(requestBody);
            requestBody.writeTo(eVarA);
            d3.e.d(eVarA, null);
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                d3.e.d(eVarA, th);
                throw th2;
            }
        }
    }
}
