package kotlinx.serialization.json.internal;

import a0.b;
import a0.d;
import java.util.NoSuchElementException;
import kotlinx.serialization.DeserializationStrategy;
import kotlinx.serialization.descriptors.PolymorphicKind;
import kotlinx.serialization.descriptors.PrimitiveKind;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.descriptors.SerialKind;
import kotlinx.serialization.descriptors.StructureKind;
import kotlinx.serialization.encoding.CompositeDecoder;
import kotlinx.serialization.encoding.Decoder;
import kotlinx.serialization.internal.NamedValueDecoder;
import kotlinx.serialization.json.Json;
import kotlinx.serialization.json.JsonArray;
import kotlinx.serialization.json.JsonConfiguration;
import kotlinx.serialization.json.JsonDecoder;
import kotlinx.serialization.json.JsonElement;
import kotlinx.serialization.json.JsonElementKt;
import kotlinx.serialization.json.JsonLiteral;
import kotlinx.serialization.json.JsonNull;
import kotlinx.serialization.json.JsonObject;
import kotlinx.serialization.json.JsonPrimitive;
import kotlinx.serialization.modules.SerializersModule;
import rd.h;
import rd.x;

/* JADX INFO: compiled from: TreeJsonDecoder.kt */
/* JADX INFO: loaded from: classes.dex */
abstract class AbstractJsonTreeDecoder extends NamedValueDecoder implements JsonDecoder {
    public final JsonConfiguration configuration;
    private final Json json;
    private final JsonElement value;

    private AbstractJsonTreeDecoder(Json json, JsonElement jsonElement) {
        this.json = json;
        this.value = jsonElement;
        this.configuration = getJson().getConfiguration();
    }

    public /* synthetic */ AbstractJsonTreeDecoder(Json json, JsonElement jsonElement, h hVar) {
        this(json, jsonElement);
    }

    private final JsonLiteral asLiteral(JsonPrimitive jsonPrimitive, String str) {
        JsonLiteral jsonLiteral = jsonPrimitive instanceof JsonLiteral ? (JsonLiteral) jsonPrimitive : null;
        if (jsonLiteral != null) {
            return jsonLiteral;
        }
        throw JsonExceptionsKt.JsonDecodingException(-1, "Unexpected 'null' when " + str + " was expected");
    }

