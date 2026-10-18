package wa;

import android.os.Bundle;
import com.newrelic.agent.android.instrumentation.JSONObjectInstrumentation;
import ea.m;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import org.json.JSONException;
import org.json.JSONObject;
import v9.l;
import v9.t;

/* JADX INFO: compiled from: AdaptKitCurrentStateBroadcastReceiver.kt */
/* JADX INFO: loaded from: classes.dex */
public final class b extends a {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final b f17549h = new b();

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final xa.b f17550i = xa.b.f18116a;

    @Override // wa.a
    public final void c() throws JSONException {
        Object next;
        String[] strArr;
        List<m> listF = t.f16822a.f();
        ArrayList arrayList = new ArrayList();
        Iterator<T> it = listF.iterator();
        while (true) {
            if (!it.hasNext()) {
                break;
            }
            Object next2 = it.next();
            m mVar = (m) next2;
            String str = mVar.f6667k.f6612j;
            b bVar = f17549h;
            if (p4.h.c(str, bVar.a()) || p4.h.c(mVar.f6668l.f6612j, bVar.a())) {
                arrayList.add(next2);
            }
        }
        if (!arrayList.isEmpty()) {
            ArrayList arrayList2 = new ArrayList(gd.j.T(arrayList, 10));
            Iterator it2 = arrayList.iterator();
            while (it2.hasNext()) {
                arrayList2.add(new l((m) it2.next()).a());
            }
            Iterator it3 = arrayList2.iterator();
            if (it3.hasNext()) {
                next = it3.next();
                if (it3.hasNext()) {
                    da.f fVar = (da.f) next;
                    int iMax = Math.max(da.c.a(fVar.f6152h.f6136i.f6133h), da.c.a(fVar.f6153i.f6136i.f6133h));
                    do {
                        Object next3 = it3.next();
                        da.f fVar2 = (da.f) next3;
                        int iMax2 = Math.max(da.c.a(fVar2.f6152h.f6136i.f6133h), da.c.a(fVar2.f6153i.f6136i.f6133h));
                        if (iMax < iMax2) {
                            next = next3;
                            iMax = iMax2;
                        }
                    } while (it3.hasNext());
                }
            } else {
                next = null;
            }
            da.f fVar3 = (da.f) next;
            if (fVar3 != null) {
                Objects.requireNonNull(f17550i);
                Bundle bundleB = b();
                String str2 = this.f17539a;
                if (str2 == null) {
                    p4.h.C("applicationId");
                    throw null;
                }
                String[] stringArray = bundleB.getStringArray("EXTRA_CONNECTION_APPLICATION_IDS");
                if (stringArray != null) {
                    ArrayList arrayList3 = (ArrayList) gd.i.w(stringArray);
                    arrayList3.add(str2);
                    Object[] array = arrayList3.toArray(new String[0]);
                    p4.h.h(array, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>");
                    strArr = (String[]) array;
                } else {
                    strArr = new String[]{str2};
                }
                bundleB.putStringArray("EXTRA_CONNECTION_APPLICATION_IDS", strArr);
                Bundle bundleB2 = b();
                String str3 = this.f17539a;
                if (str3 == null) {
                    p4.h.C("applicationId");
                    throw null;
                }
                Bundle bundle = new Bundle();
                JSONObject jSONObject = new JSONObject();
                da.b bVar2 = fVar3.f6152h;
                JSONObject jSONObject2 = new JSONObject();
                jSONObject2.put("connection", bVar2.f6135h.f16528h);
                jSONObject2.put("state", bVar2.f6136i.f6134i);
                jSONObject.put("left", jSONObject2);
                da.b bVar3 = fVar3.f6153i;
                JSONObject jSONObject3 = new JSONObject();
                jSONObject3.put("connection", bVar3.f6135h.f16528h);
                jSONObject3.put("state", bVar3.f6136i.f6134i);
                jSONObject.put("right", jSONObject3);
                String string = JSONObjectInstrumentation.toString(jSONObject);
                p4.h.i(string, "JSONObject().apply {\n   …ht))\n        }.toString()");
                bundle.putString("EXTRA_REQUEST_CURRENT_CONNECTION", string);
                bundle.putString("EXTRA_CONTROLLER_RECEIVER_ACTION_TOKEN", d.f17553h.f17543e);
                bundleB2.putBundle(str3, bundle);
            }
        }
    }

    @Override // wa.a
    public final String e() {
        return "com.nike.android.adaptkit.ACTION_ADAPT_KIT_CONNECTION_STATE";
    }
}
