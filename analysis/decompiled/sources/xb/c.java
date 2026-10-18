package xb;

import a0.d;
import androidx.lifecycle.o;
import gd.j;
import gd.n;
import gd.p;
import gd.z;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import kotlinx.serialization.json.Json;
import kotlinx.serialization.json.JsonArray;
import kotlinx.serialization.json.JsonElement;
import kotlinx.serialization.json.JsonElementKt;
import kotlinx.serialization.json.JsonNull;
import kotlinx.serialization.json.JsonObject;
import kotlinx.serialization.json.JsonPrimitive;
import p4.h;

/* JADX INFO: compiled from: JWTPayload.kt */
/* JADX INFO: loaded from: classes.dex */
public final class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f18124a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f18125b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final List<String> f18126c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final JsonObject f18127d;

    public c(String str) throws Exception {
        List<String> listY;
        this.f18124a = str;
        JsonElement toJsonElement = Json.Default.parseToJsonElement(str);
        if ((toJsonElement instanceof JsonNull) || !(toJsonElement instanceof JsonObject)) {
            throw new Exception("The token's payload had an invalid JSON format.");
        }
        JsonObject jsonObject = JsonElementKt.getJsonObject(toJsonElement);
        this.f18127d = jsonObject;
        b(jsonObject, "iss");
        this.f18125b = b(jsonObject, "sub");
        a(jsonObject, "exp");
        a(jsonObject, "nbf");
        a(jsonObject, "iat");
        b(jsonObject, "jti");
        if (jsonObject.containsKey("aud")) {
            JsonElement jsonElement = (JsonElement) z.y(jsonObject, "aud");
            if (jsonElement instanceof JsonArray) {
                JsonArray jsonArray = JsonElementKt.getJsonArray(jsonElement);
                ArrayList arrayList = new ArrayList(j.T(jsonArray, 10));
                Iterator<JsonElement> it = jsonArray.iterator();
                while (it.hasNext()) {
                    arrayList.add(JsonElementKt.getJsonPrimitive(it.next()).getContent());
                }
                listY = n.l0(arrayList);
            } else {
                listY = ((jsonElement instanceof JsonPrimitive) && ((JsonPrimitive) jsonElement).isString()) ? o.y(JsonElementKt.getJsonPrimitive(jsonElement).getContent()) : p.f8070h;
            }
        } else {
            listY = p.f8070h;
        }
        this.f18126c = listY;
    }

    public final Date a(JsonObject jsonObject, String str) {
        if (!jsonObject.containsKey((Object) str)) {
            return null;
        }
        JsonElement jsonElement = (JsonElement) jsonObject.get((Object) str);
        if (jsonElement instanceof JsonPrimitive) {
            return new Date(Long.parseLong(((JsonPrimitive) jsonElement).getContent()) * ((long) 1000));
        }
        return null;
    }

    public final String b(JsonObject jsonObject, String str) {
        if (jsonObject.containsKey((Object) str)) {
            JsonElement jsonElement = (JsonElement) jsonObject.get((Object) str);
            if (jsonElement instanceof JsonPrimitive) {
                return JsonElementKt.getContentOrNull(JsonElementKt.getJsonPrimitive(jsonElement));
            }
        }
        return null;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof c) && h.c(this.f18124a, ((c) obj).f18124a);
    }

    public final int hashCode() {
        return this.f18124a.hashCode();
    }

    public final String toString() {
        return d.d(a0.b.c("JWTPayload(jsonString="), this.f18124a, ')');
    }
}
