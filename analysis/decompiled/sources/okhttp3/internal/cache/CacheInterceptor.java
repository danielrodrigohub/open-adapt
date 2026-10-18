package okhttp3.internal.cache;

import com.newrelic.agent.android.instrumentation.Instrumented;
import com.newrelic.agent.android.instrumentation.okhttp3.OkHttp3Instrumentation;
import com.newrelic.agent.android.util.Constants;
import de.c;
import de.e;
import de.f;
import de.h0;
import de.j0;
import de.k0;
import de.w;
import java.io.IOException;
import java.util.concurrent.TimeUnit;
import okhttp3.Cache;
import okhttp3.Call;
import okhttp3.EventListener;
import okhttp3.Headers;
import okhttp3.Interceptor;
import okhttp3.Protocol;
import okhttp3.Request;
import okhttp3.Response;
import okhttp3.internal._ResponseCommonKt;
import okhttp3.internal._UtilCommonKt;
import okhttp3.internal._UtilJvmKt;
import okhttp3.internal.connection.RealCall;
import okhttp3.internal.http.HttpHeaders;
import okhttp3.internal.http.HttpMethod;
import okhttp3.internal.http.HttpStatusCodesKt;
import okhttp3.internal.http.RealResponseBody;
import rd.h;
import yd.o;

/* JADX INFO: compiled from: CacheInterceptor.kt */
/* JADX INFO: loaded from: classes2.dex */
@Instrumented
public final class CacheInterceptor implements Interceptor {
    public static final Companion Companion = new Companion(null);
    private final Cache cache;

    /* JADX INFO: compiled from: CacheInterceptor.kt */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(h hVar) {
            this();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final Headers combine(Headers headers, Headers headers2) {
            Headers.Builder builder = new Headers.Builder();
            int size = headers.size();
            for (int i10 = 0; i10 < size; i10++) {
                String strName = headers.name(i10);
                String strValue = headers.value(i10);
                if ((!o.Z("Warning", strName) || !o.g0(strValue, "1", false)) && (isContentSpecificHeader(strName) || !isEndToEnd(strName) || headers2.get(strName) == null)) {
                    builder.addLenient$okhttp(strName, strValue);
                }
            }
            int size2 = headers2.size();
            for (int i11 = 0; i11 < size2; i11++) {
                String strName2 = headers2.name(i11);
                if (!isContentSpecificHeader(strName2) && isEndToEnd(strName2)) {
                    builder.addLenient$okhttp(strName2, headers2.value(i11));
                }
            }
            return builder.build();
        }

        private final boolean isContentSpecificHeader(String str) {
            return o.Z(Constants.Network.CONTENT_LENGTH_HEADER, str) || o.Z(Constants.Network.CONTENT_ENCODING_HEADER, str) || o.Z(Constants.Network.CONTENT_TYPE_HEADER, str);
        }

        private final boolean isEndToEnd(String str) {
            return (o.Z("Connection", str) || o.Z("Keep-Alive", str) || o.Z("Proxy-Authenticate", str) || o.Z("Proxy-Authorization", str) || o.Z("TE", str) || o.Z("Trailers", str) || o.Z("Transfer-Encoding", str) || o.Z("Upgrade", str)) ? false : true;
        }
    }

