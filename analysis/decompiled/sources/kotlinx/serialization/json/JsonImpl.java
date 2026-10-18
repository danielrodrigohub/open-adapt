package kotlinx.serialization.json;

import kotlinx.serialization.json.internal.PolymorphismValidator;
import kotlinx.serialization.modules.SerializersModule;
import kotlinx.serialization.modules.SerializersModuleKt;
import p4.h;

/* JADX INFO: compiled from: Json.kt */
/* JADX INFO: loaded from: classes.dex */
final class JsonImpl extends Json {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public JsonImpl(JsonConfiguration jsonConfiguration, SerializersModule serializersModule) {
        super(jsonConfiguration, serializersModule, null);
        h.j(jsonConfiguration, "configuration");
        h.j(serializersModule, "module");
        validateConfiguration();
    }

    private final void validateConfiguration() {
        if (h.c(getSerializersModule(), SerializersModuleKt.getEmptySerializersModule())) {
            return;
        }
        getSerializersModule().dumpTo(new PolymorphismValidator(getConfiguration().getUseArrayPolymorphism(), getConfiguration().getClassDiscriminator()));
    }
}
