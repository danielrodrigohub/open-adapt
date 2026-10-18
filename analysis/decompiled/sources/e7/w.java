package e7;

import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonToken;
import com.google.gson.stream.JsonWriter;
import java.io.IOException;

/* JADX INFO: compiled from: TypeAdapter.java */
/* JADX INFO: loaded from: classes.dex */
public final class w extends x<Object> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ x f6549a;

    public w(x xVar) {
        this.f6549a = xVar;
    }

    @Override // e7.x
    public final Object a(JsonReader jsonReader) throws IOException {
        if (jsonReader.peek() != JsonToken.NULL) {
            return this.f6549a.a(jsonReader);
        }
        jsonReader.nextNull();
        return null;
    }

    @Override // e7.x
    public final void b(JsonWriter jsonWriter, Object obj) throws IOException {
        if (obj == null) {
            jsonWriter.nullValue();
        } else {
            this.f6549a.b(jsonWriter, obj);
        }
    }
}
