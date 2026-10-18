package e7;

import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonToken;
import com.google.gson.stream.JsonWriter;
import com.google.gson.stream.MalformedJsonException;
import com.newrelic.agent.android.instrumentation.GsonInstrumentation;
import com.newrelic.agent.android.instrumentation.Instrumented;
import java.io.EOFException;
import java.io.IOException;
import java.io.Reader;
import java.io.StringReader;
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
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicLongArray;

/* JADX INFO: compiled from: Gson.java */
/* JADX INFO: loaded from: classes.dex */
@Instrumented
public final class h {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public static final l7.a<?> f6524o = new l7.a<>(Object.class);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ThreadLocal<Map<l7.a<?>, a<?>>> f6525a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Map<l7.a<?>, x<?>> f6526b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final g7.e f6527c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final h7.e f6528d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final List<y> f6529e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final Map<Type, i<?>> f6530f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final boolean f6531g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final boolean f6532h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final boolean f6533i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final boolean f6534j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final boolean f6535k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final List<y> f6536l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final List<y> f6537m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final List<t> f6538n;

    /* JADX INFO: compiled from: Gson.java */
    public static class a<T> extends x<T> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public x<T> f6539a;

        @Override // e7.x
        public final T a(JsonReader jsonReader) throws IOException {
            x<T> xVar = this.f6539a;
            if (xVar != null) {
                return xVar.a(jsonReader);
            }
            throw new IllegalStateException();
        }

