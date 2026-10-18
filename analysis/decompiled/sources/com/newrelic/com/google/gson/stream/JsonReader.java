package com.newrelic.com.google.gson.stream;

import a0.b;
import androidx.fragment.app.r0;
import com.newrelic.agent.android.util.SafeJsonPrimitive;
import com.newrelic.com.google.gson.internal.JsonReaderInternalAccess;
import com.newrelic.com.google.gson.internal.bind.JsonTreeReader;
import java.io.Closeable;
import java.io.EOFException;
import java.io.IOException;
import java.io.Reader;
import java.util.Objects;

/* JADX INFO: loaded from: classes.dex */
public class JsonReader implements Closeable {
    private static final long MIN_INCOMPLETE_INTEGER = -922337203685477580L;
    private static final char[] NON_EXECUTE_PREFIX = ")]}'\n".toCharArray();
    private static final int NUMBER_CHAR_DECIMAL = 3;
    private static final int NUMBER_CHAR_DIGIT = 2;
    private static final int NUMBER_CHAR_EXP_DIGIT = 7;
    private static final int NUMBER_CHAR_EXP_E = 5;
    private static final int NUMBER_CHAR_EXP_SIGN = 6;
    private static final int NUMBER_CHAR_FRACTION_DIGIT = 4;
    private static final int NUMBER_CHAR_NONE = 0;
    private static final int NUMBER_CHAR_SIGN = 1;
    private static final int PEEKED_BEGIN_ARRAY = 3;
    private static final int PEEKED_BEGIN_OBJECT = 1;
    private static final int PEEKED_BUFFERED = 11;
    private static final int PEEKED_DOUBLE_QUOTED = 9;
    private static final int PEEKED_DOUBLE_QUOTED_NAME = 13;
    private static final int PEEKED_END_ARRAY = 4;
    private static final int PEEKED_END_OBJECT = 2;
    private static final int PEEKED_EOF = 17;
    private static final int PEEKED_FALSE = 6;
    private static final int PEEKED_LONG = 15;
    private static final int PEEKED_NONE = 0;
    private static final int PEEKED_NULL = 7;
    private static final int PEEKED_NUMBER = 16;
    private static final int PEEKED_SINGLE_QUOTED = 8;
    private static final int PEEKED_SINGLE_QUOTED_NAME = 12;
    private static final int PEEKED_TRUE = 5;
    private static final int PEEKED_UNQUOTED = 10;
    private static final int PEEKED_UNQUOTED_NAME = 14;
    private final Reader in;
    private long peekedLong;
    private int peekedNumberLength;
    private String peekedString;
    private int[] stack;
    private boolean lenient = false;
    private final char[] buffer = new char[1024];
    private int pos = 0;
    private int limit = 0;
    private int lineNumber = 0;
    private int lineStart = 0;
    private int peeked = 0;
    private int stackSize = 0 + 1;

    static {
        JsonReaderInternalAccess.INSTANCE = new JsonReaderInternalAccess() { // from class: com.newrelic.com.google.gson.stream.JsonReader.1
            @Override // com.newrelic.com.google.gson.internal.JsonReaderInternalAccess
            public void promoteNameToValue(JsonReader jsonReader) throws IOException {
                if (jsonReader instanceof JsonTreeReader) {
                    ((JsonTreeReader) jsonReader).promoteNameToValue();
                    return;
                }
                int iDoPeek = jsonReader.peeked;
                if (iDoPeek == 0) {
                    iDoPeek = jsonReader.doPeek();
                }
                if (iDoPeek == 13) {
                    jsonReader.peeked = 9;
                    return;
                }
                if (iDoPeek == 12) {
                    jsonReader.peeked = 8;
                    return;
                }
                if (iDoPeek == 14) {
                    jsonReader.peeked = 10;
                    return;
                }
                StringBuilder sbC = b.c("Expected a name but was ");
                sbC.append(jsonReader.peek());
                sbC.append(" ");
                sbC.append(" at line ");
                sbC.append(jsonReader.getLineNumber());
                sbC.append(" column ");
                sbC.append(jsonReader.getColumnNumber());
                throw new IllegalStateException(sbC.toString());
            }
        };
    }

    public JsonReader(Reader reader) {
        int[] iArr = new int[32];
        this.stack = iArr;
        iArr[0] = 6;
        Objects.requireNonNull(reader, "in == null");
        this.in = reader;
    }

    private void checkLenient() throws IOException {
        if (!this.lenient) {
            throw syntaxError("Use JsonReader.setLenient(true) to accept malformed JSON");
        }
    }