    private final JsonElement currentObject() {
        String currentTagOrNull = getCurrentTagOrNull();
        JsonElement jsonElementCurrentElement = currentTagOrNull == null ? null : currentElement(currentTagOrNull);
        return jsonElementCurrentElement == null ? getValue() : jsonElementCurrentElement;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Void unparsedPrimitive(String str) {
        throw JsonExceptionsKt.JsonDecodingException(-1, "Failed to parse '" + str + '\'', currentObject().toString());
    }

    @Override // kotlinx.serialization.encoding.Decoder
    public CompositeDecoder beginStructure(SerialDescriptor serialDescriptor) {
        p4.h.j(serialDescriptor, "descriptor");
        JsonElement jsonElementCurrentObject = currentObject();
        SerialKind kind = serialDescriptor.getKind();
        if (p4.h.c(kind, StructureKind.LIST.INSTANCE) ? true : kind instanceof PolymorphicKind) {
            Json json = getJson();
            if (jsonElementCurrentObject instanceof JsonArray) {
                return new JsonTreeListDecoder(json, (JsonArray) jsonElementCurrentObject);
            }
            StringBuilder sbC = b.c("Expected ");
            sbC.append(x.a(JsonArray.class));
            sbC.append(" as the serialized body of ");
            sbC.append(serialDescriptor.getSerialName());
            sbC.append(", but had ");
            sbC.append(x.a(jsonElementCurrentObject.getClass()));
            throw JsonExceptionsKt.JsonDecodingException(-1, sbC.toString());
        }
        if (!p4.h.c(kind, StructureKind.MAP.INSTANCE)) {
            Json json2 = getJson();
            if (jsonElementCurrentObject instanceof JsonObject) {
                return new JsonTreeDecoder(json2, (JsonObject) jsonElementCurrentObject, null, null, 12, null);
            }
            StringBuilder sbC2 = b.c("Expected ");
            sbC2.append(x.a(JsonObject.class));
            sbC2.append(" as the serialized body of ");
            sbC2.append(serialDescriptor.getSerialName());
            sbC2.append(", but had ");
            sbC2.append(x.a(jsonElementCurrentObject.getClass()));
            throw JsonExceptionsKt.JsonDecodingException(-1, sbC2.toString());
        }
        Json json3 = getJson();
        SerialDescriptor serialDescriptorCarrierDescriptor = WriteModeKt.carrierDescriptor(serialDescriptor.getElementDescriptor(0), json3.getSerializersModule());
        SerialKind kind2 = serialDescriptorCarrierDescriptor.getKind();
        if ((kind2 instanceof PrimitiveKind) || p4.h.c(kind2, SerialKind.ENUM.INSTANCE)) {
            Json json4 = getJson();
            if (jsonElementCurrentObject instanceof JsonObject) {
                return new JsonTreeMapDecoder(json4, (JsonObject) jsonElementCurrentObject);
            }
            StringBuilder sbC3 = b.c("Expected ");
            sbC3.append(x.a(JsonObject.class));
            sbC3.append(" as the serialized body of ");
            sbC3.append(serialDescriptor.getSerialName());
            sbC3.append(", but had ");
            sbC3.append(x.a(jsonElementCurrentObject.getClass()));
            throw JsonExceptionsKt.JsonDecodingException(-1, sbC3.toString());
        }
        if (!json3.getConfiguration().getAllowStructuredMapKeys()) {
            throw JsonExceptionsKt.InvalidKeyKindException(serialDescriptorCarrierDescriptor);
        }
        Json json5 = getJson();
        if (jsonElementCurrentObject instanceof JsonArray) {
            return new JsonTreeListDecoder(json5, (JsonArray) jsonElementCurrentObject);
        }
        StringBuilder sbC4 = b.c("Expected ");
        sbC4.append(x.a(JsonArray.class));
        sbC4.append(" as the serialized body of ");
        sbC4.append(serialDescriptor.getSerialName());
        sbC4.append(", but had ");
        sbC4.append(x.a(jsonElementCurrentObject.getClass()));
        throw JsonExceptionsKt.JsonDecodingException(-1, sbC4.toString());
    }

    @Override // kotlinx.serialization.internal.NamedValueDecoder
    public String composeName(String str, String str2) {
        p4.h.j(str, "parentName");
        p4.h.j(str2, "childName");
        return str2;
    }

    public abstract JsonElement currentElement(String str);

    @Override // kotlinx.serialization.json.JsonDecoder
    public JsonElement decodeJsonElement() {
        return currentObject();
    }

    @Override // kotlinx.serialization.encoding.Decoder
    public boolean decodeNotNullMark() {
        return !(currentObject() instanceof JsonNull);
    }

    @Override // kotlinx.serialization.internal.TaggedDecoder, kotlinx.serialization.encoding.Decoder
    public <T> T decodeSerializableValue(DeserializationStrategy<T> deserializationStrategy) {
        p4.h.j(deserializationStrategy, "deserializer");
        return (T) PolymorphicKt.decodeSerializableValuePolymorphic(this, deserializationStrategy);
    }

    @Override // kotlinx.serialization.encoding.CompositeDecoder
    public void endStructure(SerialDescriptor serialDescriptor) {
        p4.h.j(serialDescriptor, "descriptor");
    }

    @Override // kotlinx.serialization.json.JsonDecoder
    public Json getJson() {
        return this.json;
    }

    public final JsonPrimitive getPrimitiveValue(String str) {
        p4.h.j(str, "tag");
        JsonElement jsonElementCurrentElement = currentElement(str);
        JsonPrimitive jsonPrimitive = jsonElementCurrentElement instanceof JsonPrimitive ? (JsonPrimitive) jsonElementCurrentElement : null;
        if (jsonPrimitive != null) {
            return jsonPrimitive;
        }
        throw JsonExceptionsKt.JsonDecodingException(-1, "Expected JsonPrimitive at " + str + ", found " + jsonElementCurrentElement, currentObject().toString());
    }

    @Override // kotlinx.serialization.encoding.CompositeDecoder
    public SerializersModule getSerializersModule() {
        return getJson().getSerializersModule();
    }

    public abstract JsonElement getValue();

    @Override // kotlinx.serialization.internal.TaggedDecoder
    public boolean decodeTaggedBoolean(String str) {
        p4.h.j(str, "tag");
        JsonPrimitive primitiveValue = getPrimitiveValue(str);
        if (!getJson().getConfiguration().isLenient() && asLiteral(primitiveValue, "boolean").isString()) {
            throw JsonExceptionsKt.JsonDecodingException(-1, d.c("Boolean literal for key '", str, "' should be unquoted.\nUse 'isLenient = true' in 'Json {}` builder to accept non-compliant JSON."), currentObject().toString());
        }
        try {
            Boolean booleanOrNull = JsonElementKt.getBooleanOrNull(primitiveValue);
            if (booleanOrNull != null) {
                return booleanOrNull.booleanValue();
            }
            throw new IllegalArgumentException();
        } catch (IllegalArgumentException unused) {
            unparsedPrimitive("boolean");
            throw new fd.b();
        }
    }

    @Override // kotlinx.serialization.internal.TaggedDecoder
    public byte decodeTaggedByte(String str) {
        p4.h.j(str, "tag");
        try {
            int i10 = JsonElementKt.getInt(getPrimitiveValue(str));
            boolean z10 = false;
            if (-128 <= i10 && i10 <= 127) {
                z10 = true;
            }
            Byte bValueOf = z10 ? Byte.valueOf((byte) i10) : null;
            if (bValueOf != null) {
                return bValueOf.byteValue();
            }
            unparsedPrimitive("byte");
            throw new fd.b();
        } catch (IllegalArgumentException unused) {
            unparsedPrimitive("byte");
            throw new fd.b();
        }
    }

    @Override // kotlinx.serialization.internal.TaggedDecoder
    public char decodeTaggedChar(String str) {
        p4.h.j(str, "tag");
        try {
            String content = getPrimitiveValue(str).getContent();
            p4.h.j(content, "<this>");
            int length = content.length();
            if (length == 0) {
                throw new NoSuchElementException("Char sequence is empty.");
            }
            if (length == 1) {
                return content.charAt(0);
            }
            throw new IllegalArgumentException("Char sequence has more than one element.");
        } catch (IllegalArgumentException unused) {
            unparsedPrimitive("char");
            throw new fd.b();
        }
    }

    @Override // kotlinx.serialization.internal.TaggedDecoder
    public double decodeTaggedDouble(String str) {
        p4.h.j(str, "tag");
        try {
            double d10 = JsonElementKt.getDouble(getPrimitiveValue(str));
            if (!getJson().getConfiguration().getAllowSpecialFloatingPointValues()) {
                if (!((Double.isInfinite(d10) || Double.isNaN(d10)) ? false : true)) {
                    throw JsonExceptionsKt.InvalidFloatingPointDecoded(Double.valueOf(d10), str, currentObject().toString());
                }
            }
            return d10;
        } catch (IllegalArgumentException unused) {
            unparsedPrimitive("double");
            throw new fd.b();
        }
    }

    @Override // kotlinx.serialization.internal.TaggedDecoder
    public int decodeTaggedEnum(String str, SerialDescriptor serialDescriptor) {
        p4.h.j(str, "tag");
        p4.h.j(serialDescriptor, "enumDescriptor");
        return JsonNamesMapKt.getJsonNameIndexOrThrow(serialDescriptor, getJson(), getPrimitiveValue(str).getContent());
    }

    @Override // kotlinx.serialization.internal.TaggedDecoder
    public float decodeTaggedFloat(String str) {
        p4.h.j(str, "tag");
        try {
            float f10 = JsonElementKt.getFloat(getPrimitiveValue(str));
            if (!getJson().getConfiguration().getAllowSpecialFloatingPointValues()) {
                if (!((Float.isInfinite(f10) || Float.isNaN(f10)) ? false : true)) {
                    throw JsonExceptionsKt.InvalidFloatingPointDecoded(Float.valueOf(f10), str, currentObject().toString());
                }
            }
            return f10;
        } catch (IllegalArgumentException unused) {
            unparsedPrimitive("float");
            throw new fd.b();
        }
    }

    @Override // kotlinx.serialization.internal.TaggedDecoder
    public Decoder decodeTaggedInline(String str, SerialDescriptor serialDescriptor) {
        p4.h.j(str, "tag");
        p4.h.j(serialDescriptor, "inlineDescriptor");
        return StreamingJsonEncoderKt.isUnsignedNumber(serialDescriptor) ? new JsonDecoderForUnsignedTypes(new JsonLexer(getPrimitiveValue(str).getContent()), getJson()) : super.decodeTaggedInline(str, serialDescriptor);
    }

    @Override // kotlinx.serialization.internal.TaggedDecoder
    public int decodeTaggedInt(String str) {
        p4.h.j(str, "tag");
        try {
            return JsonElementKt.getInt(getPrimitiveValue(str));
        } catch (IllegalArgumentException unused) {
            unparsedPrimitive("int");
            throw new fd.b();
        }
    }

    @Override // kotlinx.serialization.internal.TaggedDecoder
    public long decodeTaggedLong(String str) {
        p4.h.j(str, "tag");
        try {
            return JsonElementKt.getLong(getPrimitiveValue(str));
        } catch (IllegalArgumentException unused) {
            unparsedPrimitive("long");
            throw new fd.b();
        }
    }

    @Override // kotlinx.serialization.internal.TaggedDecoder
    public short decodeTaggedShort(String str) {
        p4.h.j(str, "tag");
        try {
            int i10 = JsonElementKt.getInt(getPrimitiveValue(str));
            boolean z10 = false;
            if (-32768 <= i10 && i10 <= 32767) {
                z10 = true;
            }
            Short shValueOf = z10 ? Short.valueOf((short) i10) : null;
            if (shValueOf != null) {
                return shValueOf.shortValue();
            }
            unparsedPrimitive("short");
            throw new fd.b();
        } catch (IllegalArgumentException unused) {
            unparsedPrimitive("short");
            throw new fd.b();
        }
    }

    @Override // kotlinx.serialization.internal.TaggedDecoder
    public String decodeTaggedString(String str) {
        p4.h.j(str, "tag");
        JsonPrimitive primitiveValue = getPrimitiveValue(str);
        if (!getJson().getConfiguration().isLenient() && !asLiteral(primitiveValue, "string").isString()) {
            throw JsonExceptionsKt.JsonDecodingException(-1, d.c("String literal for key '", str, "' should be quoted.\nUse 'isLenient = true' in 'Json {}` builder to accept non-compliant JSON."), currentObject().toString());
        }
        if (primitiveValue instanceof JsonNull) {
            throw JsonExceptionsKt.JsonDecodingException(-1, "Unexpected 'null' value instead of string literal", currentObject().toString());
        }
        return primitiveValue.getContent();
    }
}
