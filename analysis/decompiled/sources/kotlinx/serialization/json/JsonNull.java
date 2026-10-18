package kotlinx.serialization.json;

import com.newrelic.agent.android.util.SafeJsonPrimitive;
import kotlinx.serialization.Serializable;

/* JADX INFO: compiled from: JsonElement.kt */
/* JADX INFO: loaded from: classes.dex */
@Serializable(with = JsonNullSerializer.class)
public final class JsonNull extends JsonPrimitive {
    public static final JsonNull INSTANCE = new JsonNull();
    private static final String content = SafeJsonPrimitive.NULL_STRING;

    private JsonNull() {
        super(null);
    }

    @Override // kotlinx.serialization.json.JsonPrimitive
    public String getContent() {
        return content;
    }

    @Override // kotlinx.serialization.json.JsonPrimitive
    public boolean isString() {
        return false;
    }
}
