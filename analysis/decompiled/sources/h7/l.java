package h7;

import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonToken;
import com.google.gson.stream.JsonWriter;
import e7.v;
import e7.x;
import java.io.IOException;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.Objects;

/* JADX INFO: compiled from: ObjectTypeAdapter.java */
/* JADX INFO: loaded from: classes.dex */
public final class l extends x<Object> {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final k f8223c = new k();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final e7.h f8224a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final v f8225b;

    /* JADX INFO: compiled from: ObjectTypeAdapter.java */
    public static /* synthetic */ class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f8226a;

        static {
            int[] iArr = new int[JsonToken.values().length];
            f8226a = iArr;
            try {
                iArr[JsonToken.BEGIN_ARRAY.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f8226a[JsonToken.BEGIN_OBJECT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f8226a[JsonToken.STRING.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f8226a[JsonToken.NUMBER.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f8226a[JsonToken.BOOLEAN.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f8226a[JsonToken.NULL.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
        }
    }

    public l(e7.h hVar, v vVar) {
        this.f8224a = hVar;
        this.f8225b = vVar;
    }

    @Override // e7.x
    public final Object a(JsonReader jsonReader) throws IOException {
        JsonToken jsonTokenPeek = jsonReader.peek();
        Object objD = d(jsonReader, jsonTokenPeek);
        if (objD == null) {
            return c(jsonReader, jsonTokenPeek);
        }
        ArrayDeque arrayDeque = new ArrayDeque();
        while (true) {
            if (jsonReader.hasNext()) {
                String strNextName = objD instanceof Map ? jsonReader.nextName() : null;
                JsonToken jsonTokenPeek2 = jsonReader.peek();
                Object objD2 = d(jsonReader, jsonTokenPeek2);
                boolean z10 = objD2 != null;
                if (objD2 == null) {
                    objD2 = c(jsonReader, jsonTokenPeek2);
                }
                if (objD instanceof List) {
                    ((List) objD).add(objD2);
                } else {
                    ((Map) objD).put(strNextName, objD2);
                }
                if (z10) {
                    arrayDeque.addLast(objD);
                    objD = objD2;
                }
            } else {
                if (objD instanceof List) {
                    jsonReader.endArray();
                } else {
                    jsonReader.endObject();
                }
                if (arrayDeque.isEmpty()) {
                    return objD;
                }
                objD = arrayDeque.removeLast();
            }
        }
    }

    @Override // e7.x
    public final void b(JsonWriter jsonWriter, Object obj) throws IOException {
        if (obj == null) {
            jsonWriter.nullValue();
            return;
        }
        e7.h hVar = this.f8224a;
        Class<?> cls = obj.getClass();
        Objects.requireNonNull(hVar);
        x xVarF = hVar.f(new l7.a(cls));
        if (!(xVarF instanceof l)) {
            xVarF.b(jsonWriter, obj);
        } else {
            jsonWriter.beginObject();
            jsonWriter.endObject();
        }
    }

    public final Object c(JsonReader jsonReader, JsonToken jsonToken) throws IOException {
        int i10 = a.f8226a[jsonToken.ordinal()];
        if (i10 == 3) {
            return jsonReader.nextString();
        }
        if (i10 == 4) {
            return this.f8225b.b(jsonReader);
        }
        if (i10 == 5) {
            return Boolean.valueOf(jsonReader.nextBoolean());
        }
        if (i10 == 6) {
            jsonReader.nextNull();
            return null;
        }
        throw new IllegalStateException("Unexpected token: " + jsonToken);
    }

    public final Object d(JsonReader jsonReader, JsonToken jsonToken) throws IOException {
        int i10 = a.f8226a[jsonToken.ordinal()];
        if (i10 == 1) {
            jsonReader.beginArray();
            return new ArrayList();
        }
        if (i10 != 2) {
            return null;
        }
        jsonReader.beginObject();
        return new g7.p();
    }
}
