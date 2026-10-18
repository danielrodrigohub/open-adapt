package com.newrelic.com.google.gson.internal.bind;

import com.newrelic.com.google.gson.FieldNamingStrategy;
import com.newrelic.com.google.gson.Gson;
import com.newrelic.com.google.gson.JsonSyntaxException;
import com.newrelic.com.google.gson.TypeAdapter;
import com.newrelic.com.google.gson.TypeAdapterFactory;
import com.newrelic.com.google.gson.annotations.SerializedName;
import com.newrelic.com.google.gson.internal.C$Gson$Types;
import com.newrelic.com.google.gson.internal.ConstructorConstructor;
import com.newrelic.com.google.gson.internal.Excluder;
import com.newrelic.com.google.gson.internal.ObjectConstructor;
import com.newrelic.com.google.gson.internal.Primitives;
import com.newrelic.com.google.gson.reflect.TypeToken;
import com.newrelic.com.google.gson.stream.JsonReader;
import com.newrelic.com.google.gson.stream.JsonToken;
import com.newrelic.com.google.gson.stream.JsonWriter;
import java.io.IOException;
import java.lang.reflect.Field;
import java.lang.reflect.Type;
import java.util.LinkedHashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public final class ReflectiveTypeAdapterFactory implements TypeAdapterFactory {
    private final ConstructorConstructor constructorConstructor;
    private final Excluder excluder;
    private final FieldNamingStrategy fieldNamingPolicy;

    public static final class Adapter<T> extends TypeAdapter<T> {
        private final Map<String, BoundField> boundFields;
        private final ObjectConstructor<T> constructor;

        @Override // com.newrelic.com.google.gson.TypeAdapter
        /* JADX INFO: renamed from: read */
        public T read2(JsonReader jsonReader) throws IOException {
            if (jsonReader.peek() == JsonToken.NULL) {
                jsonReader.nextNull();
                return null;
            }
            T tConstruct = this.constructor.construct();
            try {
                jsonReader.beginObject();
                while (jsonReader.hasNext()) {
                    BoundField boundField = this.boundFields.get(jsonReader.nextName());
                    if (boundField == null || !boundField.deserialized) {
                        jsonReader.skipValue();
                    } else {
                        boundField.read(jsonReader, tConstruct);
                    }
                }
                jsonReader.endObject();
                return tConstruct;
            } catch (IllegalAccessException e10) {
                throw new AssertionError(e10);
            } catch (IllegalStateException e11) {
                throw new JsonSyntaxException(e11);
            }
        }

        @Override // com.newrelic.com.google.gson.TypeAdapter
        public void write(JsonWriter jsonWriter, T t10) throws IOException {
            if (t10 == null) {
                jsonWriter.nullValue();
                return;
            }
            jsonWriter.beginObject();
            try {
                for (BoundField boundField : this.boundFields.values()) {
                    if (boundField.serialized) {
                        jsonWriter.name(boundField.name);
                        boundField.write(jsonWriter, t10);
                    }
                }
                jsonWriter.endObject();
            } catch (IllegalAccessException unused) {
                throw new AssertionError();
            }
        }

        private Adapter(ObjectConstructor<T> objectConstructor, Map<String, BoundField> map) {
            this.constructor = objectConstructor;
            this.boundFields = map;
        }
    }

    public static abstract class BoundField {
        public final boolean deserialized;
        public final String name;
        public final boolean serialized;

        public BoundField(String str, boolean z10, boolean z11) {
            this.name = str;
            this.serialized = z10;
            this.deserialized = z11;
        }

        public abstract void read(JsonReader jsonReader, Object obj) throws IllegalAccessException, IOException;

        public abstract void write(JsonWriter jsonWriter, Object obj) throws IllegalAccessException, IOException;
    }

    public ReflectiveTypeAdapterFactory(ConstructorConstructor constructorConstructor, FieldNamingStrategy fieldNamingStrategy, Excluder excluder) {
        this.constructorConstructor = constructorConstructor;
        this.fieldNamingPolicy = fieldNamingStrategy;
        this.excluder = excluder;
    }

    private BoundField createBoundField(Gson gson, Field field, String str, TypeToken<?> typeToken, boolean z10, boolean z11) {
        return new BoundField(str, z10, z11, gson, typeToken, field, Primitives.isPrimitive(typeToken.getRawType())) { // from class: com.newrelic.com.google.gson.internal.bind.ReflectiveTypeAdapterFactory.1
            public final TypeAdapter<?> typeAdapter;
            public final /* synthetic */ Gson val$context;
            public final /* synthetic */ Field val$field;
            public final /* synthetic */ TypeToken val$fieldType;
            public final /* synthetic */ boolean val$isPrimitive;

            {
                this.val$context = gson;
                this.val$fieldType = typeToken;
                this.val$field = field;
                this.val$isPrimitive = z;
                this.typeAdapter = gson.getAdapter(typeToken);
            }

            @Override // com.newrelic.com.google.gson.internal.bind.ReflectiveTypeAdapterFactory.BoundField
            public void read(JsonReader jsonReader, Object obj) throws IllegalAccessException, IOException {
                Object obj2 = this.typeAdapter.read2(jsonReader);
                if (obj2 == null && this.val$isPrimitive) {
                    return;
                }
                this.val$field.set(obj, obj2);
            }

            @Override // com.newrelic.com.google.gson.internal.bind.ReflectiveTypeAdapterFactory.BoundField
            public void write(JsonWriter jsonWriter, Object obj) throws IllegalAccessException, IOException {
                new TypeAdapterRuntimeTypeWrapper(this.val$context, this.typeAdapter, this.val$fieldType.getType()).write(jsonWriter, this.val$field.get(obj));
            }
        };
    }

    private Map<String, BoundField> getBoundFields(Gson gson, TypeToken<?> typeToken, Class<?> cls) {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        if (cls.isInterface()) {
            return linkedHashMap;
        }
        Type type = typeToken.getType();
        TypeToken<?> typeToken2 = typeToken;
        Class<?> rawType = cls;
        while (rawType != Object.class) {
            for (Field field : rawType.getDeclaredFields()) {
                boolean zExcludeField = excludeField(field, true);
                boolean zExcludeField2 = excludeField(field, false);
                if (zExcludeField || zExcludeField2) {
                    field.setAccessible(true);
                    BoundField boundFieldCreateBoundField = createBoundField(gson, field, getFieldName(field), TypeToken.get(C$Gson$Types.resolve(typeToken2.getType(), rawType, field.getGenericType())), zExcludeField, zExcludeField2);
                    BoundField boundField = (BoundField) linkedHashMap.put(boundFieldCreateBoundField.name, boundFieldCreateBoundField);
                    if (boundField != null) {
                        throw new IllegalArgumentException(type + " declares multiple JSON fields named " + boundField.name);
                    }
                }
            }
            typeToken2 = TypeToken.get(C$Gson$Types.resolve(typeToken2.getType(), rawType, rawType.getGenericSuperclass()));
            rawType = typeToken2.getRawType();
        }
        return linkedHashMap;
    }

    private String getFieldName(Field field) {
        SerializedName serializedName = (SerializedName) field.getAnnotation(SerializedName.class);
        return serializedName == null ? this.fieldNamingPolicy.translateName(field) : serializedName.value();
    }

    @Override // com.newrelic.com.google.gson.TypeAdapterFactory
    public <T> TypeAdapter<T> create(Gson gson, TypeToken<T> typeToken) {
        Class<? super T> rawType = typeToken.getRawType();
        if (Object.class.isAssignableFrom(rawType)) {
            return new Adapter(this.constructorConstructor.get(typeToken), getBoundFields(gson, typeToken, rawType));
        }
        return null;
    }

    public boolean excludeField(Field field, boolean z10) {
        return (this.excluder.excludeClass(field.getType(), z10) || this.excluder.excludeField(field, z10)) ? false : true;
    }
}
