package okhttp3.logging;

import a0.b;
import a0.d;
import androidx.fragment.app.r0;
import com.newrelic.agent.android.util.Constants;
import com.newrelic.agent.android.util.SafeJsonPrimitive;
import d3.e;
import de.c;
import de.f;
import de.q;
import gd.l;
import gd.r;
import java.nio.charset.Charset;
import java.util.Set;
import java.util.TreeSet;
import java.util.concurrent.TimeUnit;
import okhttp3.Connection;
import okhttp3.Headers;
import okhttp3.Interceptor;
import okhttp3.MediaType;
import okhttp3.Request;
import okhttp3.RequestBody;
import okhttp3.Response;
import okhttp3.ResponseBody;
import okhttp3.internal.Internal;
import okhttp3.internal.http.HttpHeaders;
import okhttp3.internal.platform.Platform;
import okhttp3.logging.internal.Utf8Kt;
import p4.h;
import yd.o;

/* JADX INFO: compiled from: HttpLoggingInterceptor.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class HttpLoggingInterceptor implements Interceptor {
    private volatile Set<String> headersToRedact;
    private volatile Level level;
    private final Logger logger;

    /* JADX INFO: compiled from: HttpLoggingInterceptor.kt */
    public enum Level {
        NONE,
        BASIC,
        HEADERS,
        BODY
    }

    /* JADX INFO: compiled from: HttpLoggingInterceptor.kt */
    public interface Logger {
        public static final Companion Companion = Companion.$$INSTANCE;
        public static final Logger DEFAULT = new Companion.DefaultLogger();

        /* JADX INFO: compiled from: HttpLoggingInterceptor.kt */
        public static final class Companion {
            public static final /* synthetic */ Companion $$INSTANCE = new Companion();

            /* JADX INFO: compiled from: HttpLoggingInterceptor.kt */
            public static final class DefaultLogger implements Logger {
                @Override // okhttp3.logging.HttpLoggingInterceptor.Logger
                public void log(String str) {
                    h.j(str, "message");
                    Platform.log$default(Platform.Companion.get(), str, 0, null, 6, null);
                }
            }

            private Companion() {
            }
        }

        void log(String str);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public HttpLoggingInterceptor() {
        this(null, 1, 0 == true ? 1 : 0);
    }

    public HttpLoggingInterceptor(Logger logger) {
        h.j(logger, "logger");
        this.logger = logger;
        this.headersToRedact = r.f8072h;
        this.level = Level.NONE;
    }

    private final boolean bodyHasUnknownEncoding(Headers headers) {
        String str = headers.get(Constants.Network.CONTENT_ENCODING_HEADER);
        return (str == null || o.Z(str, Constants.Network.ContentType.IDENTITY) || o.Z(str, Constants.Network.ContentType.GZIP)) ? false : true;
    }

    private final void logHeader(Headers headers, int i10) {
        String strValue = this.headersToRedact.contains(headers.name(i10)) ? "██" : headers.value(i10);
        this.logger.log(headers.name(i10) + ": " + strValue);
    }

    /* JADX INFO: renamed from: -deprecated_level, reason: not valid java name */
    public final Level m167deprecated_level() {
        return this.level;
    }

    public final Level getLevel() {
        return this.level;
    }

    @Override // okhttp3.Interceptor
    public Response intercept(Interceptor.Chain chain) throws Exception {
        String string;
        boolean z10;
        String str;
        char c10;
        String string2;
        Long lValueOf;
        Long lValueOf2;
        h.j(chain, "chain");
        Level level = this.level;
        Request request = chain.request();
        if (level == Level.NONE) {
            return chain.proceed(request);
        }
        boolean z11 = level == Level.BODY;
        boolean z12 = z11 || level == Level.HEADERS;
        RequestBody requestBodyBody = request.body();
        Connection connection = chain.connection();
        StringBuilder sbC = b.c("--> ");
        sbC.append(request.method());
        sbC.append(SafeJsonPrimitive.NULL_CHAR);
        sbC.append(request.url());
        if (connection != null) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append(SafeJsonPrimitive.NULL_CHAR);
            sb2.append(connection.protocol());
            string = sb2.toString();
        } else {
            string = "";
        }
        sbC.append(string);
        String string3 = sbC.toString();
        String str2 = "-byte body)";
        if (!z12 && requestBodyBody != null) {
            StringBuilder sbH = r0.h(string3, " (");
            sbH.append(requestBodyBody.contentLength());
            sbH.append("-byte body)");
            string3 = sbH.toString();
        }
        this.logger.log(string3);
        String str3 = "-gzipped-byte body)";
        if (z12) {
            Headers headers = request.headers();
            if (requestBodyBody != null) {
                MediaType mediaTypeContentType = requestBodyBody.contentType();
                z10 = z12;
                if (mediaTypeContentType != null && headers.get(Constants.Network.CONTENT_TYPE_HEADER) == null) {
                    this.logger.log("Content-Type: " + mediaTypeContentType);
                }
                if (requestBodyBody.contentLength() != -1 && headers.get(Constants.Network.CONTENT_LENGTH_HEADER) == null) {
                    Logger logger = this.logger;
                    StringBuilder sbC2 = b.c("Content-Length: ");
                    sbC2.append(requestBodyBody.contentLength());
                    logger.log(sbC2.toString());
                }
            } else {
                z10 = z12;
                str2 = "-byte body)";
            }
            int size = headers.size();
            for (int i10 = 0; i10 < size; i10++) {
                logHeader(headers, i10);
            }
            if (!z11 || requestBodyBody == null) {
                str3 = str3;
                str = str2;
                Logger logger2 = this.logger;
                StringBuilder sbC3 = b.c("--> END ");
                sbC3.append(request.method());
                logger2.log(sbC3.toString());
            } else {
                if (bodyHasUnknownEncoding(request.headers())) {
                    Logger logger3 = this.logger;
                    StringBuilder sbC4 = b.c("--> END ");
                    sbC4.append(request.method());
                    sbC4.append(" (encoded body omitted)");
                    logger3.log(sbC4.toString());
                } else if (requestBodyBody.isDuplex()) {
                    Logger logger4 = this.logger;
                    StringBuilder sbC5 = b.c("--> END ");
                    sbC5.append(request.method());
                    sbC5.append(" (duplex request body omitted)");
                    logger4.log(sbC5.toString());
                } else if (requestBodyBody.isOneShot()) {
                    Logger logger5 = this.logger;
                    StringBuilder sbC6 = b.c("--> END ");
                    sbC6.append(request.method());
                    sbC6.append(" (one-shot body omitted)");
                    logger5.log(sbC6.toString());
                } else {
                    c cVar = new c();
                    requestBodyBody.writeTo(cVar);
                    if (o.Z(Constants.Network.ContentType.GZIP, headers.get(Constants.Network.CONTENT_ENCODING_HEADER))) {
                        lValueOf2 = Long.valueOf(cVar.f6199i);
                        q qVar = new q(cVar);
                        try {
                            cVar = new c();
                            cVar.s(qVar);
                            e.d(qVar, null);
                        } catch (Throwable th) {
                            try {
                                throw th;
                            } catch (Throwable th2) {
                                e.d(qVar, th);
                                throw th2;
                            }
                        }
                    } else {
                        lValueOf2 = null;
                    }
                    Charset charsetCharset$default = Internal.charset$default(requestBodyBody.contentType(), null, 1, null);
                    this.logger.log("");
                    if (!Utf8Kt.isProbablyUtf8(cVar)) {
                        Logger logger6 = this.logger;
                        StringBuilder sbC7 = b.c("--> END ");
                        sbC7.append(request.method());
                        sbC7.append(" (binary ");
                        sbC7.append(requestBodyBody.contentLength());
                        sbC7.append("-byte body omitted)");
                        logger6.log(sbC7.toString());
                        str3 = "-gzipped-byte body)";
                    } else if (lValueOf2 != null) {
                        Logger logger7 = this.logger;
                        StringBuilder sbC8 = b.c("--> END ");
                        sbC8.append(request.method());
                        sbC8.append(" (");
                        sbC8.append(cVar.f6199i);
                        sbC8.append("-byte, ");
                        sbC8.append(lValueOf2);
                        str3 = "-gzipped-byte body)";
                        sbC8.append(str3);
                        logger7.log(sbC8.toString());
                    } else {
                        str3 = "-gzipped-byte body)";
                        this.logger.log(cVar.d0(charsetCharset$default));
                        Logger logger8 = this.logger;
                        StringBuilder sbC9 = b.c("--> END ");
                        sbC9.append(request.method());
                        sbC9.append(" (");
                        sbC9.append(requestBodyBody.contentLength());
                        str = str2;
                        sbC9.append(str);
                        logger8.log(sbC9.toString());
                    }
                    str = str2;
                }
                str3 = str3;
                str = str2;
            }
        } else {
            z10 = z12;
            str = "-byte body)";
        }
        long jNanoTime = System.nanoTime();
        try {
            Response responseProceed = chain.proceed(request);
            long millis = TimeUnit.NANOSECONDS.toMillis(System.nanoTime() - jNanoTime);
            ResponseBody responseBodyBody = responseProceed.body();
            h.g(responseBodyBody);
            long jContentLength = responseBodyBody.contentLength();
            String str4 = jContentLength != -1 ? jContentLength + "-byte" : "unknown-length";
            Logger logger9 = this.logger;
            StringBuilder sbC10 = b.c("<-- ");
            sbC10.append(responseProceed.code());
            if (responseProceed.message().length() == 0) {
                c10 = ' ';
                string2 = "";
            } else {
                String strMessage = responseProceed.message();
                StringBuilder sb3 = new StringBuilder();
                c10 = SafeJsonPrimitive.NULL_CHAR;
                sb3.append(SafeJsonPrimitive.NULL_CHAR);
                sb3.append(strMessage);
                string2 = sb3.toString();
            }
            sbC10.append(string2);
            sbC10.append(c10);
            sbC10.append(responseProceed.request().url());
            sbC10.append(" (");
            sbC10.append(millis);
            sbC10.append("ms");
            sbC10.append(!z10 ? d.c(", ", str4, " body") : "");
            sbC10.append(')');
            logger9.log(sbC10.toString());
            if (z10) {
                Headers headers2 = responseProceed.headers();
                int size2 = headers2.size();
                for (int i11 = 0; i11 < size2; i11++) {
                    logHeader(headers2, i11);
                }
                if (!z11 || !HttpHeaders.promisesBody(responseProceed)) {
                    this.logger.log("<-- END HTTP");
                } else if (bodyHasUnknownEncoding(responseProceed.headers())) {
                    this.logger.log("<-- END HTTP (encoded body omitted)");
                } else {
                    f fVarSource = responseBodyBody.source();
                    fVarSource.o(Long.MAX_VALUE);
                    c cVarB = fVarSource.b();
                    if (o.Z(Constants.Network.ContentType.GZIP, headers2.get(Constants.Network.CONTENT_ENCODING_HEADER))) {
                        lValueOf = Long.valueOf(cVarB.f6199i);
                        q qVar2 = new q(cVarB.clone());
                        try {
                            cVarB = new c();
                            cVarB.s(qVar2);
                            e.d(qVar2, null);
                        } catch (Throwable th3) {
                            try {
                                throw th3;
                            } catch (Throwable th4) {
                                e.d(qVar2, th3);
                                throw th4;
                            }
                        }
                    } else {
                        lValueOf = null;
                    }
                    Charset charsetCharset$default2 = Internal.charset$default(responseBodyBody.contentType(), null, 1, null);
                    if (!Utf8Kt.isProbablyUtf8(cVarB)) {
                        this.logger.log("");
                        Logger logger10 = this.logger;
                        StringBuilder sbC11 = b.c("<-- END HTTP (binary ");
                        sbC11.append(cVarB.f6199i);
                        sbC11.append("-byte body omitted)");
                        logger10.log(sbC11.toString());
                        return responseProceed;
                    }
                    if (jContentLength != 0) {
                        this.logger.log("");
                        this.logger.log(cVarB.clone().d0(charsetCharset$default2));
                    }
                    if (lValueOf != null) {
                        Logger logger11 = this.logger;
                        StringBuilder sbC12 = b.c("<-- END HTTP (");
                        sbC12.append(cVarB.f6199i);
                        sbC12.append("-byte, ");
                        sbC12.append(lValueOf);
                        sbC12.append(str3);
                        logger11.log(sbC12.toString());
                    } else {
                        Logger logger12 = this.logger;
                        StringBuilder sbC13 = b.c("<-- END HTTP (");
                        sbC13.append(cVarB.f6199i);
                        sbC13.append(str);
                        logger12.log(sbC13.toString());
                    }
                }
            }
            return responseProceed;
        } catch (Exception e10) {
            this.logger.log("<-- HTTP FAILED: " + e10);
            throw e10;
        }
    }

    public final void level(Level level) {
        h.j(level, "<set-?>");
        this.level = level;
    }

    public final void redactHeader(String str) {
        h.j(str, "name");
        o.a0();
        TreeSet treeSet = new TreeSet(String.CASE_INSENSITIVE_ORDER);
        l.X(treeSet, this.headersToRedact);
        treeSet.add(str);
        this.headersToRedact = treeSet;
    }

    public final HttpLoggingInterceptor setLevel(Level level) {
        h.j(level, "level");
        this.level = level;
        return this;
    }

    public /* synthetic */ HttpLoggingInterceptor(Logger logger, int i10, rd.h hVar) {
        this((i10 & 1) != 0 ? Logger.DEFAULT : logger);
    }
}
