package e7;

import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonToken;
import com.google.gson.stream.JsonWriter;
import java.io.IOException;

/* JADX INFO: compiled from: Gson.java */
/* JADX INFO: loaded from: classes.dex */
public final class d extends x<Number> {
    @Override // e7.x
    public final Number a(JsonReader jsonReader) throws IOException {
        if (jsonReader.peek() != JsonToken.NULL) {
            return Double.valueOf(jsonReader.nextDouble());
        }
        jsonReader.nextNull();
        return null;
    }

    @Override // e7.x
    public final void b(JsonWriter jsonWriter, Number number) throws IOException {
        Number number2 = number;
        if (number2 == null) {
            jsonWriter.nullValue();
        } else {
            h.b(number2.doubleValue());
            jsonWriter.value(number2);
        }
    }
}
