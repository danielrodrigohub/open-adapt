package h7;

import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonToken;
import com.google.gson.stream.JsonWriter;
import com.newrelic.agent.android.util.SafeJsonPrimitive;
import e7.x;
import e7.y;
import java.io.IOException;
import java.io.Serializable;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.Map;
import java.util.Objects;
import java.util.Properties;

/* JADX INFO: compiled from: MapTypeAdapterFactory.java */
/* JADX INFO: loaded from: classes.dex */
public final class h implements y {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final g7.e f8212h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final boolean f8213i = false;

    /* JADX INFO: compiled from: MapTypeAdapterFactory.java */
    public final class a<K, V> extends x<Map<K, V>> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final x<K> f8214a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final x<V> f8215b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final g7.q<? extends Map<K, V>> f8216c;

        public a(e7.h hVar, Type type, x<K> xVar, Type type2, x<V> xVar2, g7.q<? extends Map<K, V>> qVar) {
            this.f8214a = new p(hVar, xVar, type);
            this.f8215b = new p(hVar, xVar2, type2);
            this.f8216c = qVar;
        }

        @Override // e7.x
        public final Object a(JsonReader jsonReader) throws IOException {
            JsonToken jsonTokenPeek = jsonReader.peek();
            if (jsonTokenPeek == JsonToken.NULL) {
                jsonReader.nextNull();
                return null;
            }
            Map<K, V> mapConstruct = this.f8216c.construct();
            if (jsonTokenPeek == JsonToken.BEGIN_ARRAY) {
                jsonReader.beginArray();
                while (jsonReader.hasNext()) {
                    jsonReader.beginArray();
                    K kA = this.f8214a.a(jsonReader);
                    if (mapConstruct.put(kA, this.f8215b.a(jsonReader)) != null) {
                        throw new e7.s("duplicate key: " + kA);
                    }
                    jsonReader.endArray();
                }
                jsonReader.endArray();
            } else {
                jsonReader.beginObject();
                while (jsonReader.hasNext()) {
                    g7.n.INSTANCE.promoteNameToValue(jsonReader);
                    K kA2 = this.f8214a.a(jsonReader);
                    if (mapConstruct.put(kA2, this.f8215b.a(jsonReader)) != null) {
                        throw new e7.s("duplicate key: " + kA2);
                    }
                }
                jsonReader.endObject();
            }
            return mapConstruct;
        }

        /* JADX WARN: Type inference incomplete: some casts might be missing */
        @Override // e7.x
        public final void b(JsonWriter jsonWriter, Object obj) throws IOException {
            String strM;
            Map map = (Map) obj;
            if (map == null) {
                jsonWriter.nullValue();
                return;
            }
            if (!h.this.f8213i) {
                jsonWriter.beginObject();
                for (Map.Entry<K, V> entry : map.entrySet()) {
                    jsonWriter.name(String.valueOf(entry.getKey()));
                    this.f8215b.b(jsonWriter, entry.getValue());
                }
                jsonWriter.endObject();
                return;
            }
            ArrayList arrayList = new ArrayList(map.size());
            ArrayList arrayList2 = new ArrayList(map.size());
            int i10 = 0;
            boolean z10 = false;
            for (Map.Entry<K, V> entry2 : map.entrySet()) {
                x<K> xVar = this.f8214a;
                K key = entry2.getKey();
                Objects.requireNonNull(xVar);
                try {
                    g gVar = new g();
                    xVar.b(gVar, key);
                    if (!gVar.f8209h.isEmpty()) {
                        throw new IllegalStateException("Expected one JSON element but was " + gVar.f8209h);
                    }
                    e7.l lVar = gVar.f8211j;
                    arrayList.add(lVar);
                    arrayList2.add(entry2.getValue());
                    Objects.requireNonNull(lVar);
                    z10 |= (lVar instanceof e7.j) || (lVar instanceof e7.o);
                } catch (IOException e10) {
                    throw new e7.m(e10);
                }
            }
            if (z10) {
                jsonWriter.beginArray();
                int size = arrayList.size();
                while (i10 < size) {
                    jsonWriter.beginArray();
                    g7.s.a((e7.l) arrayList.get(i10), jsonWriter);
                    this.f8215b.b(jsonWriter, (V) arrayList2.get(i10));
                    jsonWriter.endArray();
                    i10++;
                }
                jsonWriter.endArray();
                return;
            }
            jsonWriter.beginObject();
            int size2 = arrayList.size();
            while (i10 < size2) {
                e7.l lVar2 = (e7.l) arrayList.get(i10);
                Objects.requireNonNull(lVar2);
                if (lVar2 instanceof e7.q) {
                    e7.q qVarH = lVar2.h();
                    Serializable serializable = qVarH.f6543a;
                    if (serializable instanceof Number) {
                        strM = String.valueOf(qVarH.l());
                    } else if (serializable instanceof Boolean) {
                        strM = Boolean.toString(qVarH.k());
                    } else {
                        if (!(serializable instanceof String)) {
                            throw new AssertionError();
                        }
                        strM = qVarH.m();
                    }
                } else {
                    if (!(lVar2 instanceof e7.n)) {
                        throw new AssertionError();
                    }
                    strM = SafeJsonPrimitive.NULL_STRING;
                }
                jsonWriter.name(strM);
                this.f8215b.b(jsonWriter, (V) arrayList2.get(i10));
                i10++;
            }
            jsonWriter.endObject();
        }
    }

    public h(g7.e eVar) {
        this.f8212h = eVar;
    }

    @Override // e7.y
    public final <T> x<T> a(e7.h hVar, l7.a<T> aVar) {
        Type[] actualTypeArguments;
        Type type = aVar.f10168b;
        Class<? super T> cls = aVar.f10167a;
        if (!Map.class.isAssignableFrom(cls)) {
            return null;
        }
        if (type == Properties.class) {
            actualTypeArguments = new Type[]{String.class, String.class};
        } else {
            Type typeG = g7.a.g(type, cls, Map.class);
            actualTypeArguments = typeG instanceof ParameterizedType ? ((ParameterizedType) typeG).getActualTypeArguments() : new Type[]{Object.class, Object.class};
        }
        Type type2 = actualTypeArguments[0];
        return new a(hVar, actualTypeArguments[0], (type2 == Boolean.TYPE || type2 == Boolean.class) ? q.f8258f : hVar.f(new l7.a<>(type2)), actualTypeArguments[1], hVar.f(new l7.a<>(actualTypeArguments[1])), this.f8212h.a(aVar));
    }
}
