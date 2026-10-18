package h7;

import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonToken;
import com.newrelic.agent.android.util.SafeJsonPrimitive;
import java.io.IOException;
import java.io.Reader;
import java.io.Serializable;
import java.util.Arrays;
import java.util.Iterator;
import java.util.Map;

/* JADX INFO: compiled from: JsonTreeReader.java */
/* JADX INFO: loaded from: classes.dex */
public final class f extends JsonReader {

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public static final a f8201l = new a();

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public static final Object f8202m = new Object();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public Object[] f8203h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f8204i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public String[] f8205j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public int[] f8206k;

    /* JADX INFO: compiled from: JsonTreeReader.java */
    public class a extends Reader {
        @Override // java.io.Reader, java.io.Closeable, java.lang.AutoCloseable
        public final void close() throws IOException {
            throw new AssertionError();
        }

        @Override // java.io.Reader
        public final int read(char[] cArr, int i10, int i11) throws IOException {
            throw new AssertionError();
        }
    }

    public f(e7.l lVar) {
        super(f8201l);
        this.f8203h = new Object[32];
        this.f8204i = 0;
        this.f8205j = new String[32];
        this.f8206k = new int[32];
        g0(lVar);
    }

    private String locationString() {
        StringBuilder sbC = a0.b.c(" at path ");
        sbC.append(getPath(false));
        return sbC.toString();
    }

    public final Object Y() {
        return this.f8203h[this.f8204i - 1];
    }

    @Override // com.google.gson.stream.JsonReader
    public final void beginArray() throws IOException {
        x(JsonToken.BEGIN_ARRAY);
        g0(((e7.j) Y()).iterator());
        this.f8206k[this.f8204i - 1] = 0;
    }

    @Override // com.google.gson.stream.JsonReader
    public final void beginObject() throws IOException {
        x(JsonToken.BEGIN_OBJECT);
        g0(new g7.p.b.a((g7.p.b) ((e7.o) Y()).f6542a.entrySet()));
    }

