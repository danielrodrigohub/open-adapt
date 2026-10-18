package kotlinx.serialization.json.internal;

import a0.b;
import a1.d;
import com.newrelic.agent.android.util.SafeJsonPrimitive;
import gd.l;
import gd.n;
import java.util.ArrayList;
import java.util.Objects;
import p4.h;
import yd.s;

/* JADX INFO: compiled from: JsonLexer.kt */
/* JADX INFO: loaded from: classes.dex */
public final class JsonLexer {
    public int currentPosition;
    private StringBuilder escapedString;
    private String peekedString;
    private final String source;

    public JsonLexer(String str) {
        h.j(str, "source");
        this.source = str;
        this.escapedString = new StringBuilder();
    }

    private final int appendEsc(int i10) {
        int i11 = i10 + 1;
        char cCharAt = this.source.charAt(i10);
        if (cCharAt == 'u') {
            return appendHex(this.source, i11);
        }
        char cEscapeToChar = JsonLexerKt.escapeToChar(cCharAt);
        if (cEscapeToChar != 0) {
            this.escapedString.append(cEscapeToChar);
            return i11;
        }
        throw d.c(this, "Invalid escaped char '" + cCharAt + '\'', 0, 2, null);
    }

    private final int appendEscape(int i10, int i11) {
        this.escapedString.append((CharSequence) this.source, i10, i11);
        return appendEsc(i11 + 1);
    }

    private final int appendHex(String str, int i10) {
        int i11 = i10 + 4;
        if (i11 >= str.length()) {
            throw d.c(this, "Unexpected EOF during unicode escape", 0, 2, null);
        }
        this.escapedString.append((char) ((fromHexChar(str, i10) << 12) + (fromHexChar(str, i10 + 1) << 8) + (fromHexChar(str, i10 + 2) << 4) + fromHexChar(str, i10 + 3)));
        return i11;
    }

    private final void appendRange(int i10, int i11) {
        this.escapedString.append((CharSequence) this.source, i10, i11);
    }

    private final void consumeBooleanLiteral(String str, int i10) {
        if (this.source.length() - i10 < str.length()) {
            throw d.c(this, "Unexpected end of boolean literal", 0, 2, null);
        }
        int length = str.length() - 1;
        if (length >= 0) {
            int i11 = 0;
            while (true) {
                int i12 = i11 + 1;
                if (str.charAt(i11) != (this.source.charAt(i11 + i10) | SafeJsonPrimitive.NULL_CHAR)) {
                    StringBuilder sbC = b.c("Expected valid boolean literal prefix, but had '");
                    sbC.append(consumeStringLenient());
                    sbC.append('\'');
                    throw d.c(this, sbC.toString(), 0, 2, null);
                }
                if (i12 <= length) {
                    i11 = i12;
                }
            }
        }
        this.currentPosition = str.length() + i10;
    }

    private final String decodedString(int i10, int i11) {
        appendRange(i10, i11);
        String string = this.escapedString.toString();
        h.i(string, "escapedString.toString()");
        this.escapedString.setLength(0);
        return string;
    }

    private final void fail(byte b10) {
        String str;
        int i10;
        if (b10 == 1) {
            str = "quotation mark '\"'";
        } else if (b10 == 4) {
            str = "comma ','";
        } else if (b10 == 5) {
            str = "semicolon ':'";
        } else if (b10 == 6) {
            str = "start of the object '{'";
        } else if (b10 == 7) {
            str = "end of the object '}'";
        } else if (b10 == 8) {
            str = "start of the array '['";
        } else {
            str = b10 == 9 ? "end of the array ']'" : "valid token";
        }
        fail(b.a("Expected ", str, ", but had '", (this.currentPosition == this.source.length() || (i10 = this.currentPosition) <= 0) ? "EOF" : String.valueOf(this.source.charAt(i10 - 1)), "' instead"), this.currentPosition - 1);
        throw new fd.b();
    }