    private void consumeNonExecutePrefix() throws IOException {
        nextNonWhitespace(true);
        int i10 = this.pos - 1;
        this.pos = i10;
        char[] cArr = NON_EXECUTE_PREFIX;
        if (i10 + cArr.length > this.limit && !fillBuffer(cArr.length)) {
            return;
        }
        int i11 = 0;
        while (true) {
            char[] cArr2 = NON_EXECUTE_PREFIX;
            if (i11 >= cArr2.length) {
                this.pos += cArr2.length;
                return;
            } else if (this.buffer[this.pos + i11] != cArr2[i11]) {
                return;
            } else {
                i11++;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int doPeek() throws IOException {
        int iNextNonWhitespace;
        int[] iArr = this.stack;
        int i10 = this.stackSize;
        int i11 = iArr[i10 - 1];
        if (i11 == 1) {
            iArr[i10 - 1] = 2;
        } else if (i11 == 2) {
            int iNextNonWhitespace2 = nextNonWhitespace(true);
            if (iNextNonWhitespace2 != 44) {
                if (iNextNonWhitespace2 != 59) {
                    if (iNextNonWhitespace2 != 93) {
                        throw syntaxError("Unterminated array");
                    }
                    this.peeked = 4;
                    return 4;
                }
                checkLenient();
            }
        } else {
            if (i11 == 3 || i11 == 5) {
                iArr[i10 - 1] = 4;
                if (i11 == 5 && (iNextNonWhitespace = nextNonWhitespace(true)) != 44) {
                    if (iNextNonWhitespace != 59) {
                        if (iNextNonWhitespace != 125) {
                            throw syntaxError("Unterminated object");
                        }
                        this.peeked = 2;
                        return 2;
                    }
                    checkLenient();
                }
                int iNextNonWhitespace3 = nextNonWhitespace(true);
                if (iNextNonWhitespace3 == 34) {
                    this.peeked = 13;
                    return 13;
                }
                if (iNextNonWhitespace3 == 39) {
                    checkLenient();
                    this.peeked = 12;
                    return 12;
                }
                if (iNextNonWhitespace3 == 125) {
                    if (i11 == 5) {
                        throw syntaxError("Expected name");
                    }
                    this.peeked = 2;
                    return 2;
                }
                checkLenient();
                this.pos--;
                if (!isLiteral((char) iNextNonWhitespace3)) {
                    throw syntaxError("Expected name");
                }
                this.peeked = 14;
                return 14;
            }
            if (i11 == 4) {
                iArr[i10 - 1] = 5;
                int iNextNonWhitespace4 = nextNonWhitespace(true);
                if (iNextNonWhitespace4 != 58) {
                    if (iNextNonWhitespace4 != 61) {
                        throw syntaxError("Expected ':'");
                    }
                    checkLenient();
                    if (this.pos < this.limit || fillBuffer(1)) {
                        char[] cArr = this.buffer;
                        int i12 = this.pos;
                        if (cArr[i12] == '>') {
                            this.pos = i12 + 1;
                        }
                    }
                }
            } else if (i11 == 6) {
                if (this.lenient) {
                    consumeNonExecutePrefix();
                }
                this.stack[this.stackSize - 1] = 7;
            } else if (i11 == 7) {
                if (nextNonWhitespace(false) == -1) {
                    this.peeked = 17;
                    return 17;
                }
                checkLenient();
                this.pos--;
            } else if (i11 == 8) {
                throw new IllegalStateException("JsonReader is closed");
            }
        }
        int iNextNonWhitespace5 = nextNonWhitespace(true);
        if (iNextNonWhitespace5 == 34) {
            if (this.stackSize == 1) {
                checkLenient();
            }
            this.peeked = 9;
            return 9;
        }
        if (iNextNonWhitespace5 == 39) {
            checkLenient();
            this.peeked = 8;
            return 8;
        }
        if (iNextNonWhitespace5 != 44 && iNextNonWhitespace5 != 59) {
            if (iNextNonWhitespace5 == 91) {
                this.peeked = 3;
                return 3;
            }
            if (iNextNonWhitespace5 != 93) {
                if (iNextNonWhitespace5 == 123) {
                    this.peeked = 1;
                    return 1;
                }
                this.pos--;
                if (this.stackSize == 1) {
                    checkLenient();
                }
                int iPeekKeyword = peekKeyword();
                if (iPeekKeyword != 0) {
                    return iPeekKeyword;
                }
                int iPeekNumber = peekNumber();
                if (iPeekNumber != 0) {
                    return iPeekNumber;
                }
                if (!isLiteral(this.buffer[this.pos])) {
                    throw syntaxError("Expected value");
                }
                checkLenient();
                this.peeked = 10;
                return 10;
            }
            if (i11 == 1) {
                this.peeked = 4;
                return 4;
            }
        }
        if (i11 != 1 && i11 != 2) {
            throw syntaxError("Unexpected value");
        }
        checkLenient();
        this.pos--;
        this.peeked = 7;
        return 7;
    }

    private boolean fillBuffer(int i10) throws IOException {
        int i11;
        int i12;
        char[] cArr = this.buffer;
        int i13 = this.lineStart;
        int i14 = this.pos;
        this.lineStart = i13 - i14;
        int i15 = this.limit;
        if (i15 != i14) {
            int i16 = i15 - i14;
            this.limit = i16;
            System.arraycopy(cArr, i14, cArr, 0, i16);
        } else {
            this.limit = 0;
        }
        this.pos = 0;
        do {
            Reader reader = this.in;
            int i17 = this.limit;
            int i18 = reader.read(cArr, i17, cArr.length - i17);
            if (i18 == -1) {
                return false;
            }
            i11 = this.limit + i18;
            this.limit = i11;
            if (this.lineNumber == 0 && (i12 = this.lineStart) == 0 && i11 > 0 && cArr[0] == 65279) {
                this.pos++;
                this.lineStart = i12 + 1;
                i10++;
            }
        } while (i11 < i10);
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int getColumnNumber() {
        return (this.pos - this.lineStart) + 1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int getLineNumber() {
        return this.lineNumber + 1;
    }

    private boolean isLiteral(char c10) throws IOException {
        if (c10 == '\t' || c10 == '\n' || c10 == '\f' || c10 == '\r' || c10 == ' ') {
            return false;
        }
        if (c10 != '#') {
            if (c10 == ',') {
                return false;
            }
            if (c10 != '/' && c10 != '=') {
                if (c10 == '{' || c10 == '}' || c10 == ':') {
                    return false;
                }
                if (c10 != ';') {
                    switch (c10) {
                        case '[':
                        case ']':
                            return false;
                        case '\\':
                            break;
                        default:
                            return true;
                    }
                }
            }
        }
        checkLenient();
        return false;
    }

    private int nextNonWhitespace(boolean z10) throws IOException {
        char[] cArr = this.buffer;
        int i10 = this.pos;
        int i11 = this.limit;
        while (true) {
            if (i10 == i11) {
                this.pos = i10;
                if (!fillBuffer(1)) {
                    if (!z10) {
                        return -1;
                    }
                    StringBuilder sbC = b.c("End of input at line ");
                    sbC.append(getLineNumber());
                    sbC.append(" column ");
                    sbC.append(getColumnNumber());
                    throw new EOFException(sbC.toString());
                }
                i10 = this.pos;
                i11 = this.limit;
            }
            int i12 = i10 + 1;
            char c10 = cArr[i10];
            if (c10 == '\n') {
                this.lineNumber++;
                this.lineStart = i12;
            } else if (c10 != ' ' && c10 != '\r' && c10 != '\t') {
                if (c10 == '/') {
                    this.pos = i12;
                    if (i12 == i11) {
                        this.pos = i12 - 1;
                        boolean zFillBuffer = fillBuffer(2);
                        this.pos++;
                        if (!zFillBuffer) {
                            return c10;
                        }
                    }
                    checkLenient();
                    int i13 = this.pos;
                    char c11 = cArr[i13];
                    if (c11 == '*') {
                        this.pos = i13 + 1;
                        if (!skipTo("*/")) {
                            throw syntaxError("Unterminated comment");
                        }
                        i10 = this.pos + 2;
                        i11 = this.limit;
                    } else {
                        if (c11 != '/') {
                            return c10;
                        }
                        this.pos = i13 + 1;
                        skipToEndOfLine();
                        i10 = this.pos;
                        i11 = this.limit;
                    }
                } else {
                    if (c10 != '#') {
                        this.pos = i12;
                        return c10;
                    }
                    this.pos = i12;
                    checkLenient();
                    skipToEndOfLine();
                    i10 = this.pos;
                    i11 = this.limit;
                }
            }
            i10 = i12;
        }
    }

    private String nextQuotedValue(char c10) throws IOException {
        int i10;
        char[] cArr = this.buffer;
        StringBuilder sb2 = new StringBuilder();
        do {
            int i11 = this.pos;
            int i12 = this.limit;
            while (true) {
                int i13 = i12;
                i10 = i11;
                while (true) {
                    if (i11 < i13) {
                        int i14 = i11 + 1;
                        char c11 = cArr[i11];
                        if (c11 == c10) {
                            this.pos = i14;
                            sb2.append(cArr, i10, (i14 - i10) - 1);
                            return sb2.toString();
                        }
                        if (c11 == '\\') {
                            this.pos = i14;
                            sb2.append(cArr, i10, (i14 - i10) - 1);
                            sb2.append(readEscapeCharacter());
                            i11 = this.pos;
                            i12 = this.limit;
                        } else {
                            if (c11 == '\n') {
                                this.lineNumber++;
                                this.lineStart = i14;
                            }
                            i11 = i14;
                        }
                    }
                }
            }
            sb2.append(cArr, i10, i11 - i10);
            this.pos = i11;
        } while (fillBuffer(1));
        throw syntaxError("Unterminated string");
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:32:0x0044. Please report as an issue. */
    private String nextUnquotedValue() throws IOException {
        String string;
        int i10 = 0;
        StringBuilder sb2 = null;
        while (true) {
            int i11 = 0;
            while (true) {
                int i12 = this.pos;
                if (i12 + i11 < this.limit) {
                    char c10 = this.buffer[i12 + i11];
                    if (c10 != '\t' && c10 != '\n' && c10 != '\f' && c10 != '\r' && c10 != ' ') {
                        if (c10 != '#') {
                            if (c10 != ',') {
                                if (c10 != '/' && c10 != '=') {
                                    if (c10 != '{' && c10 != '}' && c10 != ':') {
                                        if (c10 != ';') {
                                            switch (c10) {
                                                case '[':
                                                case ']':
                                                    break;
                                                case '\\':
                                                    break;
                                                default:
                                                    i11++;
                                                    break;
                                            }
                                        }
                                    }
                                }
                            }
                        }
                        checkLenient();
                    }
                    i10 = i11;
                } else if (i11 >= this.buffer.length) {
                    if (sb2 == null) {
                        sb2 = new StringBuilder();
                    }
                    sb2.append(this.buffer, this.pos, i11);
                    this.pos += i11;
                    if (!fillBuffer(1)) {
                    }
                } else if (!fillBuffer(i11 + 1)) {
                    i10 = i11;
                }
                if (sb2 == null) {
                    string = new String(this.buffer, this.pos, i10);
                } else {
                    sb2.append(this.buffer, this.pos, i10);
                    string = sb2.toString();
                }
                this.pos += i10;
                return string;
            }
        }
    }

    private int peekKeyword() throws IOException {
        int i10;
        String str;
        String str2;
        char c10 = this.buffer[this.pos];
        if (c10 == 't' || c10 == 'T') {
            i10 = 5;
            str = "true";
            str2 = "TRUE";
        } else if (c10 == 'f' || c10 == 'F') {
            i10 = 6;
            str = "false";
            str2 = "FALSE";
        } else {
            if (c10 != 'n' && c10 != 'N') {
                return 0;
            }
            i10 = 7;
            str = SafeJsonPrimitive.NULL_STRING;
            str2 = "NULL";
        }
        int length = str.length();
        for (int i11 = 1; i11 < length; i11++) {
            if (this.pos + i11 >= this.limit && !fillBuffer(i11 + 1)) {
                return 0;
            }
            char c11 = this.buffer[this.pos + i11];
            if (c11 != str.charAt(i11) && c11 != str2.charAt(i11)) {
                return 0;
            }
        }
        if ((this.pos + length < this.limit || fillBuffer(length + 1)) && isLiteral(this.buffer[this.pos + length])) {
            return 0;
        }
        this.pos += length;
        this.peeked = i10;
        return i10;
    }

    /* JADX WARN: Code duplicated, block: B:107:0x00f2 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:14:0x0031  */
    /* JADX WARN: Code duplicated, block: B:87:0x00db  */
    /* JADX WARN: Code duplicated, block: B:89:0x00e0  */
    /* JADX WARN: Code duplicated, block: B:94:0x00e7  */
    private int peekNumber() throws IOException {
        char c10;
        char c11;
        char[] cArr = this.buffer;
        int i10 = this.pos;
        int i11 = this.limit;
        int i12 = 0;
        boolean z10 = true;
        int i13 = 0;
        char c12 = 0;
        boolean z11 = false;
        long j10 = 0;
        while (true) {
            if (i10 + i13 != i11) {
                c10 = cArr[i10 + i13];
                c11 = 3;
                if (c10 != '+') {
                    if (c10 != 'E' || c10 == 'e') {
                        i12 = 0;
                        if (c12 == 2 && c12 != 4) {
                            return 0;
                        }
                        c12 = 5;
                    } else if (c10 == '-') {
                        c11 = 6;
                        i12 = 0;
                        if (c12 == 0) {
                            c12 = 1;
                            z11 = true;
                        } else if (c12 != 5) {
                            return 0;
                        }
                    } else if (c10 == '.') {
                        i12 = 0;
                        if (c12 != 2) {
                            return 0;
                        }
                    } else {
                        if (c10 < '0' || c10 > '9') {
                            if (!isLiteral(c10)) {
                                break;
                            }
                            return 0;
                        }
                        if (c12 == 1 || c12 == 0) {
                            j10 = -(c10 - '0');
                            c12 = 2;
                        } else if (c12 == 2) {
                            if (j10 == 0) {
                                return 0;
                            }
                            long j11 = (10 * j10) - ((long) (c10 - '0'));
                            z10 &= j10 > MIN_INCOMPLETE_INTEGER || (j10 == MIN_INCOMPLETE_INTEGER && j11 < j10);
                            j10 = j11;
                        } else if (c12 == 3) {
                            i12 = 0;
                            c12 = 4;
                        } else if (c12 == 5 || c12 == 6) {
                            i12 = 0;
                            c12 = 7;
                        }
                        i12 = 0;
                    }
                    i13++;
                } else {
                    c11 = 6;
                    i12 = 0;
                    if (c12 != 5) {
                        return 0;
                    }
                }
                c12 = c11;
                i13++;
            } else {
                if (i13 == cArr.length) {
                    return i12;
                }
                if (!fillBuffer(i13 + 1)) {
                    break;
                }
                i10 = this.pos;
                i11 = this.limit;
                c10 = cArr[i10 + i13];
                c11 = 3;
                if (c10 != '+') {
                    if (c10 != 'E') {
                        i12 = 0;
                        if (c12 == 2) {
                        }
                        c12 = 5;
                    } else {
                        i12 = 0;
                        if (c12 == 2) {
                        }
                        c12 = 5;
                    }
                    i13++;
                } else {
                    c11 = 6;
                    i12 = 0;
                    if (c12 != 5) {
                        return 0;
                    }
                }
                c12 = c11;
                i13++;
            }
        }
        if (c12 == 2 && z10 && (j10 != Long.MIN_VALUE || z11)) {
            if (!z11) {
                j10 = -j10;
            }
            this.peekedLong = j10;
            this.pos += i13;
            this.peeked = 15;
            return 15;
        }
        if (c12 != 2 && c12 != 4 && c12 != 7) {
            return 0;
        }
        this.peekedNumberLength = i13;
        this.peeked = 16;
        return 16;
    }

    private void push(int i10) {
        int i11 = this.stackSize;
        int[] iArr = this.stack;
        if (i11 == iArr.length) {
            int[] iArr2 = new int[i11 * 2];
            System.arraycopy(iArr, 0, iArr2, 0, i11);
            this.stack = iArr2;
        }
        int[] iArr3 = this.stack;
        int i12 = this.stackSize;
        this.stackSize = i12 + 1;
        iArr3[i12] = i10;
    }

    private char readEscapeCharacter() throws IOException {
        int i10;
        int i11;
        if (this.pos == this.limit && !fillBuffer(1)) {
            throw syntaxError("Unterminated escape sequence");
        }
        char[] cArr = this.buffer;
        int i12 = this.pos;
        int i13 = i12 + 1;
        this.pos = i13;
        char c10 = cArr[i12];
        if (c10 == '\n') {
            this.lineNumber++;
            this.lineStart = i13;
        } else {
            if (c10 == 'b') {
                return '\b';
            }
            if (c10 == 'f') {
                return '\f';
            }
            if (c10 == 'n') {
                return '\n';
            }
            if (c10 == 'r') {
                return '\r';
            }
            if (c10 == 't') {
                return '\t';
            }
            if (c10 == 'u') {
                if (i13 + 4 > this.limit && !fillBuffer(4)) {
                    throw syntaxError("Unterminated escape sequence");
                }
                char c11 = 0;
                int i14 = this.pos;
                int i15 = i14 + 4;
                while (i14 < i15) {
                    char c12 = this.buffer[i14];
                    char c13 = (char) (c11 << 4);
                    if (c12 < '0' || c12 > '9') {
                        if (c12 >= 'a' && c12 <= 'f') {
                            i10 = c12 - 'a';
                        } else {
                            if (c12 < 'A' || c12 > 'F') {
                                StringBuilder sbC = b.c("\\u");
                                sbC.append(new String(this.buffer, this.pos, 4));
                                throw new NumberFormatException(sbC.toString());
                            }
                            i10 = c12 - 'A';
                        }
                        i11 = i10 + 10;
                    } else {
                        i11 = c12 - '0';
                    }
                    c11 = (char) (i11 + c13);
                    i14++;
                }
                this.pos += 4;
                return c11;
            }
        }
        return c10;
    }

    private void skipQuotedValue(char c10) throws IOException {
        char[] cArr = this.buffer;
        do {
            int i10 = this.pos;
            int i11 = this.limit;
            while (i10 < i11) {
                int i12 = i10 + 1;
                char c11 = cArr[i10];
                if (c11 == c10) {
                    this.pos = i12;
                    return;
                }
                if (c11 == '\\') {
                    this.pos = i12;
                    readEscapeCharacter();
                    i10 = this.pos;
                    i11 = this.limit;
                } else {
                    if (c11 == '\n') {
                        this.lineNumber++;
                        this.lineStart = i12;
                    }
                    i10 = i12;
                }
            }
            this.pos = i10;
        } while (fillBuffer(1));
        throw syntaxError("Unterminated string");
    }

    private boolean skipTo(String str) throws IOException {
        while (true) {
            if (str.length() + this.pos > this.limit && !fillBuffer(str.length())) {
                return false;
            }
            char[] cArr = this.buffer;
            int i10 = this.pos;
            if (cArr[i10] != '\n') {
                for (int i11 = 0; i11 < str.length(); i11++) {
                    if (this.buffer[this.pos + i11] == str.charAt(i11)) {
                    }
                }
                return true;
            }
            this.lineNumber++;
            this.lineStart = i10 + 1;
            this.pos++;
        }
    }

    private void skipToEndOfLine() throws IOException {
        char c10;
        do {
            if (this.pos >= this.limit && !fillBuffer(1)) {
                return;
            }
            char[] cArr = this.buffer;
            int i10 = this.pos;
            int i11 = i10 + 1;
            this.pos = i11;
            c10 = cArr[i10];
            if (c10 == '\n') {
                this.lineNumber++;
                this.lineStart = i11;
                return;
            }
        } while (c10 != '\r');
    }

    private void skipUnquotedValue() throws IOException {
        do {
            int i10 = 0;
            while (true) {
                int i11 = this.pos;
                if (i11 + i10 < this.limit) {
                    char c10 = this.buffer[i11 + i10];
                    if (c10 != '\t' && c10 != '\n' && c10 != '\f' && c10 != '\r' && c10 != ' ') {
                        if (c10 != '#') {
                            if (c10 != ',') {
                                if (c10 != '/' && c10 != '=') {
                                    if (c10 != '{' && c10 != '}' && c10 != ':') {
                                        if (c10 != ';') {
                                            switch (c10) {
                                                case '[':
                                                case ']':
                                                    break;
                                                case '\\':
                                                    break;
                                                default:
                                                    i10++;
                                                    break;
                                            }
                                            return;
                                        }
                                    }
                                }
                            }
                        }
                        checkLenient();
                    }
                    this.pos += i10;
                    return;
                }
                this.pos = i11 + i10;
            }
        } while (fillBuffer(1));
    }

    private IOException syntaxError(String str) throws IOException {
        StringBuilder sbH = r0.h(str, " at line ");
        sbH.append(getLineNumber());
        sbH.append(" column ");
        sbH.append(getColumnNumber());
        throw new MalformedJsonException(sbH.toString());
    }

    public void beginArray() throws IOException {
        int iDoPeek = this.peeked;
        if (iDoPeek == 0) {
            iDoPeek = doPeek();
        }
        if (iDoPeek == 3) {
            push(1);
            this.peeked = 0;
            return;
        }
        StringBuilder sbC = b.c("Expected BEGIN_ARRAY but was ");
        sbC.append(peek());
        sbC.append(" at line ");
        sbC.append(getLineNumber());
        sbC.append(" column ");
        sbC.append(getColumnNumber());
        throw new IllegalStateException(sbC.toString());
    }

    public void beginObject() throws IOException {
        int iDoPeek = this.peeked;
        if (iDoPeek == 0) {
            iDoPeek = doPeek();
        }
        if (iDoPeek == 1) {
            push(3);
            this.peeked = 0;
            return;
        }
        StringBuilder sbC = b.c("Expected BEGIN_OBJECT but was ");
        sbC.append(peek());
        sbC.append(" at line ");
        sbC.append(getLineNumber());
        sbC.append(" column ");
        sbC.append(getColumnNumber());
        throw new IllegalStateException(sbC.toString());
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.peeked = 0;
        this.stack[0] = 8;
        this.stackSize = 1;
        this.in.close();
    }

    public void endArray() throws IOException {
        int iDoPeek = this.peeked;
        if (iDoPeek == 0) {
            iDoPeek = doPeek();
        }
        if (iDoPeek == 4) {
            this.stackSize--;
            this.peeked = 0;
            return;
        }
        StringBuilder sbC = b.c("Expected END_ARRAY but was ");
        sbC.append(peek());
        sbC.append(" at line ");
        sbC.append(getLineNumber());
        sbC.append(" column ");
        sbC.append(getColumnNumber());
        throw new IllegalStateException(sbC.toString());
    }

    public void endObject() throws IOException {
        int iDoPeek = this.peeked;
        if (iDoPeek == 0) {
            iDoPeek = doPeek();
        }
        if (iDoPeek == 2) {
            this.stackSize--;
            this.peeked = 0;
            return;
        }
        StringBuilder sbC = b.c("Expected END_OBJECT but was ");
        sbC.append(peek());
        sbC.append(" at line ");
        sbC.append(getLineNumber());
        sbC.append(" column ");
        sbC.append(getColumnNumber());
        throw new IllegalStateException(sbC.toString());
    }

    public boolean hasNext() throws IOException {
        int iDoPeek = this.peeked;
        if (iDoPeek == 0) {
            iDoPeek = doPeek();
        }
        return (iDoPeek == 2 || iDoPeek == 4) ? false : true;
    }

    public final boolean isLenient() {
        return this.lenient;
    }

    public boolean nextBoolean() throws IOException {
        int iDoPeek = this.peeked;
        if (iDoPeek == 0) {
            iDoPeek = doPeek();
        }
        if (iDoPeek == 5) {
            this.peeked = 0;
            return true;
        }
        if (iDoPeek == 6) {
            this.peeked = 0;
            return false;
        }
        StringBuilder sbC = b.c("Expected a boolean but was ");
        sbC.append(peek());
        sbC.append(" at line ");
        sbC.append(getLineNumber());
        sbC.append(" column ");
        sbC.append(getColumnNumber());
        throw new IllegalStateException(sbC.toString());
    }

    public double nextDouble() throws IOException {
        int iDoPeek = this.peeked;
        if (iDoPeek == 0) {
            iDoPeek = doPeek();
        }
        if (iDoPeek == 15) {
            this.peeked = 0;
            return this.peekedLong;
        }
        if (iDoPeek == 16) {
            this.peekedString = new String(this.buffer, this.pos, this.peekedNumberLength);
            this.pos += this.peekedNumberLength;
        } else if (iDoPeek == 8 || iDoPeek == 9) {
            this.peekedString = nextQuotedValue(iDoPeek == 8 ? '\'' : '\"');
        } else if (iDoPeek == 10) {
            this.peekedString = nextUnquotedValue();
        } else if (iDoPeek != 11) {
            StringBuilder sbC = b.c("Expected a double but was ");
            sbC.append(peek());
            sbC.append(" at line ");
            sbC.append(getLineNumber());
            sbC.append(" column ");
            sbC.append(getColumnNumber());
            throw new IllegalStateException(sbC.toString());
        }
        this.peeked = 11;
        double d10 = Double.parseDouble(this.peekedString);
        if (this.lenient || !(Double.isNaN(d10) || Double.isInfinite(d10))) {
            this.peekedString = null;
            this.peeked = 0;
            return d10;
        }
        throw new MalformedJsonException("JSON forbids NaN and infinities: " + d10 + " at line " + getLineNumber() + " column " + getColumnNumber());
    }

    public int nextInt() throws IOException {
        int iDoPeek = this.peeked;
        if (iDoPeek == 0) {
            iDoPeek = doPeek();
        }
        if (iDoPeek == 15) {
            long j10 = this.peekedLong;
            int i10 = (int) j10;
            if (j10 == i10) {
                this.peeked = 0;
                return i10;
            }
            StringBuilder sbC = b.c("Expected an int but was ");
            sbC.append(this.peekedLong);
            sbC.append(" at line ");
            sbC.append(getLineNumber());
            sbC.append(" column ");
            sbC.append(getColumnNumber());
            throw new NumberFormatException(sbC.toString());
        }
        if (iDoPeek == 16) {
            this.peekedString = new String(this.buffer, this.pos, this.peekedNumberLength);
            this.pos += this.peekedNumberLength;
        } else {
            if (iDoPeek != 8 && iDoPeek != 9) {
                StringBuilder sbC2 = b.c("Expected an int but was ");
                sbC2.append(peek());
                sbC2.append(" at line ");
                sbC2.append(getLineNumber());
                sbC2.append(" column ");
                sbC2.append(getColumnNumber());
                throw new IllegalStateException(sbC2.toString());
            }
            String strNextQuotedValue = nextQuotedValue(iDoPeek == 8 ? '\'' : '\"');
            this.peekedString = strNextQuotedValue;
            try {
                int i11 = Integer.parseInt(strNextQuotedValue);
                this.peeked = 0;
                return i11;
            } catch (NumberFormatException unused) {
            }
        }
        this.peeked = 11;
        double d10 = Double.parseDouble(this.peekedString);
        int i12 = (int) d10;
        if (i12 == d10) {
            this.peekedString = null;
            this.peeked = 0;
            return i12;
        }
        StringBuilder sbC3 = b.c("Expected an int but was ");
        sbC3.append(this.peekedString);
        sbC3.append(" at line ");
        sbC3.append(getLineNumber());
        sbC3.append(" column ");
        sbC3.append(getColumnNumber());
        throw new NumberFormatException(sbC3.toString());
    }

    public long nextLong() throws IOException {
        int iDoPeek = this.peeked;
        if (iDoPeek == 0) {
            iDoPeek = doPeek();
        }
        if (iDoPeek == 15) {
            this.peeked = 0;
            return this.peekedLong;
        }
        if (iDoPeek == 16) {
            this.peekedString = new String(this.buffer, this.pos, this.peekedNumberLength);
            this.pos += this.peekedNumberLength;
        } else {
            if (iDoPeek != 8 && iDoPeek != 9) {
                StringBuilder sbC = b.c("Expected a long but was ");
                sbC.append(peek());
                sbC.append(" at line ");
                sbC.append(getLineNumber());
                sbC.append(" column ");
                sbC.append(getColumnNumber());
                throw new IllegalStateException(sbC.toString());
            }
            String strNextQuotedValue = nextQuotedValue(iDoPeek == 8 ? '\'' : '\"');
            this.peekedString = strNextQuotedValue;
            try {
                long j10 = Long.parseLong(strNextQuotedValue);
                this.peeked = 0;
                return j10;
            } catch (NumberFormatException unused) {
            }
        }
        this.peeked = 11;
        double d10 = Double.parseDouble(this.peekedString);
        long j11 = (long) d10;
        if (j11 == d10) {
            this.peekedString = null;
            this.peeked = 0;
            return j11;
        }
        StringBuilder sbC2 = b.c("Expected a long but was ");
        sbC2.append(this.peekedString);
        sbC2.append(" at line ");
        sbC2.append(getLineNumber());
        sbC2.append(" column ");
        sbC2.append(getColumnNumber());
        throw new NumberFormatException(sbC2.toString());
    }

    public String nextName() throws IOException {
        String strNextQuotedValue;
        int iDoPeek = this.peeked;
        if (iDoPeek == 0) {
            iDoPeek = doPeek();
        }
        if (iDoPeek == 14) {
            strNextQuotedValue = nextUnquotedValue();
        } else if (iDoPeek == 12) {
            strNextQuotedValue = nextQuotedValue('\'');
        } else {
            if (iDoPeek != 13) {
                StringBuilder sbC = b.c("Expected a name but was ");
                sbC.append(peek());
                sbC.append(" at line ");
                sbC.append(getLineNumber());
                sbC.append(" column ");
                sbC.append(getColumnNumber());
                throw new IllegalStateException(sbC.toString());
            }
            strNextQuotedValue = nextQuotedValue('\"');
        }
        this.peeked = 0;
        return strNextQuotedValue;
    }

    public void nextNull() throws IOException {
        int iDoPeek = this.peeked;
        if (iDoPeek == 0) {
            iDoPeek = doPeek();
        }
        if (iDoPeek == 7) {
            this.peeked = 0;
            return;
        }
        StringBuilder sbC = b.c("Expected null but was ");
        sbC.append(peek());
        sbC.append(" at line ");
        sbC.append(getLineNumber());
        sbC.append(" column ");
        sbC.append(getColumnNumber());
        throw new IllegalStateException(sbC.toString());
    }

    public String nextString() throws IOException {
        String str;
        int iDoPeek = this.peeked;
        if (iDoPeek == 0) {
            iDoPeek = doPeek();
        }
        if (iDoPeek == 10) {
            str = nextUnquotedValue();
        } else if (iDoPeek == 8) {
            str = nextQuotedValue('\'');
        } else if (iDoPeek == 9) {
            str = nextQuotedValue('\"');
        } else if (iDoPeek == 11) {
            str = this.peekedString;
            this.peekedString = null;
        } else if (iDoPeek == 15) {
            str = Long.toString(this.peekedLong);
        } else {
            if (iDoPeek != 16) {
                StringBuilder sbC = b.c("Expected a string but was ");
                sbC.append(peek());
                sbC.append(" at line ");
                sbC.append(getLineNumber());
                sbC.append(" column ");
                sbC.append(getColumnNumber());
                throw new IllegalStateException(sbC.toString());
            }
            str = new String(this.buffer, this.pos, this.peekedNumberLength);
            this.pos += this.peekedNumberLength;
        }
        this.peeked = 0;
        return str;
    }

    public JsonToken peek() throws IOException {
        int iDoPeek = this.peeked;
        if (iDoPeek == 0) {
            iDoPeek = doPeek();
        }
        switch (iDoPeek) {
            case 1:
                return JsonToken.BEGIN_OBJECT;
            case 2:
                return JsonToken.END_OBJECT;
            case 3:
                return JsonToken.BEGIN_ARRAY;
            case 4:
                return JsonToken.END_ARRAY;
            case 5:
            case 6:
                return JsonToken.BOOLEAN;
            case 7:
                return JsonToken.NULL;
            case 8:
            case 9:
            case 10:
            case 11:
                return JsonToken.STRING;
            case 12:
            case 13:
            case 14:
                return JsonToken.NAME;
            case 15:
            case 16:
                return JsonToken.NUMBER;
            case 17:
                return JsonToken.END_DOCUMENT;
            default:
                throw new AssertionError();
        }
    }

    public final void setLenient(boolean z10) {
        this.lenient = z10;
    }

    public void skipValue() throws IOException {
        int i10 = 0;
        do {
            int iDoPeek = this.peeked;
            if (iDoPeek == 0) {
                iDoPeek = doPeek();
            }
            if (iDoPeek == 3) {
                push(1);
            } else {
                if (iDoPeek == 1) {
                    push(3);
                } else if (iDoPeek == 4 || iDoPeek == 2) {
                    this.stackSize--;
                    i10--;
                } else if (iDoPeek == 14 || iDoPeek == 10) {
                    skipUnquotedValue();
                } else if (iDoPeek == 8 || iDoPeek == 12) {
                    skipQuotedValue('\'');
                } else if (iDoPeek == 9 || iDoPeek == 13) {
                    skipQuotedValue('\"');
                } else if (iDoPeek == 16) {
                    this.pos += this.peekedNumberLength;
                }
                this.peeked = 0;
            }
            i10++;
            this.peeked = 0;
        } while (i10 != 0);
    }

    public String toString() {
        return getClass().getSimpleName() + " at line " + getLineNumber() + " column " + getColumnNumber();
    }
}
