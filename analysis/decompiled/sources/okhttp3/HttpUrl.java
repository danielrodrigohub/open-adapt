package okhttp3;

import androidx.activity.k;
import androidx.appcompat.widget.e0;
import androidx.recyclerview.widget.d;
import de.c;
import g7.b;
import gd.j;
import gd.p;
import gd.r;
import java.net.MalformedURLException;
import java.net.URI;
import java.net.URISyntaxException;
import java.net.URL;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;
import java.util.regex.Pattern;
import okhttp3.internal._HostnamesCommonKt;
import okhttp3.internal._HostnamesJvmKt;
import okhttp3.internal._UtilCommonKt;
import okhttp3.internal.http.HttpStatusCodesKt;
import okhttp3.internal.publicsuffix.PublicSuffixDatabase;
import rd.h;
import yd.o;
import yd.s;
import yd.t;

/* JADX INFO: compiled from: HttpUrl.kt */
/* JADX INFO: loaded from: classes.dex */
public final class HttpUrl {
    public static final String FORM_ENCODE_SET = " !\"#$&'()+,/:;<=>?@[\\]^`{|}~";
    public static final String FRAGMENT_ENCODE_SET = "";
    public static final String FRAGMENT_ENCODE_SET_URI = " \"#<>\\^`{|}";
    public static final String PASSWORD_ENCODE_SET = " \"':;<=>@[]^`{}|/\\?#";
    public static final String PATH_SEGMENT_ENCODE_SET = " \"<>^`{}|/\\?#";
    public static final String PATH_SEGMENT_ENCODE_SET_URI = "[]";
    public static final String QUERY_COMPONENT_ENCODE_SET = " !\"#$&'(),/:;<=>?@[]\\^`{|}~";
    public static final String QUERY_COMPONENT_ENCODE_SET_URI = "\\^`{|}";
    public static final String QUERY_COMPONENT_REENCODE_SET = " \"'<>#&=";
    public static final String QUERY_ENCODE_SET = " \"'<>#";
    public static final String USERNAME_ENCODE_SET = " \"':;<=>@[]^`{}|/\\?#";
    private final String fragment;
    private final String host;
    private final boolean isHttps;
    private final String password;
    private final List<String> pathSegments;
    private final int port;
    private final List<String> queryNamesAndValues;
    private final String scheme;
    private final String url;
    private final String username;
    public static final Companion Companion = new Companion(null);
    private static final char[] HEX_DIGITS = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', 'C', 'D', 'E', 'F'};

    /* JADX INFO: compiled from: HttpUrl.kt */
    public static final class Builder {
        public static final Companion Companion = new Companion(null);
        public static final String INVALID_HOST = "Invalid URL host";
        private String encodedFragment;
        private final List<String> encodedPathSegments;
        private List<String> encodedQueryNamesAndValues;
        private String host;
        private String scheme;
        private String encodedUsername = "";
        private String encodedPassword = "";
        private int port = -1;

        /* JADX INFO: compiled from: HttpUrl.kt */
        public static final class Companion {
            private Companion() {
            }

            public /* synthetic */ Companion(h hVar) {
                this();
            }

            /* JADX INFO: Access modifiers changed from: private */
            public final int parsePort(String str, int i10, int i11) {
                try {
                    int i12 = Integer.parseInt(Companion.canonicalize$okhttp$default(HttpUrl.Companion, str, i10, i11, "", false, false, false, false, null, 248, null));
                    boolean z10 = false;
                    if (1 <= i12 && i12 < 65536) {
                        z10 = true;
                    }
                    if (z10) {
                        return i12;
                    }
                    return -1;
                } catch (NumberFormatException unused) {
                    return -1;
                }
            }

            /* JADX INFO: Access modifiers changed from: private */
            public final int portColonOffset(String str, int i10, int i11) {
                while (i10 < i11) {
                    char cCharAt = str.charAt(i10);
                    if (cCharAt == '[') {
                        do {
                            i10++;
                            if (i10 >= i11) {
                                break;
                            }
                        } while (str.charAt(i10) != ']');
                    } else if (cCharAt == ':') {
                        return i10;
                    }
                    i10++;
                }
                return i11;
            }

            /* JADX INFO: Access modifiers changed from: private */
            public final int schemeDelimiterOffset(String str, int i10, int i11) {
                if (i11 - i10 < 2) {
                    return -1;
                }
                char cCharAt = str.charAt(i10);
                if ((p4.h.l(cCharAt, 97) >= 0 && p4.h.l(cCharAt, 122) <= 0) || (p4.h.l(cCharAt, 65) >= 0 && p4.h.l(cCharAt, 90) <= 0)) {
                    for (int i12 = i10 + 1; i12 < i11; i12++) {
                        char cCharAt2 = str.charAt(i12);
                        if (!(((((('a' <= cCharAt2 && cCharAt2 < '{') || ('A' <= cCharAt2 && cCharAt2 < '[')) || ('0' <= cCharAt2 && cCharAt2 < ':')) || cCharAt2 == '+') || cCharAt2 == '-') || cCharAt2 == '.')) {
                            if (cCharAt2 == ':') {
                                return i12;
                            }
                            return -1;
                        }
                    }
                }
                return -1;
            }

            /* JADX INFO: Access modifiers changed from: private */
            public final int slashCount(String str, int i10, int i11) {
                int i12 = 0;
                while (i10 < i11) {
                    char cCharAt = str.charAt(i10);
                    if (cCharAt != '\\' && cCharAt != '/') {
                        break;
                    }
                    i12++;
                    i10++;
                }
                return i12;
            }
        }

        public Builder() {
            ArrayList arrayList = new ArrayList();
            this.encodedPathSegments = arrayList;
            arrayList.add("");
        }

        private final int effectivePort() {
            int i10 = this.port;
            if (i10 != -1) {
                return i10;
            }
            Companion companion = HttpUrl.Companion;
            String str = this.scheme;
            p4.h.g(str);
            return companion.defaultPort(str);
        }

        private final boolean isDot(String str) {
            return p4.h.c(str, ".") || o.Z(str, "%2e");
        }

        private final boolean isDotDot(String str) {
            return p4.h.c(str, "..") || o.Z(str, "%2e.") || o.Z(str, ".%2e") || o.Z(str, "%2e%2e");
        }

        private final void pop() {
            List<String> list = this.encodedPathSegments;
            if (!(list.remove(list.size() - 1).length() == 0) || !(!this.encodedPathSegments.isEmpty())) {
                this.encodedPathSegments.add("");
            } else {
                List<String> list2 = this.encodedPathSegments;
                list2.set(list2.size() - 1, "");
            }
        }

        private final void push(String str, int i10, int i11, boolean z10, boolean z11) {
            String strCanonicalize$okhttp$default = Companion.canonicalize$okhttp$default(HttpUrl.Companion, str, i10, i11, HttpUrl.PATH_SEGMENT_ENCODE_SET, z11, false, false, false, null, 240, null);
            if (isDot(strCanonicalize$okhttp$default)) {
                return;
            }
            if (isDotDot(strCanonicalize$okhttp$default)) {
                pop();
                return;
            }
            List<String> list = this.encodedPathSegments;
            if (list.get(list.size() - 1).length() == 0) {
                List<String> list2 = this.encodedPathSegments;
                list2.set(list2.size() - 1, strCanonicalize$okhttp$default);
            } else {
                this.encodedPathSegments.add(strCanonicalize$okhttp$default);
            }
            if (z10) {
                this.encodedPathSegments.add("");
            }
        }

