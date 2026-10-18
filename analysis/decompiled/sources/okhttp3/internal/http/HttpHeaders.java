package okhttp3.internal.http;

import a0.b;
import de.c;
import de.g;
import gd.q;
import gd.w;
import java.io.EOFException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import okhttp3.Challenge;
import okhttp3.Cookie;
import okhttp3.CookieJar;
import okhttp3.Headers;
import okhttp3.HttpUrl;
import okhttp3.Response;
import okhttp3.internal._UtilCommonKt;
import okhttp3.internal._UtilJvmKt;
import okhttp3.internal.platform.Platform;
import p4.h;
import vd.d;
import vd.e;
import yd.o;

/* JADX INFO: compiled from: HttpHeaders.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class HttpHeaders {
    private static final g QUOTED_STRING_DELIMITERS;
    private static final g TOKEN_DELIMITERS;

    static {
        g.a aVar = g.f6227k;
        QUOTED_STRING_DELIMITERS = aVar.c("\"\\");
        TOKEN_DELIMITERS = aVar.c("\t ,=");
    }

    public static final boolean hasBody(Response response) {
        h.j(response, "response");
        return promisesBody(response);
    }

    public static final List<Challenge> parseChallenges(Headers headers, String str) {
        h.j(headers, "<this>");
        h.j(str, "headerName");
        ArrayList arrayList = new ArrayList();
        int size = headers.size();
        for (int i10 = 0; i10 < size; i10++) {
            if (o.Z(str, headers.name(i10))) {
                c cVar = new c();
                cVar.F0(headers.value(i10));
                try {
                    readChallengeHeader(cVar, arrayList);
                } catch (EOFException e10) {
                    Platform.Companion.get().log("Unable to parse challenge", 5, e10);
                }
            }
        }
        return arrayList;
    }

    public static final boolean promisesBody(Response response) {
        h.j(response, "<this>");
        if (h.c(response.request().method(), "HEAD")) {
            return false;
        }
        int iCode = response.code();
        return (((iCode >= 100 && iCode < 200) || iCode == 204 || iCode == 304) && _UtilJvmKt.headersContentLength(response) == -1 && !o.Z("chunked", Response.header$default(response, "Transfer-Encoding", null, 2, null))) ? false : true;
    }

    /* JADX WARN: Code duplicated, block: B:40:0x009f  */
    /* JADX WARN: Code duplicated, block: B:50:0x00f6  */
    /* JADX WARN: Code duplicated, block: B:57:0x0109  */
    /* JADX WARN: Code duplicated, block: B:58:0x010e  */
    /* JADX WARN: Code duplicated, block: B:86:0x012d A[EDGE_INSN: B:86:0x012d->B:70:0x012d BREAK  A[LOOP:4: B:45:0x00e3->B:69:0x012b], SYNTHETIC] */
    private static final void readChallengeHeader(c cVar, List<Challenge> list) throws EOFException {
        String token;
        int iSkipAll;
        String token2;
        String string;
        while (true) {
            String token3 = null;
            while (true) {
                if (token3 == null) {
                    skipCommasAndWhitespace(cVar);
                    token3 = readToken(cVar);
                    if (token3 == null) {
                        return;
                    }
                }
                boolean zSkipCommasAndWhitespace = skipCommasAndWhitespace(cVar);
                token = readToken(cVar);
                if (token == null) {
                    if (cVar.z()) {
                        list.add(new Challenge(token3, q.f8071h));
                        return;
                    }
                    return;
                }
                byte b10 = (byte) 61;
                iSkipAll = _UtilCommonKt.skipAll(cVar, b10);
                boolean zSkipCommasAndWhitespace2 = skipCommasAndWhitespace(cVar);
                if (!zSkipCommasAndWhitespace && (zSkipCommasAndWhitespace2 || cVar.z())) {
                    break;
                }
                LinkedHashMap linkedHashMap = new LinkedHashMap();
                int iSkipAll2 = _UtilCommonKt.skipAll(cVar, b10) + iSkipAll;
                while (true) {
                    if (token == null) {
                        token = readToken(cVar);
                        if (skipCommasAndWhitespace(cVar)) {
                            break;
                        }
                        iSkipAll2 = _UtilCommonKt.skipAll(cVar, b10);
                        if (iSkipAll2 != 0) {
                            break;
                        }
                        if (iSkipAll2 <= 1 || skipCommasAndWhitespace(cVar)) {
                            return;
                        }
                        if (startsWith(cVar, (byte) 34)) {
                            token2 = readQuotedString(cVar);
                        } else {
                            token2 = readToken(cVar);
                        }
                        if (token2 != null || ((String) linkedHashMap.put(token, token2)) != null) {
                            return;
                        }
                        if (skipCommasAndWhitespace(cVar) && !cVar.z()) {
                            return;
                        } else {
                            token = null;
                        }
                    } else {
                        if (iSkipAll2 != 0) {
                            break;
                            break;
                        }
                        if (iSkipAll2 <= 1) {
                            return;
                        }
                        if (startsWith(cVar, (byte) 34)) {
                            token2 = readQuotedString(cVar);
                        } else {
                            token2 = readToken(cVar);
                        }
                        if (token2 != null) {
                            return;
                        }
                        if (skipCommasAndWhitespace(cVar)) {
                        }
                        token = null;
                    }
                }
                list.add(new Challenge(token3, linkedHashMap));
                token3 = token;
            }
            StringBuilder sbC = b.c(token);
            if (!(iSkipAll >= 0)) {
                throw new IllegalArgumentException(("Count 'n' must be non-negative, but was " + iSkipAll + '.').toString());
            }
            if (iSkipAll == 0) {
                string = "";
            } else if (iSkipAll != 1) {
                int length = "=".length();
                if (length == 0) {
                    string = "";
                } else if (length != 1) {
                    StringBuilder sb2 = new StringBuilder("=".length() * iSkipAll);
                    w it = new e(1, iSkipAll).iterator();
                    while (((d) it).f17026j) {
                        it.a();
                        sb2.append((CharSequence) "=");
                    }
                    string = sb2.toString();
                    h.i(string, "{\n                    va…tring()\n                }");
                } else {
                    char cCharAt = "=".charAt(0);
                    char[] cArr = new char[iSkipAll];
                    for (int i10 = 0; i10 < iSkipAll; i10++) {
                        cArr[i10] = cCharAt;
                    }
                    string = new String(cArr);
                }
            } else {
                string = "=".toString();
            }
            sbC.append(string);
            Map mapSingletonMap = Collections.singletonMap(null, sbC.toString());
            h.i(mapSingletonMap, "singletonMap<String, Str…ek + \"=\".repeat(eqCount))");
            list.add(new Challenge(token3, (Map<String, String>) mapSingletonMap));
        }
    }

    private static final String readQuotedString(c cVar) throws EOFException {
        byte b10 = (byte) 34;
        if (!(cVar.readByte() == b10)) {
            throw new IllegalArgumentException("Failed requirement.".toString());
        }
        c cVar2 = new c();
        while (true) {
            long jS = cVar.S(QUOTED_STRING_DELIMITERS);
            if (jS == -1) {
                return null;
            }
            if (cVar.h0(jS) == b10) {
                cVar2.write(cVar, jS);
                cVar.readByte();
                return cVar2.p0();
            }
            if (cVar.f6199i == jS + 1) {
                return null;
            }
            cVar2.write(cVar, jS);
            cVar.readByte();
            cVar2.write(cVar, 1L);
        }
    }

    private static final String readToken(c cVar) {
        long jS = cVar.S(TOKEN_DELIMITERS);
        if (jS == -1) {
            jS = cVar.f6199i;
        }
        if (jS != 0) {
            return cVar.q0(jS);
        }
        return null;
    }

    public static final void receiveHeaders(CookieJar cookieJar, HttpUrl httpUrl, Headers headers) {
        h.j(cookieJar, "<this>");
        h.j(httpUrl, "url");
        h.j(headers, "headers");
        if (cookieJar == CookieJar.NO_COOKIES) {
            return;
        }
        List<Cookie> all = Cookie.Companion.parseAll(httpUrl, headers);
        if (all.isEmpty()) {
            return;
        }
        cookieJar.saveFromResponse(httpUrl, all);
    }

    private static final boolean skipCommasAndWhitespace(c cVar) throws EOFException {
        boolean z10 = false;
        while (!cVar.z()) {
            byte bH0 = cVar.h0(0L);
            if (bH0 != ((byte) 44)) {
                if (!(bH0 == ((byte) 32) || bH0 == ((byte) 9))) {
                    break;
                }
                cVar.readByte();
            } else {
                cVar.readByte();
                z10 = true;
            }
        }
        return z10;
    }

    private static final boolean startsWith(c cVar, byte b10) {
        return !cVar.z() && cVar.h0(0L) == b10;
    }
}
