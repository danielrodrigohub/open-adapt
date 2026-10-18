package h7;

import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonWriter;
import e7.x;
import java.io.IOException;
import java.lang.reflect.Type;
import java.lang.reflect.TypeVariable;

/* JADX INFO: compiled from: TypeAdapterRuntimeTypeWrapper.java */
/* JADX INFO: loaded from: classes.dex */
public final class p<T> extends x<T> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final e7.h f8250a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final x<T> f8251b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Type f8252c;

    public p(e7.h hVar, x<T> xVar, Type type) {
        this.f8250a = hVar;
        this.f8251b = xVar;
        this.f8252c = type;
    }

    @Override // e7.x
    public final T a(JsonReader jsonReader) throws IOException {
        return this.f8251b.a(jsonReader);
    }

    @Override // e7.x
    public final void b(JsonWriter jsonWriter, T t10) throws IOException {
        x<T> xVarF = this.f8251b;
        Type type = this.f8252c;
        if (t10 != null && (type == Object.class || (type instanceof TypeVariable) || (type instanceof Class))) {
            type = t10.getClass();
        }
        if (type != this.f8252c) {
            xVarF = this.f8250a.f(new l7.a<>(type));
            if (xVarF instanceof n.a) {
                x<T> xVar = this.f8251b;
                if (!(xVar instanceof n.a)) {
                    xVarF = xVar;
                }
            }
        }
        xVarF.b(jsonWriter, t10);
    }
}