    @Override // com.google.gson.stream.JsonReader, java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws IOException {
        this.f8203h = new Object[]{f8202m};
        this.f8204i = 1;
    }

    @Override // com.google.gson.stream.JsonReader
    public final void endArray() throws IOException {
        x(JsonToken.END_ARRAY);
        f0();
        f0();
        int i10 = this.f8204i;
        if (i10 > 0) {
            int[] iArr = this.f8206k;
            int i11 = i10 - 1;
            iArr[i11] = iArr[i11] + 1;
        }
    }

    @Override // com.google.gson.stream.JsonReader
    public final void endObject() throws IOException {
        x(JsonToken.END_OBJECT);
        f0();
        f0();
        int i10 = this.f8204i;
        if (i10 > 0) {
            int[] iArr = this.f8206k;
            int i11 = i10 - 1;
            iArr[i11] = iArr[i11] + 1;
        }
    }

    public final Object f0() {
        Object[] objArr = this.f8203h;
        int i10 = this.f8204i - 1;
        this.f8204i = i10;
        Object obj = objArr[i10];
        objArr[i10] = null;
        return obj;
    }

    public final void g0(Object obj) {
        int i10 = this.f8204i;
        Object[] objArr = this.f8203h;
        if (i10 == objArr.length) {
            int i11 = i10 * 2;
            this.f8203h = Arrays.copyOf(objArr, i11);
            this.f8206k = Arrays.copyOf(this.f8206k, i11);
            this.f8205j = (String[]) Arrays.copyOf(this.f8205j, i11);
        }
        Object[] objArr2 = this.f8203h;
        int i12 = this.f8204i;
        this.f8204i = i12 + 1;
        objArr2[i12] = obj;
    }

    public final String getPath(boolean z10) {
        StringBuilder sb2 = new StringBuilder();
        sb2.append('$');
        int i10 = 0;
        while (true) {
            int i11 = this.f8204i;
            if (i10 >= i11) {
                return sb2.toString();
            }
            Object[] objArr = this.f8203h;
            if (objArr[i10] instanceof e7.j) {
                i10++;
                if (i10 < i11 && (objArr[i10] instanceof Iterator)) {
                    int i12 = this.f8206k[i10];
                    if (z10 && i12 > 0 && (i10 == i11 - 1 || i10 == i11 - 2)) {
                        i12--;
                    }
                    sb2.append('[');
                    sb2.append(i12);
                    sb2.append(']');
                }
            } else if ((objArr[i10] instanceof e7.o) && (i10 = i10 + 1) < i11 && (objArr[i10] instanceof Iterator)) {
                sb2.append('.');
                String[] strArr = this.f8205j;
                if (strArr[i10] != null) {
                    sb2.append(strArr[i10]);
                }
            }
            i10++;
        }
    }

    @Override // com.google.gson.stream.JsonReader
    public final String getPreviousPath() {
        return getPath(true);
    }

    @Override // com.google.gson.stream.JsonReader
    public final boolean hasNext() throws IOException {
        JsonToken jsonTokenPeek = peek();
        return (jsonTokenPeek == JsonToken.END_OBJECT || jsonTokenPeek == JsonToken.END_ARRAY || jsonTokenPeek == JsonToken.END_DOCUMENT) ? false : true;
    }

    @Override // com.google.gson.stream.JsonReader
    public final boolean nextBoolean() throws IOException {
        x(JsonToken.BOOLEAN);
        boolean zK = ((e7.q) f0()).k();
        int i10 = this.f8204i;
        if (i10 > 0) {
            int[] iArr = this.f8206k;
            int i11 = i10 - 1;
            iArr[i11] = iArr[i11] + 1;
        }
        return zK;
    }

    @Override // com.google.gson.stream.JsonReader
    public final double nextDouble() throws IOException {
        JsonToken jsonTokenPeek = peek();
        JsonToken jsonToken = JsonToken.NUMBER;
        if (jsonTokenPeek != jsonToken && jsonTokenPeek != JsonToken.STRING) {
            throw new IllegalStateException("Expected " + jsonToken + " but was " + jsonTokenPeek + locationString());
        }
        e7.q qVar = (e7.q) Y();
        double dDoubleValue = qVar.f6543a instanceof Number ? qVar.l().doubleValue() : Double.parseDouble(qVar.m());
        if (!isLenient() && (Double.isNaN(dDoubleValue) || Double.isInfinite(dDoubleValue))) {
            throw new NumberFormatException("JSON forbids NaN and infinities: " + dDoubleValue);
        }
        f0();
        int i10 = this.f8204i;
        if (i10 > 0) {
            int[] iArr = this.f8206k;
            int i11 = i10 - 1;
            iArr[i11] = iArr[i11] + 1;
        }
        return dDoubleValue;
    }

    @Override // com.google.gson.stream.JsonReader
    public final int nextInt() throws IOException {
        JsonToken jsonTokenPeek = peek();
        JsonToken jsonToken = JsonToken.NUMBER;
        if (jsonTokenPeek != jsonToken && jsonTokenPeek != JsonToken.STRING) {
            throw new IllegalStateException("Expected " + jsonToken + " but was " + jsonTokenPeek + locationString());
        }
        e7.q qVar = (e7.q) Y();
        int iIntValue = qVar.f6543a instanceof Number ? qVar.l().intValue() : Integer.parseInt(qVar.m());
        f0();
        int i10 = this.f8204i;
        if (i10 > 0) {
            int[] iArr = this.f8206k;
            int i11 = i10 - 1;
            iArr[i11] = iArr[i11] + 1;
        }
        return iIntValue;
    }

    @Override // com.google.gson.stream.JsonReader
    public final long nextLong() throws IOException {
        JsonToken jsonTokenPeek = peek();
        JsonToken jsonToken = JsonToken.NUMBER;
        if (jsonTokenPeek != jsonToken && jsonTokenPeek != JsonToken.STRING) {
            throw new IllegalStateException("Expected " + jsonToken + " but was " + jsonTokenPeek + locationString());
        }
        e7.q qVar = (e7.q) Y();
        long jLongValue = qVar.f6543a instanceof Number ? qVar.l().longValue() : Long.parseLong(qVar.m());
        f0();
        int i10 = this.f8204i;
        if (i10 > 0) {
            int[] iArr = this.f8206k;
            int i11 = i10 - 1;
            iArr[i11] = iArr[i11] + 1;
        }
        return jLongValue;
    }

    @Override // com.google.gson.stream.JsonReader
    public final String nextName() throws IOException {
        x(JsonToken.NAME);
        Map.Entry entry = (Map.Entry) ((Iterator) Y()).next();
        String str = (String) entry.getKey();
        this.f8205j[this.f8204i - 1] = str;
        g0(entry.getValue());
        return str;
    }

    @Override // com.google.gson.stream.JsonReader
    public final void nextNull() throws IOException {
        x(JsonToken.NULL);
        f0();
        int i10 = this.f8204i;
        if (i10 > 0) {
            int[] iArr = this.f8206k;
            int i11 = i10 - 1;
            iArr[i11] = iArr[i11] + 1;
        }
    }

    @Override // com.google.gson.stream.JsonReader
    public final String nextString() throws IOException {
        JsonToken jsonTokenPeek = peek();
        JsonToken jsonToken = JsonToken.STRING;
        if (jsonTokenPeek == jsonToken || jsonTokenPeek == JsonToken.NUMBER) {
            String strM = ((e7.q) f0()).m();
            int i10 = this.f8204i;
            if (i10 > 0) {
                int[] iArr = this.f8206k;
                int i11 = i10 - 1;
                iArr[i11] = iArr[i11] + 1;
            }
            return strM;
        }
        throw new IllegalStateException("Expected " + jsonToken + " but was " + jsonTokenPeek + locationString());
    }

    @Override // com.google.gson.stream.JsonReader
    public final JsonToken peek() throws IOException {
        if (this.f8204i == 0) {
            return JsonToken.END_DOCUMENT;
        }
        Object objY = Y();
        if (objY instanceof Iterator) {
            boolean z10 = this.f8203h[this.f8204i - 2] instanceof e7.o;
            Iterator it = (Iterator) objY;
            if (!it.hasNext()) {
                return z10 ? JsonToken.END_OBJECT : JsonToken.END_ARRAY;
            }
            if (z10) {
                return JsonToken.NAME;
            }
            g0(it.next());
            return peek();
        }
        if (objY instanceof e7.o) {
            return JsonToken.BEGIN_OBJECT;
        }
        if (objY instanceof e7.j) {
            return JsonToken.BEGIN_ARRAY;
        }
        if (!(objY instanceof e7.q)) {
            if (objY instanceof e7.n) {
                return JsonToken.NULL;
            }
            if (objY == f8202m) {
                throw new IllegalStateException("JsonReader is closed");
            }
            throw new AssertionError();
        }
        Serializable serializable = ((e7.q) objY).f6543a;
        if (serializable instanceof String) {
            return JsonToken.STRING;
        }
        if (serializable instanceof Boolean) {
            return JsonToken.BOOLEAN;
        }
        if (serializable instanceof Number) {
            return JsonToken.NUMBER;
        }
        throw new AssertionError();
    }

    @Override // com.google.gson.stream.JsonReader
    public final void skipValue() throws IOException {
        if (peek() == JsonToken.NAME) {
            nextName();
            this.f8205j[this.f8204i - 2] = SafeJsonPrimitive.NULL_STRING;
        } else {
            f0();
            int i10 = this.f8204i;
            if (i10 > 0) {
                this.f8205j[i10 - 1] = SafeJsonPrimitive.NULL_STRING;
            }
        }
        int i11 = this.f8204i;
        if (i11 > 0) {
            int[] iArr = this.f8206k;
            int i12 = i11 - 1;
            iArr[i12] = iArr[i12] + 1;
        }
    }

    @Override // com.google.gson.stream.JsonReader
    public final String toString() {
        return f.class.getSimpleName() + locationString();
    }

    public final void x(JsonToken jsonToken) throws IOException {
        if (peek() == jsonToken) {
            return;
        }
        throw new IllegalStateException("Expected " + jsonToken + " but was " + peek() + locationString());
    }

    @Override // com.google.gson.stream.JsonReader
    public final String getPath() {
        return getPath(false);
    }
}