        private final void removeAllCanonicalQueryParameters(String str) {
            List<String> list = this.encodedQueryNamesAndValues;
            p4.h.g(list);
            int size = list.size() - 2;
            int iG = b.g(size, 0, -2);
            if (iG > size) {
                return;
            }
            while (true) {
                List<String> list2 = this.encodedQueryNamesAndValues;
                p4.h.g(list2);
                if (p4.h.c(str, list2.get(size))) {
                    List<String> list3 = this.encodedQueryNamesAndValues;
                    p4.h.g(list3);
                    list3.remove(size + 1);
                    List<String> list4 = this.encodedQueryNamesAndValues;
                    p4.h.g(list4);
                    list4.remove(size);
                    List<String> list5 = this.encodedQueryNamesAndValues;
                    p4.h.g(list5);
                    if (list5.isEmpty()) {
                        this.encodedQueryNamesAndValues = null;
                        return;
                    }
                }
                if (size == iG) {
                    return;
                } else {
                    size -= 2;
                }
            }
        }

        private final void resolvePath(String str, int i10, int i11) {
            if (i10 == i11) {
                return;
            }
            char cCharAt = str.charAt(i10);
            if (cCharAt == '/' || cCharAt == '\\') {
                this.encodedPathSegments.clear();
                this.encodedPathSegments.add("");
                i10++;
            } else {
                List<String> list = this.encodedPathSegments;
                list.set(list.size() - 1, "");
            }
            while (true) {
                int i12 = i10;
                while (i12 < i11) {
                    i10 = _UtilCommonKt.delimiterOffset(str, "/\\", i12, i11);
                    boolean z10 = i10 < i11;
                    push(str, i12, i10, z10, true);
                    if (z10) {
                        i12 = i10 + 1;
                    }
                }
                return;
            }
        }

        public final Builder addEncodedPathSegment(String str) {
            p4.h.j(str, "encodedPathSegment");
            push(str, 0, str.length(), false, true);
            return this;
        }

        public final Builder addEncodedPathSegments(String str) {
            p4.h.j(str, "encodedPathSegments");
            return addPathSegments(str, true);
        }

        public final Builder addEncodedQueryParameter(String str, String str2) {
            p4.h.j(str, "encodedName");
            if (this.encodedQueryNamesAndValues == null) {
                this.encodedQueryNamesAndValues = new ArrayList();
            }
            List<String> list = this.encodedQueryNamesAndValues;
            p4.h.g(list);
            Companion companion = HttpUrl.Companion;
            list.add(Companion.canonicalize$okhttp$default(companion, str, 0, 0, HttpUrl.QUERY_COMPONENT_REENCODE_SET, true, false, true, false, null, 211, null));
            List<String> list2 = this.encodedQueryNamesAndValues;
            p4.h.g(list2);
            list2.add(str2 != null ? Companion.canonicalize$okhttp$default(companion, str2, 0, 0, HttpUrl.QUERY_COMPONENT_REENCODE_SET, true, false, true, false, null, 211, null) : null);
            return this;
        }

        public final Builder addPathSegment(String str) {
            p4.h.j(str, "pathSegment");
            push(str, 0, str.length(), false, false);
            return this;
        }

        public final Builder addPathSegments(String str) {
            p4.h.j(str, "pathSegments");
            return addPathSegments(str, false);
        }

        public final Builder addQueryParameter(String str, String str2) {
            p4.h.j(str, "name");
            if (this.encodedQueryNamesAndValues == null) {
                this.encodedQueryNamesAndValues = new ArrayList();
            }
            List<String> list = this.encodedQueryNamesAndValues;
            p4.h.g(list);
            Companion companion = HttpUrl.Companion;
            list.add(Companion.canonicalize$okhttp$default(companion, str, 0, 0, HttpUrl.QUERY_COMPONENT_ENCODE_SET, false, false, true, false, null, 219, null));
            List<String> list2 = this.encodedQueryNamesAndValues;
            p4.h.g(list2);
            list2.add(str2 != null ? Companion.canonicalize$okhttp$default(companion, str2, 0, 0, HttpUrl.QUERY_COMPONENT_ENCODE_SET, false, false, true, false, null, 219, null) : null);
            return this;
        }

        public final HttpUrl build() {
            ArrayList arrayList;
            String str = this.scheme;
            if (str == null) {
                throw new IllegalStateException("scheme == null");
            }
            Companion companion = HttpUrl.Companion;
            String strPercentDecode$okhttp$default = Companion.percentDecode$okhttp$default(companion, this.encodedUsername, 0, 0, false, 7, null);
            String strPercentDecode$okhttp$default2 = Companion.percentDecode$okhttp$default(companion, this.encodedPassword, 0, 0, false, 7, null);
            String str2 = this.host;
            if (str2 == null) {
                throw new IllegalStateException("host == null");
            }
            int iEffectivePort = effectivePort();
            List<String> list = this.encodedPathSegments;
            ArrayList arrayList2 = new ArrayList(j.T(list, 10));
            Iterator<T> it = list.iterator();
            while (it.hasNext()) {
                arrayList2.add(Companion.percentDecode$okhttp$default(HttpUrl.Companion, (String) it.next(), 0, 0, false, 7, null));
            }
            List<String> list2 = this.encodedQueryNamesAndValues;
            if (list2 != null) {
                arrayList = new ArrayList(j.T(list2, 10));
                for (String str3 : list2) {
                    arrayList.add(str3 != null ? Companion.percentDecode$okhttp$default(HttpUrl.Companion, str3, 0, 0, true, 3, null) : null);
                }
            } else {
                arrayList = null;
            }
            String str4 = this.encodedFragment;
            return new HttpUrl(str, strPercentDecode$okhttp$default, strPercentDecode$okhttp$default2, str2, iEffectivePort, arrayList2, arrayList, str4 != null ? Companion.percentDecode$okhttp$default(HttpUrl.Companion, str4, 0, 0, false, 7, null) : null, toString());
        }

        public final Builder encodedFragment(String str) {
            this.encodedFragment = str != null ? Companion.canonicalize$okhttp$default(HttpUrl.Companion, str, 0, 0, "", true, false, false, true, null, 179, null) : null;
            return this;
        }

        public final Builder encodedPassword(String str) {
            p4.h.j(str, "encodedPassword");
            this.encodedPassword = Companion.canonicalize$okhttp$default(HttpUrl.Companion, str, 0, 0, " \"':;<=>@[]^`{}|/\\?#", true, false, false, false, null, 243, null);
            return this;
        }

        public final Builder encodedPath(String str) {
            p4.h.j(str, "encodedPath");
            if (!o.g0(str, "/", false)) {
                throw new IllegalArgumentException(d.c("unexpected encodedPath: ", str).toString());
            }
            resolvePath(str, 0, str.length());
            return this;
        }

        /* JADX WARN: Code duplicated, block: B:6:0x001d  */
        public final Builder encodedQuery(String str) {
            List<String> queryNamesAndValues$okhttp;
            if (str != null) {
                Companion companion = HttpUrl.Companion;
                String strCanonicalize$okhttp$default = Companion.canonicalize$okhttp$default(companion, str, 0, 0, HttpUrl.QUERY_ENCODE_SET, true, false, true, false, null, 211, null);
                if (strCanonicalize$okhttp$default != null) {
                    queryNamesAndValues$okhttp = companion.toQueryNamesAndValues$okhttp(strCanonicalize$okhttp$default);
                } else {
                    queryNamesAndValues$okhttp = null;
                }
            } else {
                queryNamesAndValues$okhttp = null;
            }
            this.encodedQueryNamesAndValues = queryNamesAndValues$okhttp;
            return this;
        }

        public final Builder encodedUsername(String str) {
            p4.h.j(str, "encodedUsername");
            this.encodedUsername = Companion.canonicalize$okhttp$default(HttpUrl.Companion, str, 0, 0, " \"':;<=>@[]^`{}|/\\?#", true, false, false, false, null, 243, null);
            return this;
        }

