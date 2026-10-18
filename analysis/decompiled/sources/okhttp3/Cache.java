package okhttp3;

import com.newrelic.agent.android.instrumentation.Instrumented;
import com.newrelic.agent.android.instrumentation.okhttp3.OkHttp3Instrumentation;
import com.newrelic.agent.android.util.Constants;
import d3.e;
import de.a0;
import de.c;
import de.c.b;
import de.d0;
import de.f;
import de.g;
import de.h0;
import de.j0;
import de.k;
import de.m;
import de.n;
import de.w;
import gd.p;
import gd.r;
import java.io.Closeable;
import java.io.File;
import java.io.Flushable;
import java.io.IOException;
import java.security.cert.Certificate;
import java.security.cert.CertificateEncodingException;
import java.security.cert.CertificateException;
import java.security.cert.CertificateFactory;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.NoSuchElementException;
import java.util.Set;
import java.util.TreeSet;
import okhttp3.internal._UtilCommonKt;
import okhttp3.internal._UtilJvmKt;
import okhttp3.internal.cache.CacheRequest;
import okhttp3.internal.cache.CacheStrategy;
import okhttp3.internal.cache.DiskLruCache;
import okhttp3.internal.concurrent.TaskRunner;
import okhttp3.internal.http.HttpMethod;
import okhttp3.internal.http.StatusLine;
import okhttp3.internal.platform.Platform;
import p4.h;
import yd.o;
import yd.s;

/* JADX INFO: compiled from: Cache.kt */
/* JADX INFO: loaded from: classes.dex */
public final class Cache implements Closeable, Flushable {
    public static final Companion Companion = new Companion(null);
    private static final int ENTRY_BODY = 1;
    private static final int ENTRY_COUNT = 2;
    private static final int ENTRY_METADATA = 0;
    private static final int VERSION = 201105;
    private final DiskLruCache cache;
    private int hitCount;
    private int networkCount;
    private int requestCount;
    private int writeAbortCount;
    private int writeSuccessCount;

    /* JADX INFO: compiled from: Cache.kt */
    public static final class CacheResponseBody extends ResponseBody {
        private final f bodySource;
        private final String contentLength;
        private final String contentType;
        private final DiskLruCache.Snapshot snapshot;

        public CacheResponseBody(DiskLruCache.Snapshot snapshot, String str, String str2) {
            h.j(snapshot, "snapshot");
            this.snapshot = snapshot;
            this.contentType = str;
            this.contentLength = str2;
            this.bodySource = w.b(new n(snapshot.getSource(1)) { // from class: okhttp3.Cache.CacheResponseBody.1
                @Override // de.n, de.j0, java.io.Closeable, java.lang.AutoCloseable
                public void close() throws IOException {
                    this.getSnapshot().close();
                    super.close();
                }
            });
        }

        @Override // okhttp3.ResponseBody
        public long contentLength() {
            String str = this.contentLength;
            if (str != null) {
                return _UtilCommonKt.toLongOrDefault(str, -1L);
            }
            return -1L;
        }

        @Override // okhttp3.ResponseBody
        public MediaType contentType() {
            String str = this.contentType;
            if (str != null) {
                return MediaType.Companion.parse(str);
            }
            return null;
        }

        public final DiskLruCache.Snapshot getSnapshot() {
            return this.snapshot;
        }

        @Override // okhttp3.ResponseBody
        public f source() {
            return this.bodySource;
        }
    }

    /* JADX INFO: compiled from: Cache.kt */
    public final class RealCacheRequest implements CacheRequest {
        private final h0 body;
        private final h0 cacheOut;
        private boolean done;
        private final DiskLruCache.Editor editor;
        public final /* synthetic */ Cache this$0;

