package wa;

import android.content.Intent;
import android.os.Bundle;
import com.newrelic.agent.android.harvest.type.HarvestErrorCodes;
import fd.o;
import org.json.JSONObject;
import qd.p;

/* JADX INFO: compiled from: AdaptKitProduceResultOrErrorReceiver.kt */
/* JADX INFO: loaded from: classes.dex */
public final class c extends a {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final String f17551h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final p<v9.g, v9.f, o> f17552i;

    /* JADX WARN: Multi-variable type inference failed */
    public c(String str, p<? super v9.g, ? super v9.f, o> pVar) {
        p4.h.j(str, "receiverDeviceId");
        this.f17551h = str;
        this.f17552i = pVar;
    }

    /* JADX WARN: Code duplicated, block: B:41:0x009a  */
    @Override // wa.a
    public final void c() {
        ia.c cVar;
        v9.g gVarM;
        String string;
        String string2;
        Intent intent = this.f17541c;
        v9.f fVarL = null;
        if (intent == null) {
            p4.h.C("intent");
            throw null;
        }
        Bundle extras = intent.getExtras();
        if (extras == null || !p4.h.c(this.f17551h, a())) {
            return;
        }
        String string3 = extras.getString("extra_remote_response_key");
        int i10 = 0;
        if (string3 != null) {
            for (int i11 : a4.g.b()) {
                if (p4.h.c(a4.g.c(i11), string3)) {
                    i10 = i11;
                    break;
                }
            }
        }
        switch (i10 == 0 ? -1 : ia.d.f8998a[q.g.a(i10)]) {
            case HarvestErrorCodes.NSURLErrorUnknown /* -1 */:
                cVar = null;
                break;
            case 0:
            default:
                throw new j2.a();
            case 1:
                cVar = ia.c.e.f8990a;
                break;
            case 2:
                cVar = ia.c.b.f8984a;
                break;
            case 3:
                cVar = ia.c.C0175c.f8986a;
                break;
            case 4:
                cVar = ia.c.f.f8992a;
                break;
            case 5:
                cVar = ia.c.d.f8988a;
                break;
            case 6:
                cVar = ia.c.h.f8996a;
                break;
            case 7:
                cVar = ia.c.g.f8994a;
                break;
            case 8:
                cVar = ia.c.a.f8982a;
                break;
        }
        if (cVar != null) {
            p<v9.g, v9.f, o> pVar = this.f17552i;
            if (!p4.h.c(extras.getString("extra_response_type"), "result") || (string2 = extras.getString("extra_json_object")) == null) {
                gVarM = null;
            } else {
                JSONObject jSONObject = new JSONObject(string2);
                String strF = cVar.f(jSONObject, "device_id");
                v9.a aVarA = cVar.a(jSONObject);
                if (strF == null || aVarA == null) {
                    gVarM = null;
                } else {
                    gVarM = cVar.m(jSONObject, strF, aVarA);
                }
            }
            if (p4.h.c(extras.getString("extra_response_type"), "error") && (string = extras.getString("extra_json_object")) != null) {
                JSONObject jSONObject2 = new JSONObject(string);
                String strF2 = cVar.f(jSONObject2, "device_id");
                v9.a aVarA2 = cVar.a(jSONObject2);
                if (strF2 != null && aVarA2 != null) {
                    fVarL = cVar.l(jSONObject2, strF2, aVarA2);
                }
            }
            pVar.invoke(gVarM, fVarL);
        }
    }

    @Override // wa.a
    public final String e() {
        return "com.nike.android.adaptkit.ACTION_ADAPT_KIT_DEVICE_NOTIFICATION";
    }
}
