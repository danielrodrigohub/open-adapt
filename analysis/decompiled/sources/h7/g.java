package h7;

import com.google.gson.stream.JsonWriter;
import java.io.IOException;
import java.io.Writer;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;

/* JADX INFO: compiled from: JsonTreeWriter.java */
/* JADX INFO: loaded from: classes.dex */
public final class g extends JsonWriter {

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static final a f8207k = new a();

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public static final e7.q f8208l = new e7.q("closed");

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final List<e7.l> f8209h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public String f8210i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public e7.l f8211j;

    /* JADX INFO: compiled from: JsonTreeWriter.java */
    public class a extends Writer {
        @Override // java.io.Writer, java.io.Closeable, java.lang.AutoCloseable
        public final void close() throws IOException {
            throw new AssertionError();
        }

        @Override // java.io.Writer, java.io.Flushable
        public final void flush() throws IOException {
            throw new AssertionError();
        }

        @Override // java.io.Writer
        public final void write(char[] cArr, int i10, int i11) {
            throw new AssertionError();
        }
    }

    public g() {
        super(f8207k);
        this.f8209h = new ArrayList();
        this.f8211j = e7.n.f6541a;
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [java.util.ArrayList, java.util.List<e7.l>] */
    /* JADX WARN: Type inference failed for: r0v5, types: [java.util.ArrayList, java.util.List<e7.l>] */
    public final void Y(e7.l lVar) {
        if (this.f8210i != null) {
            if (!(lVar instanceof e7.n) || getSerializeNulls()) {
                e7.o oVar = (e7.o) x();
                oVar.f6542a.put(this.f8210i, lVar);
            }
            this.f8210i = null;
            return;
        }
        if (this.f8209h.isEmpty()) {
            this.f8211j = lVar;
            return;
        }
        e7.l lVarX = x();
        if (!(lVarX instanceof e7.j)) {
            throw new IllegalStateException();
        }
        ((e7.j) lVarX).f6540h.add(lVar);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.google.gson.stream.JsonWriter
    public final JsonWriter beginArray() throws IOException {
        e7.j jVar = new e7.j();
        Y(jVar);
        this.f8209h.add(jVar);
        return this;
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.google.gson.stream.JsonWriter
    public final JsonWriter beginObject() throws IOException {
        e7.o oVar = new e7.o();
        Y(oVar);
        this.f8209h.add(oVar);
        return this;
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.google.gson.stream.JsonWriter, java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws IOException {
        if (!this.f8209h.isEmpty()) {
            throw new IOException("Incomplete document");
        }
        this.f8209h.add(f8208l);
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [java.util.ArrayList, java.util.List<e7.l>] */
    /* JADX WARN: Type inference failed for: r0v7, types: [java.util.ArrayList, java.util.List<e7.l>] */
    @Override // com.google.gson.stream.JsonWriter
    public final JsonWriter endArray() throws IOException {
        if (this.f8209h.isEmpty() || this.f8210i != null) {
            throw new IllegalStateException();
        }
        if (!(x() instanceof e7.j)) {
            throw new IllegalStateException();
        }
        ?? r10 = this.f8209h;
        r10.remove(r10.size() - 1);
        return this;
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [java.util.ArrayList, java.util.List<e7.l>] */
    /* JADX WARN: Type inference failed for: r0v7, types: [java.util.ArrayList, java.util.List<e7.l>] */
    @Override // com.google.gson.stream.JsonWriter
    public final JsonWriter endObject() throws IOException {
        if (this.f8209h.isEmpty() || this.f8210i != null) {
            throw new IllegalStateException();
        }
        if (!(x() instanceof e7.o)) {
            throw new IllegalStateException();
        }
        ?? r10 = this.f8209h;
        r10.remove(r10.size() - 1);
        return this;
    }

    @Override // com.google.gson.stream.JsonWriter, java.io.Flushable
    public final void flush() throws IOException {
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [java.util.ArrayList, java.util.List<e7.l>] */
    @Override // com.google.gson.stream.JsonWriter
    public final JsonWriter name(String str) throws IOException {
        Objects.requireNonNull(str, "name == null");
        if (this.f8209h.isEmpty() || this.f8210i != null) {
            throw new IllegalStateException();
        }
        if (!(x() instanceof e7.o)) {
            throw new IllegalStateException();
        }
        this.f8210i = str;
        return this;
    }

    @Override // com.google.gson.stream.JsonWriter
    public final JsonWriter nullValue() throws IOException {
        Y(e7.n.f6541a);
        return this;
    }

    @Override // com.google.gson.stream.JsonWriter
    public final JsonWriter value(Boolean bool) throws IOException {
        if (bool == null) {
            Y(e7.n.f6541a);
            return this;
        }
        Y(new e7.q(bool));
        return this;
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [java.util.ArrayList, java.util.List<e7.l>] */
    public final e7.l x() {
        ?? r10 = this.f8209h;
        return (e7.l) r10.get(r10.size() - 1);
    }

    @Override // com.google.gson.stream.JsonWriter
    public final JsonWriter value(Number number) throws IOException {
        if (number == null) {
            Y(e7.n.f6541a);
            return this;
        }
        if (!isLenient()) {
            double dDoubleValue = number.doubleValue();
            if (Double.isNaN(dDoubleValue) || Double.isInfinite(dDoubleValue)) {
                throw new IllegalArgumentException("JSON forbids NaN and infinities: " + number);
            }
        }
        Y(new e7.q(number));
        return this;
    }

    @Override // com.google.gson.stream.JsonWriter
    public final JsonWriter value(String str) throws IOException {
        if (str == null) {
            Y(e7.n.f6541a);
            return this;
        }
        Y(new e7.q(str));
        return this;
    }

    @Override // com.google.gson.stream.JsonWriter
    public final JsonWriter value(boolean z10) throws IOException {
        Y(new e7.q(Boolean.valueOf(z10)));
        return this;
    }

    @Override // com.google.gson.stream.JsonWriter
    public final JsonWriter value(float f10) throws IOException {
        if (!isLenient() && (Float.isNaN(f10) || Float.isInfinite(f10))) {
            throw new IllegalArgumentException("JSON forbids NaN and infinities: " + f10);
        }
        Y(new e7.q(Float.valueOf(f10)));
        return this;
    }

    @Override // com.google.gson.stream.JsonWriter
    public final JsonWriter value(double d10) throws IOException {
        if (!isLenient() && (Double.isNaN(d10) || Double.isInfinite(d10))) {
            throw new IllegalArgumentException("JSON forbids NaN and infinities: " + d10);
        }
        Y(new e7.q(Double.valueOf(d10)));
        return this;
    }

    @Override // com.google.gson.stream.JsonWriter
    public final JsonWriter value(long j10) throws IOException {
        Y(new e7.q(Long.valueOf(j10)));
        return this;
    }
}
