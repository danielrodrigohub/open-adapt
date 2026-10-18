package h7;

import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonWriter;
import e7.x;
import e7.y;
import java.io.IOException;

/* JADX INFO: compiled from: TypeAdapters.java */
/* JADX INFO: loaded from: classes.dex */
public final class u implements y {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ Class f8292h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final /* synthetic */ x f8293i;

    /* JADX INFO: compiled from: TypeAdapters.java */
    public class a extends x<Object> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final /* synthetic */ Class f8294a;

        public a(Class cls) {
            this.f8294a = cls;
        }

        @Override // e7.x
        public final Object a(JsonReader jsonReader) throws IOException {
            Object objA = u.this.f8293i.a(jsonReader);
            if (objA == null || this.f8294a.isInstance(objA)) {
                return objA;
            }
            StringBuilder sbC = a0.b.c("Expected a ");
            sbC.append(this.f8294a.getName());
            sbC.append(" but was ");
            sbC.append(objA.getClass().getName());
            sbC.append("; at path ");
            sbC.append(jsonReader.getPreviousPath());
            throw new e7.s(sbC.toString());
        }

        @Override // e7.x
        public final void b(JsonWriter jsonWriter, Object obj) throws IOException {
            u.this.f8293i.b(jsonWriter, obj);
        }
    }

    public u(Class cls, x xVar) {
        this.f8292h = cls;
        this.f8293i = xVar;
    }

    @Override // e7.y
    public final <T2> x<T2> a(e7.h hVar, l7.a<T2> aVar) {
        Class<? super T2> cls = aVar.f10167a;
        if (this.f8292h.isAssignableFrom(cls)) {
            return new a(cls);
        }
        return null;
    }

    public final String toString() {
        StringBuilder sbC = a0.b.c("Factory[typeHierarchy=");
        sbC.append(this.f8292h.getName());
        sbC.append(",adapter=");
        sbC.append(this.f8293i);
        sbC.append("]");
        return sbC.toString();
    }
}
