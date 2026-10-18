package com.newrelic.com.google.gson.internal.bind;

import a0.b;
import androidx.recyclerview.widget.d;
import com.newrelic.agent.android.util.SafeJsonPrimitive;
import com.newrelic.com.google.gson.Gson;
import com.newrelic.com.google.gson.JsonArray;
import com.newrelic.com.google.gson.JsonElement;
import com.newrelic.com.google.gson.JsonIOException;
import com.newrelic.com.google.gson.JsonNull;
import com.newrelic.com.google.gson.JsonObject;
import com.newrelic.com.google.gson.JsonPrimitive;
import com.newrelic.com.google.gson.JsonSyntaxException;
import com.newrelic.com.google.gson.TypeAdapter;
import com.newrelic.com.google.gson.TypeAdapterFactory;
import com.newrelic.com.google.gson.annotations.SerializedName;
import com.newrelic.com.google.gson.internal.LazilyParsedNumber;
import com.newrelic.com.google.gson.reflect.TypeToken;
import com.newrelic.com.google.gson.stream.JsonReader;
import com.newrelic.com.google.gson.stream.JsonToken;
import com.newrelic.com.google.gson.stream.JsonWriter;
import java.io.IOException;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.net.InetAddress;
import java.net.URI;
import java.net.URISyntaxException;
import java.net.URL;
import java.sql.Timestamp;
import java.util.BitSet;
import java.util.Calendar;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Locale;
import java.util.Map;
import java.util.StringTokenizer;
import java.util.UUID;

/* JADX INFO: loaded from: classes.dex */
public final class TypeAdapters {
    public static final TypeAdapter<BigDecimal> BIG_DECIMAL;
    public static final TypeAdapter<BigInteger> BIG_INTEGER;
    public static final TypeAdapter<BitSet> BIT_SET;
    public static final TypeAdapterFactory BIT_SET_FACTORY;
    public static final TypeAdapter<Boolean> BOOLEAN;
    public static final TypeAdapter<Boolean> BOOLEAN_AS_STRING;
    public static final TypeAdapterFactory BOOLEAN_FACTORY;
    public static final TypeAdapter<Number> BYTE;
    public static final TypeAdapterFactory BYTE_FACTORY;
    public static final TypeAdapter<Calendar> CALENDAR;
    public static final TypeAdapterFactory CALENDAR_FACTORY;
    public static final TypeAdapter<Character> CHARACTER;
    public static final TypeAdapterFactory CHARACTER_FACTORY;
    public static final TypeAdapter<Class> CLASS;
    public static final TypeAdapterFactory CLASS_FACTORY;
    public static final TypeAdapter<Number> DOUBLE;
    public static final TypeAdapterFactory ENUM_FACTORY;
    public static final TypeAdapter<Number> FLOAT;
    public static final TypeAdapter<InetAddress> INET_ADDRESS;
    public static final TypeAdapterFactory INET_ADDRESS_FACTORY;
    public static final TypeAdapter<Number> INTEGER;
    public static final TypeAdapterFactory INTEGER_FACTORY;
    public static final TypeAdapter<JsonElement> JSON_ELEMENT;
    public static final TypeAdapterFactory JSON_ELEMENT_FACTORY;
    public static final TypeAdapter<Locale> LOCALE;
    public static final TypeAdapterFactory LOCALE_FACTORY;
    public static final TypeAdapter<Number> LONG;
    public static final TypeAdapter<Number> NUMBER;
    public static final TypeAdapterFactory NUMBER_FACTORY;
    public static final TypeAdapter<Number> SHORT;
    public static final TypeAdapterFactory SHORT_FACTORY;
    public static final TypeAdapter<String> STRING;
    public static final TypeAdapter<StringBuffer> STRING_BUFFER;
    public static final TypeAdapterFactory STRING_BUFFER_FACTORY;
    public static final TypeAdapter<StringBuilder> STRING_BUILDER;
    public static final TypeAdapterFactory STRING_BUILDER_FACTORY;
    public static final TypeAdapterFactory STRING_FACTORY;
    public static final TypeAdapterFactory TIMESTAMP_FACTORY;
    public static final TypeAdapter<URI> URI;
    public static final TypeAdapterFactory URI_FACTORY;
    public static final TypeAdapter<URL> URL;
    public static final TypeAdapterFactory URL_FACTORY;
    public static final TypeAdapter<UUID> UUID;
    public static final TypeAdapterFactory UUID_FACTORY;

