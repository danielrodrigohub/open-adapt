package kotlinx.serialization.json.internal;

/* JADX INFO: compiled from: JsonLexer.kt */
/* JADX INFO: loaded from: classes.dex */
public final class CharMappings {
    public static final byte[] CHAR_TO_TOKEN;
    public static final char[] ESCAPE_2_CHAR;
    public static final CharMappings INSTANCE;

    static {
        CharMappings charMappings = new CharMappings();
        INSTANCE = charMappings;
        ESCAPE_2_CHAR = new char[117];
        CHAR_TO_TOKEN = new byte[126];
        charMappings.initEscape();
        charMappings.initCharToToken();
    }

    private CharMappings() {
    }

    private final void initC2ESC(int i10, char c10) {
        if (c10 != 'u') {
            ESCAPE_2_CHAR[c10] = (char) i10;
        }
    }

    private final void initC2TC(int i10, byte b10) {
        CHAR_TO_TOKEN[i10] = b10;
    }

    private final void initCharToToken() {
        int i10 = 0;
        while (true) {
            int i11 = i10 + 1;
            initC2TC(i10, (byte) 127);
            if (i11 > 32) {
                initC2TC(9, (byte) 3);
                initC2TC(10, (byte) 3);
                initC2TC(13, (byte) 3);
                initC2TC(32, (byte) 3);
                initC2TC(',', (byte) 4);
                initC2TC(':', (byte) 5);
                initC2TC('{', (byte) 6);
                initC2TC('}', (byte) 7);
                initC2TC('[', (byte) 8);
                initC2TC(']', (byte) 9);
                initC2TC('\"', (byte) 1);
                initC2TC('\\', (byte) 2);
                return;
            }
            i10 = i11;
        }
    }

    private final void initEscape() {
        int i10 = 0;
        while (true) {
            int i11 = i10 + 1;
            initC2ESC(i10, 'u');
            if (i11 > 31) {
                initC2ESC(8, 'b');
                initC2ESC(9, 't');
                initC2ESC(10, 'n');
                initC2ESC(12, 'f');
                initC2ESC(13, 'r');
                initC2ESC('/', '/');
                initC2ESC('\"', '\"');
                initC2ESC('\\', '\\');
                return;
            }
            i10 = i11;
        }
    }

    private final void initC2ESC(char c10, char c11) {
        initC2ESC((int) c10, c11);
    }

    private final void initC2TC(char c10, byte b10) {
        initC2TC((int) c10, b10);
    }
}
