package okhttp3.internal.http;

import com.newrelic.agent.android.instrumentation.Instrumented;
import com.newrelic.agent.android.instrumentation.okhttp3.OkHttp3Instrumentation;
import de.c0;
import de.e;
import de.w;
import java.io.IOException;
import java.net.ProtocolException;
import okhttp3.Interceptor;
import okhttp3.Request;
import okhttp3.RequestBody;
import okhttp3.Response;
import okhttp3.ResponseBody;
import okhttp3.internal._ResponseCommonKt;
import okhttp3.internal.connection.Exchange;
import okhttp3.internal.http2.ConnectionShutdownException;
import p4.h;
import yd.o;

/* JADX INFO: compiled from: CallServerInterceptor.kt */
/* JADX INFO: loaded from: classes2.dex */
@Instrumented
public final class CallServerInterceptor implements Interceptor {
    private final boolean forWebSocket;

    public CallServerInterceptor(boolean z10) {
        this.forWebSocket = z10;
    }

    /* JADX WARN: Code duplicated, block: B:41:0x00b3 A[Catch: IOException -> 0x019e, TryCatch #2 {IOException -> 0x019e, blocks: (B:39:0x00aa, B:41:0x00b3, B:42:0x00b7, B:44:0x00df, B:46:0x00e8, B:47:0x00eb, B:48:0x010f, B:52:0x011a, B:62:0x0144, B:64:0x0152, B:71:0x0168, B:74:0x0177, B:75:0x019d, B:66:0x015d, B:53:0x011f, B:55:0x0123, B:57:0x012f, B:59:0x0137, B:61:0x0140, B:60:0x013c, B:56:0x0128), top: B:87:0x00aa }] */
    /* JADX WARN: Code duplicated, block: B:44:0x00df A[Catch: IOException -> 0x019e, TryCatch #2 {IOException -> 0x019e, blocks: (B:39:0x00aa, B:41:0x00b3, B:42:0x00b7, B:44:0x00df, B:46:0x00e8, B:47:0x00eb, B:48:0x010f, B:52:0x011a, B:62:0x0144, B:64:0x0152, B:71:0x0168, B:74:0x0177, B:75:0x019d, B:66:0x015d, B:53:0x011f, B:55:0x0123, B:57:0x012f, B:59:0x0137, B:61:0x0140, B:60:0x013c, B:56:0x0128), top: B:87:0x00aa }] */
    /* JADX WARN: Code duplicated, block: B:46:0x00e8 A[Catch: IOException -> 0x019e, TryCatch #2 {IOException -> 0x019e, blocks: (B:39:0x00aa, B:41:0x00b3, B:42:0x00b7, B:44:0x00df, B:46:0x00e8, B:47:0x00eb, B:48:0x010f, B:52:0x011a, B:62:0x0144, B:64:0x0152, B:71:0x0168, B:74:0x0177, B:75:0x019d, B:66:0x015d, B:53:0x011f, B:55:0x0123, B:57:0x012f, B:59:0x0137, B:61:0x0140, B:60:0x013c, B:56:0x0128), top: B:87:0x00aa }] */
    /* JADX WARN: Code duplicated, block: B:53:0x011f A[Catch: IOException -> 0x019e, TryCatch #2 {IOException -> 0x019e, blocks: (B:39:0x00aa, B:41:0x00b3, B:42:0x00b7, B:44:0x00df, B:46:0x00e8, B:47:0x00eb, B:48:0x010f, B:52:0x011a, B:62:0x0144, B:64:0x0152, B:71:0x0168, B:74:0x0177, B:75:0x019d, B:66:0x015d, B:53:0x011f, B:55:0x0123, B:57:0x012f, B:59:0x0137, B:61:0x0140, B:60:0x013c, B:56:0x0128), top: B:87:0x00aa }] */
    /* JADX WARN: Code duplicated, block: B:55:0x0123 A[Catch: IOException -> 0x019e, TryCatch #2 {IOException -> 0x019e, blocks: (B:39:0x00aa, B:41:0x00b3, B:42:0x00b7, B:44:0x00df, B:46:0x00e8, B:47:0x00eb, B:48:0x010f, B:52:0x011a, B:62:0x0144, B:64:0x0152, B:71:0x0168, B:74:0x0177, B:75:0x019d, B:66:0x015d, B:53:0x011f, B:55:0x0123, B:57:0x012f, B:59:0x0137, B:61:0x0140, B:60:0x013c, B:56:0x0128), top: B:87:0x00aa }] */
    /* JADX WARN: Code duplicated, block: B:56:0x0128 A[Catch: IOException -> 0x019e, TryCatch #2 {IOException -> 0x019e, blocks: (B:39:0x00aa, B:41:0x00b3, B:42:0x00b7, B:44:0x00df, B:46:0x00e8, B:47:0x00eb, B:48:0x010f, B:52:0x011a, B:62:0x0144, B:64:0x0152, B:71:0x0168, B:74:0x0177, B:75:0x019d, B:66:0x015d, B:53:0x011f, B:55:0x0123, B:57:0x012f, B:59:0x0137, B:61:0x0140, B:60:0x013c, B:56:0x0128), top: B:87:0x00aa }] */
    /* JADX WARN: Code duplicated, block: B:59:0x0137 A[Catch: IOException -> 0x019e, TryCatch #2 {IOException -> 0x019e, blocks: (B:39:0x00aa, B:41:0x00b3, B:42:0x00b7, B:44:0x00df, B:46:0x00e8, B:47:0x00eb, B:48:0x010f, B:52:0x011a, B:62:0x0144, B:64:0x0152, B:71:0x0168, B:74:0x0177, B:75:0x019d, B:66:0x015d, B:53:0x011f, B:55:0x0123, B:57:0x012f, B:59:0x0137, B:61:0x0140, B:60:0x013c, B:56:0x0128), top: B:87:0x00aa }] */
    /* JADX WARN: Code duplicated, block: B:60:0x013c A[Catch: IOException -> 0x019e, TryCatch #2 {IOException -> 0x019e, blocks: (B:39:0x00aa, B:41:0x00b3, B:42:0x00b7, B:44:0x00df, B:46:0x00e8, B:47:0x00eb, B:48:0x010f, B:52:0x011a, B:62:0x0144, B:64:0x0152, B:71:0x0168, B:74:0x0177, B:75:0x019d, B:66:0x015d, B:53:0x011f, B:55:0x0123, B:57:0x012f, B:59:0x0137, B:61:0x0140, B:60:0x013c, B:56:0x0128), top: B:87:0x00aa }] */
    /* JADX WARN: Code duplicated, block: B:66:0x015d A[Catch: IOException -> 0x019e, TryCatch #2 {IOException -> 0x019e, blocks: (B:39:0x00aa, B:41:0x00b3, B:42:0x00b7, B:44:0x00df, B:46:0x00e8, B:47:0x00eb, B:48:0x010f, B:52:0x011a, B:62:0x0144, B:64:0x0152, B:71:0x0168, B:74:0x0177, B:75:0x019d, B:66:0x015d, B:53:0x011f, B:55:0x0123, B:57:0x012f, B:59:0x0137, B:61:0x0140, B:60:0x013c, B:56:0x0128), top: B:87:0x00aa }] */
    /* JADX WARN: Code duplicated, block: B:87:0x00aa A[EXC_TOP_SPLITTER, SYNTHETIC] */
    @Override // okhttp3.Interceptor
    public Response intercept(Interceptor.Chain chain) throws IOException {
        Response.Builder responseHeaders;
        Response responseBuild;
        int iCode;
        Response.Builder builderNewBuilder;
        ResponseBody responseBodyOpenResponseBody;
        Response.Builder builderBody;
        Response responseBuild2;
        boolean z10;
        h.j(chain, "chain");
        RealInterceptorChain realInterceptorChain = (RealInterceptorChain) chain;
        Exchange exchange$okhttp = realInterceptorChain.getExchange$okhttp();
        h.g(exchange$okhttp);
        Request request$okhttp = realInterceptorChain.getRequest$okhttp();
        RequestBody requestBodyBody = request$okhttp.body();
        long jCurrentTimeMillis = System.currentTimeMillis();
        boolean z11 = true;
        try {
            exchange$okhttp.writeRequestHeaders(request$okhttp);
            if (!HttpMethod.permitsRequestBody(request$okhttp.method()) || requestBodyBody == null) {
                exchange$okhttp.noRequestBody();
                responseHeaders = null;
            } else {
                if (o.Z("100-continue", request$okhttp.header("Expect"))) {
                    exchange$okhttp.flushRequest();
                    responseHeaders = exchange$okhttp.readResponseHeaders(true);
                    try {
                        exchange$okhttp.responseHeadersStart();
                        z10 = false;
                    } catch (IOException e10) {
                        e = e10;
                        if ((e instanceof ConnectionShutdownException) || !exchange$okhttp.getHasFailure$okhttp()) {
                            throw e;
                        }
                        if (responseHeaders == null) {
                            try {
                                responseHeaders = exchange$okhttp.readResponseHeaders(false);
                                h.g(responseHeaders);
                                if (z11) {
                                    exchange$okhttp.responseHeadersStart();
                                    z11 = false;
                                }
                            } catch (IOException e11) {
                                if (e == null) {
                                    throw e11;
                                }
                                h.b(e, e11);
                                throw e;
                            }
                        }
                        responseBuild = responseHeaders.request(request$okhttp).handshake(exchange$okhttp.getConnection$okhttp().handshake()).sentRequestAtMillis(jCurrentTimeMillis).receivedResponseAtMillis(System.currentTimeMillis()).build();
                        iCode = responseBuild.code();
                        if (iCode == 100) {
                            Response.Builder responseHeaders2 = exchange$okhttp.readResponseHeaders(false);
                            h.g(responseHeaders2);
                            if (z11) {
                                exchange$okhttp.responseHeadersStart();
                            }
                            responseBuild = responseHeaders2.request(request$okhttp).handshake(exchange$okhttp.getConnection$okhttp().handshake()).sentRequestAtMillis(jCurrentTimeMillis).receivedResponseAtMillis(System.currentTimeMillis()).build();
                            iCode = responseBuild.code();
                        }
                        exchange$okhttp.responseHeadersEnd(responseBuild);
                        if (this.forWebSocket) {
                            if (responseBuild instanceof Response.Builder) {
                                builderNewBuilder = OkHttp3Instrumentation.newBuilder((Response.Builder) responseBuild);
                            } else {
                                builderNewBuilder = responseBuild.newBuilder();
                            }
                            responseBodyOpenResponseBody = exchange$okhttp.openResponseBody(responseBuild);
                            if (builderNewBuilder instanceof Response.Builder) {
                                builderBody = OkHttp3Instrumentation.body(builderNewBuilder, responseBodyOpenResponseBody);
                            } else {
                                builderBody = builderNewBuilder.body(responseBodyOpenResponseBody);
                            }
                            responseBuild2 = builderBody.build();
                        } else {
                            if (responseBuild instanceof Response.Builder) {
                                builderNewBuilder = responseBuild.newBuilder();
                            } else {
                                builderNewBuilder = OkHttp3Instrumentation.newBuilder((Response.Builder) responseBuild);
                            }
                            responseBodyOpenResponseBody = exchange$okhttp.openResponseBody(responseBuild);
                            if (builderNewBuilder instanceof Response.Builder) {
                                builderBody = builderNewBuilder.body(responseBodyOpenResponseBody);
                            } else {
                                builderBody = OkHttp3Instrumentation.body(builderNewBuilder, responseBodyOpenResponseBody);
                            }
                            responseBuild2 = builderBody.build();
                        }
                        if (o.Z("close", responseBuild2.request().header("Connection"))) {
                            exchange$okhttp.noNewExchangesOnConnection();
                        } else {
                            exchange$okhttp.noNewExchangesOnConnection();
                        }
                        if (iCode == 204) {
                            throw new ProtocolException("HTTP " + iCode + " had non-zero Content-Length: " + responseBuild2.body().contentLength());
                        }
                        throw new ProtocolException("HTTP " + iCode + " had non-zero Content-Length: " + responseBuild2.body().contentLength());
                        return responseBuild2;
                    }
                } else {
                    responseHeaders = null;
                    z10 = true;
                }
                try {
                    if (responseHeaders != null) {
                        exchange$okhttp.noRequestBody();
                        if (!exchange$okhttp.getConnection$okhttp().isMultiplexed$okhttp()) {
                            exchange$okhttp.noNewExchangesOnConnection();
                        }
                    } else if (requestBodyBody.isDuplex()) {
                        exchange$okhttp.flushRequest();
                        requestBodyBody.writeTo(w.a(exchange$okhttp.createRequestBody(request$okhttp, true)));
                    } else {
                        e eVarA = w.a(exchange$okhttp.createRequestBody(request$okhttp, false));
                        requestBodyBody.writeTo(eVarA);
                        ((c0) eVarA).close();
                    }
                    z11 = z10;
                } catch (IOException e12) {
                    e = e12;
                    z11 = z10;
                    if (e instanceof ConnectionShutdownException) {
                        throw e;
                    }
                    throw e;
                }
            }
            if (requestBodyBody == null || !requestBodyBody.isDuplex()) {
                exchange$okhttp.finishRequest();
            }
            e = null;
        } catch (IOException e13) {
            e = e13;
            responseHeaders = null;
        }
        if (responseHeaders == null) {
            responseHeaders = exchange$okhttp.readResponseHeaders(false);
            h.g(responseHeaders);
            if (z11) {
                exchange$okhttp.responseHeadersStart();
                z11 = false;
            }
        }
        responseBuild = responseHeaders.request(request$okhttp).handshake(exchange$okhttp.getConnection$okhttp().handshake()).sentRequestAtMillis(jCurrentTimeMillis).receivedResponseAtMillis(System.currentTimeMillis()).build();
        iCode = responseBuild.code();
        if (iCode == 100) {
            Response.Builder responseHeaders3 = exchange$okhttp.readResponseHeaders(false);
            h.g(responseHeaders3);
            if (z11) {
                exchange$okhttp.responseHeadersStart();
            }
            responseBuild = responseHeaders3.request(request$okhttp).handshake(exchange$okhttp.getConnection$okhttp().handshake()).sentRequestAtMillis(jCurrentTimeMillis).receivedResponseAtMillis(System.currentTimeMillis()).build();
            iCode = responseBuild.code();
        }
        exchange$okhttp.responseHeadersEnd(responseBuild);
        if (this.forWebSocket || iCode != 101) {
            if (responseBuild instanceof Response.Builder) {
                builderNewBuilder = responseBuild.newBuilder();
            } else {
                builderNewBuilder = OkHttp3Instrumentation.newBuilder((Response.Builder) responseBuild);
            }
            responseBodyOpenResponseBody = exchange$okhttp.openResponseBody(responseBuild);
            if (builderNewBuilder instanceof Response.Builder) {
                builderBody = builderNewBuilder.body(responseBodyOpenResponseBody);
            } else {
                builderBody = OkHttp3Instrumentation.body(builderNewBuilder, responseBodyOpenResponseBody);
            }
            responseBuild2 = builderBody.build();
        } else {
            responseBuild2 = _ResponseCommonKt.stripBody(responseBuild);
        }
        if (o.Z("close", responseBuild2.request().header("Connection")) || o.Z("close", Response.header$default(responseBuild2, "Connection", null, 2, null))) {
            exchange$okhttp.noNewExchangesOnConnection();
        }
        if ((iCode == 204 && iCode != 205) || responseBuild2.body().contentLength() <= 0) {
            return responseBuild2;
        }
        throw new ProtocolException("HTTP " + iCode + " had non-zero Content-Length: " + responseBuild2.body().contentLength());
    }
}
