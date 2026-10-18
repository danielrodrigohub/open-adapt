package kotlinx.serialization.json;

import kotlinx.serialization.json.internal.StringOpsKt;
import p4.h;
import rd.x;

/* JADX INFO: compiled from: JsonElement.kt */
/* JADX INFO: loaded from: classes.dex */
public final class JsonLiteral extends JsonPrimitive {
    private final String content;
    private final boolean isString;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public JsonLiteral(Object obj, boolean z10) {
        super(null);
        h.j(obj, "body");
        this.isString = z10;
        this.content = obj.toString();
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !h.c(x.a(JsonLiteral.class), x.a(obj.getClass()))) {
            return false;
        }
        JsonLiteral jsonLiteral = (JsonLiteral) obj;
        return isString() == jsonLiteral.isString() && h.c(getContent(), jsonLiteral.getContent());
    }

    @Override // kotlinx.serialization.json.JsonPrimitive
    public String getContent() {
        return this.content;
    }

    public int hashCode() {
        return getContent().hashCode() + (Boolean.valueOf(isString()).hashCode() * 31);
    }

    @Override // kotlinx.serialization.json.JsonPrimitive
    public boolean isString() {
        return this.isString;
    }

    @Override // kotlinx.serialization.json.JsonPrimitive
    public String toString() {
        if (!isString()) {
            return getContent();
        }
        StringBuilder sb2 = new StringBuilder();
        StringOpsKt.printQuoted(sb2, getContent());
        String string = sb2.toString();
        h.i(string, "StringBuilder().apply(builderAction).toString()");
        return string;
    }
}