        public final Builder fragment(String str) {
            this.encodedFragment = str != null ? Companion.canonicalize$okhttp$default(HttpUrl.Companion, str, 0, 0, "", false, false, false, true, null, 187, null) : null;
            return this;
        }

        public final String getEncodedFragment$okhttp() {
            return this.encodedFragment;
        }

        public final String getEncodedPassword$okhttp() {
            return this.encodedPassword;
        }

        public final List<String> getEncodedPathSegments$okhttp() {
            return this.encodedPathSegments;
        }

        public final List<String> getEncodedQueryNamesAndValues$okhttp() {
            return this.encodedQueryNamesAndValues;
        }

        public final String getEncodedUsername$okhttp() {
            return this.encodedUsername;
        }

        public final String getHost$okhttp() {
            return this.host;
        }

        public final int getPort$okhttp() {
            return this.port;
        }

        public final String getScheme$okhttp() {
            return this.scheme;
        }

        public final Builder host(String str) {
            p4.h.j(str, "host");
            String canonicalHost = _HostnamesJvmKt.toCanonicalHost(Companion.percentDecode$okhttp$default(HttpUrl.Companion, str, 0, 0, false, 7, null));
            if (canonicalHost == null) {
                throw new IllegalArgumentException(d.c("unexpected host: ", str));
            }
            this.host = canonicalHost;
            return this;
        }

        public final Builder parse$okhttp(HttpUrl httpUrl, String str) {
            int iDelimiterOffset;
            boolean z10;
            char c10;
            int i10;
            boolean z11;
            boolean z12;
            String str2 = str;
            p4.h.j(str2, "input");
            int iIndexOfFirstNonAsciiWhitespace$default = _UtilCommonKt.indexOfFirstNonAsciiWhitespace$default(str2, 0, 0, 3, null);
            int iIndexOfLastNonAsciiWhitespace$default = _UtilCommonKt.indexOfLastNonAsciiWhitespace$default(str2, iIndexOfFirstNonAsciiWhitespace$default, 0, 2, null);
            Companion companion = Companion;
            int iSchemeDelimiterOffset = companion.schemeDelimiterOffset(str2, iIndexOfFirstNonAsciiWhitespace$default, iIndexOfLastNonAsciiWhitespace$default);
            boolean z13 = true;
            if (iSchemeDelimiterOffset != -1) {
                if (o.f0(str2, "https:", iIndexOfFirstNonAsciiWhitespace$default, true)) {
                    this.scheme = "https";
                    iIndexOfFirstNonAsciiWhitespace$default += 6;
                } else {
                    if (!o.f0(str2, "http:", iIndexOfFirstNonAsciiWhitespace$default, true)) {
                        StringBuilder sbC = a0.b.c("Expected URL scheme 'http' or 'https' but was '");
                        String strSubstring = str2.substring(0, iSchemeDelimiterOffset);
                        p4.h.i(strSubstring, "this as java.lang.String…ing(startIndex, endIndex)");
                        sbC.append(strSubstring);
                        sbC.append('\'');
                        throw new IllegalArgumentException(sbC.toString());
                    }
                    this.scheme = "http";
                    iIndexOfFirstNonAsciiWhitespace$default += 5;
                }
            } else {
                if (httpUrl == null) {
                    if (str.length() > 6) {
                        str2 = t.I0(str2, 6) + "...";
                    }
                    throw new IllegalArgumentException(d.c("Expected URL scheme 'http' or 'https' but no scheme was found for ", str2));
                }
                this.scheme = httpUrl.scheme();
            }
            int iSlashCount = companion.slashCount(str2, iIndexOfFirstNonAsciiWhitespace$default, iIndexOfLastNonAsciiWhitespace$default);
            char c11 = '?';
            if (iSlashCount >= 2 || httpUrl == null || !p4.h.c(httpUrl.scheme(), this.scheme)) {
                boolean z14 = false;
                boolean z15 = false;
                int i11 = iIndexOfFirstNonAsciiWhitespace$default + iSlashCount;
                char c12 = 65535;
                while (true) {
                    iDelimiterOffset = _UtilCommonKt.delimiterOffset(str2, "@/\\?#", i11, iIndexOfLastNonAsciiWhitespace$default);
                    char cCharAt = iDelimiterOffset != iIndexOfLastNonAsciiWhitespace$default ? str2.charAt(iDelimiterOffset) : c12;
                    if (cCharAt != '@') {
                        z10 = z13;
                        iIndexOfLastNonAsciiWhitespace$default = iIndexOfLastNonAsciiWhitespace$default;
                        if ((((!((!((cCharAt != c12 && cCharAt != '/') ? false : z10) && cCharAt != '\\') ? false : z10) && cCharAt != '?') ? false : z10) || cCharAt == '#') ? z10 : false) {
                            break;
                        }
                    } else {
                        if (z14) {
                            i10 = iDelimiterOffset;
                            z10 = z13;
                            this.encodedPassword += "%40" + Companion.canonicalize$okhttp$default(HttpUrl.Companion, str, i11, i10, " \"':;<=>@[]^`{}|/\\?#", true, false, false, false, null, 240, null);
                            z11 = z15;
                        } else {
                            int iDelimiterOffset2 = _UtilCommonKt.delimiterOffset(str2, ':', i11, iDelimiterOffset);
                            Companion companion2 = HttpUrl.Companion;
                            z10 = z13;
                            String strCanonicalize$okhttp$default = Companion.canonicalize$okhttp$default(companion2, str, i11, iDelimiterOffset2, " \"':;<=>@[]^`{}|/\\?#", true, false, false, false, null, 240, null);
                            if (z15) {
                                strCanonicalize$okhttp$default = this.encodedUsername + "%40" + strCanonicalize$okhttp$default;
                            }
                            this.encodedUsername = strCanonicalize$okhttp$default;
                            i10 = iDelimiterOffset;
                            if (iDelimiterOffset2 != i10) {
                                this.encodedPassword = Companion.canonicalize$okhttp$default(companion2, str, iDelimiterOffset2 + 1, i10, " \"':;<=>@[]^`{}|/\\?#", true, false, false, false, null, 240, null);
                                z12 = z10;
                            } else {
                                z12 = z14;
                            }
                            z14 = z12;
                            z11 = z10;
                        }
                        i11 = i10 + 1;
                        c12 = 65535;
                        z15 = z11;
                    }
                    iIndexOfLastNonAsciiWhitespace$default = iIndexOfLastNonAsciiWhitespace$default;
                    z13 = z10;
                }
                Companion companion3 = Companion;
                int iPortColonOffset = companion3.portColonOffset(str2, i11, iDelimiterOffset);
                int i12 = iPortColonOffset + 1;
                if (i12 < iDelimiterOffset) {
                    this.host = _HostnamesJvmKt.toCanonicalHost(Companion.percentDecode$okhttp$default(HttpUrl.Companion, str, i11, iPortColonOffset, false, 4, null));
                    int port = companion3.parsePort(str2, i12, iDelimiterOffset);
                    this.port = port;
                    if (!(port != c12 ? z10 : false)) {
                        StringBuilder sbC2 = a0.b.c("Invalid URL port: \"");
                        String strSubstring2 = str2.substring(i12, iDelimiterOffset);
                        p4.h.i(strSubstring2, "this as java.lang.String…ing(startIndex, endIndex)");
                        sbC2.append(strSubstring2);
                        sbC2.append('\"');
                        throw new IllegalArgumentException(sbC2.toString().toString());
                    }
                    c10 = '\"';
                } else {
                    c10 = '\"';
                    Companion companion4 = HttpUrl.Companion;
                    this.host = _HostnamesJvmKt.toCanonicalHost(Companion.percentDecode$okhttp$default(companion4, str, i11, iPortColonOffset, false, 4, null));
                    String str3 = this.scheme;
                    p4.h.g(str3);
                    this.port = companion4.defaultPort(str3);
                }
                if (!(this.host != null ? z10 : false)) {
                    StringBuilder sbC3 = a0.b.c("Invalid URL host: \"");
                    String strSubstring3 = str2.substring(i11, iPortColonOffset);
                    p4.h.i(strSubstring3, "this as java.lang.String…ing(startIndex, endIndex)");
                    sbC3.append(strSubstring3);
                    sbC3.append(c10);
                    throw new IllegalArgumentException(sbC3.toString().toString());
                }
                c11 = '?';
                iIndexOfFirstNonAsciiWhitespace$default = iDelimiterOffset;
            } else {
                this.encodedUsername = httpUrl.encodedUsername();
                this.encodedPassword = httpUrl.encodedPassword();
                this.host = httpUrl.host();
                this.port = httpUrl.port();
                this.encodedPathSegments.clear();
                this.encodedPathSegments.addAll(httpUrl.encodedPathSegments());
                if (iIndexOfFirstNonAsciiWhitespace$default == iIndexOfLastNonAsciiWhitespace$default || str2.charAt(iIndexOfFirstNonAsciiWhitespace$default) == '#') {
                    encodedQuery(httpUrl.encodedQuery());
                }
                iIndexOfLastNonAsciiWhitespace$default = iIndexOfLastNonAsciiWhitespace$default;
            }
            int i13 = iIndexOfLastNonAsciiWhitespace$default;
            int iDelimiterOffset3 = _UtilCommonKt.delimiterOffset(str2, "?#", iIndexOfFirstNonAsciiWhitespace$default, i13);
            resolvePath(str2, iIndexOfFirstNonAsciiWhitespace$default, iDelimiterOffset3);
            if (iDelimiterOffset3 < i13 && str2.charAt(iDelimiterOffset3) == c11) {
                int iDelimiterOffset4 = _UtilCommonKt.delimiterOffset(str2, '#', iDelimiterOffset3, i13);
                Companion companion5 = HttpUrl.Companion;
                this.encodedQueryNamesAndValues = companion5.toQueryNamesAndValues$okhttp(Companion.canonicalize$okhttp$default(companion5, str, iDelimiterOffset3 + 1, iDelimiterOffset4, HttpUrl.QUERY_ENCODE_SET, true, false, true, false, null, HttpStatusCodesKt.HTTP_ALREADY_REPORTED, null));
                iDelimiterOffset3 = iDelimiterOffset4;
            }
            if (iDelimiterOffset3 < i13 && str2.charAt(iDelimiterOffset3) == '#') {
                this.encodedFragment = Companion.canonicalize$okhttp$default(HttpUrl.Companion, str, iDelimiterOffset3 + 1, i13, "", true, false, false, true, null, 176, null);
            }
            return this;
        }