    public static /* synthetic */ Void fail$default(JsonLexer jsonLexer, String str, int i10, int i11, Object obj) {
        if ((i11 & 2) != 0) {
            i10 = jsonLexer.currentPosition;
        }
        return jsonLexer.fail(str, i10);
    }

    private final int fromHexChar(String str, int i10) {
        char cCharAt = str.charAt(i10);
        if ('0' <= cCharAt && cCharAt <= '9') {
            return cCharAt - '0';
        }
        char c10 = 'a';
        if (!('a' <= cCharAt && cCharAt <= 'f')) {
            c10 = 'A';
            if (!('A' <= cCharAt && cCharAt <= 'F')) {
                throw d.c(this, "Invalid toHexChar char '" + cCharAt + "' in unicode escape", 0, 2, null);
            }
        }
        return (cCharAt - c10) + 10;
    }

    private final boolean isValidValueStart(char c10) {
        return !(((c10 == '}' || c10 == ']') || c10 == ':') || c10 == ',');
    }

    private final int skipWhitespaces() {
        char cCharAt;
        int i10 = this.currentPosition;
        while (i10 < this.source.length() && ((cCharAt = this.source.charAt(i10)) == ' ' || cCharAt == '\n' || cCharAt == '\r' || cCharAt == '\t')) {
            i10++;
        }
        this.currentPosition = i10;
        return i10;
    }

    private final String takePeeked() {
        String str = this.peekedString;
        h.g(str);
        this.peekedString = null;
        return str;
    }

    private final void unexpectedToken(char c10) {
        this.currentPosition--;
        if (c10 == '\"' && h.c(consumeStringLenient(), SafeJsonPrimitive.NULL_STRING)) {
            fail("Expected string literal but 'null' literal was found.\nUse 'coerceInputValues = true' in 'Json {}` builder to coerce nulls to default values.", this.currentPosition - 4);
            throw new fd.b();
        }
        fail(JsonLexerKt.charToTokenClass(c10));
    }

    public final boolean canConsumeValue() {
        int i10 = this.currentPosition;
        while (i10 < this.source.length()) {
            char cCharAt = this.source.charAt(i10);
            if (cCharAt != ' ' && cCharAt != '\n' && cCharAt != '\r' && cCharAt != '\t') {
                this.currentPosition = i10;
                return isValidValueStart(cCharAt);
            }
            i10++;
        }
        this.currentPosition = i10;
        return false;
    }

    public final boolean consumeBoolean() {
        return consumeBoolean(skipWhitespaces());
    }

    public final boolean consumeBooleanLenient() {
        boolean z10;
        int iSkipWhitespaces = skipWhitespaces();
        if (iSkipWhitespaces == this.source.length()) {
            throw d.c(this, "EOF", 0, 2, null);
        }
        if (this.source.charAt(iSkipWhitespaces) == '\"') {
            iSkipWhitespaces++;
            z10 = true;
        } else {
            z10 = false;
        }
        boolean zConsumeBoolean = consumeBoolean(iSkipWhitespaces);
        if (z10) {
            if (this.currentPosition == this.source.length()) {
                throw d.c(this, "EOF", 0, 2, null);
            }
            if (this.source.charAt(this.currentPosition) != '\"') {
                throw d.c(this, "Expected closing quotation mark", 0, 2, null);
            }
            this.currentPosition++;
        }
        return zConsumeBoolean;
    }

    public final String consumeKeyString() {
        consumeNextToken('\"');
        int i10 = this.currentPosition;
        int iO0 = s.o0(this.source, '\"', i10, false, 4);
        if (iO0 == -1) {
            fail((byte) 1);
        }
        if (i10 < iO0) {
            int i11 = i10;
            while (true) {
                int i12 = i11 + 1;
                if (this.source.charAt(i11) == '\\') {
                    return consumeString(this.currentPosition, i11);
                }
                if (i12 < iO0) {
                    i11 = i12;
                }
            }
        }
        this.currentPosition = iO0 + 1;
        String str = this.source;
        Objects.requireNonNull(str, "null cannot be cast to non-null type java.lang.String");
        String strSubstring = str.substring(i10, iO0);
        h.i(strSubstring, "(this as java.lang.Strin…ing(startIndex, endIndex)");
        return strSubstring;
    }

