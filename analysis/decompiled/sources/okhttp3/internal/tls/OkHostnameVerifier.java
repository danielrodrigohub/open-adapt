package okhttp3.internal.tls;

import androidx.appcompat.widget.y0;
import d1.c;
import gd.n;
import gd.p;
import java.security.cert.Certificate;
import java.security.cert.CertificateParsingException;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.SSLException;
import javax.net.ssl.SSLSession;
import okhttp3.internal._HostnamesCommonKt;
import okhttp3.internal._HostnamesJvmKt;
import okhttp3.internal._UtilJvmKt;
import p4.h;
import yd.o;
import yd.s;

/* JADX INFO: compiled from: OkHostnameVerifier.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class OkHostnameVerifier implements HostnameVerifier {
    private static final int ALT_DNS_NAME = 2;
    private static final int ALT_IPA_NAME = 7;
    public static final OkHostnameVerifier INSTANCE = new OkHostnameVerifier();

    private OkHostnameVerifier() {
    }

    private final String asciiToLowercase(String str) {
        if (!isAscii(str)) {
            return str;
        }
        Locale locale = Locale.US;
        h.i(locale, "US");
        return _UtilJvmKt.lowercase(str, locale);
    }

    private final List<String> getSubjectAltNames(X509Certificate x509Certificate, int i10) {
        Object obj;
        try {
            Collection<List<?>> subjectAlternativeNames = x509Certificate.getSubjectAlternativeNames();
            if (subjectAlternativeNames == null) {
                return p.f8070h;
            }
            ArrayList arrayList = new ArrayList();
            for (List<?> list : subjectAlternativeNames) {
                if (list != null && list.size() >= 2 && h.c(list.get(0), Integer.valueOf(i10)) && (obj = list.get(1)) != null) {
                    arrayList.add((String) obj);
                }
            }
            return arrayList;
        } catch (CertificateParsingException unused) {
            return p.f8070h;
        }
    }

    private final boolean isAscii(String str) {
        int i10;
        int length = str.length();
        int length2 = str.length();
        if (!(length2 >= 0)) {
            throw new IllegalArgumentException(c.a("endIndex < beginIndex: ", length2, " < ", 0).toString());
        }
        if (!(length2 <= str.length())) {
            StringBuilder sbC = y0.c("endIndex > string.length: ", length2, " > ");
            sbC.append(str.length());
            throw new IllegalArgumentException(sbC.toString().toString());
        }
        long j10 = 0;
        int i11 = 0;
        while (i11 < length2) {
            char cCharAt = str.charAt(i11);
            if (cCharAt < 128) {
                j10++;
            } else {
                if (cCharAt < 2048) {
                    i10 = 2;
                } else if (cCharAt < 55296 || cCharAt > 57343) {
                    i10 = 3;
                } else {
                    int i12 = i11 + 1;
                    char cCharAt2 = i12 < length2 ? str.charAt(i12) : (char) 0;
                    if (cCharAt > 56319 || cCharAt2 < 56320 || cCharAt2 > 57343) {
                        j10++;
                        i11 = i12;
                    } else {
                        j10 += (long) 4;
                        i11 += 2;
                    }
                }
                j10 += (long) i10;
            }
            i11++;
        }
        return length == ((int) j10);
    }

    private final boolean verifyHostname(String str, X509Certificate x509Certificate) {
        String strAsciiToLowercase = asciiToLowercase(str);
        List<String> subjectAltNames = getSubjectAltNames(x509Certificate, 2);
        if ((subjectAltNames instanceof Collection) && subjectAltNames.isEmpty()) {
            return false;
        }
        Iterator<T> it = subjectAltNames.iterator();
        while (it.hasNext()) {
            if (INSTANCE.verifyHostname(strAsciiToLowercase, (String) it.next())) {
                return true;
            }
        }
        return false;
    }

    private final boolean verifyIpAddress(String str, X509Certificate x509Certificate) {
        String canonicalHost = _HostnamesJvmKt.toCanonicalHost(str);
        List<String> subjectAltNames = getSubjectAltNames(x509Certificate, 7);
        if ((subjectAltNames instanceof Collection) && subjectAltNames.isEmpty()) {
            return false;
        }
        Iterator<T> it = subjectAltNames.iterator();
        while (it.hasNext()) {
            if (h.c(canonicalHost, _HostnamesJvmKt.toCanonicalHost((String) it.next()))) {
                return true;
            }
        }
        return false;
    }

    public final List<String> allSubjectAltNames(X509Certificate x509Certificate) {
        h.j(x509Certificate, "certificate");
        return n.g0(getSubjectAltNames(x509Certificate, 7), getSubjectAltNames(x509Certificate, 2));
    }

    @Override // javax.net.ssl.HostnameVerifier
    public boolean verify(String str, SSLSession sSLSession) {
        h.j(str, "host");
        h.j(sSLSession, "session");
        if (!isAscii(str)) {
            return false;
        }
        try {
            Certificate certificate = sSLSession.getPeerCertificates()[0];
            if (certificate != null) {
                return verify(str, (X509Certificate) certificate);
            }
            throw new NullPointerException("null cannot be cast to non-null type java.security.cert.X509Certificate");
        } catch (SSLException unused) {
            return false;
        }
    }

    public final boolean verify(String str, X509Certificate x509Certificate) {
        h.j(str, "host");
        h.j(x509Certificate, "certificate");
        return _HostnamesCommonKt.canParseAsIpAddress(str) ? verifyIpAddress(str, x509Certificate) : verifyHostname(str, x509Certificate);
    }

    private final boolean verifyHostname(String str, String str2) {
        if (!(str == null || str.length() == 0) && !o.g0(str, ".", false) && !o.Y(str, "..", false)) {
            if (!(str2 == null || str2.length() == 0) && !o.g0(str2, ".", false) && !o.Y(str2, "..", false)) {
                if (!o.Y(str, ".", false)) {
                    str = str + '.';
                }
                if (!o.Y(str2, ".", false)) {
                    str2 = str2 + '.';
                }
                String strAsciiToLowercase = asciiToLowercase(str2);
                if (!s.i0(strAsciiToLowercase, "*")) {
                    return h.c(str, strAsciiToLowercase);
                }
                if (!o.g0(strAsciiToLowercase, "*.", false) || s.o0(strAsciiToLowercase, '*', 1, false, 4) != -1 || str.length() < strAsciiToLowercase.length() || h.c("*.", strAsciiToLowercase)) {
                    return false;
                }
                String strSubstring = strAsciiToLowercase.substring(1);
                h.i(strSubstring, "this as java.lang.String).substring(startIndex)");
                if (!o.Y(str, strSubstring, false)) {
                    return false;
                }
                int length = str.length() - strSubstring.length();
                return length <= 0 || s.r0(str, '.', length + (-1), 4) == -1;
            }
        }
        return false;
    }
}