        public final Builder password(String str) {
            p4.h.j(str, "password");
            this.encodedPassword = Companion.canonicalize$okhttp$default(HttpUrl.Companion, str, 0, 0, " \"':;<=>@[]^`{}|/\\?#", false, false, false, false, null, 251, null);
            return this;
        }

        public final Builder port(int i10) {
            boolean z10 = false;
            if (1 <= i10 && i10 < 65536) {
                z10 = true;
            }
            if (!z10) {
                throw new IllegalArgumentException(e0.d("unexpected port: ", i10).toString());
            }
            this.port = i10;
            return this;
        }

        /* JADX WARN: Code duplicated, block: B:6:0x001d  */
        public final Builder query(String str) {
            List<String> queryNamesAndValues$okhttp;
            if (str != null) {
                Companion companion = HttpUrl.Companion;
                String strCanonicalize$okhttp$default = Companion.canonicalize$okhttp$default(companion, str, 0, 0, HttpUrl.QUERY_ENCODE_SET, false, false, true, false, null, 219, null);
                if (strCanonicalize$okhttp$default != null) {
                    queryNamesAndValues$okhttp = companion.toQueryNamesAndValues$okhttp(strCanonicalize$okhttp$default);
                } else {
                    queryNamesAndValues$okhttp = null;
                }
            } else {
                queryNamesAndValues$okhttp = null;
            }
            this.encodedQueryNamesAndValues = queryNamesAndValues$okhttp;
            return this;
        }

        public final Builder reencodeForUri$okhttp() {
            String strReplaceAll;
            String str = this.host;
            if (str != null) {
                Pattern patternCompile = Pattern.compile("[\"<>^`{|}]");
                p4.h.i(patternCompile, "compile(pattern)");
                strReplaceAll = patternCompile.matcher(str).replaceAll("");
                p4.h.i(strReplaceAll, "nativePattern.matcher(in…).replaceAll(replacement)");
            } else {
                strReplaceAll = null;
            }
            this.host = strReplaceAll;
            int size = this.encodedPathSegments.size();
            for (int i10 = 0; i10 < size; i10++) {
                List<String> list = this.encodedPathSegments;
                list.set(i10, Companion.canonicalize$okhttp$default(HttpUrl.Companion, list.get(i10), 0, 0, HttpUrl.PATH_SEGMENT_ENCODE_SET_URI, true, true, false, false, null, 227, null));
            }
            List<String> list2 = this.encodedQueryNamesAndValues;
            if (list2 != null) {
                int size2 = list2.size();
                for (int i11 = 0; i11 < size2; i11++) {
                    String str2 = list2.get(i11);
                    list2.set(i11, str2 != null ? Companion.canonicalize$okhttp$default(HttpUrl.Companion, str2, 0, 0, HttpUrl.QUERY_COMPONENT_ENCODE_SET_URI, true, true, true, false, null, 195, null) : null);
                }
            }
            String str3 = this.encodedFragment;
            this.encodedFragment = str3 != null ? Companion.canonicalize$okhttp$default(HttpUrl.Companion, str3, 0, 0, HttpUrl.FRAGMENT_ENCODE_SET_URI, true, true, false, true, null, 163, null) : null;
            return this;
        }

        public final Builder removeAllEncodedQueryParameters(String str) {
            p4.h.j(str, "encodedName");
            if (this.encodedQueryNamesAndValues == null) {
                return this;
            }
            removeAllCanonicalQueryParameters(Companion.canonicalize$okhttp$default(HttpUrl.Companion, str, 0, 0, HttpUrl.QUERY_COMPONENT_REENCODE_SET, true, false, true, false, null, 211, null));
            return this;
        }

        public final Builder removeAllQueryParameters(String str) {
            p4.h.j(str, "name");
            if (this.encodedQueryNamesAndValues == null) {
                return this;
            }
            removeAllCanonicalQueryParameters(Companion.canonicalize$okhttp$default(HttpUrl.Companion, str, 0, 0, HttpUrl.QUERY_COMPONENT_ENCODE_SET, false, false, true, false, null, 219, null));
            return this;
        }

        public final Builder removePathSegment(int i10) {
            this.encodedPathSegments.remove(i10);
            if (this.encodedPathSegments.isEmpty()) {
                this.encodedPathSegments.add("");
            }
            return this;
        }

        public final Builder scheme(String str) {
            p4.h.j(str, "scheme");
            if (o.Z(str, "http")) {
                this.scheme = "http";
            } else {
                if (!o.Z(str, "https")) {
                    throw new IllegalArgumentException(d.c("unexpected scheme: ", str));
                }
                this.scheme = "https";
            }
            return this;
        }

        public final void setEncodedFragment$okhttp(String str) {
            this.encodedFragment = str;
        }

        public final void setEncodedPassword$okhttp(String str) {
            p4.h.j(str, "<set-?>");
            this.encodedPassword = str;
        }

