package h7;

import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonToken;
import com.google.gson.stream.JsonWriter;
import e7.x;
import e7.y;
import java.io.IOException;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.util.Collection;
import java.util.Iterator;

/* JADX INFO: compiled from: CollectionTypeAdapterFactory.java */
/* JADX INFO: loaded from: classes.dex */
public final class b implements y {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final g7.e f8195h;

    /* JADX INFO: compiled from: CollectionTypeAdapterFactory.java */
    public static final class a<E> extends x<Collection<E>> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final x<E> f8196a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final g7.q<? extends Collection<E>> f8197b;

        public a(e7.h hVar, Type type, x<E> xVar, g7.q<? extends Collection<E>> qVar) {
            this.f8196a = new p(hVar, xVar, type);
            this.f8197b = qVar;
        }

        @Override // e7.x
        public final Object a(JsonReader jsonReader) throws IOException {
            if (jsonReader.peek() == JsonToken.NULL) {
                jsonReader.nextNull();
                return null;
            }
            Collection<E> collectionConstruct = this.f8197b.construct();
            jsonReader.beginArray();
            while (jsonReader.hasNext()) {
                collectionConstruct.add(this.f8196a.a(jsonReader));
            }
            jsonReader.endArray();
            return collectionConstruct;
        }

        @Override // e7.x
        public final void b(JsonWriter jsonWriter, Object obj) throws IOException {
            Collection collection = (Collection) obj;
            if (collection == null) {
                jsonWriter.nullValue();
                return;
            }
            jsonWriter.beginArray();
            Iterator<E> it = collection.iterator();
            while (it.hasNext()) {
                this.f8196a.b(jsonWriter, it.next());
            }
            jsonWriter.endArray();
        }
    }

    public b(g7.e eVar) {
        this.f8195h = eVar;
    }

    @Override // e7.y
    public final <T> x<T> a(e7.h hVar, l7.a<T> aVar) {
        Type type = aVar.f10168b;
        Class<? super T> cls = aVar.f10167a;
        if (!Collection.class.isAssignableFrom(cls)) {
            return null;
        }
        Type typeG = g7.a.g(type, cls, Collection.class);
        Type type2 = typeG instanceof ParameterizedType ? ((ParameterizedType) typeG).getActualTypeArguments()[0] : Object.class;
        return new a(hVar, type2, hVar.f(new l7.a<>(type2)), this.f8195h.a(aVar));
    }
}
