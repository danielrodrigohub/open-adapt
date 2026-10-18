package okhttp3;

import com.newrelic.agent.android.analytics.AnalyticsAttribute;
import com.newrelic.agent.android.util.Constants;
import de.c;
import de.e;
import de.g;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.UUID;
import okhttp3.internal._UtilJvmKt;
import p4.h;

/* JADX INFO: compiled from: MultipartBody.kt */
/* JADX INFO: loaded from: classes.dex */
public final class MultipartBody extends RequestBody {
    public static final MediaType ALTERNATIVE;
    private static final byte[] COLONSPACE;
    private static final byte[] CRLF;
    public static final Companion Companion = new Companion(null);
    private static final byte[] DASHDASH;
    public static final MediaType DIGEST;
    public static final MediaType FORM;
    public static final MediaType MIXED;
    public static final MediaType PARALLEL;
    private final g boundaryByteString;
    private long contentLength;
    private final MediaType contentType;
    private final List<Part> parts;
    private final MediaType type;

    /* JADX INFO: compiled from: MultipartBody.kt */
    public static final class Builder {
        private final g boundary;
        private final List<Part> parts;
        private MediaType type;

        /* JADX WARN: Multi-variable type inference failed */
        public Builder() {
            this(null, 1, 0 == true ? 1 : 0);
        }

        public Builder(String str) {
            h.j(str, "boundary");
            this.boundary = g.f6227k.c(str);
            this.type = MultipartBody.MIXED;
            this.parts = new ArrayList();
        }

        public final Builder addFormDataPart(String str, String str2) {
            h.j(str, "name");
            h.j(str2, "value");
            addPart(Part.Companion.createFormData(str, str2));
            return this;
        }

        public final Builder addPart(RequestBody requestBody) {
            h.j(requestBody, "body");
            addPart(Part.Companion.create(requestBody));
            return this;
        }

        public final MultipartBody build() {
            if (!this.parts.isEmpty()) {
                return new MultipartBody(this.boundary, this.type, _UtilJvmKt.toImmutableList(this.parts));
            }
            throw new IllegalStateException("Multipart body must have at least one part.".toString());
        }

        public final Builder setType(MediaType mediaType) {
            h.j(mediaType, AnalyticsAttribute.TYPE_ATTRIBUTE);
            if (h.c(mediaType.type(), "multipart")) {
                this.type = mediaType;
                return this;
            }
            throw new IllegalArgumentException(("multipart != " + mediaType).toString());
        }

        public final Builder addFormDataPart(String str, String str2, RequestBody requestBody) {
            h.j(str, "name");
            h.j(requestBody, "body");
            addPart(Part.Companion.createFormData(str, str2, requestBody));
            return this;
        }

        public final Builder addPart(Headers headers, RequestBody requestBody) {
            h.j(requestBody, "body");
            addPart(Part.Companion.create(headers, requestBody));
            return this;
        }

        public final Builder addPart(Part part) {
            h.j(part, "part");
            this.parts.add(part);
            return this;
        }

        /* JADX WARN: Illegal instructions before constructor call */
        public /* synthetic */ Builder(String str, int i10, rd.h hVar) {
            if ((i10 & 1) != 0) {
                str = UUID.randomUUID().toString();
                h.i(str, "randomUUID().toString()");
            }
            this(str);
        }
    }

    /* JADX INFO: compiled from: MultipartBody.kt */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(rd.h hVar) {
            this();
        }