        public final Builder setEncodedPathSegment(int i10, String str) {
            p4.h.j(str, "encodedPathSegment");
            String strCanonicalize$okhttp$default = Companion.canonicalize$okhttp$default(HttpUrl.Companion, str, 0, 0, HttpUrl.PATH_SEGMENT_ENCODE_SET, true, false, false, false, null, 243, null);
            this.encodedPathSegments.set(i10, strCanonicalize$okhttp$default);
            if ((isDot(strCanonicalize$okhttp$default) || isDotDot(strCanonicalize$okhttp$default)) ? false : true) {
                return this;
            }
            throw new IllegalArgumentException(d.c("unexpected path segment: ", str).toString());
        }

        public final void setEncodedQueryNamesAndValues$okhttp(List<String> list) {
            this.encodedQueryNamesAndValues = list;
        }

        public final Builder setEncodedQueryParameter(String str, String str2) {
            p4.h.j(str, "encodedName");
            removeAllEncodedQueryParameters(str);
            addEncodedQueryParameter(str, str2);
            return this;
        }

        public final void setEncodedUsername$okhttp(String str) {
            p4.h.j(str, "<set-?>");
            this.encodedUsername = str;
        }

        public final void setHost$okhttp(String str) {
            this.host = str;
        }

        public final Builder setPathSegment(int i10, String str) {
            p4.h.j(str, "pathSegment");
            String strCanonicalize$okhttp$default = Companion.canonicalize$okhttp$default(HttpUrl.Companion, str, 0, 0, HttpUrl.PATH_SEGMENT_ENCODE_SET, false, false, false, false, null, 251, null);
            if (!((isDot(strCanonicalize$okhttp$default) || isDotDot(strCanonicalize$okhttp$default)) ? false : true)) {
                throw new IllegalArgumentException(d.c("unexpected path segment: ", str).toString());
            }
            this.encodedPathSegments.set(i10, strCanonicalize$okhttp$default);
            return this;
        }

        public final void setPort$okhttp(int i10) {
            this.port = i10;
        }

        public final Builder setQueryParameter(String str, String str2) {
            p4.h.j(str, "name");
            removeAllQueryParameters(str);
            addQueryParameter(str, str2);
            return this;
        }

        public final void setScheme$okhttp(String str) {
            this.scheme = str;
        }

        /* JADX WARN: Code duplicated, block: B:17:0x0035  */
        /* JADX WARN: Code duplicated, block: B:20:0x0043  */
        /* JADX WARN: Code duplicated, block: B:22:0x0046  */
        public String toString() {
            StringBuilder sb2 = new StringBuilder();
            String str = this.scheme;
            if (str != null) {
                sb2.append(str);
                sb2.append("://");
            } else {
                sb2.append("//");
            }
            if (this.encodedUsername.length() > 0) {
                sb2.append(this.encodedUsername);
                if (this.encodedPassword.length() > 0) {
                    sb2.append(':');
                    sb2.append(this.encodedPassword);
                }
                sb2.append('@');
            } else {
                if (this.encodedPassword.length() > 0) {
                    sb2.append(this.encodedUsername);
                    if (this.encodedPassword.length() > 0) {
                        sb2.append(':');
                        sb2.append(this.encodedPassword);
                    }
                    sb2.append('@');
                }
            }
            String str2 = this.host;
            if (str2 != null) {
                if (s.h0(str2, ':')) {
                    sb2.append('[');
                    sb2.append(this.host);
                    sb2.append(']');
                } else {
                    sb2.append(this.host);
                }
            }
            if (this.port != -1 || this.scheme != null) {
                int iEffectivePort = effectivePort();
                String str3 = this.scheme;
                if (str3 == null || iEffectivePort != HttpUrl.Companion.defaultPort(str3)) {
                    sb2.append(':');
                    sb2.append(iEffectivePort);
                }
            }
            Companion companion = HttpUrl.Companion;
            companion.toPathString$okhttp(this.encodedPathSegments, sb2);
            if (this.encodedQueryNamesAndValues != null) {
                sb2.append('?');
                List<String> list = this.encodedQueryNamesAndValues;
                p4.h.g(list);
                companion.toQueryString$okhttp(list, sb2);
            }
            if (this.encodedFragment != null) {
                sb2.append('#');
                sb2.append(this.encodedFragment);
            }
            String string = sb2.toString();
            p4.h.i(string, "StringBuilder().apply(builderAction).toString()");
            return string;
        }

        public final Builder username(String str) {
            p4.h.j(str, "username");
            this.encodedUsername = Companion.canonicalize$okhttp$default(HttpUrl.Companion, str, 0, 0, " \"':;<=>@[]^`{}|/\\?#", false, false, false, false, null, 251, null);
            return this;
        }

        private final Builder addPathSegments(String str, boolean z10) {
            int i10 = 0;
            do {
                int iDelimiterOffset = _UtilCommonKt.delimiterOffset(str, "/\\", i10, str.length());
                push(str, i10, iDelimiterOffset, iDelimiterOffset < str.length(), z10);
                i10 = iDelimiterOffset + 1;
            } while (i10 <= str.length());
            return this;
        }
    }

    /* JADX INFO: compiled from: HttpUrl.kt */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(h hVar) {
            this();
        }

        public static /* synthetic */ String canonicalize$okhttp$default(Companion companion, String str, int i10, int i11, String str2, boolean z10, boolean z11, boolean z12, boolean z13, Charset charset, int i12, Object obj) {
            return companion.canonicalize$okhttp(str, (i12 & 1) != 0 ? 0 : i10, (i12 & 2) != 0 ? str.length() : i11, str2, (i12 & 8) != 0 ? false : z10, (i12 & 16) != 0 ? false : z11, (i12 & 32) != 0 ? false : z12, (i12 & 64) != 0 ? false : z13, (i12 & 128) != 0 ? null : charset);
        }

        private final boolean isPercentEncoded(String str, int i10, int i11) {
            int i12 = i10 + 2;
            return i12 < i11 && str.charAt(i10) == '%' && _UtilCommonKt.parseHexDigit(str.charAt(i10 + 1)) != -1 && _UtilCommonKt.parseHexDigit(str.charAt(i12)) != -1;
        }

        public static /* synthetic */ String percentDecode$okhttp$default(Companion companion, String str, int i10, int i11, boolean z10, int i12, Object obj) {
            if ((i12 & 1) != 0) {
                i10 = 0;
            }
            if ((i12 & 2) != 0) {
                i11 = str.length();
            }
            if ((i12 & 4) != 0) {
                z10 = false;
            }
            return companion.percentDecode$okhttp(str, i10, i11, z10);
        }

