package ia;

import android.content.Intent;
import com.newrelic.agent.android.instrumentation.Instrumented;
import com.newrelic.agent.android.instrumentation.JSONObjectInstrumentation;
import ea.i;
import ea.m;
import java.util.Iterator;
import java.util.UUID;
import org.json.JSONException;
import org.json.JSONObject;
import v9.a2;
import v9.d4;
import v9.f;
import v9.f2;
import v9.f4;
import v9.g;
import v9.m4;
import v9.n4;
import v9.t;
import v9.u3;
import v9.u4;
import v9.w1;
import v9.w3;
import v9.w4;
import v9.x3;
import v9.y1;
import v9.z1;
import v9.z3;

/* JADX INFO: compiled from: RemoteResponse.kt */
/* JADX INFO: loaded from: classes.dex */
@Instrumented
public abstract class c<Result extends v9.g, Error extends v9.f> {

    /* JADX INFO: compiled from: RemoteResponse.kt */
    public static final class a extends c<y1, w1> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final a f8982a = new a();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final int f8983b = 8;

        @Override // ia.c
        public final int e() {
            return f8983b;
        }

        @Override // ia.c
        public final void h(JSONObject jSONObject, v9.f fVar) throws JSONException {
            k(jSONObject, ((w1) fVar).getMessage());
        }

        @Override // ia.c
        public final void j(JSONObject jSONObject, v9.g gVar) throws JSONException {
            y1 y1Var = (y1) gVar;
            jSONObject.put("percent", y1Var.f16928n.f3631h);
            jSONObject.put("state", y1Var.f16928n.f3632i);
        }

        @Override // ia.c
        public final v9.f l(JSONObject jSONObject, String str, v9.a aVar) {
            Exception excC = c(jSONObject);
            if (excC != null) {
                return new w1(str, aVar, excC);
            }
            return null;
        }

