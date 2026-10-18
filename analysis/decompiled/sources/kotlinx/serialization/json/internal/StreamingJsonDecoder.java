package kotlinx.serialization.json.internal;

import a1.d;
import fd.b;
import kotlinx.serialization.DeserializationStrategy;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.descriptors.SerialKind;
import kotlinx.serialization.encoding.AbstractDecoder;
import kotlinx.serialization.encoding.CompositeDecoder;
import kotlinx.serialization.encoding.Decoder;
import kotlinx.serialization.json.Json;
import kotlinx.serialization.json.JsonConfiguration;
import kotlinx.serialization.json.JsonDecoder;
import kotlinx.serialization.json.JsonElement;
import kotlinx.serialization.modules.SerializersModule;
import p4.h;

/* JADX INFO: compiled from: StreamingJsonDecoder.kt */
/* JADX INFO: loaded from: classes.dex */
public class StreamingJsonDecoder extends AbstractDecoder implements JsonDecoder {
    private final JsonConfiguration configuration;
    private int currentIndex;
    private final Json json;
    public final JsonLexer lexer;
    private final WriteMode mode;
    private final SerializersModule serializersModule;

    /* JADX INFO: compiled from: StreamingJsonDecoder.kt */
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[WriteMode.values().length];
            iArr[WriteMode.LIST.ordinal()] = 1;
            iArr[WriteMode.MAP.ordinal()] = 2;
            iArr[WriteMode.POLY_OBJ.ordinal()] = 3;
            iArr[WriteMode.OBJ.ordinal()] = 4;
            $EnumSwitchMapping$0 = iArr;
        }
    }

    public StreamingJsonDecoder(Json json, WriteMode writeMode, JsonLexer jsonLexer) {
        h.j(json, "json");
        h.j(writeMode, "mode");
        h.j(jsonLexer, "lexer");
        this.json = json;
        this.mode = writeMode;
        this.lexer = jsonLexer;
        this.serializersModule = json.getSerializersModule();
        this.currentIndex = -1;
        this.configuration = json.getConfiguration();
    }

    private final void checkLeadingComma() {
        if (this.lexer.peekNextToken() == 4) {
            throw d.c(this.lexer, "Unexpected leading comma", 0, 2, null);
        }
    }

    private final boolean coerceInputValue(SerialDescriptor serialDescriptor, int i10) {
        String strPeekString;
        Json json = this.json;
        SerialDescriptor elementDescriptor = serialDescriptor.getElementDescriptor(i10);
        if (elementDescriptor.isNullable() || !(!this.lexer.tryConsumeNotNull())) {
            if (!h.c(elementDescriptor.getKind(), SerialKind.ENUM.INSTANCE) || (strPeekString = this.lexer.peekString(this.configuration.isLenient())) == null || JsonNamesMapKt.getJsonNameIndex(elementDescriptor, json, strPeekString) != -3) {
                return false;
            }
            this.lexer.consumeString();
        }
        return true;
    }

    private final int decodeListIndex() {
        boolean zTryConsumeComma = this.lexer.tryConsumeComma();
        if (!this.lexer.canConsumeValue()) {
            if (zTryConsumeComma) {
                throw d.c(this.lexer, "Unexpected trailing comma", 0, 2, null);
            }
            return -1;
        }
        int i10 = this.currentIndex;
        if (i10 != -1 && !zTryConsumeComma) {
            throw d.c(this.lexer, "Expected end of the array or comma", 0, 2, null);
        }
        int i11 = i10 + 1;
        this.currentIndex = i11;
        return i11;
    }

    /* JADX WARN: Code duplicated, block: B:14:0x0027  */
    /* JADX WARN: Code duplicated, block: B:15:0x0029  */
    /* JADX WARN: Code duplicated, block: B:17:0x002d  */
    /* JADX WARN: Code duplicated, block: B:20:0x0035  */
    /* JADX WARN: Code duplicated, block: B:22:0x0040  */
    /* JADX WARN: Code duplicated, block: B:25:0x0047  */
    /* JADX WARN: Code duplicated, block: B:28:0x0059 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:30:0x005c  */
    /* JADX WARN: Code duplicated, block: B:32:? A[RETURN, SYNTHETIC] */
    private final int decodeMapIndex() {
        boolean zTryConsumeComma;
        JsonLexer jsonLexer;
        int i10;
        JsonLexer jsonLexer2;
        boolean z10;
        int i11;
        int i12 = this.currentIndex;
        boolean z11 = i12 % 2 != 0;
        if (z11) {
            if (i12 != -1) {
                zTryConsumeComma = this.lexer.tryConsumeComma();
            }
            if (this.lexer.canConsumeValue()) {
                if (zTryConsumeComma) {
                    throw d.c(this.lexer, "Expected '}', but had ',' instead", 0, 2, null);
                }
                return -1;
            }
            if (z11) {
                if (this.currentIndex == -1) {
                    jsonLexer2 = this.lexer;
                    z10 = !zTryConsumeComma;
                    i11 = jsonLexer2.currentPosition;
                    if (!z10) {
                        jsonLexer2.fail("Unexpected trailing comma", i11);
                        throw new b();
                    }
                } else {
                    jsonLexer = this.lexer;
                    i10 = jsonLexer.currentPosition;
                    if (!zTryConsumeComma) {
                        jsonLexer.fail("Expected comma after the key-value pair", i10);
                        throw new b();
                    }
                }
            }
            int i13 = this.currentIndex + 1;
            this.currentIndex = i13;
            return i13;
        }
        this.lexer.consumeNextToken(':');
        zTryConsumeComma = false;
        if (this.lexer.canConsumeValue()) {
            if (zTryConsumeComma) {
                return -1;
            }
            throw d.c(this.lexer, "Expected '}', but had ',' instead", 0, 2, null);
        }
        if (z11) {
            if (this.currentIndex == -1) {
                jsonLexer2 = this.lexer;
                z10 = !zTryConsumeComma;
                i11 = jsonLexer2.currentPosition;
                if (!z10) {
                    jsonLexer2.fail("Unexpected trailing comma", i11);
                    throw new b();
                }
            } else {
                jsonLexer = this.lexer;
                i10 = jsonLexer.currentPosition;
                if (!zTryConsumeComma) {
                    jsonLexer.fail("Expected comma after the key-value pair", i10);
                    throw new b();
                }
            }
        }
        int i14 = this.currentIndex + 1;
        this.currentIndex = i14;
        return i14;
    }

    private final int decodeObjectIndex(SerialDescriptor serialDescriptor) {
        boolean zTryConsumeComma;
        boolean zTryConsumeComma2 = this.lexer.tryConsumeComma();
        while (true) {
            boolean z10 = false;
            if (!this.lexer.canConsumeValue()) {
                if (zTryConsumeComma2) {
                    throw d.c(this.lexer, "Unexpected trailing comma", 0, 2, null);
                }
                return -1;
            }
            String strDecodeStringKey = decodeStringKey();
            this.lexer.consumeNextToken(':');
            int jsonNameIndex = JsonNamesMapKt.getJsonNameIndex(serialDescriptor, this.json, strDecodeStringKey);
            if (jsonNameIndex == -3) {
                z10 = true;
                zTryConsumeComma = false;
            } else {
                if (!this.configuration.getCoerceInputValues() || !coerceInputValue(serialDescriptor, jsonNameIndex)) {
                    return jsonNameIndex;
                }
                zTryConsumeComma = this.lexer.tryConsumeComma();
            }
            zTryConsumeComma2 = z10 ? handleUnknown(strDecodeStringKey) : zTryConsumeComma;
        }
    }

    private final String decodeStringKey() {
        return this.configuration.isLenient() ? this.lexer.consumeStringLenientNotNull() : this.lexer.consumeKeyString();
    }

    private final boolean handleUnknown(String str) {
        if (this.configuration.getIgnoreUnknownKeys()) {
            this.lexer.skipElement(this.configuration.isLenient());
        } else {
            this.lexer.failOnUnknownKey(str);
        }
        return this.lexer.tryConsumeComma();
    }

    @Override // kotlinx.serialization.encoding.AbstractDecoder, kotlinx.serialization.encoding.Decoder
    public CompositeDecoder beginStructure(SerialDescriptor serialDescriptor) {
        h.j(serialDescriptor, "descriptor");
        WriteMode writeModeSwitchMode = WriteModeKt.switchMode(this.json, serialDescriptor);
        this.lexer.consumeNextToken(writeModeSwitchMode.begin);
        checkLeadingComma();
        int i10 = WhenMappings.$EnumSwitchMapping$0[writeModeSwitchMode.ordinal()];
        if (i10 == 1 || i10 == 2 || i10 == 3) {
            return new StreamingJsonDecoder(this.json, writeModeSwitchMode, this.lexer);
        }
        return this.mode == writeModeSwitchMode ? this : new StreamingJsonDecoder(this.json, writeModeSwitchMode, this.lexer);
    }

    @Override // kotlinx.serialization.encoding.AbstractDecoder, kotlinx.serialization.encoding.Decoder
    public boolean decodeBoolean() {
        return this.configuration.isLenient() ? this.lexer.consumeBooleanLenient() : this.lexer.consumeBoolean();
    }

    @Override // kotlinx.serialization.encoding.AbstractDecoder, kotlinx.serialization.encoding.Decoder
    public byte decodeByte() {
        long jConsumeNumericLiteral = this.lexer.consumeNumericLiteral();
        byte b10 = (byte) jConsumeNumericLiteral;
        if (jConsumeNumericLiteral == b10) {
            return b10;
        }
        throw d.c(this.lexer, "Failed to parse byte for input '" + jConsumeNumericLiteral + '\'', 0, 2, null);
    }

    @Override // kotlinx.serialization.encoding.AbstractDecoder, kotlinx.serialization.encoding.Decoder
    public char decodeChar() {
        String strConsumeStringLenient = this.lexer.consumeStringLenient();
        if (strConsumeStringLenient.length() == 1) {
            return strConsumeStringLenient.charAt(0);
        }
        throw d.c(this.lexer, "Expected single char, but got '" + strConsumeStringLenient + '\'', 0, 2, null);
    }

    @Override // kotlinx.serialization.encoding.AbstractDecoder, kotlinx.serialization.encoding.Decoder
    public double decodeDouble() {
        JsonLexer jsonLexer = this.lexer;
        String strConsumeStringLenient = jsonLexer.consumeStringLenient();
        boolean z10 = false;
        try {
            double d10 = Double.parseDouble(strConsumeStringLenient);
            if (!this.json.getConfiguration().getAllowSpecialFloatingPointValues()) {
                if (!Double.isInfinite(d10) && !Double.isNaN(d10)) {
                    z10 = true;
                }
                if (!z10) {
                    JsonExceptionsKt.throwInvalidFloatingPointDecoded(this.lexer, Double.valueOf(d10));
                    throw new b();
                }
            }
            return d10;
        } catch (IllegalArgumentException unused) {
            throw d.c(jsonLexer, "Failed to parse type 'double' for input '" + strConsumeStringLenient + '\'', 0, 2, null);
        }
    }

    @Override // kotlinx.serialization.encoding.CompositeDecoder
    public int decodeElementIndex(SerialDescriptor serialDescriptor) {
        h.j(serialDescriptor, "descriptor");
        int i10 = WhenMappings.$EnumSwitchMapping$0[this.mode.ordinal()];
        if (i10 != 2) {
            return i10 != 4 ? decodeListIndex() : decodeObjectIndex(serialDescriptor);
        }
        return decodeMapIndex();
    }

    @Override // kotlinx.serialization.encoding.AbstractDecoder, kotlinx.serialization.encoding.Decoder
    public int decodeEnum(SerialDescriptor serialDescriptor) {
        h.j(serialDescriptor, "enumDescriptor");
        return JsonNamesMapKt.getJsonNameIndexOrThrow(serialDescriptor, this.json, decodeString());
    }

    @Override // kotlinx.serialization.encoding.AbstractDecoder, kotlinx.serialization.encoding.Decoder
    public float decodeFloat() {
        JsonLexer jsonLexer = this.lexer;
        String strConsumeStringLenient = jsonLexer.consumeStringLenient();
        boolean z10 = false;
        try {
            float f10 = Float.parseFloat(strConsumeStringLenient);
            if (!this.json.getConfiguration().getAllowSpecialFloatingPointValues()) {
                if (!Float.isInfinite(f10) && !Float.isNaN(f10)) {
                    z10 = true;
                }
                if (!z10) {
                    JsonExceptionsKt.throwInvalidFloatingPointDecoded(this.lexer, Float.valueOf(f10));
                    throw new b();
                }
            }
            return f10;
        } catch (IllegalArgumentException unused) {
            throw d.c(jsonLexer, "Failed to parse type 'float' for input '" + strConsumeStringLenient + '\'', 0, 2, null);
        }
    }

    @Override // kotlinx.serialization.encoding.AbstractDecoder, kotlinx.serialization.encoding.Decoder
    public Decoder decodeInline(SerialDescriptor serialDescriptor) {
        h.j(serialDescriptor, "inlineDescriptor");
        return StreamingJsonEncoderKt.isUnsignedNumber(serialDescriptor) ? new JsonDecoderForUnsignedTypes(this.lexer, this.json) : super.decodeInline(serialDescriptor);
    }

    @Override // kotlinx.serialization.encoding.AbstractDecoder, kotlinx.serialization.encoding.Decoder
    public int decodeInt() {
        long jConsumeNumericLiteral = this.lexer.consumeNumericLiteral();
        int i10 = (int) jConsumeNumericLiteral;
        if (jConsumeNumericLiteral == i10) {
            return i10;
        }
        throw d.c(this.lexer, "Failed to parse int for input '" + jConsumeNumericLiteral + '\'', 0, 2, null);
    }

    @Override // kotlinx.serialization.json.JsonDecoder
    public JsonElement decodeJsonElement() {
        return new JsonTreeReader(this.json.getConfiguration(), this.lexer).read();
    }

    @Override // kotlinx.serialization.encoding.AbstractDecoder, kotlinx.serialization.encoding.Decoder
    public long decodeLong() {
        return this.lexer.consumeNumericLiteral();
    }

    @Override // kotlinx.serialization.encoding.AbstractDecoder, kotlinx.serialization.encoding.Decoder
    public boolean decodeNotNullMark() {
        return this.lexer.tryConsumeNotNull();
    }

    @Override // kotlinx.serialization.encoding.AbstractDecoder, kotlinx.serialization.encoding.Decoder
    public Void decodeNull() {
        return null;
    }

    @Override // kotlinx.serialization.encoding.AbstractDecoder, kotlinx.serialization.encoding.Decoder
    public <T> T decodeSerializableValue(DeserializationStrategy<T> deserializationStrategy) {
        h.j(deserializationStrategy, "deserializer");
        return (T) PolymorphicKt.decodeSerializableValuePolymorphic(this, deserializationStrategy);
    }

    @Override // kotlinx.serialization.encoding.AbstractDecoder, kotlinx.serialization.encoding.Decoder
    public short decodeShort() {
        long jConsumeNumericLiteral = this.lexer.consumeNumericLiteral();
        short s10 = (short) jConsumeNumericLiteral;
        if (jConsumeNumericLiteral == s10) {
            return s10;
        }
        throw d.c(this.lexer, "Failed to parse short for input '" + jConsumeNumericLiteral + '\'', 0, 2, null);
    }

    @Override // kotlinx.serialization.encoding.AbstractDecoder, kotlinx.serialization.encoding.Decoder
    public String decodeString() {
        return this.configuration.isLenient() ? this.lexer.consumeStringLenientNotNull() : this.lexer.consumeString();
    }

    @Override // kotlinx.serialization.encoding.AbstractDecoder, kotlinx.serialization.encoding.CompositeDecoder
    public void endStructure(SerialDescriptor serialDescriptor) {
        h.j(serialDescriptor, "descriptor");
        this.lexer.consumeNextToken(this.mode.end);
    }

    @Override // kotlinx.serialization.json.JsonDecoder
    public final Json getJson() {
        return this.json;
    }

    @Override // kotlinx.serialization.encoding.CompositeDecoder
    public SerializersModule getSerializersModule() {
        return this.serializersModule;
    }
}
