package h7;

import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonToken;
import com.google.gson.stream.JsonWriter;
import e7.v;
import e7.x;
import java.io.IOException;

/* JADX INFO: compiled from: NumberTypeAdapter.java */
/* JADX INFO: loaded from: classes.dex */
public final class j extends x<Number> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final i f8219b = new i(new j());

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final v f8220a = e7.u.f6545i;

    /* JADX INFO: compiled from: NumberTypeAdapter.java */
    public static /* synthetic */ class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f8221a;

        static {
            int[] iArr = new int[JsonToken.values().length];
            f8221a = iArr;
            try {
                iArr[JsonToken.NULL.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f8221a[JsonToken.NUMBER.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f8221a[JsonToken.STRING.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    @Override // e7.x
    public final Number a(JsonReader jsonReader) throws IOException {
        JsonToken jsonTokenPeek = jsonReader.peek();
        int i10 = a.f8221a[jsonTokenPeek.ordinal()];
        if (i10 == 1) {
            jsonReader.nextNull();
            return null;
        }
        if (i10 == 2 || i10 == 3) {
            return this.f8220a.b(jsonReader);
        }
        throw new e7.s("Expecting number, got: " + jsonTokenPeek + "; at path " + jsonReader.getPath());
    }

    @Override // e7.x
    public final void b(JsonWriter jsonWriter, Number number) throws IOException {
        jsonWriter.value(number);
    }
}
