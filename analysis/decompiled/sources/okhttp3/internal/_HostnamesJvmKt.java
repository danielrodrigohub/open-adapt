package okhttp3.internal;

import java.net.IDN;
import java.net.InetAddress;
import java.util.Locale;
import p4.h;
import yd.o;
import yd.s;

/* JADX INFO: compiled from: -HostnamesJvm.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class _HostnamesJvmKt {
    public static final String toCanonicalHost(String str) {
        h.j(str, "<this>");
        if (!s.i0(str, ":")) {
            try {
                String ascii = IDN.toASCII(str);
                h.i(ascii, "toASCII(host)");
                Locale locale = Locale.US;
                h.i(locale, "US");
                String strLowercase = _UtilJvmKt.lowercase(ascii, locale);
                if ((strLowercase.length() == 0) || _HostnamesCommonKt.containsInvalidHostnameAsciiCodes(strLowercase) || _HostnamesCommonKt.containsInvalidLabelLengths(strLowercase)) {
                    return null;
                }
                return strLowercase;
            } catch (IllegalArgumentException unused) {
                return null;
            }
        }
        byte[] bArrDecodeIpv6 = (o.g0(str, "[", false) && o.Y(str, "]", false)) ? _HostnamesCommonKt.decodeIpv6(str, 1, str.length() - 1) : _HostnamesCommonKt.decodeIpv6(str, 0, str.length());
        if (bArrDecodeIpv6 == null) {
            return null;
        }
        InetAddress byAddress = InetAddress.getByAddress(bArrDecodeIpv6);
        byte[] address = byAddress.getAddress();
        if (address.length == 16) {
            return _HostnamesCommonKt.inet6AddressToAscii(address);
        }
        if (address.length == 4) {
            return byAddress.getHostAddress();
        }
        throw new AssertionError("Invalid IPv6 address: '" + str + '\'');
    }
}
