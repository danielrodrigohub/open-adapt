package okhttp3.internal;

import g7.b;
import java.util.ArrayList;
import java.util.Locale;
import java.util.Objects;
import okhttp3.MediaType;
import p4.h;
import yd.c;
import yd.e;
import yd.g;
import yd.o;

/* JADX INFO: compiled from: -MediaTypeCommon.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class _MediaTypeCommonKt {
    private static final String QUOTED = "\"([^\"]*)\"";
    private static final String TOKEN = "([a-zA-Z0-9-!#$%&'*+.^_`{|}~]+)";
    private static final g TYPE_SUBTYPE = new g("([a-zA-Z0-9-!#$%&'*+.^_`{|}~]+)/([a-zA-Z0-9-!#$%&'*+.^_`{|}~]+)");
    private static final g PARAMETER = new g(";\\s*(?:([a-zA-Z0-9-!#$%&'*+.^_`{|}~]+)=(?:([a-zA-Z0-9-!#$%&'*+.^_`{|}~]+)|\"([^\"]*)\"))?");

    public static final boolean commonEquals(MediaType mediaType, Object obj) {
        h.j(mediaType, "<this>");
        return (obj instanceof MediaType) && h.c(((MediaType) obj).getMediaType$okhttp(), mediaType.getMediaType$okhttp());
    }

    public static final int commonHashCode(MediaType mediaType) {
        h.j(mediaType, "<this>");
        return mediaType.getMediaType$okhttp().hashCode();
    }

    public static final String commonParameter(MediaType mediaType, String str) {
        h.j(mediaType, "<this>");
        h.j(str, "name");
        int i10 = 0;
        int iG = b.g(0, mediaType.getParameterNamesAndValues$okhttp().length - 1, 2);
        if (iG < 0) {
            return null;
        }
        while (!o.Z(mediaType.getParameterNamesAndValues$okhttp()[i10], str)) {
            if (i10 == iG) {
                return null;
            }
            i10 += 2;
        }
        return mediaType.getParameterNamesAndValues$okhttp()[i10 + 1];
    }

    public static final MediaType commonToMediaType(String str) {
        h.j(str, "<this>");
        e eVarMatchAtPolyfill = _UtilCommonKt.matchAtPolyfill(TYPE_SUBTYPE, str, 0);
        if (eVarMatchAtPolyfill == null) {
            throw new IllegalArgumentException("No subtype found for: \"" + str + '\"');
        }
        String str2 = eVarMatchAtPolyfill.a().get(1);
        Locale locale = Locale.ROOT;
        h.i(locale, "ROOT");
        String lowerCase = str2.toLowerCase(locale);
        h.i(lowerCase, "this as java.lang.String).toLowerCase(locale)");
        String str3 = eVarMatchAtPolyfill.a().get(2);
        h.i(locale, "ROOT");
        String lowerCase2 = str3.toLowerCase(locale);
        h.i(lowerCase2, "this as java.lang.String).toLowerCase(locale)");
        ArrayList arrayList = new ArrayList();
        int i10 = eVarMatchAtPolyfill.c().f17022i;
        while (true) {
            int i11 = i10 + 1;
            if (i11 >= str.length()) {
                Object[] array = arrayList.toArray(new String[0]);
                Objects.requireNonNull(array, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>");
                return new MediaType(str, lowerCase, lowerCase2, (String[]) array);
            }
            e eVarMatchAtPolyfill2 = _UtilCommonKt.matchAtPolyfill(PARAMETER, str, i11);
            if (!(eVarMatchAtPolyfill2 != null)) {
                StringBuilder sbC = a0.b.c("Parameter is not formatted correctly: \"");
                String strSubstring = str.substring(i11);
                h.i(strSubstring, "this as java.lang.String).substring(startIndex)");
                sbC.append(strSubstring);
                sbC.append("\" for: \"");
                sbC.append(str);
                sbC.append('\"');
                throw new IllegalArgumentException(sbC.toString().toString());
            }
            c cVar = eVarMatchAtPolyfill2.b().get(1);
            String str4 = cVar != null ? cVar.f19188a : null;
            if (str4 == null) {
                i10 = eVarMatchAtPolyfill2.c().f17022i;
            } else {
                c cVar2 = eVarMatchAtPolyfill2.b().get(2);
                String strSubstring2 = cVar2 != null ? cVar2.f19188a : null;
                if (strSubstring2 == null) {
                    c cVar3 = eVarMatchAtPolyfill2.b().get(3);
                    h.g(cVar3);
                    strSubstring2 = cVar3.f19188a;
                } else if (o.g0(strSubstring2, "'", false) && o.Y(strSubstring2, "'", false) && strSubstring2.length() > 2) {
                    strSubstring2 = strSubstring2.substring(1, strSubstring2.length() - 1);
                    h.i(strSubstring2, "this as java.lang.String…ing(startIndex, endIndex)");
                }
                arrayList.add(str4);
                arrayList.add(strSubstring2);
                i10 = eVarMatchAtPolyfill2.c().f17022i;
            }
        }
    }

    public static final MediaType commonToMediaTypeOrNull(String str) {
        h.j(str, "<this>");
        try {
            return commonToMediaType(str);
        } catch (IllegalArgumentException unused) {
            return null;
        }
    }

    public static final String commonToString(MediaType mediaType) {
        h.j(mediaType, "<this>");
        return mediaType.getMediaType$okhttp();
    }
}