        public RealCacheRequest(final Cache cache, DiskLruCache.Editor editor) {
            h.j(editor, "editor");
            this.this$0 = cache;
            this.editor = editor;
            h0 h0VarNewSink = editor.newSink(1);
            this.cacheOut = h0VarNewSink;
            this.body = new m(h0VarNewSink) { // from class: okhttp3.Cache.RealCacheRequest.1
                @Override // de.m, de.h0, java.io.Closeable, java.lang.AutoCloseable
                public void close() throws IOException {
                    Cache cache2 = cache;
                    RealCacheRequest realCacheRequest = this;
                    synchronized (cache2) {
                        if (realCacheRequest.getDone()) {
                            return;
                        }
                        realCacheRequest.setDone(true);
                        cache2.setWriteSuccessCount$okhttp(cache2.getWriteSuccessCount$okhttp() + 1);
                        super.close();
                        this.editor.commit();
                    }
                }
            };
        }

        @Override // okhttp3.internal.cache.CacheRequest
        public void abort() {
            Cache cache = this.this$0;
            synchronized (cache) {
                if (this.done) {
                    return;
                }
                this.done = true;
                cache.setWriteAbortCount$okhttp(cache.getWriteAbortCount$okhttp() + 1);
                _UtilCommonKt.closeQuietly(this.cacheOut);
                try {
                    this.editor.abort();
                } catch (IOException unused) {
                }
            }
        }

        @Override // okhttp3.internal.cache.CacheRequest
        public h0 body() {
            return this.body;
        }

        public final boolean getDone() {
            return this.done;
        }

        public final void setDone(boolean z10) {
            this.done = z10;
        }
    }

    /* JADX INFO: renamed from: okhttp3.Cache$urls$1, reason: invalid class name */
    /* JADX INFO: compiled from: Cache.kt */
    public static final class AnonymousClass1 implements Iterator<String>, sd.a {
        private boolean canRemove;
        private final Iterator<DiskLruCache.Snapshot> delegate;
        private String nextUrl;

        public AnonymousClass1(Cache cache) {
            this.delegate = cache.getCache$okhttp().snapshots();
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            if (this.nextUrl != null) {
                return true;
            }
            this.canRemove = false;
            while (this.delegate.hasNext()) {
                try {
                    DiskLruCache.Snapshot next = this.delegate.next();
                    try {
                        continue;
                        this.nextUrl = ((d0) w.b(next.getSource(0))).u();
                        e.d(next, null);
                        return true;
                    } catch (Throwable th) {
                        try {
                            continue;
                            throw th;
                        } catch (Throwable th2) {
                            e.d(next, th);
                            throw th2;
                        }
                    }
                } catch (IOException unused) {
                }
            }
            return false;
        }

        @Override // java.util.Iterator
        public void remove() {
            if (!this.canRemove) {
                throw new IllegalStateException("remove() before next()".toString());
            }
            this.delegate.remove();
        }

        @Override // java.util.Iterator
        public String next() {
            if (!hasNext()) {
                throw new NoSuchElementException();
            }
            String str = this.nextUrl;
            h.g(str);
            this.nextUrl = null;
            this.canRemove = true;
            return str;
        }
    }

    public Cache(a0 a0Var, long j10, k kVar) {
        h.j(a0Var, "directory");
        h.j(kVar, "fileSystem");
        this.cache = new DiskLruCache(kVar, a0Var, VERSION, 2, j10, TaskRunner.INSTANCE);
    }

    private final void abortQuietly(DiskLruCache.Editor editor) {
        if (editor != null) {
            try {
                editor.abort();
            } catch (IOException unused) {
            }
        }
    }

    public static final String key(HttpUrl httpUrl) {
        return Companion.key(httpUrl);
    }

    /* JADX INFO: renamed from: -deprecated_directory, reason: not valid java name */
    public final File m37deprecated_directory() {
        return this.cache.getDirectory().k();
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.cache.close();
    }

    public final void delete() throws IOException {
        this.cache.delete();
    }

    public final File directory() {
        return this.cache.getDirectory().k();
    }

    public final a0 directoryPath() {
        return this.cache.getDirectory();
    }

    public final void evictAll() throws IOException {
        this.cache.evictAll();
    }

    @Override // java.io.Flushable
    public void flush() throws IOException {
        this.cache.flush();
    }