    public final byte consumeNextToken(byte b10) {
        byte bConsumeNextToken = consumeNextToken();
        if (bConsumeNextToken != b10) {
            fail(b10);
        }
        return bConsumeNextToken;
    }

    public final long consumeNumericLiteral() {
        boolean z10;
        int iSkipWhitespaces = skipWhitespaces();
        Object obj = null;
        int i10 = 2;
        if (iSkipWhitespaces == this.source.length()) {
            throw d.c(this, "EOF", 0, 2, null);
        }
        if (this.source.charAt(iSkipWhitespaces) == '\"') {
            iSkipWhitespaces++;
            if (iSkipWhitespaces == this.source.length()) {
                throw d.c(this, "EOF", 0, 2, null);
            }
            z10 = true;
        } else {
            z10 = false;
        }
        boolean z11 = true;
        long j10 = 0;
        int i11 = iSkipWhitespaces;
        boolean z12 = false;
        while (z11) {
            char cCharAt = this.source.charAt(i11);
            if (cCharAt == '-') {
                if (i11 != iSkipWhitespaces) {
                    throw d.c(this, "Unexpected symbol '-' in numeric literal", 0, i10, obj);
                }
                i11++;
                z12 = true;
            } else {
                if (JsonLexerKt.charToTokenClass(cCharAt) != 0) {
                    break;
                }
                i11++;
                z11 = i11 != this.source.length();
                int i12 = cCharAt - '0';
                if (!(i12 >= 0 && i12 <= 9)) {
                    throw d.c(this, "Unexpected symbol '" + cCharAt + "' in numeric literal", 0, 2, null);
                }
                j10 = (j10 * ((long) 10)) - ((long) i12);
                if (j10 > 0) {
                    throw d.c(this, "Numeric value overflow", 0, 2, null);
                }
                obj = null;
                i10 = 2;
            }
        }
        if (iSkipWhitespaces == i11 || (z12 && iSkipWhitespaces == i11 - 1)) {
            throw d.c(this, "Expected numeric literal", 0, 2, null);
        }
        if (z10) {
            if (!z11) {
                throw d.c(this, "EOF", 0, 2, null);
            }
            if (this.source.charAt(i11) != '\"') {
                throw d.c(this, "Expected closing quotation mark", 0, 2, null);
            }
            i11++;
        }
        this.currentPosition = i11;
        if (z12) {
            return j10;
        }
        if (j10 != Long.MIN_VALUE) {
            return -j10;
        }
        throw d.c(this, "Numeric value overflow", 0, 2, null);
    }

    public final String consumeString() {
        return this.peekedString != null ? takePeeked() : consumeKeyString();
    }

    public final String consumeStringLenient() {
        if (this.peekedString != null) {
            return takePeeked();
        }
        int iSkipWhitespaces = skipWhitespaces();
        if (iSkipWhitespaces >= this.source.length()) {
            fail("EOF", iSkipWhitespaces);
            throw new fd.b();
        }
        byte bCharToTokenClass = JsonLexerKt.charToTokenClass(this.source.charAt(iSkipWhitespaces));
        if (bCharToTokenClass == 1) {
            return consumeString();
        }
        if (bCharToTokenClass != 0) {
            throw d.c(this, h.B("Expected beginning of the string, but got ", Character.valueOf(this.source.charAt(iSkipWhitespaces))), 0, 2, null);
        }
        while (iSkipWhitespaces < this.source.length() && JsonLexerKt.charToTokenClass(this.source.charAt(iSkipWhitespaces)) == 0) {
            iSkipWhitespaces++;
        }
        String str = this.source;
        int i10 = this.currentPosition;
        Objects.requireNonNull(str, "null cannot be cast to non-null type java.lang.String");
        String strSubstring = str.substring(i10, iSkipWhitespaces);
        h.i(strSubstring, "(this as java.lang.Strin…ing(startIndex, endIndex)");
        this.currentPosition = iSkipWhitespaces;
        return strSubstring;
    }

