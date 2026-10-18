package kotlinx.serialization.json;

import kotlinx.serialization.json.internal.DescriptorSchemaCache;
import p4.h;

/* JADX INFO: compiled from: JsonSchemaCache.kt */
/* JADX INFO: loaded from: classes.dex */
public final class JsonSchemaCacheKt {
    public static final DescriptorSchemaCache getSchemaCache(Json json) {
        h.j(json, "<this>");
        return json.get_schemaCache$kotlinx_serialization_json();
    }
}