        /* JADX WARN: Code duplicated, block: B:43:0x0067  */
        /* JADX WARN: Code duplicated, block: B:45:0x006c  */
        /* JADX WARN: Code duplicated, block: B:47:0x006f  */
        /* JADX WARN: Code duplicated, block: B:53:0x0088  */
        /* JADX WARN: Code duplicated, block: B:56:0x0091 A[LOOP:1: B:54:0x008b->B:56:0x0091, LOOP_END] */
        private final void writeCanonicalized(c cVar, String str, int i10, int i11, String str2, boolean z10, boolean z11, boolean z12, boolean z13, Charset charset) {
            c cVar2 = null;
            int iCharCount = i10;
            while (iCharCount < i11) {
                int iCodePointAt = str.codePointAt(iCharCount);
                if (!z10 || (iCodePointAt != 9 && iCodePointAt != 10 && iCodePointAt != 12 && iCodePointAt != 13)) {
                    if (iCodePointAt == 32 && str2 == HttpUrl.FORM_ENCODE_SET) {
                        cVar.F0("+");
                    } else if (iCodePointAt == 43 && z12) {
                        cVar.F0(z10 ? "+" : "%2B");
                    } else if (iCodePointAt < 32 || iCodePointAt == 127 || ((iCodePointAt >= 128 && !z13) || s.h0(str2, (char) iCodePointAt))) {
                        if (cVar2 == null) {
                            cVar2 = new c();
                        }
                        if (charset != null || p4.h.c(charset, yd.a.f19171b)) {
                            cVar2.H0(iCodePointAt);
                        } else {
                            cVar2.E0(str, iCharCount, Character.charCount(iCodePointAt) + iCharCount, charset);
                        }
                        while (!cVar2.z()) {
                            int i12 = cVar2.readByte() & 255;
                            cVar.y0(37);
                            cVar.y0(HttpUrl.HEX_DIGITS[(i12 >> 4) & 15]);
                            cVar.y0(HttpUrl.HEX_DIGITS[i12 & 15]);
                        }
                    } else {
                        if (iCodePointAt == 37) {
                            if (z10) {
                                if (z11) {
                                    if (!isPercentEncoded(str, iCharCount, i11)) {
                                    }
                                }
                            }
                            if (cVar2 == null) {
                                cVar2 = new c();
                            }
                            if (charset != null) {
                                cVar2.H0(iCodePointAt);
                            } else {
                                cVar2.H0(iCodePointAt);
                            }
                            while (!cVar2.z()) {
                                int i13 = cVar2.readByte() & 255;
                                cVar.y0(37);
                                cVar.y0(HttpUrl.HEX_DIGITS[(i13 >> 4) & 15]);
                                cVar.y0(HttpUrl.HEX_DIGITS[i13 & 15]);
                            }
                        }
                        cVar.H0(iCodePointAt);
                    }
                }
                iCharCount += Character.charCount(iCodePointAt);
            }
        }

        private final void writePercentDecoded(c cVar, String str, int i10, int i11, boolean z10) {
            int i12;
            while (i10 < i11) {
                int iCodePointAt = str.codePointAt(i10);
                if (iCodePointAt == 37 && (i12 = i10 + 2) < i11) {
                    int hexDigit = _UtilCommonKt.parseHexDigit(str.charAt(i10 + 1));
                    int hexDigit2 = _UtilCommonKt.parseHexDigit(str.charAt(i12));
                    if (hexDigit == -1 || hexDigit2 == -1) {
                        cVar.H0(iCodePointAt);
                        i10 += Character.charCount(iCodePointAt);
                    } else {
                        cVar.y0((hexDigit << 4) + hexDigit2);
                        i10 = Character.charCount(iCodePointAt) + i12;
                    }
                } else if (iCodePointAt == 43 && z10) {
                    cVar.y0(32);
                    i10++;
                } else {
                    cVar.H0(iCodePointAt);
                    i10 += Character.charCount(iCodePointAt);
                }
            }
        }

        /* JADX INFO: renamed from: -deprecated_get, reason: not valid java name */
        public final HttpUrl m96deprecated_get(String str) {
            p4.h.j(str, "url");
            return get(str);
        }

        /* JADX INFO: renamed from: -deprecated_parse, reason: not valid java name */
        public final HttpUrl m99deprecated_parse(String str) {
            p4.h.j(str, "url");
            return parse(str);
        }

        /* JADX WARN: Code duplicated, block: B:20:0x003b  */
        public final String canonicalize$okhttp(String str, int i10, int i11, String str2, boolean z10, boolean z11, boolean z12, boolean z13, Charset charset) {
            p4.h.j(str, "<this>");
            p4.h.j(str2, "encodeSet");
            int iCharCount = i10;
            while (true) {
                if (iCharCount >= i11) {
                    String strSubstring = str.substring(i10, i11);
                    p4.h.i(strSubstring, "this as java.lang.String…ing(startIndex, endIndex)");
                    return strSubstring;
                }
                int iCodePointAt = str.codePointAt(iCharCount);
                if (iCodePointAt < 32 || iCodePointAt == 127 || ((iCodePointAt >= 128 && !z13) || s.h0(str2, (char) iCodePointAt))) {
                    break;
                }
                if (iCodePointAt == 37) {
                    if (!z10) {
                        break;
                    }
                    if (z11) {
                        if (isPercentEncoded(str, iCharCount, i11)) {
                        }
                    }
                    if (iCodePointAt == 43) {
                    }
                    iCharCount += Character.charCount(iCodePointAt);
                } else if (iCodePointAt == 43 || !z12) {
                    iCharCount += Character.charCount(iCodePointAt);
                }
                c cVar = new c();
                cVar.G0(str, i10, iCharCount);
                writeCanonicalized(cVar, str, iCharCount, i11, str2, z10, z11, z12, z13, charset);
                return cVar.p0();
            }
            c cVar2 = new c();
            cVar2.G0(str, i10, iCharCount);
            writeCanonicalized(cVar2, str, iCharCount, i11, str2, z10, z11, z12, z13, charset);
            return cVar2.p0();
        }

        public final int defaultPort(String str) {
            p4.h.j(str, "scheme");
            if (p4.h.c(str, "http")) {
                return 80;
            }
            return p4.h.c(str, "https") ? 443 : -1;
        }

        public final HttpUrl get(String str) {
            p4.h.j(str, "<this>");
            return new Builder().parse$okhttp(null, str).build();
        }

        public final HttpUrl parse(String str) {
            p4.h.j(str, "<this>");
            try {
                return get(str);
            } catch (IllegalArgumentException unused) {
                return null;
            }
        }

        public final String percentDecode$okhttp(String str, int i10, int i11, boolean z10) {
            p4.h.j(str, "<this>");
            for (int i12 = i10; i12 < i11; i12++) {
                char cCharAt = str.charAt(i12);
                if (cCharAt == '%' || (cCharAt == '+' && z10)) {
                    c cVar = new c();
                    cVar.G0(str, i10, i12);
                    writePercentDecoded(cVar, str, i12, i11, z10);
                    return cVar.p0();
                }
            }
            String strSubstring = str.substring(i10, i11);
            p4.h.i(strSubstring, "this as java.lang.String…ing(startIndex, endIndex)");
            return strSubstring;
        }

        public final void toPathString$okhttp(List<String> list, StringBuilder sb2) {
            p4.h.j(list, "<this>");
            p4.h.j(sb2, "out");
            int size = list.size();
            for (int i10 = 0; i10 < size; i10++) {
                sb2.append('/');
                sb2.append(list.get(i10));
            }
        }

        public final List<String> toQueryNamesAndValues$okhttp(String str) {
            p4.h.j(str, "<this>");
            ArrayList arrayList = new ArrayList();
            int i10 = 0;
            while (i10 <= str.length()) {
                int iO0 = s.o0(str, '&', i10, false, 4);
                if (iO0 == -1) {
                    iO0 = str.length();
                }
                int iO1 = s.o0(str, '=', i10, false, 4);
                if (iO1 == -1 || iO1 > iO0) {
                    String strSubstring = str.substring(i10, iO0);
                    p4.h.i(strSubstring, "this as java.lang.String…ing(startIndex, endIndex)");
                    arrayList.add(strSubstring);
                    arrayList.add(null);
                } else {
                    String strSubstring2 = str.substring(i10, iO1);
                    p4.h.i(strSubstring2, "this as java.lang.String…ing(startIndex, endIndex)");
                    arrayList.add(strSubstring2);
                    String strSubstring3 = str.substring(iO1 + 1, iO0);
                    p4.h.i(strSubstring3, "this as java.lang.String…ing(startIndex, endIndex)");
                    arrayList.add(strSubstring3);
                }
                i10 = iO0 + 1;
            }
            return arrayList;
        }