        @Override // ia.c
        public final v9.g m(JSONObject jSONObject, String str, v9.a aVar) {
            ba.e.b bVar;
            Integer numD = d(jSONObject, "percent");
            ba.e.b[] bVarArrValues = ba.e.b.values();
            int length = bVarArrValues.length;
            int i10 = 0;
            while (true) {
                if (i10 >= length) {
                    bVar = null;
                    break;
                }
                bVar = bVarArrValues[i10];
                if (p4.h.c(bVar.f3639h, f8982a.f(jSONObject, "state"))) {
                    break;
                }
                i10++;
            }
            if (bVar == null || numD == null) {
                return null;
            }
            return new y1(str, aVar, new ba.e(numD.intValue(), bVar));
        }
    }

    /* JADX INFO: compiled from: RemoteResponse.kt */
    public static final class b extends c<a2, z1> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final b f8984a = new b();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final int f8985b = 7;

        @Override // ia.c
        public final int e() {
            return f8985b;
        }

        @Override // ia.c
        public final void h(JSONObject jSONObject, v9.f fVar) throws JSONException {
            k(jSONObject, ((z1) fVar).getMessage());
        }

        @Override // ia.c
        public final void j(JSONObject jSONObject, v9.g gVar) throws JSONException {
            a2 a2Var = (a2) gVar;
            jSONObject.put("percent", a2Var.f16453m.f3631h);
            jSONObject.put("state", a2Var.f16453m.f3632i.f3639h);
        }

        @Override // ia.c
        public final v9.f l(JSONObject jSONObject, String str, v9.a aVar) {
            Exception excC = c(jSONObject);
            if (excC != null) {
                return new z1(str, aVar, excC);
            }
            return null;
        }

        @Override // ia.c
        public final v9.g m(JSONObject jSONObject, String str, v9.a aVar) {
            ba.e.b bVar;
            int iOptInt = jSONObject.optInt("percent", Integer.MIN_VALUE);
            String strOptString = jSONObject.optString("state", null);
            if (strOptString == null) {
                bVar = null;
                break;
            }
            ba.e.b[] bVarArrValues = ba.e.b.values();
            int i10 = 0;
            int length = bVarArrValues.length;
            while (true) {
                if (i10 >= length) {
                    bVar = null;
                    break;
                }
                bVar = bVarArrValues[i10];
                if (p4.h.c(bVar.f3639h, strOptString)) {
                    break;
                }
                i10++;
            }
            if (iOptInt == Integer.MIN_VALUE || bVar == null) {
                return null;
            }
            return new a2(str, new ba.e(iOptInt, bVar));
        }
    }

    /* JADX INFO: renamed from: ia.c$c, reason: collision with other inner class name */
    /* JADX INFO: compiled from: RemoteResponse.kt */
    public static final class C0175c extends c<f2, v9.f> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final C0175c f8986a = new C0175c();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final int f8987b = 6;

        @Override // ia.c
        public final int e() {
            return f8987b;
        }

        @Override // ia.c
        public final void h(JSONObject jSONObject, v9.f fVar) {
        }

        @Override // ia.c
        public final void j(JSONObject jSONObject, v9.g gVar) throws JSONException {
            jSONObject.put("connection_state", ((f2) gVar).f16547m.f16528h);
        }

        @Override // ia.c
        public final v9.f l(JSONObject jSONObject, String str, v9.a aVar) {
            return null;
        }

        /* JADX WARN: Code duplicated, block: B:12:0x0022  */
        /* JADX WARN: Code duplicated, block: B:17:? A[RETURN, SYNTHETIC] */
        @Override // ia.c
        public final v9.g m(JSONObject jSONObject, String str, v9.a aVar) {
            String strF = f(jSONObject, "connection_state");
            if (strF == null) {
                return null;
            }
            for (v9.e eVar : v9.e.values()) {
                if (p4.h.c(eVar.f16528h, strF)) {
                    if (eVar != null) {
                        return new f2(str, eVar);
                    }
                    return null;
                }
            }
            eVar = null;
            if (eVar != null) {
                return new f2(str, eVar);
            }
            return null;
        }
    }

    /* JADX INFO: compiled from: RemoteResponse.kt */
    public static final class d extends c<f4, d4> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final d f8988a = new d();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final int f8989b = 2;

        @Override // ia.c
        public final int e() {
            return f8989b;
        }

        @Override // ia.c
        public final void h(JSONObject jSONObject, v9.f fVar) throws JSONException {
            k(jSONObject, ((d4) fVar).getMessage());
        }

        @Override // ia.c
        public final void j(JSONObject jSONObject, v9.g gVar) throws JSONException {
            jSONObject.put("percent", ((f4) gVar).f16552n.f6649i);
        }

        @Override // ia.c
        public final v9.f l(JSONObject jSONObject, String str, v9.a aVar) {
            Exception excC = c(jSONObject);
            if (excC != null) {
                return new d4(str, aVar, excC);
            }
            return null;
        }

        @Override // ia.c
        public final v9.g m(JSONObject jSONObject, String str, v9.a aVar) {
            Integer numD = d(jSONObject, "percent");
            if (numD != null) {
                int iIntValue = numD.intValue();
                ea.b bVarB = f8988a.b(str);
                if (bVarB != null) {
                    return new f4(str, aVar, new i(new ea.h.a(iIntValue), bVarB.f6615m));
                }
            }
            return null;
        }
    }

    /* JADX INFO: compiled from: RemoteResponse.kt */
    public static final class e extends c<n4, m4> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final e f8990a = new e();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final int f8991b = 5;

        @Override // ia.c
        public final int e() {
            return f8991b;
        }

        @Override // ia.c
        public final void h(JSONObject jSONObject, v9.f fVar) throws JSONException {
            jSONObject.put("message", ((m4) fVar).getMessage());
        }

        @Override // ia.c
        public final void j(JSONObject jSONObject, v9.g gVar) throws JSONException {
            jSONObject.put("percent", ((n4) gVar).f16734m.f6649i);
        }

        @Override // ia.c
        public final v9.f l(JSONObject jSONObject, String str, v9.a aVar) {
            String strOptString = jSONObject.optString("message");
            if (strOptString == null) {
                return null;
            }
            return new m4(str, aVar, new Exception(strOptString));
        }

        @Override // ia.c
        public final v9.g m(JSONObject jSONObject, String str, v9.a aVar) {
            ea.b bVarB;
            int iOptInt = jSONObject.optInt("percent", Integer.MIN_VALUE);
            if (iOptInt == Integer.MIN_VALUE || (bVarB = b(str)) == null) {
                return null;
            }
            return new n4(str, new i(new ea.h.a(iOptInt), bVarB.f6615m));
        }
    }

    /* JADX INFO: compiled from: RemoteResponse.kt */
    public static final class f extends c<w4, u4> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final f f8992a = new f();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final int f8993b = 1;

        @Override // ia.c
        public final int e() {
            return f8993b;
        }

        @Override // ia.c
        public final void h(JSONObject jSONObject, v9.f fVar) throws JSONException {
            k(jSONObject, ((u4) fVar).getMessage());
        }

        @Override // ia.c
        public final void j(JSONObject jSONObject, v9.g gVar) {
        }

        @Override // ia.c
        public final v9.f l(JSONObject jSONObject, String str, v9.a aVar) {
            Exception excC = c(jSONObject);
            if (excC != null) {
                return new u4(str, aVar, excC);
            }
            return null;
        }

        @Override // ia.c
        public final v9.g m(JSONObject jSONObject, String str, v9.a aVar) {
            return new w4(str, aVar);
        }
    }

    /* JADX INFO: compiled from: RemoteResponse.kt */
    public static final class g extends c<w3, u3> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final g f8994a = new g();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final int f8995b = 4;

        @Override // ia.c
        public final int e() {
            return f8995b;
        }

        @Override // ia.c
        public final void h(JSONObject jSONObject, v9.f fVar) throws JSONException {
            k(jSONObject, ((u3) fVar).getMessage());
        }

        @Override // ia.c
        public final void j(JSONObject jSONObject, v9.g gVar) throws JSONException {
            w3 w3Var = (w3) gVar;
            jSONObject.put("red", w3Var.f16899n.f6622h);
            jSONObject.put("green", w3Var.f16899n.f6623i);
            jSONObject.put("blue", w3Var.f16899n.f6624j);
            jSONObject.put("brightness", q.g.a(w3Var.f16899n.f6625k));
        }

        @Override // ia.c
        public final v9.f l(JSONObject jSONObject, String str, v9.a aVar) {
            Exception excC = c(jSONObject);
            if (excC != null) {
                return new u3(str, aVar, excC);
            }
            return null;
        }

        @Override // ia.c
        public final v9.g m(JSONObject jSONObject, String str, v9.a aVar) {
            Integer numD = d(jSONObject, "red");
            Integer numD2 = d(jSONObject, "green");
            Integer numD3 = d(jSONObject, "blue");
            Integer numD4 = d(jSONObject, "brightness");
            if (numD == null || numD2 == null || numD3 == null || numD4 == null) {
                return null;
            }
            int iIntValue = numD.intValue();
            int iIntValue2 = numD2.intValue();
            int iIntValue3 = numD3.intValue();
            int iIntValue4 = numD4.intValue();
            int i10 = 0;
            for (int i11 : q.g.b(5)) {
                if (q.g.a(i11) == iIntValue4) {
                    i10 = i11;
                    break;
                }
            }
            return new w3(str, aVar, new ea.d(iIntValue, iIntValue2, iIntValue3, i10 != 0 ? i10 : 5));
        }
    }

    /* JADX INFO: compiled from: RemoteResponse.kt */
    public static final class h extends c<z3, x3> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final h f8996a = new h();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final int f8997b = 3;

        @Override // ia.c
        public final int e() {
            return f8997b;
        }

        @Override // ia.c
        public final void h(JSONObject jSONObject, v9.f fVar) throws JSONException {
            k(jSONObject, ((x3) fVar).getMessage());
        }

        @Override // ia.c
        public final void j(JSONObject jSONObject, v9.g gVar) throws JSONException {
            z3 z3Var = (z3) gVar;
            jSONObject.put("red", z3Var.f16954n.f6622h);
            jSONObject.put("green", z3Var.f16954n.f6623i);
            jSONObject.put("blue", z3Var.f16954n.f6624j);
            jSONObject.put("brightness", q.g.a(z3Var.f16954n.f6625k));
        }

        @Override // ia.c
        public final v9.f l(JSONObject jSONObject, String str, v9.a aVar) {
            Exception excC = c(jSONObject);
            if (excC != null) {
                return new x3(str, aVar, excC);
            }
            return null;
        }

        @Override // ia.c
        public final v9.g m(JSONObject jSONObject, String str, v9.a aVar) {
            Integer numD = d(jSONObject, "red");
            Integer numD2 = d(jSONObject, "green");
            Integer numD3 = d(jSONObject, "blue");
            Integer numD4 = d(jSONObject, "brightness");
            if (numD == null || numD2 == null || numD3 == null || numD4 == null) {
                return null;
            }
            int iIntValue = numD.intValue();
            int iIntValue2 = numD2.intValue();
            int iIntValue3 = numD3.intValue();
            int iIntValue4 = numD4.intValue();
            int i10 = 0;
            for (int i11 : q.g.b(5)) {
                if (q.g.a(i11) == iIntValue4) {
                    i10 = i11;
                    break;
                }
            }
            return new z3(str, aVar, new ea.d(iIntValue, iIntValue2, iIntValue3, i10 != 0 ? i10 : 5));
        }
    }

    public c() {
        t tVar = t.f16822a;
    }

    public final v9.a a(JSONObject jSONObject) {
        String strF = f(jSONObject, "identifier");
        if (strF != null) {
            try {
                UUID uuidFromString = UUID.fromString(strF);
                p4.h.i(uuidFromString, "fromString(it)");
                return new v9.a(uuidFromString);
            } catch (Throwable unused) {
            }
        }
        return null;
    }

    public final ea.b b(String str) {
        Object next;
        m mVar;
        Iterator<T> it = t.f16822a.f().iterator();
        do {
            if (!it.hasNext()) {
                next = null;
                break;
            }
            next = it.next();
            mVar = (m) next;
        } while (!(p4.h.c(mVar.f6667k.f6612j, str) || p4.h.c(mVar.f6668l.f6612j, str)));
        m mVar2 = (m) next;
        if (mVar2 != null) {
            ea.b bVar = p4.h.c(mVar2.f6667k.f6612j, str) ? mVar2.f6667k : mVar2.f6668l;
            if (bVar != null) {
                return bVar;
            }
        }
        return null;
    }

    public final Exception c(JSONObject jSONObject) {
        p4.h.j(jSONObject, "<this>");
        String strF = f(jSONObject, "error_message");
        if (strF != null) {
            return new Exception(strF);
        }
        return null;
    }

    public final Integer d(JSONObject jSONObject, String str) {
        int iOptInt = jSONObject.optInt(str, Integer.MIN_VALUE);
        if (iOptInt == Integer.MIN_VALUE) {
            return null;
        }
        return Integer.valueOf(iOptInt);
    }

    public abstract int e();

    public final String f(JSONObject jSONObject, String str) {
        p4.h.j(jSONObject, "<this>");
        return jSONObject.optString(str, null);
    }

    public final void g(Intent intent, Error error) throws JSONException {
        p4.h.j(intent, "intent");
        intent.putExtra("extra_response_type", "error");
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("device_id", error.f16538i);
        jSONObject.put("identifier", error.a().f16447h.toString());
        h(jSONObject, error);
        intent.putExtra("extra_json_object", JSONObjectInstrumentation.toString(jSONObject));
    }

    public abstract void h(JSONObject jSONObject, Error error);

    public final void i(Intent intent, Result result) throws JSONException {
        p4.h.j(intent, "intent");
        intent.putExtra("extra_remote_response_key", a4.g.c(e()));
        intent.putExtra("extra_response_type", "result");
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("device_id", result.f6154h);
        jSONObject.put("identifier", result.a().f16447h.toString());
        j(jSONObject, result);
        intent.putExtra("extra_json_object", JSONObjectInstrumentation.toString(jSONObject));
    }

    public abstract void j(JSONObject jSONObject, Result result);

    public final void k(JSONObject jSONObject, String str) throws JSONException {
        p4.h.j(jSONObject, "<this>");
        p4.h.j(str, "message");
        jSONObject.put("error_message", str);
    }

    public abstract Error l(JSONObject jSONObject, String str, v9.a aVar);

    public abstract Result m(JSONObject jSONObject, String str, v9.a aVar);
}
