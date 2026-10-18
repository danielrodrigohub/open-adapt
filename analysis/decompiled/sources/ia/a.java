package ia;

import android.content.Intent;
import android.os.Bundle;
import com.newrelic.agent.android.instrumentation.Instrumented;
import com.newrelic.agent.android.instrumentation.JSONObjectInstrumentation;
import ea.m;
import fd.o;
import java.util.NoSuchElementException;
import mc.e0;
import org.json.JSONException;
import org.json.JSONObject;
import p4.h;
import v9.f4;
import v9.g;
import v9.t3;
import v9.w3;
import v9.w4;
import v9.y1;
import v9.z3;
import w9.u1;

/* JADX INFO: compiled from: RemoteRequest.kt */
/* JADX INFO: loaded from: classes.dex */
@Instrumented
public abstract class a<IncomingRequestValue, IncomingResult extends v9.g, OutgoingResultResponse> {

    /* JADX INFO: renamed from: ia.a$a, reason: collision with other inner class name */
    /* JADX INFO: compiled from: RemoteRequest.kt */
    public static final class C0174a extends a<o, y1, mc.c> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final C0174a f8974a = new C0174a();

        @Override // ia.a
        public final int a() {
            return 5;
        }

        @Override // ia.a
        public final mc.c b(v9.g gVar) {
            y1 y1Var = (y1) gVar;
            int i10 = y1Var.f16928n.f3631h;
            for (int i11 : q.g.b(5)) {
                if (h.c(ca.a.a(i11), y1Var.f16928n.f3632i.f3639h)) {
                    return new mc.c(i10, i11);
                }
            }
            throw new NoSuchElementException("Array contains no element matching the predicate.");
        }

        @Override // ia.a
        public final JSONObject d(o oVar) {
            h.j(oVar, "<this>");
            return new JSONObject();
        }

        @Override // ia.a
        public final JSONObject f(mc.c cVar) throws JSONException {
            mc.c cVar2 = cVar;
            h.j(cVar2, "<this>");
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("percent", cVar2.f10977h);
            jSONObject.put("state", ca.a.a(cVar2.f10978i));
            return jSONObject;
        }

        @Override // ia.a
        public final o j(String str) {
            return o.f7408a;
        }

