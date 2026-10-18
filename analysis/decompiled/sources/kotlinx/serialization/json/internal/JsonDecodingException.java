package kotlinx.serialization.json.internal;

import p4.h;

/* JADX INFO: compiled from: JsonExceptions.kt */
/* JADX INFO: loaded from: classes.dex */
public final class JsonDecodingException extends JsonException {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public JsonDecodingException(String str) {
        super(str);
        h.j(str, "message");
    }
}
