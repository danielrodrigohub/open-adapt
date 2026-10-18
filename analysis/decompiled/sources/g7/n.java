package g7;

import com.google.gson.stream.JsonReader;
import java.io.IOException;

/* JADX INFO: compiled from: JsonReaderInternalAccess.java */
/* JADX INFO: loaded from: classes.dex */
public abstract class n {
    public static n INSTANCE;

    public abstract void promoteNameToValue(JsonReader jsonReader) throws IOException;
}