        @Override // ia.a
        public final mc.c k(JSONObject jSONObject) {
            String strOptString = jSONObject.optString("state", null);
            int i10 = 0;
            for (int i11 : q.g.b(5)) {
                if (h.c(ca.a.a(i11), strOptString)) {
                    i10 = i11;
                    break;
                }
            }
            int iOptInt = jSONObject.optInt("percent", Integer.MIN_VALUE);
            if (i10 == 0 || iOptInt == Integer.MIN_VALUE) {
                return null;
            }
            return new mc.c(iOptInt, i10);
        }
    }

    /* JADX INFO: compiled from: RemoteRequest.kt */
    public static final class b extends a<o, t3, Boolean> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final b f8975a = new b();

        @Override // ia.a
        public final int a() {
            return 6;
        }

        @Override // ia.a
        public final Boolean b(v9.g gVar) {
            return Boolean.TRUE;
        }

        @Override // ia.a
        public final JSONObject d(o oVar) {
            h.j(oVar, "<this>");
            return new JSONObject();
        }

        @Override // ia.a
        public final JSONObject f(Boolean bool) throws JSONException {
            JSONObject jSONObjectPut = new JSONObject().put("success", bool.booleanValue());
            h.i(jSONObjectPut, "JSONObject().put(SUCCESS, this)");
            return jSONObjectPut;
        }

        @Override // ia.a
        public final o j(String str) {
            return o.f7408a;
        }

        @Override // ia.a
        public final Boolean k(JSONObject jSONObject) {
            return Boolean.valueOf(jSONObject.optBoolean("success", false));
        }
    }

    /* JADX INFO: compiled from: RemoteRequest.kt */
    public static final class c extends a<o, f4, Integer> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final c f8976a = new c();

        @Override // ia.a
        public final int a() {
            return 2;
        }

        @Override // ia.a
        public final Integer b(v9.g gVar) {
            return Integer.valueOf(((f4) gVar).f16552n.f6649i.f6646j);
        }

        @Override // ia.a
        public final JSONObject d(o oVar) {
            h.j(oVar, "<this>");
            return new JSONObject();
        }

        @Override // ia.a
        public final JSONObject f(Integer num) throws JSONException {
            JSONObject jSONObjectPut = new JSONObject().put("percent", num.intValue());
            h.i(jSONObjectPut, "JSONObject().put(PERCENT, this)");
            return jSONObjectPut;
        }

        @Override // ia.a
        public final o j(String str) {
            return o.f7408a;
        }

        @Override // ia.a
        public final Integer k(JSONObject jSONObject) {
            int iOptInt = jSONObject.optInt("percent", Integer.MIN_VALUE);
            if (iOptInt == Integer.MIN_VALUE) {
                return null;
            }
            return Integer.valueOf(iOptInt);
        }
    }

    /* JADX INFO: compiled from: RemoteRequest.kt */
    public static final class d extends a<Integer, w4, Boolean> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final d f8977a = new d();

        @Override // ia.a
        public final int a() {
            return 1;
        }

        @Override // ia.a
        public final Boolean b(v9.g gVar) {
            return Boolean.TRUE;
        }

        @Override // ia.a
        public final JSONObject d(Integer num) throws JSONException {
            JSONObject jSONObjectPut = new JSONObject().put("percent", num.intValue());
            h.i(jSONObjectPut, "JSONObject().put(PERCENT, this)");
            return jSONObjectPut;
        }

        @Override // ia.a
        public final JSONObject f(Boolean bool) throws JSONException {
            JSONObject jSONObjectPut = new JSONObject().put("success", bool.booleanValue());
            h.i(jSONObjectPut, "JSONObject().put(SUCCESS, this)");
            return jSONObjectPut;
        }

        @Override // ia.a
        public final Integer j(String str) {
            return Integer.valueOf(new JSONObject(str).optInt("percent"));
        }

        @Override // ia.a
        public final Boolean k(JSONObject jSONObject) {
            return Boolean.valueOf(jSONObject.optBoolean("success"));
        }
    }

    /* JADX INFO: compiled from: RemoteRequest.kt */
    public static final class e extends a<o, w3, e0> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final e f8978a = new e();

        @Override // ia.a
        public final int a() {
            return 4;
        }

        @Override // ia.a
        public final e0 b(v9.g gVar) {
            ea.d dVar = ((w3) gVar).f16899n;
            return new e0(dVar.f6622h, dVar.f6623i, dVar.f6624j, q.g.a(dVar.f6625k));
        }

        @Override // ia.a
        public final JSONObject d(o oVar) {
            h.j(oVar, "<this>");
            return new JSONObject();
        }

        @Override // ia.a
        public final JSONObject f(e0 e0Var) throws JSONException {
            e0 e0Var2 = e0Var;
            h.j(e0Var2, "<this>");
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("red", e0Var2.f11007a);
            jSONObject.put("green", e0Var2.f11008b);
            jSONObject.put("blue", e0Var2.f11009c);
            jSONObject.put("brightness", e0Var2.f11010d);
            return jSONObject;
        }

        @Override // ia.a
        public final o j(String str) {
            return o.f7408a;
        }

        @Override // ia.a
        public final e0 k(JSONObject jSONObject) {
            int iOptInt = jSONObject.optInt("red", Integer.MIN_VALUE);
            int iOptInt2 = jSONObject.optInt("green", Integer.MIN_VALUE);
            int iOptInt3 = jSONObject.optInt("blue", Integer.MIN_VALUE);
            int iOptInt4 = jSONObject.optInt("brightness", Integer.MIN_VALUE);
            if (iOptInt == Integer.MIN_VALUE || iOptInt2 == Integer.MIN_VALUE || iOptInt3 == Integer.MIN_VALUE || iOptInt4 == Integer.MIN_VALUE) {
                return null;
            }
            return new e0(iOptInt, iOptInt2, iOptInt3, iOptInt4);
        }
    }

    /* JADX INFO: compiled from: RemoteRequest.kt */
    public static final class f extends a<oc.d, z3, Boolean> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final f f8979a = new f();

        @Override // ia.a
        public final int a() {
            return 3;
        }

        @Override // ia.a
        public final Boolean b(v9.g gVar) {
            return Boolean.TRUE;
        }

        @Override // ia.a
        public final JSONObject d(oc.d dVar) throws JSONException {
            oc.d dVar2 = dVar;
            h.j(dVar2, "<this>");
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("red", dVar2.f12552a);
            jSONObject.put("green", dVar2.f12553b);
            jSONObject.put("blue", dVar2.f12554c);
            jSONObject.put("brightness", q.g.a(dVar2.f12555d));
            return jSONObject;
        }

        @Override // ia.a
        public final JSONObject f(Boolean bool) throws JSONException {
            JSONObject jSONObjectPut = new JSONObject().put("success", bool.booleanValue());
            h.i(jSONObjectPut, "JSONObject().put(SUCCESS, this)");
            return jSONObjectPut;
        }

        @Override // ia.a
        public final oc.d j(String str) {
            JSONObject jSONObject = new JSONObject(str);
            int iOptInt = jSONObject.optInt("red", Integer.MIN_VALUE);
            int iOptInt2 = jSONObject.optInt("green", Integer.MIN_VALUE);
            int iOptInt3 = jSONObject.optInt("blue", Integer.MIN_VALUE);
            int iOptInt4 = jSONObject.optInt("brightness", Integer.MIN_VALUE);
            if (iOptInt == Integer.MIN_VALUE || iOptInt2 == Integer.MIN_VALUE || iOptInt3 == Integer.MIN_VALUE || iOptInt4 == Integer.MIN_VALUE) {
                return null;
            }
            int i10 = 5;
            for (int i11 : q.g.b(5)) {
                if (q.g.a(i11) == iOptInt4) {
                    i10 = i11;
                    break;
                }
            }
            return new oc.d(iOptInt, iOptInt2, iOptInt3, i10);
        }

        @Override // ia.a
        public final Boolean k(JSONObject jSONObject) {
            return Boolean.valueOf(jSONObject.optBoolean("success", false));
        }
    }

    /* JADX INFO: compiled from: RemoteRequest.kt */
    public /* synthetic */ class g {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f8980a;

        static {
            int[] iArr = new int[u1.values().length];
            iArr[u1.LEFT.ordinal()] = 1;
            f8980a = iArr;
        }
    }

    public abstract int a();

    public abstract OutgoingResultResponse b(IncomingResult incomingresult);

    public final void c(Bundle bundle, String str) {
        h.j(str, "message");
        bundle.putString("extra_error_outgoing_key", str);
    }

    public abstract JSONObject d(IncomingRequestValue incomingrequestvalue);

    public final void e(Intent intent, m mVar, u1 u1Var, IncomingRequestValue incomingrequestvalue) {
        h.j(intent, "intent");
        h.j(mVar, "adaptKitPairedDevices");
        h.j(u1Var, "shoe");
        intent.putExtra("param_remote_package_key", com.nike.adapt.adk.model.a.a(a()));
        JSONObject jSONObjectD = d(incomingrequestvalue);
        intent.putExtra("param_request_incoming_key", !(jSONObjectD instanceof JSONObject) ? jSONObjectD.toString() : JSONObjectInstrumentation.toString(jSONObjectD));
        intent.putExtra("param_pair_id", mVar.f6664h);
        intent.putExtra("param_shoe", g.f8980a[u1Var.ordinal()] == 1 ? "l" : "r");
    }

    public abstract JSONObject f(OutgoingResultResponse outgoingresultresponse);

    public final void g(Bundle bundle, IncomingResult incomingresult) {
        JSONObject jSONObjectF = f(b(incomingresult));
        bundle.putString("param_result_outgoing_key", !(jSONObjectF instanceof JSONObject) ? jSONObjectF.toString() : JSONObjectInstrumentation.toString(jSONObjectF));
    }

    public final String h(Bundle bundle) {
        h.j(bundle, "bundle");
        return bundle.getString("extra_error_outgoing_key");
    }

    public final IncomingRequestValue i(Bundle bundle) {
        h.j(bundle, "bundle");
        String string = bundle.getString("param_request_incoming_key");
        if (string == null || yd.o.b0(string)) {
            return null;
        }
        return j(string);
    }

    public abstract IncomingRequestValue j(String str);

    public abstract OutgoingResultResponse k(JSONObject jSONObject);

    public final OutgoingResultResponse l(Bundle bundle) {
        h.j(bundle, "bundle");
        String string = bundle.getString("param_result_outgoing_key");
        if (string == null || yd.o.b0(string)) {
            return null;
        }
        return k(new JSONObject(string));
    }
}