    public final Response get$okhttp(Request request) {
        h.j(request, "request");
        try {
            DiskLruCache.Snapshot snapshot = this.cache.get(Companion.key(request.url()));
            if (snapshot == null) {
                return null;
            }
            try {
                Entry entry = new Entry(snapshot.getSource(0));
                Response response = entry.response(snapshot);
                if (entry.matches(request, response)) {
                    return response;
                }
                _UtilCommonKt.closeQuietly(response.body());
                return null;
            } catch (IOException unused) {
                _UtilCommonKt.closeQuietly(snapshot);
                return null;
            }
        } catch (IOException unused2) {
        }
    }

    public final DiskLruCache getCache$okhttp() {
        return this.cache;
    }

    public final int getWriteAbortCount$okhttp() {
        return this.writeAbortCount;
    }

    public final int getWriteSuccessCount$okhttp() {
        return this.writeSuccessCount;
    }

    public final synchronized int hitCount() {
        return this.hitCount;
    }

    public final void initialize() throws IOException {
        this.cache.initialize();
    }

    public final boolean isClosed() {
        return this.cache.isClosed();
    }

    public final long maxSize() {
        return this.cache.getMaxSize();
    }

    public final synchronized int networkCount() {
        return this.networkCount;
    }

    public final CacheRequest put$okhttp(Response response) {
        DiskLruCache.Editor editorEdit$default;
        h.j(response, "response");
        String strMethod = response.request().method();
        if (HttpMethod.invalidatesCache(response.request().method())) {
            try {
                remove$okhttp(response.request());
            } catch (IOException unused) {
            }
            return null;
        }
        if (!h.c(strMethod, "GET")) {
            return null;
        }
        Companion companion = Companion;
        if (companion.hasVaryAll(response)) {
            return null;
        }
        Entry entry = new Entry(response);
        try {
            editorEdit$default = DiskLruCache.edit$default(this.cache, companion.key(response.request().url()), 0L, 2, null);
            if (editorEdit$default == null) {
                return null;
            }
            try {
                entry.writeTo(editorEdit$default);
                return new RealCacheRequest(this, editorEdit$default);
            } catch (IOException unused2) {
                abortQuietly(editorEdit$default);
                return null;
            }
        } catch (IOException unused3) {
            editorEdit$default = null;
        }
    }

    public final void remove$okhttp(Request request) throws IOException {
        h.j(request, "request");
        this.cache.remove(Companion.key(request.url()));
    }

    public final synchronized int requestCount() {
        return this.requestCount;
    }

    public final void setWriteAbortCount$okhttp(int i10) {
        this.writeAbortCount = i10;
    }

    public final void setWriteSuccessCount$okhttp(int i10) {
        this.writeSuccessCount = i10;
    }

    public final long size() throws IOException {
        return this.cache.size();
    }

    public final synchronized void trackConditionalCacheHit$okhttp() {
        this.hitCount++;
    }

    public final synchronized void trackResponse$okhttp(CacheStrategy cacheStrategy) {
        h.j(cacheStrategy, "cacheStrategy");
        this.requestCount++;
        if (cacheStrategy.getNetworkRequest() != null) {
            this.networkCount++;
        } else if (cacheStrategy.getCacheResponse() != null) {
            this.hitCount++;
        }
    }

    public final void update$okhttp(Response response, Response response2) {
        DiskLruCache.Editor editorEdit;
        h.j(response, "cached");
        h.j(response2, "network");
        Entry entry = new Entry(response2);
        try {
            editorEdit = ((CacheResponseBody) response.body()).getSnapshot().edit();
            if (editorEdit == null) {
                return;
            }
            try {
                entry.writeTo(editorEdit);
                editorEdit.commit();
            } catch (IOException unused) {
                abortQuietly(editorEdit);
            }
        } catch (IOException unused2) {
            editorEdit = null;
        }
    }

    public final Iterator<String> urls() throws IOException {
        return new AnonymousClass1(this);
    }

    public final synchronized int writeAbortCount() {
        return this.writeAbortCount;
    }

    public final synchronized int writeSuccessCount() {
        return this.writeSuccessCount;
    }

