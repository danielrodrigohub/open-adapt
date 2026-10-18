package kotlinx.serialization.json.internal;

import kotlinx.serialization.SerializationException;
import p4.h;

/* JADX INFO: compiled from: JsonExceptions.kt */
/* JADX INFO: loaded from: classes.dex */
public class JsonException extends SerializationException {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public JsonException(String str) {
        super(str);
        h.j(str, "message");
    }
}
