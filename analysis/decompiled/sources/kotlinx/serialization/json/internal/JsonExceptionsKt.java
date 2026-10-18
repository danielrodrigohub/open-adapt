package kotlinx.serialization.json.internal;

import a0.b;
import a1.d;
import kotlinx.serialization.descriptors.SerialDescriptor;
import p4.h;

/* JADX INFO: compiled from: JsonExceptions.kt */
/* JADX INFO: loaded from: classes.dex */
public final class JsonExceptionsKt {
    public static final JsonDecodingException InvalidFloatingPointDecoded(Number number, String str, String str2) {
        h.j(number, "value");
        h.j(str, "key");
        h.j(str2, "output");
        return JsonDecodingException(-1, unexpectedFpErrorMessage(number, str, str2));
    }

    public static final JsonEncodingException InvalidFloatingPointEncoded(Number number, String str) {
        h.j(number, "value");
        h.j(str, "output");
        return new JsonEncodingException("Unexpected special floating-point value " + number + ". By default, non-finite floating point values are prohibited because they do not conform JSON specification. It is possible to deserialize them using 'JsonBuilder.allowSpecialFloatingPointValues = true'\nCurrent output: " + minify$default(str, 0, 1, null));
    }

    public static final JsonEncodingException InvalidKeyKindException(SerialDescriptor serialDescriptor) {
        h.j(serialDescriptor, "keyDescriptor");
        StringBuilder sbC = b.c("Value of type '");
        sbC.append(serialDescriptor.getSerialName());
        sbC.append("' can't be used in JSON as a key in the map. It should have either primitive or enum kind, but its kind is '");
        sbC.append(serialDescriptor.getKind());
        sbC.append("'.\nUse 'allowStructuredMapKeys = true' in 'Json {}' builder to convert such maps to [key1, value1, key2, value2,...] arrays.");
        return new JsonEncodingException(sbC.toString());
    }

    public static final JsonDecodingException JsonDecodingException(int i10, String str) {
        h.j(str, "message");
        if (i10 >= 0) {
            str = "Unexpected JSON token at offset " + i10 + ": " + str;
        }
        return new JsonDecodingException(str);
    }

    public static final JsonDecodingException UnknownKeyException(String str, String str2) {
        h.j(str, "key");
        h.j(str2, "input");
        return JsonDecodingException(-1, "Encountered unknown key '" + str + "'.\nUse 'ignoreUnknownKeys = true' in 'Json {}' builder to ignore unknown keys.\nCurrent input: " + minify$default(str2, 0, 1, null));
    }

    private static final String minify(String str, int i10) {
        if (str.length() < 200) {
            return str;
        }
        if (i10 == -1) {
            int length = str.length() - 60;
            if (length <= 0) {
                return str;
            }
            String strSubstring = str.substring(length);
            h.i(strSubstring, "(this as java.lang.String).substring(startIndex)");
            return h.B(".....", strSubstring);
        }
        int i11 = i10 - 30;
        int i12 = i10 + 30;
        String str2 = i11 <= 0 ? "" : ".....";
        String str3 = i12 >= str.length() ? "" : ".....";
        StringBuilder sbC = b.c(str2);
        if (i11 < 0) {
            i11 = 0;
        }
        int length2 = str.length();
        if (i12 > length2) {
            i12 = length2;
        }
        String strSubstring2 = str.substring(i11, i12);
        h.i(strSubstring2, "(this as java.lang.Strin…ing(startIndex, endIndex)");
        sbC.append(strSubstring2);
        sbC.append(str3);
        return sbC.toString();
    }

    public static /* synthetic */ String minify$default(String str, int i10, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            i10 = -1;
        }
        return minify(str, i10);
    }

    public static final Void throwInvalidFloatingPointDecoded(JsonLexer jsonLexer, Number number) {
        h.j(jsonLexer, "<this>");
        h.j(number, "result");
        throw d.c(jsonLexer, "Unexpected special floating-point value " + number + ". By default, non-finite floating point values are prohibited because they do not conform JSON specification. It is possible to deserialize them using 'JsonBuilder.allowSpecialFloatingPointValues = true'", 0, 2, null);
    }

    private static final String unexpectedFpErrorMessage(Number number, String str, String str2) {
        return "Unexpected special floating-point value " + number + " with key " + str + ". By default, non-finite floating point values are prohibited because they do not conform JSON specification. It is possible to deserialize them using 'JsonBuilder.allowSpecialFloatingPointValues = true'\nCurrent output: " + minify$default(str2, 0, 1, null);
    }

    public static final JsonDecodingException JsonDecodingException(int i10, String str, String str2) {
        h.j(str, "message");
        h.j(str2, "input");
        return JsonDecodingException(i10, str + "\nJSON input: " + minify(str2, i10));
    }
}