    /* JADX INFO: compiled from: Cache.kt */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(rd.h hVar) {
            this();
        }

        private final Set<String> varyFields(Headers headers) {
            int size = headers.size();
            TreeSet treeSet = null;
            for (int i10 = 0; i10 < size; i10++) {
                if (o.Z("Vary", headers.name(i10))) {
                    String strValue = headers.value(i10);
                    if (treeSet == null) {
                        o.a0();
                        treeSet = new TreeSet(String.CASE_INSENSITIVE_ORDER);
                    }
                    Iterator it = s.A0(strValue, new char[]{','}).iterator();
                    while (it.hasNext()) {
                        treeSet.add(s.G0((String) it.next()).toString());
                    }
                }
            }
            return treeSet == null ? r.f8072h : treeSet;
        }

        public final boolean hasVaryAll(Response response) {
            h.j(response, "<this>");
            return varyFields(response.headers()).contains("*");
        }

        public final String key(HttpUrl httpUrl) {
            h.j(httpUrl, "url");
            return g.f6227k.c(httpUrl.toString()).i("MD5").k();
        }

        public final int readInt$okhttp(f fVar) throws IOException {
            h.j(fVar, "source");
            try {
                long jG = fVar.G();
                String strU = fVar.u();
                if (jG >= 0 && jG <= 2147483647L) {
                    if (!(strU.length() > 0)) {
                        return (int) jG;
                    }
                }
                throw new IOException("expected an int but was \"" + jG + strU + '\"');
            } catch (NumberFormatException e10) {
                throw new IOException(e10.getMessage());
            }
        }

        public final Headers varyHeaders(Response response) {
            h.j(response, "<this>");
            Response responseNetworkResponse = response.networkResponse();
            h.g(responseNetworkResponse);
            return varyHeaders(responseNetworkResponse.request().headers(), response.headers());
        }

        public final boolean varyMatches(Response response, Headers headers, Request request) {
            h.j(response, "cachedResponse");
            h.j(headers, "cachedRequest");
            h.j(request, "newRequest");
            Set<String> setVaryFields = varyFields(response.headers());
            if ((setVaryFields instanceof Collection) && setVaryFields.isEmpty()) {
                return true;
            }
            for (String str : setVaryFields) {
                if (!h.c(headers.values(str), request.headers(str))) {
                    return false;
                }
            }
            return true;
        }

