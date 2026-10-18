package h7;

import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonWriter;
import com.google.gson.stream.MalformedJsonException;
import com.newrelic.agent.android.instrumentation.Instrumented;
import e7.x;
import java.io.EOFException;
import java.io.IOException;
import java.lang.reflect.Type;
import java.util.Objects;

/* JADX INFO: compiled from: TreeTypeAdapter.java */
/* JADX INFO: loaded from: classes.dex */
public final class o<T> extends x<T> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final e7.r<T> f8244a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final e7.k<T> f8245b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final e7.h f8246c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final l7.a<T> f8247d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final o<T>.a f8248e = new a();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public volatile x<T> f8249f;

    /* JADX INFO: compiled from: TreeTypeAdapter.java */
    @Instrumented
    public final class a {
    }

    public o(e7.r rVar, e7.k kVar, e7.h hVar, l7.a aVar) {
        this.f8244a = rVar;
        this.f8245b = kVar;
        this.f8246c = hVar;
        this.f8247d = aVar;
    }

    @Override // e7.x
    public final T a(JsonReader jsonReader) throws IOException {
        boolean z10;
        Object obj;
        if (this.f8245b == null) {
            x<T> xVarG = this.f8249f;
            if (xVarG == null) {
                xVarG = this.f8246c.g(null, this.f8247d);
                this.f8249f = xVarG;
            }
            return xVarG.a(jsonReader);
        }
        try {
            try {
                jsonReader.peek();
                z10 = false;
                try {
                    obj = (e7.l) q.V.a(jsonReader);
                } catch (EOFException e10) {
                    e = e10;
                    if (!z10) {
                        throw new e7.s(e);
                    }
                    obj = e7.n.f6541a;
                }
            } catch (EOFException e11) {
                e = e11;
                z10 = true;
            }
            Objects.requireNonNull(obj);
            if (obj instanceof e7.n) {
                return null;
            }
            e7.k<T> kVar = this.f8245b;
            Type type = this.f8247d.f10168b;
            return (T) kVar.deserialize();
        } catch (MalformedJsonException e12) {
            throw new e7.s(e12);
        } catch (IOException e13) {
            throw new e7.m(e13);
        } catch (NumberFormatException e14) {
            throw new e7.s(e14);
        }
    }

    @Override // e7.x
    public final void b(JsonWriter jsonWriter, T t10) throws IOException {
        e7.r<T> rVar = this.f8244a;
        if (rVar == null) {
            x<T> xVarG = this.f8249f;
            if (xVarG == null) {
                xVarG = this.f8246c.g(null, this.f8247d);
                this.f8249f = xVarG;
            }
            xVarG.b(jsonWriter, t10);
            return;
        }
        if (t10 == null) {
            jsonWriter.nullValue();
        } else {
            Type type = this.f8247d.f10168b;
            g7.s.a(rVar.serialize(), jsonWriter);
        }
    }
}