    /* JADX INFO: renamed from: com.newrelic.com.google.gson.internal.bind.TypeAdapters$32, reason: invalid class name */
    public static /* synthetic */ class AnonymousClass32 {
        public static final /* synthetic */ int[] $SwitchMap$com$google$gson$stream$JsonToken;

        static {
            int[] iArr = new int[JsonToken.values().length];
            $SwitchMap$com$google$gson$stream$JsonToken = iArr;
            try {
                iArr[JsonToken.NUMBER.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$google$gson$stream$JsonToken[JsonToken.BOOLEAN.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$google$gson$stream$JsonToken[JsonToken.STRING.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$google$gson$stream$JsonToken[JsonToken.NULL.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$com$google$gson$stream$JsonToken[JsonToken.BEGIN_ARRAY.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$com$google$gson$stream$JsonToken[JsonToken.BEGIN_OBJECT.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                $SwitchMap$com$google$gson$stream$JsonToken[JsonToken.END_DOCUMENT.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                $SwitchMap$com$google$gson$stream$JsonToken[JsonToken.NAME.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                $SwitchMap$com$google$gson$stream$JsonToken[JsonToken.END_OBJECT.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                $SwitchMap$com$google$gson$stream$JsonToken[JsonToken.END_ARRAY.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
        }
    }

    public static final class EnumTypeAdapter<T extends Enum<T>> extends TypeAdapter<T> {
        private final Map<String, T> nameToConstant = new HashMap();
        private final Map<T, String> constantToName = new HashMap();

        public EnumTypeAdapter(Class<T> cls) {
            try {
                for (T t10 : cls.getEnumConstants()) {
                    String strName = t10.name();
                    SerializedName serializedName = (SerializedName) cls.getField(strName).getAnnotation(SerializedName.class);
                    strName = serializedName != null ? serializedName.value() : strName;
                    this.nameToConstant.put(strName, t10);
                    this.constantToName.put(t10, strName);
                }
            } catch (NoSuchFieldException unused) {
                throw new AssertionError();
            }
        }

        @Override // com.newrelic.com.google.gson.TypeAdapter
        /* JADX INFO: renamed from: read */
        public T read2(JsonReader jsonReader) throws IOException {
            if (jsonReader.peek() != JsonToken.NULL) {
                return this.nameToConstant.get(jsonReader.nextString());
            }
            jsonReader.nextNull();
            return null;
        }

        @Override // com.newrelic.com.google.gson.TypeAdapter
        public void write(JsonWriter jsonWriter, T t10) throws IOException {
            jsonWriter.value(t10 == null ? null : this.constantToName.get(t10));
        }
    }

    static {
        TypeAdapter<Class> typeAdapter = new TypeAdapter<Class>() { // from class: com.newrelic.com.google.gson.internal.bind.TypeAdapters.1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.newrelic.com.google.gson.TypeAdapter
            /* JADX INFO: renamed from: read */
            public Class read2(JsonReader jsonReader) throws IOException {
                if (jsonReader.peek() != JsonToken.NULL) {
                    throw new UnsupportedOperationException("Attempted to deserialize a java.lang.Class. Forgot to register a type adapter?");
                }
                jsonReader.nextNull();
                return null;
            }

            @Override // com.newrelic.com.google.gson.TypeAdapter
            public void write(JsonWriter jsonWriter, Class cls) throws IOException {
                if (cls == null) {
                    jsonWriter.nullValue();
                    return;
                }
                StringBuilder sbC = b.c("Attempted to serialize java.lang.Class: ");
                sbC.append(cls.getName());
                sbC.append(". Forgot to register a type adapter?");
                throw new UnsupportedOperationException(sbC.toString());
            }
        };
        CLASS = typeAdapter;
        CLASS_FACTORY = newFactory(Class.class, typeAdapter);
        TypeAdapter<BitSet> typeAdapter2 = new TypeAdapter<BitSet>() { // from class: com.newrelic.com.google.gson.internal.bind.TypeAdapters.2
            /* JADX WARN: Code duplicated, block: B:27:0x006a  */
            @Override // com.newrelic.com.google.gson.TypeAdapter
            /* JADX INFO: renamed from: read, reason: avoid collision after fix types in other method */
            public BitSet read2(JsonReader jsonReader) throws IOException {
                if (jsonReader.peek() == JsonToken.NULL) {
                    jsonReader.nextNull();
                    return null;
                }
                BitSet bitSet = new BitSet();
                jsonReader.beginArray();
                JsonToken jsonTokenPeek = jsonReader.peek();
                int i10 = 0;
                while (jsonTokenPeek != JsonToken.END_ARRAY) {
                    int i11 = AnonymousClass32.$SwitchMap$com$google$gson$stream$JsonToken[jsonTokenPeek.ordinal()];
                    boolean zNextBoolean = true;
                    if (i11 != 1) {
                        if (i11 == 2) {
                            zNextBoolean = jsonReader.nextBoolean();
                        } else {
                            if (i11 != 3) {
                                throw new JsonSyntaxException("Invalid bitset value type: " + jsonTokenPeek);
                            }
                            String strNextString = jsonReader.nextString();
                            try {
                                if (Integer.parseInt(strNextString) == 0) {
                                    zNextBoolean = false;
                                }
                            } catch (NumberFormatException unused) {
                                throw new JsonSyntaxException(d.c("Error: Expecting: bitset number value (1, 0), Found: ", strNextString));
                            }
                        }
                    } else if (jsonReader.nextInt() == 0) {
                        zNextBoolean = false;
                    }
                    if (zNextBoolean) {
                        bitSet.set(i10);
                    }
                    i10++;
                    jsonTokenPeek = jsonReader.peek();
                }
                jsonReader.endArray();
                return bitSet;
            }

            @Override // com.newrelic.com.google.gson.TypeAdapter
            public void write(JsonWriter jsonWriter, BitSet bitSet) throws IOException {
                if (bitSet == null) {
                    jsonWriter.nullValue();
                    return;
                }
                jsonWriter.beginArray();
                for (int i10 = 0; i10 < bitSet.length(); i10++) {
                    jsonWriter.value(bitSet.get(i10) ? 1L : 0L);
                }
                jsonWriter.endArray();
            }
        };
        BIT_SET = typeAdapter2;
        BIT_SET_FACTORY = newFactory(BitSet.class, typeAdapter2);
        TypeAdapter<Boolean> typeAdapter3 = new TypeAdapter<Boolean>() { // from class: com.newrelic.com.google.gson.internal.bind.TypeAdapters.3
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.newrelic.com.google.gson.TypeAdapter
            /* JADX INFO: renamed from: read */
            public Boolean read2(JsonReader jsonReader) throws IOException {
                if (jsonReader.peek() != JsonToken.NULL) {
                    return jsonReader.peek() == JsonToken.STRING ? Boolean.valueOf(Boolean.parseBoolean(jsonReader.nextString())) : Boolean.valueOf(jsonReader.nextBoolean());
                }
                jsonReader.nextNull();
                return null;
            }

            @Override // com.newrelic.com.google.gson.TypeAdapter
            public void write(JsonWriter jsonWriter, Boolean bool) throws IOException {
                if (bool == null) {
                    jsonWriter.nullValue();
                } else {
                    jsonWriter.value(bool.booleanValue());
                }
            }
        };
        BOOLEAN = typeAdapter3;
        BOOLEAN_AS_STRING = new TypeAdapter<Boolean>() { // from class: com.newrelic.com.google.gson.internal.bind.TypeAdapters.4
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.newrelic.com.google.gson.TypeAdapter
            /* JADX INFO: renamed from: read */
            public Boolean read2(JsonReader jsonReader) throws IOException {
                if (jsonReader.peek() != JsonToken.NULL) {
                    return Boolean.valueOf(jsonReader.nextString());
                }
                jsonReader.nextNull();
                return null;
            }

            @Override // com.newrelic.com.google.gson.TypeAdapter
            public void write(JsonWriter jsonWriter, Boolean bool) throws IOException {
                jsonWriter.value(bool == null ? SafeJsonPrimitive.NULL_STRING : bool.toString());
            }
        };
        BOOLEAN_FACTORY = newFactory(Boolean.TYPE, Boolean.class, typeAdapter3);
        TypeAdapter<Number> typeAdapter4 = new TypeAdapter<Number>() { // from class: com.newrelic.com.google.gson.internal.bind.TypeAdapters.5
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.newrelic.com.google.gson.TypeAdapter
            /* JADX INFO: renamed from: read */
            public Number read2(JsonReader jsonReader) throws IOException {
                if (jsonReader.peek() == JsonToken.NULL) {
                    jsonReader.nextNull();
                    return null;
                }
                try {
                    return Byte.valueOf((byte) jsonReader.nextInt());
                } catch (NumberFormatException e10) {
                    throw new JsonSyntaxException(e10);
                }
            }

            @Override // com.newrelic.com.google.gson.TypeAdapter
            public void write(JsonWriter jsonWriter, Number number) throws IOException {
                jsonWriter.value(number);
            }
        };
        BYTE = typeAdapter4;
        BYTE_FACTORY = newFactory(Byte.TYPE, Byte.class, typeAdapter4);
        TypeAdapter<Number> typeAdapter5 = new TypeAdapter<Number>() { // from class: com.newrelic.com.google.gson.internal.bind.TypeAdapters.6
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.newrelic.com.google.gson.TypeAdapter
            /* JADX INFO: renamed from: read */
            public Number read2(JsonReader jsonReader) throws IOException {
                if (jsonReader.peek() == JsonToken.NULL) {
                    jsonReader.nextNull();
                    return null;
                }
                try {
                    return Short.valueOf((short) jsonReader.nextInt());
                } catch (NumberFormatException e10) {
                    throw new JsonSyntaxException(e10);
                }
            }

            @Override // com.newrelic.com.google.gson.TypeAdapter
            public void write(JsonWriter jsonWriter, Number number) throws IOException {
                jsonWriter.value(number);
            }
        };
        SHORT = typeAdapter5;
        SHORT_FACTORY = newFactory(Short.TYPE, Short.class, typeAdapter5);
        TypeAdapter<Number> typeAdapter6 = new TypeAdapter<Number>() { // from class: com.newrelic.com.google.gson.internal.bind.TypeAdapters.7
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.newrelic.com.google.gson.TypeAdapter
            /* JADX INFO: renamed from: read */
            public Number read2(JsonReader jsonReader) throws IOException {
                if (jsonReader.peek() == JsonToken.NULL) {
                    jsonReader.nextNull();
                    return null;
                }
                try {
                    return Integer.valueOf(jsonReader.nextInt());
                } catch (NumberFormatException e10) {
                    throw new JsonSyntaxException(e10);
                }
            }

            @Override // com.newrelic.com.google.gson.TypeAdapter
            public void write(JsonWriter jsonWriter, Number number) throws IOException {
                jsonWriter.value(number);
            }
        };
        INTEGER = typeAdapter6;
        INTEGER_FACTORY = newFactory(Integer.TYPE, Integer.class, typeAdapter6);
        LONG = new TypeAdapter<Number>() { // from class: com.newrelic.com.google.gson.internal.bind.TypeAdapters.8
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.newrelic.com.google.gson.TypeAdapter
            /* JADX INFO: renamed from: read */
            public Number read2(JsonReader jsonReader) throws IOException {
                if (jsonReader.peek() == JsonToken.NULL) {
                    jsonReader.nextNull();
                    return null;
                }
                try {
                    return Long.valueOf(jsonReader.nextLong());
                } catch (NumberFormatException e10) {
                    throw new JsonSyntaxException(e10);
                }
            }

            @Override // com.newrelic.com.google.gson.TypeAdapter
            public void write(JsonWriter jsonWriter, Number number) throws IOException {
                jsonWriter.value(number);
            }
        };
        FLOAT = new TypeAdapter<Number>() { // from class: com.newrelic.com.google.gson.internal.bind.TypeAdapters.9
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.newrelic.com.google.gson.TypeAdapter
            /* JADX INFO: renamed from: read */
            public Number read2(JsonReader jsonReader) throws IOException {
                if (jsonReader.peek() != JsonToken.NULL) {
                    return Float.valueOf((float) jsonReader.nextDouble());
                }
                jsonReader.nextNull();
                return null;
            }

            @Override // com.newrelic.com.google.gson.TypeAdapter
            public void write(JsonWriter jsonWriter, Number number) throws IOException {
                jsonWriter.value(number);
            }
        };
        DOUBLE = new TypeAdapter<Number>() { // from class: com.newrelic.com.google.gson.internal.bind.TypeAdapters.10
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.newrelic.com.google.gson.TypeAdapter
            /* JADX INFO: renamed from: read */
            public Number read2(JsonReader jsonReader) throws IOException {
                if (jsonReader.peek() != JsonToken.NULL) {
                    return Double.valueOf(jsonReader.nextDouble());
                }
                jsonReader.nextNull();
                return null;
            }

            @Override // com.newrelic.com.google.gson.TypeAdapter
            public void write(JsonWriter jsonWriter, Number number) throws IOException {
                jsonWriter.value(number);
            }
        };
        TypeAdapter<Number> typeAdapter7 = new TypeAdapter<Number>() { // from class: com.newrelic.com.google.gson.internal.bind.TypeAdapters.11
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.newrelic.com.google.gson.TypeAdapter
            /* JADX INFO: renamed from: read */
            public Number read2(JsonReader jsonReader) throws IOException {
                JsonToken jsonTokenPeek = jsonReader.peek();
                int i10 = AnonymousClass32.$SwitchMap$com$google$gson$stream$JsonToken[jsonTokenPeek.ordinal()];
                if (i10 == 1) {
                    return new LazilyParsedNumber(jsonReader.nextString());
                }
                if (i10 == 4) {
                    jsonReader.nextNull();
                    return null;
                }
                throw new JsonSyntaxException("Expecting number, got: " + jsonTokenPeek);
            }

            @Override // com.newrelic.com.google.gson.TypeAdapter
            public void write(JsonWriter jsonWriter, Number number) throws IOException {
                jsonWriter.value(number);
            }
        };
        NUMBER = typeAdapter7;
        NUMBER_FACTORY = newFactory(Number.class, typeAdapter7);
        TypeAdapter<Character> typeAdapter8 = new TypeAdapter<Character>() { // from class: com.newrelic.com.google.gson.internal.bind.TypeAdapters.12
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.newrelic.com.google.gson.TypeAdapter
            /* JADX INFO: renamed from: read */
            public Character read2(JsonReader jsonReader) throws IOException {
                if (jsonReader.peek() == JsonToken.NULL) {
                    jsonReader.nextNull();
                    return null;
                }
                String strNextString = jsonReader.nextString();
                if (strNextString.length() == 1) {
                    return Character.valueOf(strNextString.charAt(0));
                }
                throw new JsonSyntaxException(d.c("Expecting character, got: ", strNextString));
            }

            @Override // com.newrelic.com.google.gson.TypeAdapter
            public void write(JsonWriter jsonWriter, Character ch) throws IOException {
                jsonWriter.value(ch == null ? null : String.valueOf(ch));
            }
        };
        CHARACTER = typeAdapter8;
        CHARACTER_FACTORY = newFactory(Character.TYPE, Character.class, typeAdapter8);
        TypeAdapter<String> typeAdapter9 = new TypeAdapter<String>() { // from class: com.newrelic.com.google.gson.internal.bind.TypeAdapters.13
            @Override // com.newrelic.com.google.gson.TypeAdapter
            /* JADX INFO: renamed from: read, reason: avoid collision after fix types in other method */
            public String read2(JsonReader jsonReader) throws IOException {
                JsonToken jsonTokenPeek = jsonReader.peek();
                if (jsonTokenPeek != JsonToken.NULL) {
                    return jsonTokenPeek == JsonToken.BOOLEAN ? Boolean.toString(jsonReader.nextBoolean()) : jsonReader.nextString();
                }
                jsonReader.nextNull();
                return null;
            }

            @Override // com.newrelic.com.google.gson.TypeAdapter
            public void write(JsonWriter jsonWriter, String str) throws IOException {
                jsonWriter.value(str);
            }
        };
        STRING = typeAdapter9;
        BIG_DECIMAL = new TypeAdapter<BigDecimal>() { // from class: com.newrelic.com.google.gson.internal.bind.TypeAdapters.14
            @Override // com.newrelic.com.google.gson.TypeAdapter
            /* JADX INFO: renamed from: read, reason: avoid collision after fix types in other method */
            public BigDecimal read2(JsonReader jsonReader) throws IOException {
                if (jsonReader.peek() == JsonToken.NULL) {
                    jsonReader.nextNull();
                    return null;
                }
                try {
                    return new BigDecimal(jsonReader.nextString());
                } catch (NumberFormatException e10) {
                    throw new JsonSyntaxException(e10);
                }
            }

            @Override // com.newrelic.com.google.gson.TypeAdapter
            public void write(JsonWriter jsonWriter, BigDecimal bigDecimal) throws IOException {
                jsonWriter.value(bigDecimal);
            }
        };
        BIG_INTEGER = new TypeAdapter<BigInteger>() { // from class: com.newrelic.com.google.gson.internal.bind.TypeAdapters.15
            @Override // com.newrelic.com.google.gson.TypeAdapter
            /* JADX INFO: renamed from: read, reason: avoid collision after fix types in other method */
            public BigInteger read2(JsonReader jsonReader) throws IOException {
                if (jsonReader.peek() == JsonToken.NULL) {
                    jsonReader.nextNull();
                    return null;
                }
                try {
                    return new BigInteger(jsonReader.nextString());
                } catch (NumberFormatException e10) {
                    throw new JsonSyntaxException(e10);
                }
            }

            @Override // com.newrelic.com.google.gson.TypeAdapter
            public void write(JsonWriter jsonWriter, BigInteger bigInteger) throws IOException {
                jsonWriter.value(bigInteger);
            }
        };
        STRING_FACTORY = newFactory(String.class, typeAdapter9);
        TypeAdapter<StringBuilder> typeAdapter10 = new TypeAdapter<StringBuilder>() { // from class: com.newrelic.com.google.gson.internal.bind.TypeAdapters.16
            @Override // com.newrelic.com.google.gson.TypeAdapter
            /* JADX INFO: renamed from: read, reason: avoid collision after fix types in other method */
            public StringBuilder read2(JsonReader jsonReader) throws IOException {
                if (jsonReader.peek() != JsonToken.NULL) {
                    return new StringBuilder(jsonReader.nextString());
                }
                jsonReader.nextNull();
                return null;
            }

            @Override // com.newrelic.com.google.gson.TypeAdapter
            public void write(JsonWriter jsonWriter, StringBuilder sb2) throws IOException {
                jsonWriter.value(sb2 == null ? null : sb2.toString());
            }
        };
        STRING_BUILDER = typeAdapter10;
        STRING_BUILDER_FACTORY = newFactory(StringBuilder.class, typeAdapter10);
        TypeAdapter<StringBuffer> typeAdapter11 = new TypeAdapter<StringBuffer>() { // from class: com.newrelic.com.google.gson.internal.bind.TypeAdapters.17
            @Override // com.newrelic.com.google.gson.TypeAdapter
            /* JADX INFO: renamed from: read, reason: avoid collision after fix types in other method */
            public StringBuffer read2(JsonReader jsonReader) throws IOException {
                if (jsonReader.peek() != JsonToken.NULL) {
                    return new StringBuffer(jsonReader.nextString());
                }
                jsonReader.nextNull();
                return null;
            }

            @Override // com.newrelic.com.google.gson.TypeAdapter
            public void write(JsonWriter jsonWriter, StringBuffer stringBuffer) throws IOException {
                jsonWriter.value(stringBuffer == null ? null : stringBuffer.toString());
            }
        };
        STRING_BUFFER = typeAdapter11;
        STRING_BUFFER_FACTORY = newFactory(StringBuffer.class, typeAdapter11);
        TypeAdapter<URL> typeAdapter12 = new TypeAdapter<URL>() { // from class: com.newrelic.com.google.gson.internal.bind.TypeAdapters.18
            @Override // com.newrelic.com.google.gson.TypeAdapter
            /* JADX INFO: renamed from: read, reason: avoid collision after fix types in other method */
            public URL read2(JsonReader jsonReader) throws IOException {
                if (jsonReader.peek() == JsonToken.NULL) {
                    jsonReader.nextNull();
                    return null;
                }
                String strNextString = jsonReader.nextString();
                if (SafeJsonPrimitive.NULL_STRING.equals(strNextString)) {
                    return null;
                }
                return new URL(strNextString);
            }

            @Override // com.newrelic.com.google.gson.TypeAdapter
            public void write(JsonWriter jsonWriter, URL url) throws IOException {
                jsonWriter.value(url == null ? null : url.toExternalForm());
            }
        };
        URL = typeAdapter12;
        URL_FACTORY = newFactory(URL.class, typeAdapter12);
        TypeAdapter<URI> typeAdapter13 = new TypeAdapter<URI>() { // from class: com.newrelic.com.google.gson.internal.bind.TypeAdapters.19
            @Override // com.newrelic.com.google.gson.TypeAdapter
            /* JADX INFO: renamed from: read, reason: avoid collision after fix types in other method */
            public URI read2(JsonReader jsonReader) throws IOException {
                if (jsonReader.peek() == JsonToken.NULL) {
                    jsonReader.nextNull();
                    return null;
                }
                try {
                    String strNextString = jsonReader.nextString();
                    if (SafeJsonPrimitive.NULL_STRING.equals(strNextString)) {
                        return null;
                    }
                    return new URI(strNextString);
                } catch (URISyntaxException e10) {
                    throw new JsonIOException(e10);
                }
            }

            @Override // com.newrelic.com.google.gson.TypeAdapter
            public void write(JsonWriter jsonWriter, URI uri) throws IOException {
                jsonWriter.value(uri == null ? null : uri.toASCIIString());
            }
        };
        URI = typeAdapter13;
        URI_FACTORY = newFactory(URI.class, typeAdapter13);
        TypeAdapter<InetAddress> typeAdapter14 = new TypeAdapter<InetAddress>() { // from class: com.newrelic.com.google.gson.internal.bind.TypeAdapters.20
            @Override // com.newrelic.com.google.gson.TypeAdapter
            /* JADX INFO: renamed from: read, reason: avoid collision after fix types in other method */
            public InetAddress read2(JsonReader jsonReader) throws IOException {
                if (jsonReader.peek() != JsonToken.NULL) {
                    return InetAddress.getByName(jsonReader.nextString());
                }
                jsonReader.nextNull();
                return null;
            }

            @Override // com.newrelic.com.google.gson.TypeAdapter
            public void write(JsonWriter jsonWriter, InetAddress inetAddress) throws IOException {
                jsonWriter.value(inetAddress == null ? null : inetAddress.getHostAddress());
            }
        };
        INET_ADDRESS = typeAdapter14;
        INET_ADDRESS_FACTORY = newTypeHierarchyFactory(InetAddress.class, typeAdapter14);
        TypeAdapter<UUID> typeAdapter15 = new TypeAdapter<UUID>() { // from class: com.newrelic.com.google.gson.internal.bind.TypeAdapters.21
            @Override // com.newrelic.com.google.gson.TypeAdapter
            /* JADX INFO: renamed from: read, reason: avoid collision after fix types in other method */
            public UUID read2(JsonReader jsonReader) throws IOException {
                if (jsonReader.peek() != JsonToken.NULL) {
                    return UUID.fromString(jsonReader.nextString());
                }
                jsonReader.nextNull();
                return null;
            }

            @Override // com.newrelic.com.google.gson.TypeAdapter
            public void write(JsonWriter jsonWriter, UUID uuid) throws IOException {
                jsonWriter.value(uuid == null ? null : uuid.toString());
            }
        };
        UUID = typeAdapter15;
        UUID_FACTORY = newFactory(UUID.class, typeAdapter15);
        TIMESTAMP_FACTORY = new TypeAdapterFactory() { // from class: com.newrelic.com.google.gson.internal.bind.TypeAdapters.22
            @Override // com.newrelic.com.google.gson.TypeAdapterFactory
            public <T> TypeAdapter<T> create(Gson gson, TypeToken<T> typeToken) {
                if (typeToken.getRawType() != Timestamp.class) {
                    return null;
                }
                final TypeAdapter<T> adapter = gson.getAdapter(Date.class);
                return (TypeAdapter<T>) new TypeAdapter<Timestamp>() { // from class: com.newrelic.com.google.gson.internal.bind.TypeAdapters.22.1
                    @Override // com.newrelic.com.google.gson.TypeAdapter
                    /* JADX INFO: renamed from: read, reason: avoid collision after fix types in other method */
                    public Timestamp read2(JsonReader jsonReader) throws IOException {
                        Date date = (Date) adapter.read2(jsonReader);
                        if (date != null) {
                            return new Timestamp(date.getTime());
                        }
                        return null;
                    }

                    @Override // com.newrelic.com.google.gson.TypeAdapter
                    public void write(JsonWriter jsonWriter, Timestamp timestamp) throws IOException {
                        adapter.write(jsonWriter, timestamp);
                    }
                };
            }
        };
        TypeAdapter<Calendar> typeAdapter16 = new TypeAdapter<Calendar>() { // from class: com.newrelic.com.google.gson.internal.bind.TypeAdapters.23
            private static final String DAY_OF_MONTH = "dayOfMonth";
            private static final String HOUR_OF_DAY = "hourOfDay";
            private static final String MINUTE = "minute";
            private static final String MONTH = "month";
            private static final String SECOND = "second";
            private static final String YEAR = "year";

            @Override // com.newrelic.com.google.gson.TypeAdapter
            /* JADX INFO: renamed from: read, reason: avoid collision after fix types in other method */
            public Calendar read2(JsonReader jsonReader) throws IOException {
                if (jsonReader.peek() == JsonToken.NULL) {
                    jsonReader.nextNull();
                    return null;
                }
                jsonReader.beginObject();
                int i10 = 0;
                int i11 = 0;
                int i12 = 0;
                int i13 = 0;
                int i14 = 0;
                int i15 = 0;
                while (jsonReader.peek() != JsonToken.END_OBJECT) {
                    String strNextName = jsonReader.nextName();
                    int iNextInt = jsonReader.nextInt();
                    if (YEAR.equals(strNextName)) {
                        i10 = iNextInt;
                    } else if (MONTH.equals(strNextName)) {
                        i11 = iNextInt;
                    } else if (DAY_OF_MONTH.equals(strNextName)) {
                        i12 = iNextInt;
                    } else if (HOUR_OF_DAY.equals(strNextName)) {
                        i13 = iNextInt;
                    } else if (MINUTE.equals(strNextName)) {
                        i14 = iNextInt;
                    } else if (SECOND.equals(strNextName)) {
                        i15 = iNextInt;
                    }
                }
                jsonReader.endObject();
                return new GregorianCalendar(i10, i11, i12, i13, i14, i15);
            }

            @Override // com.newrelic.com.google.gson.TypeAdapter
            public void write(JsonWriter jsonWriter, Calendar calendar) throws IOException {
                if (calendar == null) {
                    jsonWriter.nullValue();
                    return;
                }
                jsonWriter.beginObject();
                jsonWriter.name(YEAR);
                jsonWriter.value(calendar.get(1));
                jsonWriter.name(MONTH);
                jsonWriter.value(calendar.get(2));
                jsonWriter.name(DAY_OF_MONTH);
                jsonWriter.value(calendar.get(5));
                jsonWriter.name(HOUR_OF_DAY);
                jsonWriter.value(calendar.get(11));
                jsonWriter.name(MINUTE);
                jsonWriter.value(calendar.get(12));
                jsonWriter.name(SECOND);
                jsonWriter.value(calendar.get(13));
                jsonWriter.endObject();
            }
        };
        CALENDAR = typeAdapter16;
        CALENDAR_FACTORY = newFactoryForMultipleTypes(Calendar.class, GregorianCalendar.class, typeAdapter16);
        TypeAdapter<Locale> typeAdapter17 = new TypeAdapter<Locale>() { // from class: com.newrelic.com.google.gson.internal.bind.TypeAdapters.24
            @Override // com.newrelic.com.google.gson.TypeAdapter
            /* JADX INFO: renamed from: read, reason: avoid collision after fix types in other method */
            public Locale read2(JsonReader jsonReader) throws IOException {
                if (jsonReader.peek() == JsonToken.NULL) {
                    jsonReader.nextNull();
                    return null;
                }
                StringTokenizer stringTokenizer = new StringTokenizer(jsonReader.nextString(), "_");
                String strNextToken = stringTokenizer.hasMoreElements() ? stringTokenizer.nextToken() : null;
                String strNextToken2 = stringTokenizer.hasMoreElements() ? stringTokenizer.nextToken() : null;
                String strNextToken3 = stringTokenizer.hasMoreElements() ? stringTokenizer.nextToken() : null;
                if (strNextToken2 == null && strNextToken3 == null) {
                    return new Locale(strNextToken);
                }
                return strNextToken3 == null ? new Locale(strNextToken, strNextToken2) : new Locale(strNextToken, strNextToken2, strNextToken3);
            }

            @Override // com.newrelic.com.google.gson.TypeAdapter
            public void write(JsonWriter jsonWriter, Locale locale) throws IOException {
                jsonWriter.value(locale == null ? null : locale.toString());
            }
        };
        LOCALE = typeAdapter17;
        LOCALE_FACTORY = newFactory(Locale.class, typeAdapter17);
        TypeAdapter<JsonElement> typeAdapter18 = new TypeAdapter<JsonElement>() { // from class: com.newrelic.com.google.gson.internal.bind.TypeAdapters.25
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.newrelic.com.google.gson.TypeAdapter
            /* JADX INFO: renamed from: read */
            public JsonElement read2(JsonReader jsonReader) throws IOException {
                switch (AnonymousClass32.$SwitchMap$com$google$gson$stream$JsonToken[jsonReader.peek().ordinal()]) {
                    case 1:
                        return new JsonPrimitive((Number) new LazilyParsedNumber(jsonReader.nextString()));
                    case 2:
                        return new JsonPrimitive(Boolean.valueOf(jsonReader.nextBoolean()));
                    case 3:
                        return new JsonPrimitive(jsonReader.nextString());
                    case 4:
                        jsonReader.nextNull();
                        return JsonNull.INSTANCE;
                    case 5:
                        JsonArray jsonArray = new JsonArray();
                        jsonReader.beginArray();
                        while (jsonReader.hasNext()) {
                            jsonArray.add(read2(jsonReader));
                        }
                        jsonReader.endArray();
                        return jsonArray;
                    case 6:
                        JsonObject jsonObject = new JsonObject();
                        jsonReader.beginObject();
                        while (jsonReader.hasNext()) {
                            jsonObject.add(jsonReader.nextName(), read2(jsonReader));
                        }
                        jsonReader.endObject();
                        return jsonObject;
                    default:
                        throw new IllegalArgumentException();
                }
            }

            @Override // com.newrelic.com.google.gson.TypeAdapter
            public void write(JsonWriter jsonWriter, JsonElement jsonElement) throws IOException {
                if (jsonElement == null || jsonElement.isJsonNull()) {
                    jsonWriter.nullValue();
                    return;
                }
                if (jsonElement.isJsonPrimitive()) {
                    JsonPrimitive asJsonPrimitive = jsonElement.getAsJsonPrimitive();
                    if (asJsonPrimitive.isNumber()) {
                        jsonWriter.value(asJsonPrimitive.getAsNumber());
                        return;
                    } else if (asJsonPrimitive.isBoolean()) {
                        jsonWriter.value(asJsonPrimitive.getAsBoolean());
                        return;
                    } else {
                        jsonWriter.value(asJsonPrimitive.getAsString());
                        return;
                    }
                }
                if (jsonElement.isJsonArray()) {
                    jsonWriter.beginArray();
                    Iterator<JsonElement> it = jsonElement.getAsJsonArray().iterator();
                    while (it.hasNext()) {
                        write(jsonWriter, it.next());
                    }
                    jsonWriter.endArray();
                    return;
                }
                if (!jsonElement.isJsonObject()) {
                    StringBuilder sbC = b.c("Couldn't write ");
                    sbC.append(jsonElement.getClass());
                    throw new IllegalArgumentException(sbC.toString());
                }
                jsonWriter.beginObject();
                for (Map.Entry<String, JsonElement> entry : jsonElement.getAsJsonObject().entrySet()) {
                    jsonWriter.name(entry.getKey());
                    write(jsonWriter, entry.getValue());
                }
                jsonWriter.endObject();
            }
        };
        JSON_ELEMENT = typeAdapter18;
        JSON_ELEMENT_FACTORY = newTypeHierarchyFactory(JsonElement.class, typeAdapter18);
        ENUM_FACTORY = newEnumTypeHierarchyFactory();
    }

    private TypeAdapters() {
    }

    public static TypeAdapterFactory newEnumTypeHierarchyFactory() {
        return new TypeAdapterFactory() { // from class: com.newrelic.com.google.gson.internal.bind.TypeAdapters.26
            @Override // com.newrelic.com.google.gson.TypeAdapterFactory
            public <T> TypeAdapter<T> create(Gson gson, TypeToken<T> typeToken) {
                Class<? super T> rawType = typeToken.getRawType();
                if (!Enum.class.isAssignableFrom(rawType) || rawType == Enum.class) {
                    return null;
                }
                if (!rawType.isEnum()) {
                    rawType = rawType.getSuperclass();
                }
                return new EnumTypeAdapter(rawType);
            }
        };
    }

    public static <TT> TypeAdapterFactory newFactory(final TypeToken<TT> typeToken, final TypeAdapter<TT> typeAdapter) {
        return new TypeAdapterFactory() { // from class: com.newrelic.com.google.gson.internal.bind.TypeAdapters.27
            @Override // com.newrelic.com.google.gson.TypeAdapterFactory
            public <T> TypeAdapter<T> create(Gson gson, TypeToken<T> typeToken2) {
                if (typeToken2.equals(typeToken)) {
                    return typeAdapter;
                }
                return null;
            }
        };
    }

    public static <TT> TypeAdapterFactory newFactoryForMultipleTypes(final Class<TT> cls, final Class<? extends TT> cls2, final TypeAdapter<? super TT> typeAdapter) {
        return new TypeAdapterFactory() { // from class: com.newrelic.com.google.gson.internal.bind.TypeAdapters.30
            @Override // com.newrelic.com.google.gson.TypeAdapterFactory
            public <T> TypeAdapter<T> create(Gson gson, TypeToken<T> typeToken) {
                Class<? super T> rawType = typeToken.getRawType();
                if (rawType == cls || rawType == cls2) {
                    return typeAdapter;
                }
                return null;
            }

            public String toString() {
                StringBuilder sbC = b.c("Factory[type=");
                sbC.append(cls.getName());
                sbC.append("+");
                sbC.append(cls2.getName());
                sbC.append(",adapter=");
                sbC.append(typeAdapter);
                sbC.append("]");
                return sbC.toString();
            }
        };
    }

    public static <TT> TypeAdapterFactory newTypeHierarchyFactory(final Class<TT> cls, final TypeAdapter<TT> typeAdapter) {
        return new TypeAdapterFactory() { // from class: com.newrelic.com.google.gson.internal.bind.TypeAdapters.31
            @Override // com.newrelic.com.google.gson.TypeAdapterFactory
            public <T> TypeAdapter<T> create(Gson gson, TypeToken<T> typeToken) {
                if (cls.isAssignableFrom(typeToken.getRawType())) {
                    return typeAdapter;
                }
                return null;
            }

            public String toString() {
                StringBuilder sbC = b.c("Factory[typeHierarchy=");
                sbC.append(cls.getName());
                sbC.append(",adapter=");
                sbC.append(typeAdapter);
                sbC.append("]");
                return sbC.toString();
            }
        };
    }

    public static <TT> TypeAdapterFactory newFactory(final Class<TT> cls, final TypeAdapter<TT> typeAdapter) {
        return new TypeAdapterFactory() { // from class: com.newrelic.com.google.gson.internal.bind.TypeAdapters.28
            @Override // com.newrelic.com.google.gson.TypeAdapterFactory
            public <T> TypeAdapter<T> create(Gson gson, TypeToken<T> typeToken) {
                if (typeToken.getRawType() == cls) {
                    return typeAdapter;
                }
                return null;
            }

            public String toString() {
                StringBuilder sbC = b.c("Factory[type=");
                sbC.append(cls.getName());
                sbC.append(",adapter=");
                sbC.append(typeAdapter);
                sbC.append("]");
                return sbC.toString();
            }
        };
    }

    public static <TT> TypeAdapterFactory newFactory(final Class<TT> cls, final Class<TT> cls2, final TypeAdapter<? super TT> typeAdapter) {
        return new TypeAdapterFactory() { // from class: com.newrelic.com.google.gson.internal.bind.TypeAdapters.29
            @Override // com.newrelic.com.google.gson.TypeAdapterFactory
            public <T> TypeAdapter<T> create(Gson gson, TypeToken<T> typeToken) {
                Class<? super T> rawType = typeToken.getRawType();
                if (rawType == cls || rawType == cls2) {
                    return typeAdapter;
                }
                return null;
            }

            public String toString() {
                StringBuilder sbC = b.c("Factory[type=");
                sbC.append(cls2.getName());
                sbC.append("+");
                sbC.append(cls.getName());
                sbC.append(",adapter=");
                sbC.append(typeAdapter);
                sbC.append("]");
                return sbC.toString();
            }
        };
    }
}
