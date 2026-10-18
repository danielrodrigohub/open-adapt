package kotlinx.serialization.json;

import kotlinx.serialization.DeserializationStrategy;
import kotlinx.serialization.SerializationStrategy;
import kotlinx.serialization.StringFormat;
import kotlinx.serialization.json.internal.DescriptorSchemaCache;
import kotlinx.serialization.json.internal.JsonLexer;
import kotlinx.serialization.json.internal.JsonStringBuilder;
import kotlinx.serialization.json.internal.StreamingJsonDecoder;
import kotlinx.serialization.json.internal.StreamingJsonEncoder;
import kotlinx.serialization.json.internal.WriteMode;
import kotlinx.serialization.modules.SerializersModule;
import kotlinx.serialization.modules.SerializersModuleKt;
import rd.h;

/* JADX INFO: compiled from: Json.kt */
/* JADX INFO: loaded from: classes.dex */
public abstract class Json implements StringFormat {
    public static final Default Default = new Default(null);
    private final DescriptorSchemaCache _schemaCache;
    private final JsonConfiguration configuration;
    private final SerializersModule serializersModule;

    /* JADX INFO: compiled from: Json.kt */
    public static final class Default extends Json {
        private Default() {
            super(new JsonConfiguration(false, false, false, false, false, null, false, false, null, false, false, 2047, null), SerializersModuleKt.getEmptySerializersModule(), null);
        }

        public /* synthetic */ Default(h hVar) {
            this();
        }
    }

    private Json(JsonConfiguration jsonConfiguration, SerializersModule serializersModule) {
        this.configuration = jsonConfiguration;
        this.serializersModule = serializersModule;
        this._schemaCache = new DescriptorSchemaCache();
    }

    public /* synthetic */ Json(JsonConfiguration jsonConfiguration, SerializersModule serializersModule, h hVar) {
        this(jsonConfiguration, serializersModule);
    }

    @Override // kotlinx.serialization.StringFormat
    public final <T> T decodeFromString(DeserializationStrategy<T> deserializationStrategy, String str) {
        p4.h.j(deserializationStrategy, "deserializer");
        p4.h.j(str, "string");
        JsonLexer jsonLexer = new JsonLexer(str);
        T t10 = (T) new StreamingJsonDecoder(this, WriteMode.OBJ, jsonLexer).decodeSerializableValue(deserializationStrategy);
        jsonLexer.expectEof();
        return t10;
    }

    @Override // kotlinx.serialization.StringFormat
    public final <T> String encodeToString(SerializationStrategy<? super T> serializationStrategy, T t10) {
        p4.h.j(serializationStrategy, "serializer");
        JsonStringBuilder jsonStringBuilder = new JsonStringBuilder();
        try {
            new StreamingJsonEncoder(jsonStringBuilder, this, WriteMode.OBJ, new JsonEncoder[WriteMode.values().length]).encodeSerializableValue(serializationStrategy, t10);
            return jsonStringBuilder.toString();
        } finally {
            jsonStringBuilder.release();
        }
    }

    public final JsonConfiguration getConfiguration() {
        return this.configuration;
    }

    @Override // kotlinx.serialization.SerialFormat
    public SerializersModule getSerializersModule() {
        return this.serializersModule;
    }

    public final DescriptorSchemaCache get_schemaCache$kotlinx_serialization_json() {
        return this._schemaCache;
    }

    public final JsonElement parseToJsonElement(String str) {
        p4.h.j(str, "string");
        return (JsonElement) decodeFromString(JsonElementSerializer.INSTANCE, str);
    }
}
