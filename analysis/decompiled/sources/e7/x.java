package e7;

import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonWriter;
import java.io.IOException;

/* JADX INFO: compiled from: TypeAdapter.java */
/* JADX INFO: loaded from: classes.dex */
public abstract class x<T> {
    public abstract T a(JsonReader jsonReader) throws IOException;

    public abstract void b(JsonWriter jsonWriter, T t10) throws IOException;
}
