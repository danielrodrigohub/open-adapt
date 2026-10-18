package okhttp3.internal;

import fd.e;
import java.nio.charset.Charset;
import javax.net.ssl.SSLSocket;
import okhttp3.Cache;
import okhttp3.CipherSuite;
import okhttp3.ConnectionSpec;
import okhttp3.Cookie;
import okhttp3.Headers;
import okhttp3.HttpUrl;
import okhttp3.MediaType;
import okhttp3.Request;
import okhttp3.Response;
import okhttp3.internal.connection.Exchange;
import okhttp3.internal.connection.RealConnection;
import p4.h;
import yd.a;

/* JADX INFO: compiled from: internal.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class Internal {
    public static final Headers.Builder addHeaderLenient(Headers.Builder builder, String str) {
        h.j(builder, "builder");
        h.j(str, "line");
        return builder.addLenient$okhttp(str);
    }

    public static final void applyConnectionSpec(ConnectionSpec connectionSpec, SSLSocket sSLSocket, boolean z10) {
        h.j(connectionSpec, "connectionSpec");
        h.j(sSLSocket, "sslSocket");
        connectionSpec.apply$okhttp(sSLSocket, z10);
    }

    public static final Response cacheGet(Cache cache, Request request) {
        h.j(cache, "cache");
        h.j(request, "request");
        return cache.get$okhttp(request);
    }

    public static final Charset charset(MediaType mediaType, Charset charset) {
        Charset charset2;
        h.j(charset, "defaultValue");
        return (mediaType == null || (charset2 = mediaType.charset(charset)) == null) ? a.f19171b : charset2;
    }

    public static /* synthetic */ Charset charset$default(MediaType mediaType, Charset charset, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            charset = a.f19171b;
        }
        return charset(mediaType, charset);
    }

    public static final e<Charset, MediaType> chooseCharset(MediaType mediaType) {
        Charset charset = a.f19171b;
        if (mediaType != null) {
            Charset charsetCharset$default = MediaType.charset$default(mediaType, null, 1, null);
            if (charsetCharset$default == null) {
                mediaType = MediaType.Companion.parse(mediaType + "; charset=utf-8");
            } else {
                charset = charsetCharset$default;
            }
        }
        return new e<>(charset, mediaType);
    }

    public static final String cookieToString(Cookie cookie, boolean z10) {
        h.j(cookie, "cookie");
        return cookie.toString$okhttp(z10);
    }

    public static final String[] effectiveCipherSuites(ConnectionSpec connectionSpec, String[] strArr) {
        h.j(connectionSpec, "<this>");
        h.j(strArr, "socketEnabledCipherSuites");
        return connectionSpec.getCipherSuitesAsString$okhttp() != null ? _UtilCommonKt.intersect(strArr, connectionSpec.getCipherSuitesAsString$okhttp(), CipherSuite.Companion.getORDER_BY_NAME$okhttp()) : strArr;
    }

    public static final RealConnection getConnection(Response response) {
        h.j(response, "<this>");
        Exchange exchange = response.exchange();
        h.g(exchange);
        return exchange.getConnection$okhttp();
    }

    public static final Cookie parseCookie(long j10, HttpUrl httpUrl, String str) {
        h.j(httpUrl, "url");
        h.j(str, "setCookie");
        return Cookie.Companion.parse$okhttp(j10, httpUrl, str);
    }

    public static final Headers.Builder addHeaderLenient(Headers.Builder builder, String str, String str2) {
        h.j(builder, "builder");
        h.j(str, "name");
        h.j(str2, "value");
        return builder.addLenient$okhttp(str, str2);
    }
}