    public final String consumeStringLenientNotNull() {
        String strConsumeStringLenient = consumeStringLenient();
        if (h.c(strConsumeStringLenient, SafeJsonPrimitive.NULL_STRING)) {
            throw d.c(this, "Unexpected 'null' value instead of string literal", 0, 2, null);
        }
        return strConsumeStringLenient;
    }

    public final void expectEof() {
        if (consumeNextToken() == 10) {
            return;
        }
        StringBuilder sbC = b.c("Expected EOF, but had ");
        sbC.append(this.source.charAt(this.currentPosition - 1));
        sbC.append(" instead");
        throw d.c(this, sbC.toString(), 0, 2, null);
    }

    public final void failOnUnknownKey(String str) {
        h.j(str, "key");
        String str2 = this.source;
        int i10 = this.currentPosition;
        Objects.requireNonNull(str2, "null cannot be cast to non-null type java.lang.String");
        String strSubstring = str2.substring(0, i10);
        h.i(strSubstring, "(this as java.lang.Strin…ing(startIndex, endIndex)");
        fail("Encountered an unknown key '" + str + "'.\nUse 'ignoreUnknownKeys = true' in 'Json {}' builder to ignore unknown keys.", s.s0(strSubstring, str, 6));
        throw new fd.b();
    }

    public final byte peekNextToken() {
        String str = this.source;
        while (this.currentPosition < str.length()) {
            char cCharAt = str.charAt(this.currentPosition);
            if (cCharAt != ' ' && cCharAt != '\n' && cCharAt != '\r' && cCharAt != '\t') {
                return JsonLexerKt.charToTokenClass(cCharAt);
            }
            this.currentPosition++;
        }
        return (byte) 10;
    }

    public final String peekString(boolean z10) {
        String strConsumeString;
        byte bPeekNextToken = peekNextToken();
        if (z10) {
            if (bPeekNextToken != 1 && bPeekNextToken != 0) {
                return null;
            }
            strConsumeString = consumeStringLenient();
        } else {
            if (bPeekNextToken != 1) {
                return null;
            }
            strConsumeString = consumeString();
        }
        this.peekedString = strConsumeString;
        return strConsumeString;
    }

    public final void skipElement(boolean z10) {
        ArrayList arrayList = new ArrayList();
        byte bPeekNextToken = peekNextToken();
        if (bPeekNextToken != 8 && bPeekNextToken != 6) {
            consumeStringLenient();
            return;
        }
        while (true) {
            byte bPeekNextToken2 = peekNextToken();
            boolean z11 = true;
            if (bPeekNextToken2 != 1) {
                if (bPeekNextToken2 != 8 && bPeekNextToken2 != 6) {
                    z11 = false;
                }
                if (z11) {
                    arrayList.add(Byte.valueOf(bPeekNextToken2));
                } else if (bPeekNextToken2 == 9) {
                    if (((Number) n.e0(arrayList)).byteValue() != 8) {
                        throw JsonExceptionsKt.JsonDecodingException(this.currentPosition, "found ] instead of }", this.source);
                    }
                    l.Y(arrayList);
                } else if (bPeekNextToken2 == 7) {
                    if (((Number) n.e0(arrayList)).byteValue() != 6) {
                        throw JsonExceptionsKt.JsonDecodingException(this.currentPosition, "found } instead of ]", this.source);
                    }
                    l.Y(arrayList);
                } else if (bPeekNextToken2 == 10) {
                    throw d.c(this, "Unexpected end of input due to malformed JSON during ignoring unknown keys", 0, 2, null);
                }
                consumeNextToken();
                if (arrayList.size() == 0) {
                    return;
                }
            } else if (z10) {
                consumeStringLenient();
            } else {
                consumeKeyString();
            }
        }
    }