        public final void appendQuotedString$okhttp(StringBuilder sb2, String str) {
            h.j(sb2, "<this>");
            h.j(str, "key");
            sb2.append('\"');
            int length = str.length();
            for (int i10 = 0; i10 < length; i10++) {
                char cCharAt = str.charAt(i10);
                if (cCharAt == '\n') {
                    sb2.append("%0A");
                } else if (cCharAt == '\r') {
                    sb2.append("%0D");
                } else if (cCharAt == '\"') {
                    sb2.append("%22");
                } else {
                    sb2.append(cCharAt);
                }
            }
            sb2.append('\"');
        }
    }

    /* JADX INFO: compiled from: MultipartBody.kt */
    public static final class Part {
        public static final Companion Companion = new Companion(null);
        private final RequestBody body;
        private final Headers headers;

        /* JADX INFO: compiled from: MultipartBody.kt */
        public static final class Companion {
            private Companion() {
            }

            public /* synthetic */ Companion(rd.h hVar) {
                this();
            }

            public final Part create(RequestBody requestBody) {
                h.j(requestBody, "body");
                return create(null, requestBody);
            }

            public final Part createFormData(String str, String str2) {
                h.j(str, "name");
                h.j(str2, "value");
                return createFormData(str, null, RequestBody.Companion.create$default(RequestBody.Companion, str2, (MediaType) null, 1, (Object) null));
            }

            public final Part create(Headers headers, RequestBody requestBody) {
                h.j(requestBody, "body");
                rd.h hVar = null;
                if (!((headers != null ? headers.get(Constants.Network.CONTENT_TYPE_HEADER) : null) == null)) {
                    throw new IllegalArgumentException("Unexpected header: Content-Type".toString());
                }
                if ((headers != null ? headers.get(Constants.Network.CONTENT_LENGTH_HEADER) : null) == null) {
                    return new Part(headers, requestBody, hVar);
                }
                throw new IllegalArgumentException("Unexpected header: Content-Length".toString());
            }

            public final Part createFormData(String str, String str2, RequestBody requestBody) {
                h.j(str, "name");
                h.j(requestBody, "body");
                StringBuilder sb2 = new StringBuilder();
                sb2.append("form-data; name=");
                Companion companion = MultipartBody.Companion;
                companion.appendQuotedString$okhttp(sb2, str);
                if (str2 != null) {
                    sb2.append("; filename=");
                    companion.appendQuotedString$okhttp(sb2, str2);
                }
                String string = sb2.toString();
                h.i(string, "StringBuilder().apply(builderAction).toString()");
                return create(new Headers.Builder().addUnsafeNonAscii("Content-Disposition", string).build(), requestBody);
            }
        }

        private Part(Headers headers, RequestBody requestBody) {
            this.headers = headers;
            this.body = requestBody;
        }

        public /* synthetic */ Part(Headers headers, RequestBody requestBody, rd.h hVar) {
            this(headers, requestBody);
        }

        public static final Part create(Headers headers, RequestBody requestBody) {
            return Companion.create(headers, requestBody);
        }

        public static final Part create(RequestBody requestBody) {
            return Companion.create(requestBody);
        }

        public static final Part createFormData(String str, String str2) {
            return Companion.createFormData(str, str2);
        }

        public static final Part createFormData(String str, String str2, RequestBody requestBody) {
            return Companion.createFormData(str, str2, requestBody);
        }

        /* JADX INFO: renamed from: -deprecated_body, reason: not valid java name */
        public final RequestBody m108deprecated_body() {
            return this.body;
        }

        /* JADX INFO: renamed from: -deprecated_headers, reason: not valid java name */
        public final Headers m109deprecated_headers() {
            return this.headers;
        }

        public final RequestBody body() {
            return this.body;
        }

        public final Headers headers() {
            return this.headers;
        }
    }

    static {
        MediaType.Companion companion = MediaType.Companion;
        MIXED = companion.get("multipart/mixed");
        ALTERNATIVE = companion.get("multipart/alternative");
        DIGEST = companion.get("multipart/digest");
        PARALLEL = companion.get("multipart/parallel");
        FORM = companion.get(Constants.Network.ContentType.MULTIPART_FORM_DATA);
        COLONSPACE = new byte[]{(byte) 58, (byte) 32};
        CRLF = new byte[]{(byte) 13, (byte) 10};
        byte b10 = (byte) 45;
        DASHDASH = new byte[]{b10, b10};
    }

    public MultipartBody(g gVar, MediaType mediaType, List<Part> list) {
        h.j(gVar, "boundaryByteString");
        h.j(mediaType, AnalyticsAttribute.TYPE_ATTRIBUTE);
        h.j(list, "parts");
        this.boundaryByteString = gVar;
        this.type = mediaType;
        this.parts = list;
        this.contentType = MediaType.Companion.get(mediaType + "; boundary=" + boundary());
        this.contentLength = -1L;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final long writeOrCountBytes(e eVar, boolean z10) throws IOException {
        c cVar;
        if (z10) {
            eVar = new c();
            cVar = eVar;
        } else {
            cVar = 0;
        }
        int size = this.parts.size();
        long j10 = 0;
        for (int i10 = 0; i10 < size; i10++) {
            Part part = this.parts.get(i10);
            Headers headers = part.headers();
            RequestBody requestBodyBody = part.body();
            h.g(eVar);
            eVar.D(DASHDASH);
            eVar.N(this.boundaryByteString);
            eVar.D(CRLF);
            if (headers != null) {
                int size2 = headers.size();
                for (int i11 = 0; i11 < size2; i11++) {
                    eVar.U(headers.name(i11)).D(COLONSPACE).U(headers.value(i11)).D(CRLF);
                }
            }
            MediaType mediaTypeContentType = requestBodyBody.contentType();
            if (mediaTypeContentType != null) {
                eVar.U("Content-Type: ").U(mediaTypeContentType.toString()).D(CRLF);
            }
            long jContentLength = requestBodyBody.contentLength();
            if (jContentLength == -1 && z10) {
                h.g(cVar);
                cVar.x();
                return -1L;
            }
            byte[] bArr = CRLF;
            eVar.D(bArr);
            if (z10) {
                j10 += jContentLength;
            } else {
                requestBodyBody.writeTo(eVar);
            }
            eVar.D(bArr);
        }
        h.g(eVar);
        byte[] bArr2 = DASHDASH;
        eVar.D(bArr2);
        eVar.N(this.boundaryByteString);
        eVar.D(bArr2);
        eVar.D(CRLF);
        if (!z10) {
            return j10;
        }
        h.g(cVar);
        long j11 = j10 + cVar.f6199i;
        cVar.x();
        return j11;
    }

    /* JADX INFO: renamed from: -deprecated_boundary, reason: not valid java name */
    public final String m104deprecated_boundary() {
        return boundary();
    }

    /* JADX INFO: renamed from: -deprecated_parts, reason: not valid java name */
    public final List<Part> m105deprecated_parts() {
        return this.parts;
    }

    /* JADX INFO: renamed from: -deprecated_size, reason: not valid java name */
    public final int m106deprecated_size() {
        return size();
    }

    /* JADX INFO: renamed from: -deprecated_type, reason: not valid java name */
    public final MediaType m107deprecated_type() {
        return this.type;
    }

    public final String boundary() {
        return this.boundaryByteString.A();
    }

    @Override // okhttp3.RequestBody
    public long contentLength() throws IOException {
        long j10 = this.contentLength;
        if (j10 != -1) {
            return j10;
        }
        long jWriteOrCountBytes = writeOrCountBytes(null, true);
        this.contentLength = jWriteOrCountBytes;
        return jWriteOrCountBytes;
    }

    @Override // okhttp3.RequestBody
    public MediaType contentType() {
        return this.contentType;
    }

    public final Part part(int i10) {
        return this.parts.get(i10);
    }

    public final List<Part> parts() {
        return this.parts;
    }

    public final int size() {
        return this.parts.size();
    }

    public final MediaType type() {
        return this.type;
    }

    @Override // okhttp3.RequestBody
    public void writeTo(e eVar) throws IOException {
        h.j(eVar, "sink");
        writeOrCountBytes(eVar, false);
    }
}
