package kotlinx.serialization.json;

import fd.o;
import p4.h;
import qd.l;

/* JADX INFO: compiled from: Json.kt */
/* JADX INFO: loaded from: classes.dex */
public final class JsonKt {
    public static final Json Json(Json json, l<? super JsonBuilder, o> lVar) {
        h.j(json, "from");
        h.j(lVar, "builderAction");
        JsonBuilder jsonBuilder = new JsonBuilder(json);
        lVar.invoke(jsonBuilder);
        return new JsonImpl(jsonBuilder.build$kotlinx_serialization_json(), jsonBuilder.getSerializersModule());
    }

    public static /* synthetic */ Json Json$default(Json json, l lVar, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            json = Json.Default;
        }
        return Json(json, lVar);
    }
}
