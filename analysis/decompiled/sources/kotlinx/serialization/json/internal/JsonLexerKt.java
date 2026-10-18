package kotlinx.serialization.json.internal;

/* JADX INFO: compiled from: JsonLexer.kt */
/* JADX INFO: loaded from: classes.dex */
public final class JsonLexerKt {
    public static final byte charToTokenClass(char c10) {
        if (c10 < '~') {
            return CharMappings.CHAR_TO_TOKEN[c10];
        }
        return (byte) 0;
    }

    public static final char escapeToChar(int i10) {
        if (i10 < 117) {
            return CharMappings.ESCAPE_2_CHAR[i10];
        }
        return (char) 0;
    }
}
