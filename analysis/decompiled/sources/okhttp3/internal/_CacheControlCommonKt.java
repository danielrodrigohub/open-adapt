package okhttp3.internal;

import androidx.appcompat.widget.e0;
import c3.d;
import okhttp3.CacheControl;
import okhttp3.Headers;
import p4.h;
import yd.o;
import yd.s;
import zd.a;
import zd.c;

/* JADX INFO: compiled from: -CacheControlCommon.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class _CacheControlCommonKt {
    public static final CacheControl commonBuild(CacheControl.Builder builder) {
        h.j(builder, "<this>");
        return new CacheControl(builder.getNoCache$okhttp(), builder.getNoStore$okhttp(), builder.getMaxAgeSeconds$okhttp(), -1, false, false, false, builder.getMaxStaleSeconds$okhttp(), builder.getMinFreshSeconds$okhttp(), builder.getOnlyIfCached$okhttp(), builder.getNoTransform$okhttp(), builder.getImmutable$okhttp(), null);
    }

    public static final int commonClampToInt(long j10) {
        if (j10 > 2147483647L) {
            return Integer.MAX_VALUE;
        }
        return (int) j10;
    }

    public static final CacheControl commonForceCache(CacheControl.Companion companion) {
        h.j(companion, "<this>");
        return new CacheControl.Builder().onlyIfCached().maxStale(Integer.MAX_VALUE, c.SECONDS).build();
    }

    public static final CacheControl commonForceNetwork(CacheControl.Companion companion) {
        h.j(companion, "<this>");
        return new CacheControl.Builder().noCache().build();
    }

    public static final CacheControl.Builder commonImmutable(CacheControl.Builder builder) {
        h.j(builder, "<this>");
        builder.setImmutable$okhttp(true);
        return builder;
    }

    public static final CacheControl.Builder commonMaxAge(CacheControl.Builder builder, int i10, c cVar) {
        h.j(builder, "<this>");
        h.j(cVar, "timeUnit");
        if (!(i10 >= 0)) {
            throw new IllegalArgumentException(e0.d("maxAge < 0: ", i10).toString());
        }
        builder.setMaxAgeSeconds$okhttp(commonClampToInt(a.i(d.q(i10, cVar))));
        return builder;
    }

    public static final CacheControl.Builder commonMaxStale(CacheControl.Builder builder, int i10, c cVar) {
        h.j(builder, "<this>");
        h.j(cVar, "timeUnit");
        if (!(i10 >= 0)) {
            throw new IllegalArgumentException(e0.d("maxStale < 0: ", i10).toString());
        }
        builder.setMaxStaleSeconds$okhttp(commonClampToInt(a.i(d.q(i10, cVar))));
        return builder;
    }

    public static final CacheControl.Builder commonMinFresh(CacheControl.Builder builder, int i10, c cVar) {
        h.j(builder, "<this>");
        h.j(cVar, "timeUnit");
        if (!(i10 >= 0)) {
            throw new IllegalArgumentException(e0.d("minFresh < 0: ", i10).toString());
        }
        builder.setMinFreshSeconds$okhttp(commonClampToInt(a.i(d.q(i10, cVar))));
        return builder;
    }

    public static final CacheControl.Builder commonNoCache(CacheControl.Builder builder) {
        h.j(builder, "<this>");
        builder.setNoCache$okhttp(true);
        return builder;
    }

    public static final CacheControl.Builder commonNoStore(CacheControl.Builder builder) {
        h.j(builder, "<this>");
        builder.setNoStore$okhttp(true);
        return builder;
    }

    public static final CacheControl.Builder commonNoTransform(CacheControl.Builder builder) {
        h.j(builder, "<this>");
        builder.setNoTransform$okhttp(true);
        return builder;
    }

    public static final CacheControl.Builder commonOnlyIfCached(CacheControl.Builder builder) {
        h.j(builder, "<this>");
        builder.setOnlyIfCached$okhttp(true);
        return builder;
    }

    /* JADX WARN: Code duplicated, block: B:15:0x004e  */
    /* JADX WARN: Code duplicated, block: B:28:0x00c1  */
    /* JADX WARN: Code duplicated, block: B:31:0x00d2  */
    /* JADX WARN: Code duplicated, block: B:33:0x00d7  */
    /* JADX WARN: Code duplicated, block: B:35:0x00df  */
    /* JADX WARN: Code duplicated, block: B:36:0x00e2  */
    /* JADX WARN: Code duplicated, block: B:38:0x00ea  */
    /* JADX WARN: Code duplicated, block: B:39:0x00f1  */
    /* JADX WARN: Code duplicated, block: B:41:0x00fa  */
    /* JADX WARN: Code duplicated, block: B:42:0x00ff  */
    /* JADX WARN: Code duplicated, block: B:44:0x0107  */
    /* JADX WARN: Code duplicated, block: B:45:0x010a  */
    /* JADX WARN: Code duplicated, block: B:47:0x0112  */
    /* JADX WARN: Code duplicated, block: B:48:0x0115  */
    /* JADX WARN: Code duplicated, block: B:50:0x011d  */
    /* JADX WARN: Code duplicated, block: B:51:0x0120  */
    /* JADX WARN: Code duplicated, block: B:53:0x0128  */
    /* JADX WARN: Code duplicated, block: B:54:0x0130  */
    /* JADX WARN: Code duplicated, block: B:56:0x0138  */
    /* JADX WARN: Code duplicated, block: B:57:0x013e  */
    /* JADX WARN: Code duplicated, block: B:59:0x0147  */
    /* JADX WARN: Code duplicated, block: B:60:0x014a  */
    /* JADX WARN: Code duplicated, block: B:62:0x0152  */
    /* JADX WARN: Code duplicated, block: B:63:0x0155  */
    /* JADX WARN: Code duplicated, block: B:65:0x015d  */
    /* JADX WARN: Code duplicated, block: B:83:0x015f A[SYNTHETIC] */
    public static final CacheControl commonParse(CacheControl.Companion companion, Headers headers) {
        int i10;
        int iIndexOfElement;
        String string;
        boolean z10;
        int iIndexOfElement2;
        String string2;
        Headers headers2 = headers;
        h.j(companion, "<this>");
        h.j(headers2, "headers");
        int size = headers.size();
        int i11 = 0;
        boolean z11 = true;
        String str = null;
        boolean z12 = false;
        boolean z13 = false;
        int nonNegativeInt = -1;
        int nonNegativeInt2 = -1;
        boolean z14 = false;
        boolean z15 = false;
        boolean z16 = false;
        int nonNegativeInt3 = -1;
        int nonNegativeInt4 = -1;
        boolean z17 = false;
        boolean z18 = false;
        boolean z19 = false;
        while (i11 < size) {
            String strName = headers2.name(i11);
            String strValue = headers2.value(i11);
            if (o.Z(strName, "Cache-Control")) {
                if (str == null) {
                    str = strValue;
                }
                i10 = 0;
                while (i10 < strValue.length()) {
                    iIndexOfElement = indexOfElement(strValue, "=,;", i10);
                    String strSubstring = strValue.substring(i10, iIndexOfElement);
                    h.i(strSubstring, "this as java.lang.String…ing(startIndex, endIndex)");
                    string = s.G0(strSubstring).toString();
                    if (iIndexOfElement != strValue.length() || strValue.charAt(iIndexOfElement) == ',' || strValue.charAt(iIndexOfElement) == ';') {
                        z10 = true;
                        iIndexOfElement2 = iIndexOfElement + 1;
                        string2 = null;
                    } else {
                        int iIndexOfNonWhitespace = _UtilCommonKt.indexOfNonWhitespace(strValue, iIndexOfElement + 1);
                        if (iIndexOfNonWhitespace >= strValue.length() || strValue.charAt(iIndexOfNonWhitespace) != '\"') {
                            z10 = true;
                            iIndexOfElement2 = indexOfElement(strValue, ",;", iIndexOfNonWhitespace);
                            String strSubstring2 = strValue.substring(iIndexOfNonWhitespace, iIndexOfElement2);
                            h.i(strSubstring2, "this as java.lang.String…ing(startIndex, endIndex)");
                            string2 = s.G0(strSubstring2).toString();
                        } else {
                            int i12 = iIndexOfNonWhitespace + 1;
                            int iO0 = s.o0(strValue, '\"', i12, false, 4);
                            string2 = strValue.substring(i12, iO0);
                            h.i(string2, "this as java.lang.String…ing(startIndex, endIndex)");
                            z10 = true;
                            iIndexOfElement2 = iO0 + 1;
                        }
                    }
                    if (o.Z("no-cache", string)) {
                        z12 = z10;
                    } else if (o.Z("no-store", string)) {
                        z13 = z10;
                    } else {
                        if (o.Z("max-age", string)) {
                            nonNegativeInt = _UtilCommonKt.toNonNegativeInt(string2, -1);
                        } else if (o.Z("s-maxage", string)) {
                            nonNegativeInt2 = _UtilCommonKt.toNonNegativeInt(string2, -1);
                        } else if (o.Z("private", string)) {
                            z14 = z10;
                        } else if (o.Z("public", string)) {
                            z15 = z10;
                        } else if (o.Z("must-revalidate", string)) {
                            z16 = z10;
                        } else if (o.Z("max-stale", string)) {
                            nonNegativeInt3 = _UtilCommonKt.toNonNegativeInt(string2, Integer.MAX_VALUE);
                        } else if (o.Z("min-fresh", string)) {
                            nonNegativeInt4 = _UtilCommonKt.toNonNegativeInt(string2, -1);
                        } else if (o.Z("only-if-cached", string)) {
                            z17 = z10;
                        } else if (o.Z("no-transform", string)) {
                            z18 = z10;
                        } else if (o.Z("immutable", string)) {
                            z19 = z10;
                        }
                        i10 = iIndexOfElement2;
                        size = size;
                    }
                    i10 = iIndexOfElement2;
                    size = size;
                }
                i11++;
                headers2 = headers;
                size = size;
            } else {
                if (o.Z(strName, "Pragma")) {
                }
                i11++;
                headers2 = headers;
                size = size;
            }
            z11 = false;
            i10 = 0;
            while (i10 < strValue.length()) {
                iIndexOfElement = indexOfElement(strValue, "=,;", i10);
                String strSubstring3 = strValue.substring(i10, iIndexOfElement);
                h.i(strSubstring3, "this as java.lang.String…ing(startIndex, endIndex)");
                string = s.G0(strSubstring3).toString();
                if (iIndexOfElement != strValue.length()) {
                    z10 = true;
                    iIndexOfElement2 = iIndexOfElement + 1;
                    string2 = null;
                } else {
                    z10 = true;
                    iIndexOfElement2 = iIndexOfElement + 1;
                    string2 = null;
                }
                if (o.Z("no-cache", string)) {
                    z12 = z10;
                } else if (o.Z("no-store", string)) {
                    z13 = z10;
                } else {
                    if (o.Z("max-age", string)) {
                        nonNegativeInt = _UtilCommonKt.toNonNegativeInt(string2, -1);
                    } else if (o.Z("s-maxage", string)) {
                        nonNegativeInt2 = _UtilCommonKt.toNonNegativeInt(string2, -1);
                    } else if (o.Z("private", string)) {
                        z14 = z10;
                    } else if (o.Z("public", string)) {
                        z15 = z10;
                    } else if (o.Z("must-revalidate", string)) {
                        z16 = z10;
                    } else if (o.Z("max-stale", string)) {
                        nonNegativeInt3 = _UtilCommonKt.toNonNegativeInt(string2, Integer.MAX_VALUE);
                    } else if (o.Z("min-fresh", string)) {
                        nonNegativeInt4 = _UtilCommonKt.toNonNegativeInt(string2, -1);
                    } else if (o.Z("only-if-cached", string)) {
                        z17 = z10;
                    } else if (o.Z("no-transform", string)) {
                        z18 = z10;
                    } else if (o.Z("immutable", string)) {
                        z19 = z10;
                    }
                    i10 = iIndexOfElement2;
                    size = size;
                }
                i10 = iIndexOfElement2;
                size = size;
            }
            i11++;
            headers2 = headers;
            size = size;
        }
        return new CacheControl(z12, z13, nonNegativeInt, nonNegativeInt2, z14, z15, z16, nonNegativeInt3, nonNegativeInt4, z17, z18, z19, !z11 ? null : str);
    }

    public static final String commonToString(CacheControl cacheControl) {
        h.j(cacheControl, "<this>");
        String headerValue$okhttp = cacheControl.getHeaderValue$okhttp();
        if (headerValue$okhttp != null) {
            return headerValue$okhttp;
        }
        StringBuilder sb2 = new StringBuilder();
        if (cacheControl.noCache()) {
            sb2.append("no-cache, ");
        }
        if (cacheControl.noStore()) {
            sb2.append("no-store, ");
        }
        if (cacheControl.maxAgeSeconds() != -1) {
            sb2.append("max-age=");
            sb2.append(cacheControl.maxAgeSeconds());
            sb2.append(", ");
        }
        if (cacheControl.sMaxAgeSeconds() != -1) {
            sb2.append("s-maxage=");
            sb2.append(cacheControl.sMaxAgeSeconds());
            sb2.append(", ");
        }
        if (cacheControl.isPrivate()) {
            sb2.append("private, ");
        }
        if (cacheControl.isPublic()) {
            sb2.append("public, ");
        }
        if (cacheControl.mustRevalidate()) {
            sb2.append("must-revalidate, ");
        }
        if (cacheControl.maxStaleSeconds() != -1) {
            sb2.append("max-stale=");
            sb2.append(cacheControl.maxStaleSeconds());
            sb2.append(", ");
        }
        if (cacheControl.minFreshSeconds() != -1) {
            sb2.append("min-fresh=");
            sb2.append(cacheControl.minFreshSeconds());
            sb2.append(", ");
        }
        if (cacheControl.onlyIfCached()) {
            sb2.append("only-if-cached, ");
        }
        if (cacheControl.noTransform()) {
            sb2.append("no-transform, ");
        }
        if (cacheControl.immutable()) {
            sb2.append("immutable, ");
        }
        if (sb2.length() == 0) {
            return "";
        }
        h.i(sb2.delete(sb2.length() - 2, sb2.length()), "this.delete(startIndex, endIndex)");
        String string = sb2.toString();
        h.i(string, "StringBuilder().apply(builderAction).toString()");
        cacheControl.setHeaderValue$okhttp(string);
        return string;
    }

    private static final int indexOfElement(String str, String str2, int i10) {
        int length = str.length();
        while (i10 < length) {
            if (s.h0(str2, str.charAt(i10))) {
                return i10;
            }
            i10++;
        }
        return str.length();
    }

    public static /* synthetic */ int indexOfElement$default(String str, String str2, int i10, int i11, Object obj) {
        if ((i11 & 2) != 0) {
            i10 = 0;
        }
        return indexOfElement(str, str2, i10);
    }
}