    public String toString() {
        StringBuilder sbC = b.c("JsonReader(source='");
        sbC.append(this.source);
        sbC.append("', currentPosition=");
        return b.b(sbC, this.currentPosition, ')');
    }

    public final boolean tryConsumeComma() {
        int iSkipWhitespaces = skipWhitespaces();
        if (iSkipWhitespaces == this.source.length() || this.source.charAt(iSkipWhitespaces) != ',') {
            return false;
        }
        this.currentPosition++;
        return true;
    }

    public final boolean tryConsumeNotNull() {
        int iSkipWhitespaces = skipWhitespaces();
        int length = this.source.length() - iSkipWhitespaces;
        if (length < 4) {
            return true;
        }
        int i10 = 0;
        while (true) {
            int i11 = i10 + 1;
            if (SafeJsonPrimitive.NULL_STRING.charAt(i10) != this.source.charAt(i10 + iSkipWhitespaces)) {
                return true;
            }
            if (i11 > 3) {
                if (length > 4 && JsonLexerKt.charToTokenClass(this.source.charAt(iSkipWhitespaces + 4)) == 0) {
                    return true;
                }
                this.currentPosition = iSkipWhitespaces + 4;
                return false;
            }
            i10 = i11;
        }
    }

    private final boolean consumeBoolean(int i10) {
        if (i10 == this.source.length()) {
            throw d.c(this, "EOF", 0, 2, null);
        }
        int i11 = i10 + 1;
        int iCharAt = this.source.charAt(i10) | SafeJsonPrimitive.NULL_CHAR;
        if (iCharAt == 116) {
            consumeBooleanLiteral("rue", i11);
            return true;
        }
        if (iCharAt == 102) {
            consumeBooleanLiteral("alse", i11);
            return false;
        }
        StringBuilder sbC = b.c("Expected valid boolean literal prefix, but had '");
        sbC.append(consumeStringLenient());
        sbC.append('\'');
        throw d.c(this, sbC.toString(), 0, 2, null);
    }

    public final void consumeNextToken(char c10) {
        String str = this.source;
        while (this.currentPosition < str.length()) {
            int i10 = this.currentPosition;
            this.currentPosition = i10 + 1;
            char cCharAt = str.charAt(i10);
            if (cCharAt != ' ' && cCharAt != '\n' && cCharAt != '\r' && cCharAt != '\t') {
                if (cCharAt == c10) {
                    return;
                } else {
                    unexpectedToken(c10);
                }
            }
        }
        unexpectedToken(c10);
    }

    private final String consumeString(int i10, int i11) {
        String strDecodedString;
        String str = this.source;
        char cCharAt = str.charAt(i11);
        int iAppendEscape = i10;
        while (cCharAt != '\"') {
            if (cCharAt == '\\') {
                iAppendEscape = appendEscape(iAppendEscape, i11);
                i11 = iAppendEscape;
            } else {
                i11++;
                if (i11 >= str.length()) {
                    fail("EOF", i11);
                    throw new fd.b();
                }
            }
            cCharAt = str.charAt(i11);
        }
        if (iAppendEscape == i10) {
            strDecodedString = str.substring(iAppendEscape, i11);
            h.i(strDecodedString, "(this as java.lang.Strin…ing(startIndex, endIndex)");
        } else {
            strDecodedString = decodedString(iAppendEscape, i11);
        }
        this.currentPosition = i11 + 1;
        return strDecodedString;
    }

    public final byte consumeNextToken() {
        String str = this.source;
        while (this.currentPosition < str.length()) {
            int i10 = this.currentPosition;
            this.currentPosition = i10 + 1;
            byte bCharToTokenClass = JsonLexerKt.charToTokenClass(str.charAt(i10));
            if (bCharToTokenClass != 3) {
                return bCharToTokenClass;
            }
        }
        return (byte) 10;
    }

    public final Void fail(String str, int i10) {
        h.j(str, "message");
        throw JsonExceptionsKt.JsonDecodingException(i10, str, this.source);
    }
}
