package okhttp3.internal;

import androidx.recyclerview.widget.d;
import d3.e;
import g7.b;
import gd.g;
import gd.n;
import gd.p;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import okhttp3.Headers;
import p4.h;
import yd.o;
import yd.s;

/* JADX INFO: compiled from: -HeadersCommon.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class _HeadersCommonKt {
    private static final String charCode(char c10) {
        e.c(16);
        String string = Integer.toString(c10, 16);
        h.i(string, "toString(this, checkRadix(radix))");
        if (string.length() >= 2) {
            return string;
        }
        return '0' + string;
    }

    public static final Headers.Builder commonAdd(Headers.Builder builder, String str, String str2) {
        h.j(builder, "<this>");
        h.j(str, "name");
        h.j(str2, "value");
        headersCheckName(str);
        headersCheckValue(str2, str);
        commonAddLenient(builder, str, str2);
        return builder;
    }

    public static final Headers.Builder commonAddAll(Headers.Builder builder, Headers headers) {
        h.j(builder, "<this>");
        h.j(headers, "headers");
        int size = headers.size();
        for (int i10 = 0; i10 < size; i10++) {
            commonAddLenient(builder, headers.name(i10), headers.value(i10));
        }
        return builder;
    }

    public static final Headers.Builder commonAddLenient(Headers.Builder builder, String str, String str2) {
        h.j(builder, "<this>");
        h.j(str, "name");
        h.j(str2, "value");
        builder.getNamesAndValues$okhttp().add(str);
        builder.getNamesAndValues$okhttp().add(s.G0(str2).toString());
        return builder;
    }

    public static final Headers commonBuild(Headers.Builder builder) {
        h.j(builder, "<this>");
        Object[] array = builder.getNamesAndValues$okhttp().toArray(new String[0]);
        Objects.requireNonNull(array, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>");
        return new Headers((String[]) array);
    }

    public static final boolean commonEquals(Headers headers, Object obj) {
        h.j(headers, "<this>");
        return (obj instanceof Headers) && Arrays.equals(headers.getNamesAndValues$okhttp(), ((Headers) obj).getNamesAndValues$okhttp());
    }

    public static final String commonGet(Headers.Builder builder, String str) {
        h.j(builder, "<this>");
        h.j(str, "name");
        int size = builder.getNamesAndValues$okhttp().size() - 2;
        int iG = b.g(size, 0, -2);
        if (iG > size) {
            return null;
        }
        while (!o.Z(str, builder.getNamesAndValues$okhttp().get(size))) {
            if (size == iG) {
                return null;
            }
            size -= 2;
        }
        return builder.getNamesAndValues$okhttp().get(size + 1);
    }

    public static final int commonHashCode(Headers headers) {
        h.j(headers, "<this>");
        return Arrays.hashCode(headers.getNamesAndValues$okhttp());
    }

    public static final String commonHeadersGet(String[] strArr, String str) {
        h.j(strArr, "namesAndValues");
        h.j(str, "name");
        int length = strArr.length - 2;
        int iG = b.g(length, 0, -2);
        if (iG > length) {
            return null;
        }
        while (!o.Z(str, strArr[length])) {
            if (length == iG) {
                return null;
            }
            length -= 2;
        }
        return strArr[length + 1];
    }

    public static final Headers commonHeadersOf(String... strArr) {
        h.j(strArr, "inputNamesAndValues");
        int i10 = 0;
        if (!(strArr.length % 2 == 0)) {
            throw new IllegalArgumentException("Expected alternating header names and values".toString());
        }
        String[] strArr2 = (String[]) Arrays.copyOf(strArr, strArr.length);
        int length = strArr2.length;
        for (int i11 = 0; i11 < length; i11++) {
            if (!(strArr2[i11] != null)) {
                throw new IllegalArgumentException("Headers cannot be null".toString());
            }
            strArr2[i11] = s.G0(strArr[i11]).toString();
        }
        int iG = b.g(0, strArr2.length - 1, 2);
        if (iG >= 0) {
            while (true) {
                String str = strArr2[i10];
                String str2 = strArr2[i10 + 1];
                headersCheckName(str);
                headersCheckValue(str2, str);
                if (i10 == iG) {
                    break;
                }
                i10 += 2;
            }
        }
        return new Headers(strArr2);
    }

    public static final Iterator<fd.e<String, String>> commonIterator(Headers headers) {
        h.j(headers, "<this>");
        int size = headers.size();
        fd.e[] eVarArr = new fd.e[size];
        for (int i10 = 0; i10 < size; i10++) {
            eVarArr[i10] = new fd.e(headers.name(i10), headers.value(i10));
        }
        return h.v(eVarArr);
    }

    public static final String commonName(Headers headers, int i10) {
        h.j(headers, "<this>");
        String[] namesAndValues$okhttp = headers.getNamesAndValues$okhttp();
        int i11 = i10 * 2;
        h.j(namesAndValues$okhttp, "<this>");
        String str = (i11 < 0 || i11 > namesAndValues$okhttp.length + (-1)) ? null : namesAndValues$okhttp[i11];
        if (str != null) {
            return str;
        }
        throw new IndexOutOfBoundsException("name[" + i10 + ']');
    }

    public static final Headers.Builder commonNewBuilder(Headers headers) {
        h.j(headers, "<this>");
        Headers.Builder builder = new Headers.Builder();
        List<String> namesAndValues$okhttp = builder.getNamesAndValues$okhttp();
        String[] namesAndValues$okhttp2 = headers.getNamesAndValues$okhttp();
        h.j(namesAndValues$okhttp, "<this>");
        h.j(namesAndValues$okhttp2, "elements");
        namesAndValues$okhttp.addAll(g.i(namesAndValues$okhttp2));
        return builder;
    }

    public static final Headers.Builder commonRemoveAll(Headers.Builder builder, String str) {
        h.j(builder, "<this>");
        h.j(str, "name");
        int i10 = 0;
        while (i10 < builder.getNamesAndValues$okhttp().size()) {
            if (o.Z(str, builder.getNamesAndValues$okhttp().get(i10))) {
                builder.getNamesAndValues$okhttp().remove(i10);
                builder.getNamesAndValues$okhttp().remove(i10);
                i10 -= 2;
            }
            i10 += 2;
        }
        return builder;
    }

    public static final Headers.Builder commonSet(Headers.Builder builder, String str, String str2) {
        h.j(builder, "<this>");
        h.j(str, "name");
        h.j(str2, "value");
        headersCheckName(str);
        headersCheckValue(str2, str);
        builder.removeAll(str);
        commonAddLenient(builder, str, str2);
        return builder;
    }

    public static final Headers commonToHeaders(Map<String, String> map) {
        h.j(map, "<this>");
        String[] strArr = new String[map.size() * 2];
        int i10 = 0;
        for (Map.Entry<String, String> entry : map.entrySet()) {
            String key = entry.getKey();
            String value = entry.getValue();
            String string = s.G0(key).toString();
            String string2 = s.G0(value).toString();
            headersCheckName(string);
            headersCheckValue(string2, string);
            strArr[i10] = string;
            strArr[i10 + 1] = string2;
            i10 += 2;
        }
        return new Headers(strArr);
    }

    public static final String commonToString(Headers headers) {
        h.j(headers, "<this>");
        StringBuilder sb2 = new StringBuilder();
        int size = headers.size();
        for (int i10 = 0; i10 < size; i10++) {
            String strName = headers.name(i10);
            String strValue = headers.value(i10);
            sb2.append(strName);
            sb2.append(": ");
            if (_UtilCommonKt.isSensitiveHeader(strName)) {
                strValue = "██";
            }
            sb2.append(strValue);
            sb2.append("\n");
        }
        String string = sb2.toString();
        h.i(string, "StringBuilder().apply(builderAction).toString()");
        return string;
    }

    public static final String commonValue(Headers headers, int i10) {
        h.j(headers, "<this>");
        String[] namesAndValues$okhttp = headers.getNamesAndValues$okhttp();
        int i11 = (i10 * 2) + 1;
        h.j(namesAndValues$okhttp, "<this>");
        String str = (i11 < 0 || i11 > namesAndValues$okhttp.length + (-1)) ? null : namesAndValues$okhttp[i11];
        if (str != null) {
            return str;
        }
        throw new IndexOutOfBoundsException("value[" + i10 + ']');
    }

    public static final List<String> commonValues(Headers headers, String str) {
        h.j(headers, "<this>");
        h.j(str, "name");
        int size = headers.size();
        ArrayList arrayList = null;
        for (int i10 = 0; i10 < size; i10++) {
            if (o.Z(str, headers.name(i10))) {
                if (arrayList == null) {
                    arrayList = new ArrayList(2);
                }
                arrayList.add(headers.value(i10));
            }
        }
        List<String> listL0 = arrayList != null ? n.l0(arrayList) : null;
        return listL0 == null ? p.f8070h : listL0;
    }

    public static final void headersCheckName(String str) {
        h.j(str, "name");
        if (!(str.length() > 0)) {
            throw new IllegalArgumentException("name is empty".toString());
        }
        int length = str.length();
        for (int i10 = 0; i10 < length; i10++) {
            char cCharAt = str.charAt(i10);
            if (!('!' <= cCharAt && cCharAt < 127)) {
                StringBuilder sbC = a0.b.c("Unexpected char 0x");
                sbC.append(charCode(cCharAt));
                sbC.append(" at ");
                sbC.append(i10);
                sbC.append(" in header name: ");
                sbC.append(str);
                throw new IllegalArgumentException(sbC.toString().toString());
            }
        }
    }

    public static final void headersCheckValue(String str, String str2) {
        h.j(str, "value");
        h.j(str2, "name");
        int length = str.length();
        for (int i10 = 0; i10 < length; i10++) {
            char cCharAt = str.charAt(i10);
            boolean z10 = true;
            if (cCharAt != '\t') {
                if (!(' ' <= cCharAt && cCharAt < 127)) {
                    z10 = false;
                }
            }
            if (!z10) {
                StringBuilder sbC = a0.b.c("Unexpected char 0x");
                sbC.append(charCode(cCharAt));
                sbC.append(" at ");
                sbC.append(i10);
                sbC.append(" in ");
                sbC.append(str2);
                sbC.append(" value");
                sbC.append(_UtilCommonKt.isSensitiveHeader(str2) ? "" : d.c(": ", str));
                throw new IllegalArgumentException(sbC.toString().toString());
            }
        }
    }
}