        public final void toQueryString$okhttp(List<String> list, StringBuilder sb2) {
            p4.h.j(list, "<this>");
            p4.h.j(sb2, "out");
            vd.c cVarR = k.r(k.w(0, list.size()), 2);
            int i10 = cVarR.f17021h;
            int i11 = cVarR.f17022i;
            int i12 = cVarR.f17023j;
            if ((i12 <= 0 || i10 > i11) && (i12 >= 0 || i11 > i10)) {
                return;
            }
            while (true) {
                String str = list.get(i10);
                String str2 = list.get(i10 + 1);
                if (i10 > 0) {
                    sb2.append('&');
                }
                sb2.append(str);
                if (str2 != null) {
                    sb2.append('=');
                    sb2.append(str2);
                }
                if (i10 == i11) {
                    return;
                } else {
                    i10 += i12;
                }
            }
        }

        /* JADX INFO: renamed from: -deprecated_get, reason: not valid java name */
        public final HttpUrl m98deprecated_get(URL url) {
            p4.h.j(url, "url");
            return get(url);
        }

        public final HttpUrl get(URL url) {
            p4.h.j(url, "<this>");
            String string = url.toString();
            p4.h.i(string, "toString()");
            return parse(string);
        }

        /* JADX INFO: renamed from: -deprecated_get, reason: not valid java name */
        public final HttpUrl m97deprecated_get(URI uri) {
            p4.h.j(uri, "uri");
            return get(uri);
        }

