package kotlinx.serialization.json.internal;

import a1.d;
import fd.j;
import fd.k;
import fd.l;
import fd.m;
import g7.c;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.AbstractDecoder;
import kotlinx.serialization.json.Json;
import kotlinx.serialization.modules.SerializersModule;
import okhttp3.internal.http2.Settings;
import p4.h;
import yd.n;

/* JADX INFO: compiled from: StreamingJsonDecoder.kt */
/* JADX INFO: loaded from: classes.dex */
public final class JsonDecoderForUnsignedTypes extends AbstractDecoder {
    private final JsonLexer lexer;
    private final SerializersModule serializersModule;

    public JsonDecoderForUnsignedTypes(JsonLexer jsonLexer, Json json) {
        h.j(jsonLexer, "lexer");
        h.j(json, "json");
        this.lexer = jsonLexer;
        this.serializersModule = json.getSerializersModule();
    }

    @Override // kotlinx.serialization.encoding.AbstractDecoder, kotlinx.serialization.encoding.Decoder
    public byte decodeByte() {
        j jVar;
        JsonLexer jsonLexer = this.lexer;
        String strConsumeStringLenient = jsonLexer.consumeStringLenient();
        try {
            h.j(strConsumeStringLenient, "<this>");
            k kVarF = h.F(strConsumeStringLenient);
            if (kVarF != null) {
                int i10 = kVarF.f7403h;
                jVar = c.g(i10, 255) > 0 ? null : new j((byte) i10);
            }
            if (jVar != null) {
                return jVar.f7401h;
            }
            n.V(strConsumeStringLenient);
            throw null;
        } catch (IllegalArgumentException unused) {
            throw d.c(jsonLexer, "Failed to parse type 'UByte' for input '" + strConsumeStringLenient + '\'', 0, 2, null);
        }
    }

    @Override // kotlinx.serialization.encoding.CompositeDecoder
    public int decodeElementIndex(SerialDescriptor serialDescriptor) {
        h.j(serialDescriptor, "descriptor");
        throw new IllegalStateException("unsupported".toString());
    }

    @Override // kotlinx.serialization.encoding.AbstractDecoder, kotlinx.serialization.encoding.Decoder
    public int decodeInt() {
        JsonLexer jsonLexer = this.lexer;
        String strConsumeStringLenient = jsonLexer.consumeStringLenient();
        try {
            h.j(strConsumeStringLenient, "<this>");
            k kVarF = h.F(strConsumeStringLenient);
            if (kVarF != null) {
                return kVarF.f7403h;
            }
            n.V(strConsumeStringLenient);
            throw null;
        } catch (IllegalArgumentException unused) {
            throw d.c(jsonLexer, "Failed to parse type 'UInt' for input '" + strConsumeStringLenient + '\'', 0, 2, null);
        }
    }

    @Override // kotlinx.serialization.encoding.AbstractDecoder, kotlinx.serialization.encoding.Decoder
    public long decodeLong() {
        JsonLexer jsonLexer = this.lexer;
        String strConsumeStringLenient = jsonLexer.consumeStringLenient();
        try {
            h.j(strConsumeStringLenient, "<this>");
            l lVarG = h.G(strConsumeStringLenient);
            if (lVarG != null) {
                return lVarG.f7405h;
            }
            n.V(strConsumeStringLenient);
            throw null;
        } catch (IllegalArgumentException unused) {
            throw d.c(jsonLexer, "Failed to parse type 'ULong' for input '" + strConsumeStringLenient + '\'', 0, 2, null);
        }
    }

    @Override // kotlinx.serialization.encoding.AbstractDecoder, kotlinx.serialization.encoding.Decoder
    public short decodeShort() {
        m mVar;
        JsonLexer jsonLexer = this.lexer;
        String strConsumeStringLenient = jsonLexer.consumeStringLenient();
        try {
            h.j(strConsumeStringLenient, "<this>");
            k kVarF = h.F(strConsumeStringLenient);
            if (kVarF != null) {
                int i10 = kVarF.f7403h;
                mVar = c.g(i10, Settings.DEFAULT_INITIAL_WINDOW_SIZE) > 0 ? null : new m((short) i10);
            }
            if (mVar != null) {
                return mVar.f7407h;
            }
            n.V(strConsumeStringLenient);
            throw null;
        } catch (IllegalArgumentException unused) {
            throw d.c(jsonLexer, "Failed to parse type 'UShort' for input '" + strConsumeStringLenient + '\'', 0, 2, null);
        }
    }

    @Override // kotlinx.serialization.encoding.CompositeDecoder
    public SerializersModule getSerializersModule() {
        return this.serializersModule;
    }
}