        private final Headers varyHeaders(Headers headers, Headers headers2) {
            Set<String> setVaryFields = varyFields(headers2);
            if (setVaryFields.isEmpty()) {
                return _UtilJvmKt.EMPTY_HEADERS;
            }
            Headers.Builder builder = new Headers.Builder();
            int size = headers.size();
            for (int i10 = 0; i10 < size; i10++) {
                String strName = headers.name(i10);
                if (setVaryFields.contains(strName)) {
                    builder.add(strName, headers.value(i10));
                }
            }
            return builder.build();
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public Cache(File file, long j10) {
        this(a0.a.b(file), j10, k.SYSTEM);
        h.j(file, "directory");
        a0.a aVar = a0.f6189i;
    }

    /* JADX INFO: compiled from: Cache.kt */
    @Instrumented
    public static final class Entry {
        public static final Companion Companion = new Companion(null);
        private static final String RECEIVED_MILLIS;
        private static final String SENT_MILLIS;
        private final int code;
        private final Handshake handshake;
        private final String message;
        private final Protocol protocol;
        private final long receivedResponseMillis;
        private final String requestMethod;
        private final Headers responseHeaders;
        private final long sentRequestMillis;
        private final HttpUrl url;
        private final Headers varyHeaders;

        /* JADX INFO: compiled from: Cache.kt */
        public static final class Companion {
            private Companion() {
            }

            public /* synthetic */ Companion(rd.h hVar) {
                this();
            }
        }

        static {
            StringBuilder sb2 = new StringBuilder();
            Platform.Companion companion = Platform.Companion;
            sb2.append(companion.get().getPrefix());
            sb2.append("-Sent-Millis");
            SENT_MILLIS = sb2.toString();
            RECEIVED_MILLIS = companion.get().getPrefix() + "-Received-Millis";
        }

        public Entry(j0 j0Var) throws IOException {
            h.j(j0Var, "rawSource");
            try {
                f fVarB = w.b(j0Var);
                d0 d0Var = (d0) fVarB;
                String strU = d0Var.u();
                HttpUrl httpUrl = HttpUrl.Companion.parse(strU);
                if (httpUrl == null) {
                    IOException iOException = new IOException("Cache corruption for " + strU);
                    Platform.Companion.get().log("cache corruption", 5, iOException);
                    throw iOException;
                }
                this.url = httpUrl;
                this.requestMethod = d0Var.u();
                Headers.Builder builder = new Headers.Builder();
                int int$okhttp = Cache.Companion.readInt$okhttp(fVarB);
                for (int i10 = 0; i10 < int$okhttp; i10++) {
                    builder.addLenient$okhttp(d0Var.u());
                }
                this.varyHeaders = builder.build();
                StatusLine statusLine = StatusLine.Companion.parse(d0Var.u());
                this.protocol = statusLine.protocol;
                this.code = statusLine.code;
                this.message = statusLine.message;
                Headers.Builder builder2 = new Headers.Builder();
                int int$okhttp2 = Cache.Companion.readInt$okhttp(fVarB);
                for (int i11 = 0; i11 < int$okhttp2; i11++) {
                    builder2.addLenient$okhttp(d0Var.u());
                }
                String str = SENT_MILLIS;
                String str2 = builder2.get(str);
                String str3 = RECEIVED_MILLIS;
                String str4 = builder2.get(str3);
                builder2.removeAll(str);
                builder2.removeAll(str3);
                this.sentRequestMillis = str2 != null ? Long.parseLong(str2) : 0L;
                this.receivedResponseMillis = str4 != null ? Long.parseLong(str4) : 0L;
                this.responseHeaders = builder2.build();
                if (this.url.isHttps()) {
                    String strU2 = d0Var.u();
                    if (strU2.length() > 0) {
                        throw new IOException("expected \"\" but was \"" + strU2 + '\"');
                    }
                    this.handshake = Handshake.Companion.get(!d0Var.z() ? TlsVersion.Companion.forJavaName(d0Var.u()) : TlsVersion.SSL_3_0, CipherSuite.Companion.forJavaName(d0Var.u()), readCertificateList(fVarB), readCertificateList(fVarB));
                } else {
                    this.handshake = null;
                }
                e.d(j0Var, null);
            } catch (Throwable th) {
                try {
                    throw th;
                } catch (Throwable th2) {
                    e.d(j0Var, th);
                    throw th2;
                }
            }
        }

        private final List<Certificate> readCertificateList(f fVar) throws IOException {
            int int$okhttp = Cache.Companion.readInt$okhttp(fVar);
            if (int$okhttp == -1) {
                return p.f8070h;
            }
            try {
                CertificateFactory certificateFactory = CertificateFactory.getInstance("X.509");
                ArrayList arrayList = new ArrayList(int$okhttp);
                for (int i10 = 0; i10 < int$okhttp; i10++) {
                    String strU = fVar.u();
                    c cVar = new c();
                    g gVarA = g.f6227k.a(strU);
                    h.g(gVarA);
                    cVar.u0(gVarA);
                    arrayList.add(certificateFactory.generateCertificate(cVar.new b()));
                }
                return arrayList;
            } catch (CertificateException e10) {
                throw new IOException(e10.getMessage());
            }
        }

        private final void writeCertList(de.e eVar, List<? extends Certificate> list) throws IOException {
            try {
                eVar.W(list.size()).A(10);
                Iterator<? extends Certificate> it = list.iterator();
                while (it.hasNext()) {
                    byte[] encoded = it.next().getEncoded();
                    g.a aVar = g.f6227k;
                    h.i(encoded, "bytes");
                    eVar.U(g.a.d(encoded).b()).A(10);
                }
            } catch (CertificateEncodingException e10) {
                throw new IOException(e10.getMessage());
            }
        }

        public final boolean matches(Request request, Response response) {
            h.j(request, "request");
            h.j(response, "response");
            return h.c(this.url, request.url()) && h.c(this.requestMethod, request.method()) && Cache.Companion.varyMatches(response, this.varyHeaders, request);
        }

        public final Response response(DiskLruCache.Snapshot snapshot) {
            h.j(snapshot, "snapshot");
            String str = this.responseHeaders.get(Constants.Network.CONTENT_TYPE_HEADER);
            String str2 = this.responseHeaders.get(Constants.Network.CONTENT_LENGTH_HEADER);
            Response.Builder builderHeaders = new Response.Builder().request(new Request(this.url, this.varyHeaders, this.requestMethod, null, 8, null)).protocol(this.protocol).code(this.code).message(this.message).headers(this.responseHeaders);
            CacheResponseBody cacheResponseBody = new CacheResponseBody(snapshot, str, str2);
            return (!(builderHeaders instanceof Response.Builder) ? builderHeaders.body(cacheResponseBody) : OkHttp3Instrumentation.body(builderHeaders, cacheResponseBody)).handshake(this.handshake).sentRequestAtMillis(this.sentRequestMillis).receivedResponseAtMillis(this.receivedResponseMillis).build();
        }

        public final void writeTo(DiskLruCache.Editor editor) throws IOException {
            h.j(editor, "editor");
            de.e eVarA = w.a(editor.newSink(0));
            try {
                eVarA.U(this.url.toString());
                eVarA.A(10);
                eVarA.U(this.requestMethod);
                eVarA.A(10);
                eVarA.W(this.varyHeaders.size());
                eVarA.A(10);
                int size = this.varyHeaders.size();
                for (int i10 = 0; i10 < size; i10++) {
                    eVarA.U(this.varyHeaders.name(i10));
                    eVarA.U(": ");
                    eVarA.U(this.varyHeaders.value(i10));
                    eVarA.A(10);
                }
                eVarA.U(new StatusLine(this.protocol, this.code, this.message).toString());
                eVarA.A(10);
                eVarA.W(this.responseHeaders.size() + 2);
                eVarA.A(10);
                int size2 = this.responseHeaders.size();
                for (int i11 = 0; i11 < size2; i11++) {
                    eVarA.U(this.responseHeaders.name(i11));
                    eVarA.U(": ");
                    eVarA.U(this.responseHeaders.value(i11));
                    eVarA.A(10);
                }
                eVarA.U(SENT_MILLIS);
                eVarA.U(": ");
                eVarA.W(this.sentRequestMillis);
                eVarA.A(10);
                eVarA.U(RECEIVED_MILLIS);
                eVarA.U(": ");
                eVarA.W(this.receivedResponseMillis);
                eVarA.A(10);
                if (this.url.isHttps()) {
                    eVarA.A(10);
                    Handshake handshake = this.handshake;
                    h.g(handshake);
                    eVarA.U(handshake.cipherSuite().javaName());
                    eVarA.A(10);
                    writeCertList(eVarA, this.handshake.peerCertificates());
                    writeCertList(eVarA, this.handshake.localCertificates());
                    eVarA.U(this.handshake.tlsVersion().javaName());
                    eVarA.A(10);
                }
                e.d(eVarA, null);
            } catch (Throwable th) {
                try {
                    throw th;
                } catch (Throwable th2) {
                    e.d(eVarA, th);
                    throw th2;
                }
            }
        }

        public Entry(Response response) {
            h.j(response, "response");
            this.url = response.request().url();
            this.varyHeaders = Cache.Companion.varyHeaders(response);
            this.requestMethod = response.request().method();
            this.protocol = response.protocol();
            this.code = response.code();
            this.message = response.message();
            this.responseHeaders = response.headers();
            this.handshake = response.handshake();
            this.sentRequestMillis = response.sentRequestAtMillis();
            this.receivedResponseMillis = response.receivedResponseAtMillis();
        }
    }
}
