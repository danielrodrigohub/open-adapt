package com.newrelic.com.google.gson;

import com.newrelic.com.google.gson.internal.ConstructorConstructor;
import com.newrelic.com.google.gson.internal.Excluder;
import com.newrelic.com.google.gson.internal.Primitives;
import com.newrelic.com.google.gson.internal.Streams;
import com.newrelic.com.google.gson.internal.bind.ArrayTypeAdapter;
import com.newrelic.com.google.gson.internal.bind.CollectionTypeAdapterFactory;
import com.newrelic.com.google.gson.internal.bind.DateTypeAdapter;
import com.newrelic.com.google.gson.internal.bind.JsonTreeReader;
import com.newrelic.com.google.gson.internal.bind.JsonTreeWriter;
import com.newrelic.com.google.gson.internal.bind.MapTypeAdapterFactory;
import com.newrelic.com.google.gson.internal.bind.ObjectTypeAdapter;
import com.newrelic.com.google.gson.internal.bind.ReflectiveTypeAdapterFactory;
import com.newrelic.com.google.gson.internal.bind.SqlDateTypeAdapter;
import com.newrelic.com.google.gson.internal.bind.TimeTypeAdapter;
import com.newrelic.com.google.gson.internal.bind.TypeAdapters;
import com.newrelic.com.google.gson.reflect.TypeToken;
import com.newrelic.com.google.gson.stream.JsonReader;
import com.newrelic.com.google.gson.stream.JsonToken;
import com.newrelic.com.google.gson.stream.JsonWriter;
import com.newrelic.com.google.gson.stream.MalformedJsonException;
import java.io.EOFException;
import java.io.IOException;
import java.io.Reader;
import java.io.StringReader;
import java.io.StringWriter;
import java.io.Writer;
import java.lang.reflect.Type;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public final class Gson {
    public static final boolean DEFAULT_JSON_NON_EXECUTABLE = false;
    private static final String JSON_NON_EXECUTABLE_PREFIX = ")]}'\n";
    private final ThreadLocal<Map<TypeToken<?>, FutureTypeAdapter<?>>> calls;
    private final ConstructorConstructor constructorConstructor;
    public final JsonDeserializationContext deserializationContext;
    private final List<TypeAdapterFactory> factories;
    private final boolean generateNonExecutableJson;
    private final boolean htmlSafe;
    private final boolean prettyPrinting;
    public final JsonSerializationContext serializationContext;
    private final boolean serializeNulls;
    private final Map<TypeToken<?>, TypeAdapter<?>> typeTokenCache;

    public static class FutureTypeAdapter<T> extends TypeAdapter<T> {
        private TypeAdapter<T> delegate;

        @Override // com.newrelic.com.google.gson.TypeAdapter
        /* JADX INFO: renamed from: read */
        public T read2(JsonReader jsonReader) throws IOException {
            TypeAdapter<T> typeAdapter = this.delegate;
            if (typeAdapter != null) {
                return typeAdapter.read2(jsonReader);
            }
            throw new IllegalStateException();
        }

        public void setDelegate(TypeAdapter<T> typeAdapter) {
            if (this.delegate != null) {
                throw new AssertionError();
            }
            this.delegate = typeAdapter;
        }

        @Override // com.newrelic.com.google.gson.TypeAdapter
        public void write(JsonWriter jsonWriter, T t10) throws IOException {
            TypeAdapter<T> typeAdapter = this.delegate;
            if (typeAdapter == null) {
                throw new IllegalStateException();
            }
            typeAdapter.write(jsonWriter, t10);
        }
    }

    public Gson() {
        this(Excluder.DEFAULT, FieldNamingPolicy.IDENTITY, Collections.emptyMap(), false, false, false, true, false, false, LongSerializationPolicy.DEFAULT, Collections.emptyList());
    }

    private static void assertFullConsumption(Object obj, JsonReader jsonReader) {
        if (obj != null) {
            try {
                if (jsonReader.peek() == JsonToken.END_DOCUMENT) {
                } else {
                    throw new JsonIOException("JSON document was not fully consumed.");
                }
            } catch (MalformedJsonException e10) {
                throw new JsonSyntaxException(e10);
            } catch (IOException e11) {
                throw new JsonIOException(e11);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void checkValidFloatingPoint(double d10) {
        if (Double.isNaN(d10) || Double.isInfinite(d10)) {
            throw new IllegalArgumentException(d10 + " is not a valid double value as per JSON specification. To override this behavior, use GsonBuilder.serializeSpecialFloatingPointValues() method.");
        }
    }

    private TypeAdapter<Number> doubleAdapter(boolean z10) {
        return z10 ? TypeAdapters.DOUBLE : new TypeAdapter<Number>() { // from class: com.newrelic.com.google.gson.Gson.3
            @Override // com.newrelic.com.google.gson.TypeAdapter
            /* JADX INFO: renamed from: read, reason: merged with bridge method [inline-methods] */
            public Number read2(JsonReader jsonReader) throws IOException {
                if (jsonReader.peek() != JsonToken.NULL) {
                    return Double.valueOf(jsonReader.nextDouble());
                }
                jsonReader.nextNull();
                return null;
            }

            @Override // com.newrelic.com.google.gson.TypeAdapter
            public void write(JsonWriter jsonWriter, Number number) throws IOException {
                if (number == null) {
                    jsonWriter.nullValue();
                    return;
                }
                Gson.this.checkValidFloatingPoint(number.doubleValue());
                jsonWriter.value(number);
            }
        };
    }

    private TypeAdapter<Number> floatAdapter(boolean z10) {
        return z10 ? TypeAdapters.FLOAT : new TypeAdapter<Number>() { // from class: com.newrelic.com.google.gson.Gson.4
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
                if (number == null) {
                    jsonWriter.nullValue();
                    return;
                }
                Gson.this.checkValidFloatingPoint(number.floatValue());
                jsonWriter.value(number);
            }
        };
    }

    private TypeAdapter<Number> longAdapter(LongSerializationPolicy longSerializationPolicy) {
        return longSerializationPolicy == LongSerializationPolicy.DEFAULT ? TypeAdapters.LONG : new TypeAdapter<Number>() { // from class: com.newrelic.com.google.gson.Gson.5
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.newrelic.com.google.gson.TypeAdapter
            /* JADX INFO: renamed from: read */
            public Number read2(JsonReader jsonReader) throws IOException {
                if (jsonReader.peek() != JsonToken.NULL) {
                    return Long.valueOf(jsonReader.nextLong());
                }
                jsonReader.nextNull();
                return null;
            }

            @Override // com.newrelic.com.google.gson.TypeAdapter
            public void write(JsonWriter jsonWriter, Number number) throws IOException {
                if (number == null) {
                    jsonWriter.nullValue();
                } else {
                    jsonWriter.value(number.toString());
                }
            }
        };
    }

    private JsonWriter newJsonWriter(Writer writer) throws IOException {
        if (this.generateNonExecutableJson) {
            writer.write(JSON_NON_EXECUTABLE_PREFIX);
        }
        JsonWriter jsonWriter = new JsonWriter(writer);
        if (this.prettyPrinting) {
            jsonWriter.setIndent("  ");
        }
        jsonWriter.setSerializeNulls(this.serializeNulls);
        return jsonWriter;
    }

    public <T> T fromJson(String str, Class<T> cls) throws JsonSyntaxException {
        return (T) Primitives.wrap(cls).cast(fromJson(str, (Type) cls));
    }

    public <T> TypeAdapter<T> getAdapter(TypeToken<T> typeToken) {
        TypeAdapter<T> typeAdapter = (TypeAdapter) this.typeTokenCache.get(typeToken);
        if (typeAdapter != null) {
            return typeAdapter;
        }
        Map<TypeToken<?>, FutureTypeAdapter<?>> map = this.calls.get();
        boolean z10 = false;
        if (map == null) {
            map = new HashMap<>();
            this.calls.set(map);
            z10 = true;
        }
        FutureTypeAdapter<?> futureTypeAdapter = map.get(typeToken);
        if (futureTypeAdapter != null) {
            return futureTypeAdapter;
        }
        try {
            FutureTypeAdapter<?> futureTypeAdapter2 = new FutureTypeAdapter<>();
            map.put(typeToken, futureTypeAdapter2);
            Iterator<TypeAdapterFactory> it = this.factories.iterator();
            while (it.hasNext()) {
                TypeAdapter<T> typeAdapterCreate = it.next().create(this, typeToken);
                if (typeAdapterCreate != null) {
                    futureTypeAdapter2.setDelegate(typeAdapterCreate);
                    this.typeTokenCache.put(typeToken, typeAdapterCreate);
                    map.remove(typeToken);
                    if (z10) {
                        this.calls.remove();
                    }
                    return typeAdapterCreate;
                }
            }
            throw new IllegalArgumentException("GSON cannot handle " + typeToken);
        } catch (Throwable th) {
            map.remove(typeToken);
            if (z10) {
                this.calls.remove();
            }
            throw th;
        }
    }

    public <T> TypeAdapter<T> getDelegateAdapter(TypeAdapterFactory typeAdapterFactory, TypeToken<T> typeToken) {
        boolean z10 = false;
        for (TypeAdapterFactory typeAdapterFactory2 : this.factories) {
            if (z10) {
                TypeAdapter<T> typeAdapterCreate = typeAdapterFactory2.create(this, typeToken);
                if (typeAdapterCreate != null) {
                    return typeAdapterCreate;
                }
            } else if (typeAdapterFactory2 == typeAdapterFactory) {
                z10 = true;
            }
        }
        throw new IllegalArgumentException("GSON cannot serialize " + typeToken);
    }

    public String toJson(Object obj) {
        return obj == null ? toJson((JsonElement) JsonNull.INSTANCE) : toJson(obj, obj.getClass());
    }

    public JsonElement toJsonTree(Object obj) {
        return obj == null ? JsonNull.INSTANCE : toJsonTree(obj, obj.getClass());
    }

    public String toString() {
        return "{serializeNulls:" + this.serializeNulls + "factories:" + this.factories + ",instanceCreators:" + this.constructorConstructor + "}";
    }

    public Gson(Excluder excluder, FieldNamingStrategy fieldNamingStrategy, Map<Type, InstanceCreator<?>> map, boolean z10, boolean z11, boolean z12, boolean z13, boolean z14, boolean z15, LongSerializationPolicy longSerializationPolicy, List<TypeAdapterFactory> list) {
        this.calls = new ThreadLocal<>();
        this.typeTokenCache = Collections.synchronizedMap(new HashMap());
        this.deserializationContext = new JsonDeserializationContext() { // from class: com.newrelic.com.google.gson.Gson.1
            @Override // com.newrelic.com.google.gson.JsonDeserializationContext
            public <T> T deserialize(JsonElement jsonElement, Type type) throws JsonParseException {
                return (T) Gson.this.fromJson(jsonElement, type);
            }
        };
        this.serializationContext = new JsonSerializationContext() { // from class: com.newrelic.com.google.gson.Gson.2
            @Override // com.newrelic.com.google.gson.JsonSerializationContext
            public JsonElement serialize(Object obj) {
                return Gson.this.toJsonTree(obj);
            }

            @Override // com.newrelic.com.google.gson.JsonSerializationContext
            public JsonElement serialize(Object obj, Type type) {
                return Gson.this.toJsonTree(obj, type);
            }
        };
        ConstructorConstructor constructorConstructor = new ConstructorConstructor(map);
        this.constructorConstructor = constructorConstructor;
        this.serializeNulls = z10;
        this.generateNonExecutableJson = z12;
        this.htmlSafe = z13;
        this.prettyPrinting = z14;
        ArrayList arrayList = new ArrayList();
        arrayList.add(TypeAdapters.JSON_ELEMENT_FACTORY);
        arrayList.add(ObjectTypeAdapter.FACTORY);
        arrayList.add(excluder);
        arrayList.addAll(list);
        arrayList.add(TypeAdapters.STRING_FACTORY);
        arrayList.add(TypeAdapters.INTEGER_FACTORY);
        arrayList.add(TypeAdapters.BOOLEAN_FACTORY);
        arrayList.add(TypeAdapters.BYTE_FACTORY);
        arrayList.add(TypeAdapters.SHORT_FACTORY);
        arrayList.add(TypeAdapters.newFactory(Long.TYPE, Long.class, longAdapter(longSerializationPolicy)));
        arrayList.add(TypeAdapters.newFactory(Double.TYPE, Double.class, doubleAdapter(z15)));
        arrayList.add(TypeAdapters.newFactory(Float.TYPE, Float.class, floatAdapter(z15)));
        arrayList.add(TypeAdapters.NUMBER_FACTORY);
        arrayList.add(TypeAdapters.CHARACTER_FACTORY);
        arrayList.add(TypeAdapters.STRING_BUILDER_FACTORY);
        arrayList.add(TypeAdapters.STRING_BUFFER_FACTORY);
        arrayList.add(TypeAdapters.newFactory(BigDecimal.class, TypeAdapters.BIG_DECIMAL));
        arrayList.add(TypeAdapters.newFactory(BigInteger.class, TypeAdapters.BIG_INTEGER));
        arrayList.add(TypeAdapters.URL_FACTORY);
        arrayList.add(TypeAdapters.URI_FACTORY);
        arrayList.add(TypeAdapters.UUID_FACTORY);
        arrayList.add(TypeAdapters.LOCALE_FACTORY);
        arrayList.add(TypeAdapters.INET_ADDRESS_FACTORY);
        arrayList.add(TypeAdapters.BIT_SET_FACTORY);
        arrayList.add(DateTypeAdapter.FACTORY);
        arrayList.add(TypeAdapters.CALENDAR_FACTORY);
        arrayList.add(TimeTypeAdapter.FACTORY);
        arrayList.add(SqlDateTypeAdapter.FACTORY);
        arrayList.add(TypeAdapters.TIMESTAMP_FACTORY);
        arrayList.add(ArrayTypeAdapter.FACTORY);
        arrayList.add(TypeAdapters.ENUM_FACTORY);
        arrayList.add(TypeAdapters.CLASS_FACTORY);
        arrayList.add(new CollectionTypeAdapterFactory(constructorConstructor));
        arrayList.add(new MapTypeAdapterFactory(constructorConstructor, z11));
        arrayList.add(new ReflectiveTypeAdapterFactory(constructorConstructor, fieldNamingStrategy, excluder));
        this.factories = Collections.unmodifiableList(arrayList);
    }

    public <T> T fromJson(String str, Type type) throws JsonSyntaxException {
        if (str == null) {
            return null;
        }
        return (T) fromJson(new StringReader(str), type);
    }

    public String toJson(Object obj, Type type) {
        StringWriter stringWriter = new StringWriter();
        toJson(obj, type, stringWriter);
        return stringWriter.toString();
    }

    public JsonElement toJsonTree(Object obj, Type type) {
        JsonTreeWriter jsonTreeWriter = new JsonTreeWriter();
        toJson(obj, type, jsonTreeWriter);
        return jsonTreeWriter.get();
    }

    public <T> T fromJson(Reader reader, Class<T> cls) throws JsonIOException, JsonSyntaxException {
        JsonReader jsonReader = new JsonReader(reader);
        Object objFromJson = fromJson(jsonReader, cls);
        assertFullConsumption(objFromJson, jsonReader);
        return (T) Primitives.wrap(cls).cast(objFromJson);
    }

    public void toJson(Object obj, Appendable appendable) throws JsonIOException {
        if (obj != null) {
            toJson(obj, obj.getClass(), appendable);
        } else {
            toJson((JsonElement) JsonNull.INSTANCE, appendable);
        }
    }

    public void toJson(Object obj, Type type, Appendable appendable) throws JsonIOException {
        try {
            toJson(obj, type, newJsonWriter(Streams.writerForAppendable(appendable)));
        } catch (IOException e10) {
            throw new JsonIOException(e10);
        }
    }

    public <T> T fromJson(Reader reader, Type type) throws JsonIOException, JsonSyntaxException {
        JsonReader jsonReader = new JsonReader(reader);
        T t10 = (T) fromJson(jsonReader, type);
        assertFullConsumption(t10, jsonReader);
        return t10;
    }

    public void toJson(Object obj, Type type, JsonWriter jsonWriter) throws JsonIOException {
        TypeAdapter adapter = getAdapter(TypeToken.get(type));
        boolean zIsLenient = jsonWriter.isLenient();
        jsonWriter.setLenient(true);
        boolean zIsHtmlSafe = jsonWriter.isHtmlSafe();
        jsonWriter.setHtmlSafe(this.htmlSafe);
        boolean serializeNulls = jsonWriter.getSerializeNulls();
        jsonWriter.setSerializeNulls(this.serializeNulls);
        try {
            try {
                adapter.write(jsonWriter, obj);
                jsonWriter.setLenient(zIsLenient);
                jsonWriter.setHtmlSafe(zIsHtmlSafe);
                jsonWriter.setSerializeNulls(serializeNulls);
            } catch (IOException e10) {
                throw new JsonIOException(e10);
            }
        } catch (Throwable th) {
            jsonWriter.setLenient(zIsLenient);
            jsonWriter.setHtmlSafe(zIsHtmlSafe);
            jsonWriter.setSerializeNulls(serializeNulls);
            throw th;
        }
    }

    public <T> T fromJson(JsonReader jsonReader, Type type) throws JsonIOException, JsonSyntaxException {
        boolean zIsLenient = jsonReader.isLenient();
        boolean z10 = true;
        jsonReader.setLenient(true);
        try {
            try {
                try {
                    jsonReader.peek();
                    z10 = false;
                    T t10 = getAdapter(TypeToken.get(type)).read2(jsonReader);
                    jsonReader.setLenient(zIsLenient);
                    return t10;
                } catch (IOException e10) {
                    throw new JsonSyntaxException(e10);
                }
            } catch (EOFException e11) {
                if (z10) {
                    jsonReader.setLenient(zIsLenient);
                    return null;
                }
                throw new JsonSyntaxException(e11);
            } catch (IllegalStateException e12) {
                throw new JsonSyntaxException(e12);
            }
        } catch (Throwable th) {
            jsonReader.setLenient(zIsLenient);
            throw th;
        }
    }

    public <T> TypeAdapter<T> getAdapter(Class<T> cls) {
        return getAdapter(TypeToken.get((Class) cls));
    }

    public <T> T fromJson(JsonElement jsonElement, Class<T> cls) throws JsonSyntaxException {
        return (T) Primitives.wrap(cls).cast(fromJson(jsonElement, (Type) cls));
    }

    public <T> T fromJson(JsonElement jsonElement, Type type) throws JsonSyntaxException {
        if (jsonElement == null) {
            return null;
        }
        return (T) fromJson(new JsonTreeReader(jsonElement), type);
    }

    public String toJson(JsonElement jsonElement) {
        StringWriter stringWriter = new StringWriter();
        toJson(jsonElement, (Appendable) stringWriter);
        return stringWriter.toString();
    }

    public void toJson(JsonElement jsonElement, Appendable appendable) throws JsonIOException {
        try {
            toJson(jsonElement, newJsonWriter(Streams.writerForAppendable(appendable)));
        } catch (IOException e10) {
            throw new RuntimeException(e10);
        }
    }

    public void toJson(JsonElement jsonElement, JsonWriter jsonWriter) throws JsonIOException {
        boolean zIsLenient = jsonWriter.isLenient();
        jsonWriter.setLenient(true);
        boolean zIsHtmlSafe = jsonWriter.isHtmlSafe();
        jsonWriter.setHtmlSafe(this.htmlSafe);
        boolean serializeNulls = jsonWriter.getSerializeNulls();
        jsonWriter.setSerializeNulls(this.serializeNulls);
        try {
            try {
                Streams.write(jsonElement, jsonWriter);
                jsonWriter.setLenient(zIsLenient);
                jsonWriter.setHtmlSafe(zIsHtmlSafe);
                jsonWriter.setSerializeNulls(serializeNulls);
            } catch (IOException e10) {
                throw new JsonIOException(e10);
            }
        } catch (Throwable th) {
            jsonWriter.setLenient(zIsLenient);
            jsonWriter.setHtmlSafe(zIsHtmlSafe);
            jsonWriter.setSerializeNulls(serializeNulls);
            throw th;
        }
    }
}
