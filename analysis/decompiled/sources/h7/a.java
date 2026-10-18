package h7;

import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonToken;
import com.google.gson.stream.JsonWriter;
import e7.x;
import e7.y;
import java.io.IOException;
import java.lang.reflect.Array;
import java.lang.reflect.GenericArrayType;
import java.lang.reflect.Type;
import java.util.ArrayList;

/* JADX INFO: compiled from: ArrayTypeAdapter.java */
/* JADX INFO: loaded from: classes.dex */
public final class a<E> extends x<Object> {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final C0165a f8192c = new C0165a();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Class<E> f8193a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final x<E> f8194b;

    /* JADX INFO: renamed from: h7.a$a, reason: collision with other inner class name */
    /* JADX INFO: compiled from: ArrayTypeAdapter.java */
    public class C0165a implements y {
        @Override // e7.y
        public final <T> x<T> a(e7.h hVar, l7.a<T> aVar) {
            Type type = aVar.f10168b;
            boolean z10 = type instanceof GenericArrayType;
            if (!z10 && (!(type instanceof Class) || !((Class) type).isArray())) {
                return null;
            }
            Type genericComponentType = z10 ? ((GenericArrayType) type).getGenericComponentType() : ((Class) type).getComponentType();
            return new a(hVar, hVar.f(new l7.a<>(genericComponentType)), g7.a.f(genericComponentType));
        }
    }

    public a(e7.h hVar, x<E> xVar, Class<E> cls) {
        this.f8194b = new p(hVar, xVar, cls);
        this.f8193a = cls;
    }

    @Override // e7.x
    public final Object a(JsonReader jsonReader) throws IOException {
        if (jsonReader.peek() == JsonToken.NULL) {
            jsonReader.nextNull();
            return null;
        }
        ArrayList arrayList = new ArrayList();
        jsonReader.beginArray();
        while (jsonReader.hasNext()) {
            arrayList.add(this.f8194b.a(jsonReader));
        }
        jsonReader.endArray();
        int size = arrayList.size();
        Object objNewInstance = Array.newInstance((Class<?>) this.f8193a, size);
        for (int i10 = 0; i10 < size; i10++) {
            Array.set(objNewInstance, i10, arrayList.get(i10));
        }
        return objNewInstance;
    }

    @Override // e7.x
    public final void b(JsonWriter jsonWriter, Object obj) throws IOException {
        if (obj == null) {
            jsonWriter.nullValue();
            return;
        }
        jsonWriter.beginArray();
        int length = Array.getLength(obj);
        for (int i10 = 0; i10 < length; i10++) {
            this.f8194b.b(jsonWriter, (E) Array.get(obj, i10));
        }
        jsonWriter.endArray();
    }
}