        @Override // e7.x
        public final void b(JsonWriter jsonWriter, T t10) throws IOException {
            x<T> xVar = this.f6539a;
            if (xVar == null) {
                throw new IllegalStateException();
            }
            xVar.b(jsonWriter, t10);
        }
    }

    public h() {
        g7.l lVar = g7.l.f7808j;
        Map<Type, i<?>> mapEmptyMap = Collections.emptyMap();
        List<y> listEmptyList = Collections.emptyList();
        List<y> listEmptyList2 = Collections.emptyList();
        List listEmptyList3 = Collections.emptyList();
        List<t> listEmptyList4 = Collections.emptyList();
        this.f6525a = new ThreadLocal<>();
        this.f6526b = new ConcurrentHashMap();
        this.f6530f = mapEmptyMap;
        g7.e eVar = new g7.e(mapEmptyMap, listEmptyList4);
        this.f6527c = eVar;
        this.f6531g = false;
        this.f6532h = false;
        this.f6533i = true;
        this.f6534j = false;
        this.f6535k = false;
        this.f6536l = listEmptyList;
        this.f6537m = listEmptyList2;
        this.f6538n = listEmptyList4;
        ArrayList arrayList = new ArrayList();
        arrayList.add(h7.q.W);
        arrayList.add(h7.l.f8223c);
        arrayList.add(lVar);
        arrayList.addAll(listEmptyList3);
        arrayList.add(h7.q.C);
        arrayList.add(h7.q.f8265m);
        arrayList.add(h7.q.f8259g);
        arrayList.add(h7.q.f8261i);
        arrayList.add(h7.q.f8263k);
        x<Number> xVar = h7.q.f8272t;
        arrayList.add(new h7.s(Long.TYPE, Long.class, xVar));
        arrayList.add(new h7.s(Double.TYPE, Double.class, new d()));
        arrayList.add(new h7.s(Float.TYPE, Float.class, new e()));
        arrayList.add(h7.j.f8219b);
        arrayList.add(h7.q.f8267o);
        arrayList.add(h7.q.f8269q);
        arrayList.add(new h7.r(AtomicLong.class, new w(new f(xVar))));
        arrayList.add(new h7.r(AtomicLongArray.class, new w(new g(xVar))));
        arrayList.add(h7.q.f8271s);
        arrayList.add(h7.q.f8276x);
        arrayList.add(h7.q.E);
        arrayList.add(h7.q.G);
        arrayList.add(new h7.r(BigDecimal.class, h7.q.f8278z));
        arrayList.add(new h7.r(BigInteger.class, h7.q.A));
        arrayList.add(new h7.r(g7.o.class, h7.q.B));
        arrayList.add(h7.q.I);
        arrayList.add(h7.q.K);
        arrayList.add(h7.q.O);
        arrayList.add(h7.q.Q);
        arrayList.add(h7.q.U);
        arrayList.add(h7.q.M);
        arrayList.add(h7.q.f8256d);
        arrayList.add(h7.c.f8198b);
        arrayList.add(h7.q.S);
        if (k7.d.f9736a) {
            arrayList.add(k7.d.f9738c);
            arrayList.add(k7.d.f9737b);
            arrayList.add(k7.d.f9739d);
        }
        arrayList.add(h7.a.f8192c);
        arrayList.add(h7.q.f8254b);
        arrayList.add(new h7.b(eVar));
        arrayList.add(new h7.h(eVar));
        h7.e eVar2 = new h7.e(eVar);
        this.f6528d = eVar2;
        arrayList.add(eVar2);
        arrayList.add(h7.q.X);
        arrayList.add(new h7.n(eVar, lVar, eVar2, listEmptyList4));
        this.f6529e = Collections.unmodifiableList(arrayList);
    }

    public static void a(Object obj, JsonReader jsonReader) {
        if (obj != null) {
            try {
                if (jsonReader.peek() == JsonToken.END_DOCUMENT) {
                } else {
                    throw new s("JSON document was not fully consumed.");
                }
            } catch (MalformedJsonException e10) {
                throw new s(e10);
            } catch (IOException e11) {
                throw new m(e11);
            }
        }
    }

    public static void b(double d10) {
        if (Double.isNaN(d10) || Double.isInfinite(d10)) {
            throw new IllegalArgumentException(d10 + " is not a valid double value as per JSON specification. To override this behavior, use GsonBuilder.serializeSpecialFloatingPointValues() method.");
        }
    }

    public final <T> T c(JsonReader jsonReader, Type type) throws s, m {
        boolean zIsLenient = jsonReader.isLenient();
        boolean z10 = true;
        jsonReader.setLenient(true);
        try {
            try {
                try {
                    jsonReader.peek();
                    z10 = false;
                    T tA = f(new l7.a<>(type)).a(jsonReader);
                    jsonReader.setLenient(zIsLenient);
                    return tA;
                } catch (AssertionError e10) {
                    AssertionError assertionError = new AssertionError("AssertionError (GSON 2.9.1): " + e10.getMessage());
                    assertionError.initCause(e10);
                    throw assertionError;
                } catch (IllegalStateException e11) {
                    throw new s(e11);
                }
            } catch (EOFException e12) {
                if (!z10) {
                    throw new s(e12);
                }
                jsonReader.setLenient(zIsLenient);
                return null;
            } catch (IOException e13) {
                throw new s(e13);
            }
        } catch (Throwable th) {
            jsonReader.setLenient(zIsLenient);
            throw th;
        }
    }

    public final <T> T d(String str, Class<T> cls) throws s {
        return (T) androidx.lifecycle.o.S(cls).cast(GsonInstrumentation.fromJson(this, str, (Type) cls));
    }

    public final <T> T e(String str, Type type) throws s {
        if (str == null) {
            return null;
        }
        return (T) GsonInstrumentation.fromJson(this, new StringReader(str), type);
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [java.util.Map<l7.a<?>, e7.x<?>>, java.util.concurrent.ConcurrentHashMap] */
    /* JADX WARN: Type inference failed for: r2v6, types: [java.util.Map<l7.a<?>, e7.x<?>>, java.util.concurrent.ConcurrentHashMap] */
    /* JADX WARN: Type inference incomplete: some casts might be missing */
    public final <T> x<T> f(l7.a<T> aVar) {
        x<T> xVar = (x) this.f6526b.get(aVar);
        if (xVar != null) {
            return xVar;
        }
        Map<l7.a<?>, a<?>> map = this.f6525a.get();
        boolean z10 = false;
        if (map == null) {
            map = new HashMap<>();
            this.f6525a.set(map);
            z10 = true;
        }
        a<?> aVar2 = map.get(aVar);
        if (aVar2 != null) {
            return aVar2;
        }
        try {
            a<?> aVar3 = new a<>();
            map.put(aVar, aVar3);
            Iterator<y> it = this.f6529e.iterator();
            while (it.hasNext()) {
                x<T> xVarA = it.next().a(this, aVar);
                if (xVarA != null) {
                    if (aVar3.f6539a != null) {
                        throw new AssertionError();
                    }
                    aVar3.f6539a = xVarA;
                    this.f6526b.put((l7.a<?>) aVar, (x<?>) xVarA);
                    map.remove(aVar);
                    if (z10) {
                        this.f6525a.remove();
                    }
                    return xVarA;
                }
            }
            throw new IllegalArgumentException("GSON (2.9.1) cannot handle " + aVar);
        } catch (Throwable th) {
            map.remove(aVar);
            if (z10) {
                this.f6525a.remove();
            }
            throw th;
        }
    }

    public final <T> x<T> g(y yVar, l7.a<T> aVar) {
        if (!this.f6529e.contains(yVar)) {
            yVar = this.f6528d;
        }
        boolean z10 = false;
        for (y yVar2 : this.f6529e) {
            if (z10) {
                x<T> xVarA = yVar2.a(this, aVar);
                if (xVarA != null) {
                    return xVarA;
                }
            } else if (yVar2 == yVar) {
                z10 = true;
            }
        }
        throw new IllegalArgumentException("GSON cannot serialize " + aVar);
    }

    public final JsonReader h(Reader reader) {
        JsonReader jsonReader = new JsonReader(reader);
        jsonReader.setLenient(this.f6535k);
        return jsonReader;
    }

    public final JsonWriter i(Writer writer) throws IOException {
        if (this.f6532h) {
            writer.write(")]}'\n");
        }
        JsonWriter jsonWriter = new JsonWriter(writer);
        if (this.f6534j) {
            jsonWriter.setIndent("  ");
        }
        jsonWriter.setHtmlSafe(this.f6533i);
        jsonWriter.setLenient(this.f6535k);
        jsonWriter.setSerializeNulls(this.f6531g);
        return jsonWriter;
    }

    public final String j(Object obj) {
        return obj == null ? GsonInstrumentation.toJson(this, (l) n.f6541a) : GsonInstrumentation.toJson(this, obj, obj.getClass());
    }

    public final void k(l lVar, JsonWriter jsonWriter) throws m {
        boolean zIsLenient = jsonWriter.isLenient();
        jsonWriter.setLenient(true);
        boolean zIsHtmlSafe = jsonWriter.isHtmlSafe();
        jsonWriter.setHtmlSafe(this.f6533i);
        boolean serializeNulls = jsonWriter.getSerializeNulls();
        jsonWriter.setSerializeNulls(this.f6531g);
        try {
            try {
                g7.s.a(lVar, jsonWriter);
                jsonWriter.setLenient(zIsLenient);
                jsonWriter.setHtmlSafe(zIsHtmlSafe);
                jsonWriter.setSerializeNulls(serializeNulls);
            } catch (IOException e10) {
                throw new m(e10);
            } catch (AssertionError e11) {
                AssertionError assertionError = new AssertionError("AssertionError (GSON 2.9.1): " + e11.getMessage());
                assertionError.initCause(e11);
                throw assertionError;
            }
        } catch (Throwable th) {
            jsonWriter.setLenient(zIsLenient);
            jsonWriter.setHtmlSafe(zIsHtmlSafe);
            jsonWriter.setSerializeNulls(serializeNulls);
            throw th;
        }
    }

    public final void l(l lVar, Appendable appendable) throws m {
        try {
            GsonInstrumentation.toJson(this, lVar, i(appendable instanceof Writer ? (Writer) appendable : new g7.s.a(appendable)));
        } catch (IOException e10) {
            throw new m(e10);
        }
    }

    public final void m(Object obj, Type type, JsonWriter jsonWriter) throws m {
        x xVarF = f(new l7.a(type));
        boolean zIsLenient = jsonWriter.isLenient();
        jsonWriter.setLenient(true);
        boolean zIsHtmlSafe = jsonWriter.isHtmlSafe();
        jsonWriter.setHtmlSafe(this.f6533i);
        boolean serializeNulls = jsonWriter.getSerializeNulls();
        jsonWriter.setSerializeNulls(this.f6531g);
        try {
            try {
                try {
                    xVarF.b(jsonWriter, obj);
                    jsonWriter.setLenient(zIsLenient);
                    jsonWriter.setHtmlSafe(zIsHtmlSafe);
                    jsonWriter.setSerializeNulls(serializeNulls);
                } catch (IOException e10) {
                    throw new m(e10);
                }
            } catch (AssertionError e11) {
                AssertionError assertionError = new AssertionError("AssertionError (GSON 2.9.1): " + e11.getMessage());
                assertionError.initCause(e11);
                throw assertionError;
            }
        } catch (Throwable th) {
            jsonWriter.setLenient(zIsLenient);
            jsonWriter.setHtmlSafe(zIsHtmlSafe);
            jsonWriter.setSerializeNulls(serializeNulls);
            throw th;
        }
    }

    public final void n(Object obj, Type type, Appendable appendable) throws m {
        try {
            GsonInstrumentation.toJson(this, obj, type, i(appendable instanceof Writer ? (Writer) appendable : new g7.s.a(appendable)));
        } catch (IOException e10) {
            throw new m(e10);
        }
    }

    public final String toString() {
        return "{serializeNulls:" + this.f6531g + ",factories:" + this.f6529e + ",instanceCreators:" + this.f6527c + "}";
    }
}