    public CacheInterceptor(Cache cache) {
        this.cache = cache;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final Response cacheWritingResponse(final CacheRequest cacheRequest, Response response) throws IOException {
        if (cacheRequest == null) {
            return response;
        }
        h0 h0VarBody = cacheRequest.body();
        final f fVarSource = response.body().source();
        final e eVarA = w.a(h0VarBody);
        j0 j0Var = new j0() { // from class: okhttp3.internal.cache.CacheInterceptor$cacheWritingResponse$cacheWritingSource$1
            private boolean cacheRequestClosed;

            @Override // de.j0, java.io.Closeable, java.lang.AutoCloseable
            public void close() throws IOException {
                if (!this.cacheRequestClosed && !_UtilJvmKt.discard(this, 100, TimeUnit.MILLISECONDS)) {
                    this.cacheRequestClosed = true;
                    cacheRequest.abort();
                }
                fVarSource.close();
            }

            @Override // de.j0
            public long read(c cVar, long j10) throws IOException {
                p4.h.j(cVar, "sink");
                try {
                    long j11 = fVarSource.read(cVar, j10);
                    if (j11 != -1) {
                        cVar.g0(eVarA.b(), cVar.f6199i - j11, j11);
                        eVarA.F();
                        return j11;
                    }
                    if (!this.cacheRequestClosed) {
                        this.cacheRequestClosed = true;
                        eVarA.close();
                    }
                    return -1L;
                } catch (IOException e10) {
                    if (!this.cacheRequestClosed) {
                        this.cacheRequestClosed = true;
                        cacheRequest.abort();
                    }
                    throw e10;
                }
            }

            @Override // de.j0
            public k0 timeout() {
                return fVarSource.timeout();
            }
        };
        String strHeader$default = Response.header$default(response, Constants.Network.CONTENT_TYPE_HEADER, null, 2, null);
        long jContentLength = response.body().contentLength();
        Response.Builder builderNewBuilder = !(response instanceof Response.Builder) ? response.newBuilder() : OkHttp3Instrumentation.newBuilder((Response.Builder) response);
        RealResponseBody realResponseBody = new RealResponseBody(strHeader$default, jContentLength, w.b(j0Var));
        return (!(builderNewBuilder instanceof Response.Builder) ? builderNewBuilder.body(realResponseBody) : OkHttp3Instrumentation.body(builderNewBuilder, realResponseBody)).build();
    }

    public final Cache getCache$okhttp() {
        return this.cache;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    @Override // okhttp3.Interceptor
    public Response intercept(Interceptor.Chain chain) throws IOException {
        EventListener eventListener;
        EventListener eventListener$okhttp;
        p4.h.j(chain, "chain");
        Call call = chain.call();
        Cache cache = this.cache;
        Response response = cache != null ? cache.get$okhttp(chain.request()) : null;
        CacheStrategy cacheStrategyCompute = new CacheStrategy.Factory(System.currentTimeMillis(), chain.request(), response).compute();
        Request networkRequest = cacheStrategyCompute.getNetworkRequest();
        Response cacheResponse = cacheStrategyCompute.getCacheResponse();
        Cache cache2 = this.cache;
        if (cache2 != null) {
            cache2.trackResponse$okhttp(cacheStrategyCompute);
        }
        RealCall realCall = call instanceof RealCall ? (RealCall) call : null;
        if (realCall == null || (eventListener$okhttp = realCall.getEventListener$okhttp()) == null) {
            eventListener = eventListener$okhttp;
            eventListener = EventListener.NONE;
        }
        if (response != null && cacheResponse == 0) {
            _UtilCommonKt.closeQuietly(response.body());
        }
        if (networkRequest == null && cacheResponse == 0) {
            Response responseBuild = new Response.Builder().request(chain.request()).protocol(Protocol.HTTP_1_1).code(HttpStatusCodesKt.HTTP_GATEWAY_TIMEOUT).message("Unsatisfiable Request (only-if-cached)").sentRequestAtMillis(-1L).receivedResponseAtMillis(System.currentTimeMillis()).build();
            eventListener.satisfactionFailure(call, responseBuild);
            return responseBuild;
        }
        if (networkRequest == null) {
            p4.h.g(cacheResponse);
            Response responseBuild2 = (!(cacheResponse instanceof Response.Builder) ? cacheResponse.newBuilder() : OkHttp3Instrumentation.newBuilder((Response.Builder) cacheResponse)).cacheResponse(_ResponseCommonKt.stripBody(cacheResponse)).build();
            eventListener.cacheHit(call, responseBuild2);
            return responseBuild2;
        }
        if (cacheResponse != 0) {
            eventListener.cacheConditionalHit(call, cacheResponse);
        } else if (this.cache != null) {
            eventListener.cacheMiss(call);
        }
        try {
            Response responseProceed = chain.proceed(networkRequest);
            if (responseProceed == 0 && response != null) {
                _UtilCommonKt.closeQuietly(response.body());
            }
            if (cacheResponse != 0) {
                boolean z10 = false;
                if (responseProceed != 0 && responseProceed.code() == 304) {
                    z10 = true;
                }
                if (z10) {
                    Response responseBuild3 = (!(cacheResponse instanceof Response.Builder) ? cacheResponse.newBuilder() : OkHttp3Instrumentation.newBuilder((Response.Builder) cacheResponse)).headers(Companion.combine(cacheResponse.headers(), responseProceed.headers())).sentRequestAtMillis(responseProceed.sentRequestAtMillis()).receivedResponseAtMillis(responseProceed.receivedResponseAtMillis()).cacheResponse(_ResponseCommonKt.stripBody(cacheResponse)).networkResponse(_ResponseCommonKt.stripBody(responseProceed)).build();
                    responseProceed.body().close();
                    Cache cache3 = this.cache;
                    p4.h.g(cache3);
                    cache3.trackConditionalCacheHit$okhttp();
                    this.cache.update$okhttp(cacheResponse, responseBuild3);
                    eventListener.cacheHit(call, responseBuild3);
                    return responseBuild3;
                }
                _UtilCommonKt.closeQuietly(cacheResponse.body());
            }
            p4.h.g(responseProceed);
            Response responseBuild4 = (!(responseProceed instanceof Response.Builder) ? responseProceed.newBuilder() : OkHttp3Instrumentation.newBuilder((Response.Builder) responseProceed)).cacheResponse(cacheResponse != 0 ? _ResponseCommonKt.stripBody(cacheResponse) : null).networkResponse(_ResponseCommonKt.stripBody(responseProceed)).build();
            if (this.cache != null) {
                if (HttpHeaders.promisesBody(responseBuild4) && CacheStrategy.Companion.isCacheable(responseBuild4, networkRequest)) {
                    Response responseCacheWritingResponse = cacheWritingResponse(this.cache.put$okhttp(responseBuild4), responseBuild4);
                    if (cacheResponse != 0) {
                        eventListener.cacheMiss(call);
                    }
                    return responseCacheWritingResponse;
                }
                if (HttpMethod.invalidatesCache(networkRequest.method())) {
                    try {
                        this.cache.remove$okhttp(networkRequest);
                    } catch (IOException unused) {
                    }
                }
            }
            return responseBuild4;
        } catch (Throwable th) {
            if (response != null) {
                _UtilCommonKt.closeQuietly(response.body());
            }
            throw th;
        }
    }
}