        public final HttpUrl get(URI uri) {
            p4.h.j(uri, "<this>");
            String string = uri.toString();
            p4.h.i(string, "toString()");
            return parse(string);
        }
    }

    public HttpUrl(String str, String str2, String str3, String str4, int i10, List<String> list, List<String> list2, String str5, String str6) {
        p4.h.j(str, "scheme");
        p4.h.j(str2, "username");
        p4.h.j(str3, "password");
        p4.h.j(str4, "host");
        p4.h.j(list, "pathSegments");
        p4.h.j(str6, "url");
        this.scheme = str;
        this.username = str2;
        this.password = str3;
        this.host = str4;
        this.port = i10;
        this.pathSegments = list;
        this.queryNamesAndValues = list2;
        this.fragment = str5;
        this.url = str6;
        this.isHttps = p4.h.c(str, "https");
    }

    public static final int defaultPort(String str) {
        return Companion.defaultPort(str);
    }

    public static final HttpUrl get(String str) {
        return Companion.get(str);
    }

    public static final HttpUrl get(URI uri) {
        return Companion.get(uri);
    }

    public static final HttpUrl get(URL url) {
        return Companion.get(url);
    }

    public static final HttpUrl parse(String str) {
        return Companion.parse(str);
    }

    /* JADX INFO: renamed from: -deprecated_encodedFragment, reason: not valid java name */
    public final String m77deprecated_encodedFragment() {
        return encodedFragment();
    }

    /* JADX INFO: renamed from: -deprecated_encodedPassword, reason: not valid java name */
    public final String m78deprecated_encodedPassword() {
        return encodedPassword();
    }

    /* JADX INFO: renamed from: -deprecated_encodedPath, reason: not valid java name */
    public final String m79deprecated_encodedPath() {
        return encodedPath();
    }

    /* JADX INFO: renamed from: -deprecated_encodedPathSegments, reason: not valid java name */
    public final List<String> m80deprecated_encodedPathSegments() {
        return encodedPathSegments();
    }

    /* JADX INFO: renamed from: -deprecated_encodedQuery, reason: not valid java name */
    public final String m81deprecated_encodedQuery() {
        return encodedQuery();
    }

    /* JADX INFO: renamed from: -deprecated_encodedUsername, reason: not valid java name */
    public final String m82deprecated_encodedUsername() {
        return encodedUsername();
    }

    /* JADX INFO: renamed from: -deprecated_fragment, reason: not valid java name */
    public final String m83deprecated_fragment() {
        return this.fragment;
    }

    /* JADX INFO: renamed from: -deprecated_host, reason: not valid java name */
    public final String m84deprecated_host() {
        return this.host;
    }

    /* JADX INFO: renamed from: -deprecated_password, reason: not valid java name */
    public final String m85deprecated_password() {
        return this.password;
    }

    /* JADX INFO: renamed from: -deprecated_pathSegments, reason: not valid java name */
    public final List<String> m86deprecated_pathSegments() {
        return this.pathSegments;
    }

    /* JADX INFO: renamed from: -deprecated_pathSize, reason: not valid java name */
    public final int m87deprecated_pathSize() {
        return pathSize();
    }

    /* JADX INFO: renamed from: -deprecated_port, reason: not valid java name */
    public final int m88deprecated_port() {
        return this.port;
    }

    /* JADX INFO: renamed from: -deprecated_query, reason: not valid java name */
    public final String m89deprecated_query() {
        return query();
    }

    /* JADX INFO: renamed from: -deprecated_queryParameterNames, reason: not valid java name */
    public final Set<String> m90deprecated_queryParameterNames() {
        return queryParameterNames();
    }

    /* JADX INFO: renamed from: -deprecated_querySize, reason: not valid java name */
    public final int m91deprecated_querySize() {
        return querySize();
    }

    /* JADX INFO: renamed from: -deprecated_scheme, reason: not valid java name */
    public final String m92deprecated_scheme() {
        return this.scheme;
    }

    /* JADX INFO: renamed from: -deprecated_uri, reason: not valid java name */
    public final URI m93deprecated_uri() {
        return uri();
    }

    /* JADX INFO: renamed from: -deprecated_url, reason: not valid java name */
    public final URL m94deprecated_url() {
        return url();
    }

    /* JADX INFO: renamed from: -deprecated_username, reason: not valid java name */
    public final String m95deprecated_username() {
        return this.username;
    }

    public final String encodedFragment() {
        if (this.fragment == null) {
            return null;
        }
        String strSubstring = this.url.substring(s.o0(this.url, '#', 0, false, 6) + 1);
        p4.h.i(strSubstring, "this as java.lang.String).substring(startIndex)");
        return strSubstring;
    }

    public final String encodedPassword() {
        if (this.password.length() == 0) {
            return "";
        }
        String strSubstring = this.url.substring(s.o0(this.url, ':', this.scheme.length() + 3, false, 4) + 1, s.o0(this.url, '@', 0, false, 6));
        p4.h.i(strSubstring, "this as java.lang.String…ing(startIndex, endIndex)");
        return strSubstring;
    }

    public final String encodedPath() {
        int iO0 = s.o0(this.url, '/', this.scheme.length() + 3, false, 4);
        String str = this.url;
        String strSubstring = this.url.substring(iO0, _UtilCommonKt.delimiterOffset(str, "?#", iO0, str.length()));
        p4.h.i(strSubstring, "this as java.lang.String…ing(startIndex, endIndex)");
        return strSubstring;
    }

    public final List<String> encodedPathSegments() {
        int iO0 = s.o0(this.url, '/', this.scheme.length() + 3, false, 4);
        String str = this.url;
        int iDelimiterOffset = _UtilCommonKt.delimiterOffset(str, "?#", iO0, str.length());
        ArrayList arrayList = new ArrayList();
        while (iO0 < iDelimiterOffset) {
            int i10 = iO0 + 1;
            int iDelimiterOffset2 = _UtilCommonKt.delimiterOffset(this.url, '/', i10, iDelimiterOffset);
            String strSubstring = this.url.substring(i10, iDelimiterOffset2);
            p4.h.i(strSubstring, "this as java.lang.String…ing(startIndex, endIndex)");
            arrayList.add(strSubstring);
            iO0 = iDelimiterOffset2;
        }
        return arrayList;
    }

    public final String encodedQuery() {
        if (this.queryNamesAndValues == null) {
            return null;
        }
        int iO0 = s.o0(this.url, '?', 0, false, 6) + 1;
        String str = this.url;
        String strSubstring = this.url.substring(iO0, _UtilCommonKt.delimiterOffset(str, '#', iO0, str.length()));
        p4.h.i(strSubstring, "this as java.lang.String…ing(startIndex, endIndex)");
        return strSubstring;
    }

    public final String encodedUsername() {
        if (this.username.length() == 0) {
            return "";
        }
        int length = this.scheme.length() + 3;
        String str = this.url;
        String strSubstring = this.url.substring(length, _UtilCommonKt.delimiterOffset(str, ":@", length, str.length()));
        p4.h.i(strSubstring, "this as java.lang.String…ing(startIndex, endIndex)");
        return strSubstring;
    }

    public boolean equals(Object obj) {
        return (obj instanceof HttpUrl) && p4.h.c(((HttpUrl) obj).url, this.url);
    }

    public final String fragment() {
        return this.fragment;
    }

    public int hashCode() {
        return this.url.hashCode();
    }

    public final String host() {
        return this.host;
    }

    public final boolean isHttps() {
        return this.isHttps;
    }

    public final Builder newBuilder() {
        Builder builder = new Builder();
        builder.setScheme$okhttp(this.scheme);
        builder.setEncodedUsername$okhttp(encodedUsername());
        builder.setEncodedPassword$okhttp(encodedPassword());
        builder.setHost$okhttp(this.host);
        builder.setPort$okhttp(this.port != Companion.defaultPort(this.scheme) ? this.port : -1);
        builder.getEncodedPathSegments$okhttp().clear();
        builder.getEncodedPathSegments$okhttp().addAll(encodedPathSegments());
        builder.encodedQuery(encodedQuery());
        builder.setEncodedFragment$okhttp(encodedFragment());
        return builder;
    }

    public final String password() {
        return this.password;
    }

    public final List<String> pathSegments() {
        return this.pathSegments;
    }

    public final int pathSize() {
        return this.pathSegments.size();
    }

    public final int port() {
        return this.port;
    }

    public final String query() {
        if (this.queryNamesAndValues == null) {
            return null;
        }
        StringBuilder sb2 = new StringBuilder();
        Companion.toQueryString$okhttp(this.queryNamesAndValues, sb2);
        return sb2.toString();
    }

    public final String queryParameter(String str) {
        p4.h.j(str, "name");
        List<String> list = this.queryNamesAndValues;
        if (list == null) {
            return null;
        }
        vd.c cVarR = k.r(k.w(0, list.size()), 2);
        int i10 = cVarR.f17021h;
        int i11 = cVarR.f17022i;
        int i12 = cVarR.f17023j;
        if ((i12 > 0 && i10 <= i11) || (i12 < 0 && i11 <= i10)) {
            while (!p4.h.c(str, this.queryNamesAndValues.get(i10))) {
                if (i10 != i11) {
                    i10 += i12;
                }
            }
            return this.queryNamesAndValues.get(i10 + 1);
        }
        return null;
    }

    public final String queryParameterName(int i10) {
        List<String> list = this.queryNamesAndValues;
        if (list == null) {
            throw new IndexOutOfBoundsException();
        }
        String str = list.get(i10 * 2);
        p4.h.g(str);
        return str;
    }

    public final Set<String> queryParameterNames() {
        if (this.queryNamesAndValues == null) {
            return r.f8072h;
        }
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        vd.c cVarR = k.r(k.w(0, this.queryNamesAndValues.size()), 2);
        int i10 = cVarR.f17021h;
        int i11 = cVarR.f17022i;
        int i12 = cVarR.f17023j;
        if ((i12 > 0 && i10 <= i11) || (i12 < 0 && i11 <= i10)) {
            while (true) {
                String str = this.queryNamesAndValues.get(i10);
                p4.h.g(str);
                linkedHashSet.add(str);
                if (i10 == i11) {
                    break;
                }
                i10 += i12;
            }
        }
        Set<String> setUnmodifiableSet = Collections.unmodifiableSet(linkedHashSet);
        p4.h.i(setUnmodifiableSet, "unmodifiableSet(result)");
        return setUnmodifiableSet;
    }

    public final String queryParameterValue(int i10) {
        List<String> list = this.queryNamesAndValues;
        if (list != null) {
            return list.get((i10 * 2) + 1);
        }
        throw new IndexOutOfBoundsException();
    }

    public final List<String> queryParameterValues(String str) {
        p4.h.j(str, "name");
        if (this.queryNamesAndValues == null) {
            return p.f8070h;
        }
        ArrayList arrayList = new ArrayList();
        vd.c cVarR = k.r(k.w(0, this.queryNamesAndValues.size()), 2);
        int i10 = cVarR.f17021h;
        int i11 = cVarR.f17022i;
        int i12 = cVarR.f17023j;
        if ((i12 > 0 && i10 <= i11) || (i12 < 0 && i11 <= i10)) {
            while (true) {
                if (p4.h.c(str, this.queryNamesAndValues.get(i10))) {
                    arrayList.add(this.queryNamesAndValues.get(i10 + 1));
                }
                if (i10 == i11) {
                    break;
                }
                i10 += i12;
            }
        }
        List<String> listUnmodifiableList = Collections.unmodifiableList(arrayList);
        p4.h.i(listUnmodifiableList, "unmodifiableList(result)");
        return listUnmodifiableList;
    }

    public final int querySize() {
        List<String> list = this.queryNamesAndValues;
        if (list != null) {
            return list.size() / 2;
        }
        return 0;
    }

    public final String redact() {
        Builder builderNewBuilder = newBuilder("/...");
        p4.h.g(builderNewBuilder);
        return builderNewBuilder.username("").password("").build().toString();
    }

    public final HttpUrl resolve(String str) {
        p4.h.j(str, "link");
        Builder builderNewBuilder = newBuilder(str);
        if (builderNewBuilder != null) {
            return builderNewBuilder.build();
        }
        return null;
    }

    public final String scheme() {
        return this.scheme;
    }

    public String toString() {
        return this.url;
    }

    public final String topPrivateDomain() {
        if (_HostnamesCommonKt.canParseAsIpAddress(this.host)) {
            return null;
        }
        return PublicSuffixDatabase.Companion.get().getEffectiveTldPlusOne(this.host);
    }

    public final URI uri() {
        String string = newBuilder().reencodeForUri$okhttp().toString();
        try {
            return new URI(string);
        } catch (URISyntaxException e10) {
            try {
                Pattern patternCompile = Pattern.compile("[\\u0000-\\u001F\\u007F-\\u009F\\p{javaWhitespace}]");
                p4.h.i(patternCompile, "compile(pattern)");
                p4.h.j(string, "input");
                String strReplaceAll = patternCompile.matcher(string).replaceAll("");
                p4.h.i(strReplaceAll, "nativePattern.matcher(in…).replaceAll(replacement)");
                URI uriCreate = URI.create(strReplaceAll);
                p4.h.i(uriCreate, "{\n      // Unlikely edge…Unexpected!\n      }\n    }");
                return uriCreate;
            } catch (Exception unused) {
                throw new RuntimeException(e10);
            }
        }
    }

    public final URL url() {
        try {
            return new URL(this.url);
        } catch (MalformedURLException e10) {
            throw new RuntimeException(e10);
        }
    }

    public final String username() {
        return this.username;
    }

    public final Builder newBuilder(String str) {
        p4.h.j(str, "link");
        try {
            return new Builder().parse$okhttp(this, str);
        } catch (IllegalArgumentException unused) {
            return null;
        }
    }
}
