package xa;

import com.newrelic.agent.android.instrumentation.Instrumented;
import org.json.JSONObject;
import p4.h;
import v9.e;

/* JADX INFO: compiled from: AdaptKitCurrentConnectionMarshaller.kt */
/* JADX INFO: loaded from: classes.dex */
@Instrumented
public final class c {
    public static final da.b a(JSONObject jSONObject) {
        e eVar;
        da.a aVar = null;
        String strOptString = jSONObject != null ? jSONObject.optString("connection") : null;
        String strOptString2 = jSONObject != null ? jSONObject.optString("state") : null;
        e[] eVarArrValues = e.values();
        e eVar2 = e.CONNECTED_AND_AUTHENTICATED_THROUGH_OTHER_ADAPTKIT;
        int length = eVarArrValues.length;
        int i10 = 0;
        while (true) {
            if (i10 >= length) {
                eVar = null;
                break;
            }
            eVar = eVarArrValues[i10];
            if (h.c(eVar.f16528h, strOptString)) {
                break;
            }
            i10++;
        }
        if (eVar != null) {
            eVar2 = eVar;
        }
        da.a[] aVarArrValues = da.a.values();
        da.a aVar2 = da.a.UNKNOWN;
        for (da.a aVar3 : aVarArrValues) {
            if (h.c(aVar3.f6134i, strOptString2)) {
                aVar = aVar3;
                break;
            }
        }
        if (aVar != null) {
            aVar2 = aVar;
        }
        return new da.b(eVar2, aVar2);
    }
}
