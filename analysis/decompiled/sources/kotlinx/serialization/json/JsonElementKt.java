package kotlinx.serialization.json;

import a0.b;
import kotlinx.serialization.json.internal.StringOpsKt;
import p4.h;
import rd.x;
import yd.n;

/* JADX INFO: compiled from: JsonElement.kt */
/* JADX INFO: loaded from: classes.dex */
public final class JsonElementKt {
    public static final JsonPrimitive JsonPrimitive(String str) {
        return str == null ? JsonNull.INSTANCE : new JsonLiteral(str, true);
    }

    private static final Void error(JsonElement jsonElement, String str) {
        StringBuilder sbC = b.c("Element ");
        sbC.append(x.a(jsonElement.getClass()));
        sbC.append(" is not a ");
        sbC.append(str);
        throw new IllegalArgumentException(sbC.toString());
    }

    public static final boolean getBoolean(JsonPrimitive jsonPrimitive) {
        h.j(jsonPrimitive, "<this>");
        Boolean booleanStrictOrNull = StringOpsKt.toBooleanStrictOrNull(jsonPrimitive.getContent());
        if (booleanStrictOrNull != null) {
            return booleanStrictOrNull.booleanValue();
        }
        throw new IllegalStateException(jsonPrimitive + " does not represent a Boolean");
    }

    public static final Boolean getBooleanOrNull(JsonPrimitive jsonPrimitive) {
        h.j(jsonPrimitive, "<this>");
        return StringOpsKt.toBooleanStrictOrNull(jsonPrimitive.getContent());
    }

    public static final String getContentOrNull(JsonPrimitive jsonPrimitive) {
        h.j(jsonPrimitive, "<this>");
        if (jsonPrimitive instanceof JsonNull) {
            return null;
        }
        return jsonPrimitive.getContent();
    }

    public static final double getDouble(JsonPrimitive jsonPrimitive) {
        h.j(jsonPrimitive, "<this>");
        return Double.parseDouble(jsonPrimitive.getContent());
    }

    public static final Double getDoubleOrNull(JsonPrimitive jsonPrimitive) {
        h.j(jsonPrimitive, "<this>");
        String content = jsonPrimitive.getContent();
        h.j(content, "<this>");
        try {
            if (yd.h.f19197a.a(content)) {
                return Double.valueOf(Double.parseDouble(content));
            }
            return null;
        } catch (NumberFormatException unused) {
            return null;
        }
    }

    public static final float getFloat(JsonPrimitive jsonPrimitive) {
        h.j(jsonPrimitive, "<this>");
        return Float.parseFloat(jsonPrimitive.getContent());
    }

    public static final int getInt(JsonPrimitive jsonPrimitive) {
        h.j(jsonPrimitive, "<this>");
        return Integer.parseInt(jsonPrimitive.getContent());
    }

    public static final JsonArray getJsonArray(JsonElement jsonElement) {
        h.j(jsonElement, "<this>");
        JsonArray jsonArray = jsonElement instanceof JsonArray ? (JsonArray) jsonElement : null;
        if (jsonArray != null) {
            return jsonArray;
        }
        error(jsonElement, "JsonArray");
        throw new fd.b();
    }

    public static final JsonObject getJsonObject(JsonElement jsonElement) {
        h.j(jsonElement, "<this>");
        JsonObject jsonObject = jsonElement instanceof JsonObject ? (JsonObject) jsonElement : null;
        if (jsonObject != null) {
            return jsonObject;
        }
        error(jsonElement, "JsonObject");
        throw new fd.b();
    }

    public static final JsonPrimitive getJsonPrimitive(JsonElement jsonElement) {
        h.j(jsonElement, "<this>");
        JsonPrimitive jsonPrimitive = jsonElement instanceof JsonPrimitive ? (JsonPrimitive) jsonElement : null;
        if (jsonPrimitive != null) {
            return jsonPrimitive;
        }
        error(jsonElement, "JsonPrimitive");
        throw new fd.b();
    }

    public static final long getLong(JsonPrimitive jsonPrimitive) {
        h.j(jsonPrimitive, "<this>");
        return Long.parseLong(jsonPrimitive.getContent());
    }

    public static final Long getLongOrNull(JsonPrimitive jsonPrimitive) {
        h.j(jsonPrimitive, "<this>");
        return n.X(jsonPrimitive.getContent());
    }
}
