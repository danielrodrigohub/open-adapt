package kotlinx.serialization.json;

import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;
import rd.h;

/* JADX INFO: compiled from: JsonElement.kt */
/* JADX INFO: loaded from: classes.dex */
@Serializable(with = JsonElementSerializer.class)
public abstract class JsonElement {
    public static final Companion Companion = new Companion(null);

    /* JADX INFO: compiled from: JsonElement.kt */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(h hVar) {
            this();
        }

        public final KSerializer<JsonElement> serializer() {
            return JsonElementSerializer.INSTANCE;
        }
    }

    private JsonElement() {
    }

    public /* synthetic */ JsonElement(h hVar) {
        this();
    }
}
