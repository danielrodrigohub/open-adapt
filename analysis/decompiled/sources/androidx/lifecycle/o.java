package androidx.lifecycle;

import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.content.res.Configuration;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.LinearGradient;
import android.graphics.Paint;
import android.graphics.Shader;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.VectorDrawable;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.ImageView;
import androidx.savedstate.R;
import com.newrelic.agent.android.util.SafeJsonPrimitive;
import com.nike.adapt.BigfootApplication;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.Reader;
import java.io.StringWriter;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.WeakHashMap;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import w9.u1;

/* JADX INFO: compiled from: Lifecycle.kt */
/* JADX INFO: loaded from: classes.dex */
public class o implements g7.q {
    public /* synthetic */ o() {
    }

    /* JADX WARN: Code duplicated, block: B:17:0x00fe A[PHI: r7
      0x00fe: PHI (r7v4 ea.f) = (r7v3 ea.f), (r7v2 ea.f) binds: [B:16:0x00fc, B:10:0x00ef] A[DONT_GENERATE, DONT_INLINE]] */
    public static final ea.m A(va.d dVar) {
        ea.f fVar;
        p4.h.j(dVar, "<this>");
        String str = dVar.f16985n;
        String str2 = dVar.f16992u;
        p4.h.j(str, "leftDeviceId");
        p4.h.j(str2, "rightDeviceId");
        String strC = m0.c(str, false);
        String strC2 = m0.c(str2, true);
        p4.h.j(strC, "leftId");
        p4.h.j(strC2, "rightId");
        String str3 = dVar.f16988q;
        String str4 = dVar.f16989r;
        boolean z10 = dVar.f16982k;
        ea.b bVar = new ea.b(dVar.f16980i, dVar.f16985n, strC, dVar.f16984m, dVar.f16986o, dVar.f16987p, false);
        ea.b bVar2 = new ea.b(dVar.f16980i, dVar.f16992u, strC2, dVar.f16991t, dVar.f16993v, dVar.f16994w, false);
        String str5 = dVar.f16983l;
        List<va.c> list = dVar.f16990s;
        int i10 = dVar.f16987p;
        int i11 = dVar.f16994w;
        ArrayList arrayList = new ArrayList(gd.j.T(list, 10));
        Iterator it = list.iterator();
        while (it.hasNext()) {
            va.c cVar = (va.c) it.next();
            arrayList.add(new ea.e(cVar.f16971h, cVar.f16974k, cVar.f16977n, new ea.c(new ea.i(new ea.h.c(cVar.f16973j), i10), M(cVar.f16972i)), new ea.c(new ea.i(new ea.h.c(cVar.f16976m), i11), M(cVar.f16975l)), cVar.f16978o));
            it = it;
            str5 = str5;
            bVar2 = bVar2;
            i10 = i10;
        }
        ea.b bVar3 = bVar2;
        String str6 = str5;
        String str7 = dVar.f16980i;
        long j10 = dVar.f16981j;
        long j11 = dVar.f16995x;
        Integer numValueOf = Integer.valueOf(dVar.f16996y);
        ea.f fVar2 = ea.f.TRILLIUM;
        if (numValueOf != null && numValueOf.intValue() == 1) {
            fVar = fVar2;
        } else {
            fVar2 = ea.f.SESSION;
            if (numValueOf != null && numValueOf.intValue() == 2) {
                fVar = fVar2;
            } else {
                fVar = ea.f.BIGFOOT;
            }
        }
        return new ea.m(str3, str4, z10, bVar, bVar3, str6, str7, arrayList, j10, j11, fVar, 0L, 6144);
    }

    public static final va.e B(ea.m mVar) {
        String str = mVar.f6664h;
        String str2 = mVar.f6665i;
        boolean z10 = mVar.f6666j;
        long j10 = mVar.f6675s;
        ea.b bVar = mVar.f6668l;
        String str3 = bVar.f6614l;
        ea.b bVar2 = mVar.f6667k;
        String str4 = bVar2.f6614l;
        String str5 = bVar.f6611i;
        String str6 = bVar2.f6611i;
        String str7 = bVar.f6613k;
        String str8 = bVar2.f6613k;
        int i10 = bVar.f6615m;
        int i11 = bVar2.f6615m;
        String str9 = mVar.f6669m;
        List<ea.e> list = mVar.f6671o;
        ArrayList arrayList = new ArrayList(gd.j.T(list, 10));
        Iterator it = list.iterator();
        while (it.hasNext()) {
            ea.e eVar = (ea.e) it.next();
            Iterator it2 = it;
            String str10 = str5;
            String str11 = str7;
            arrayList.add(new va.c(eVar.f6627h, P(eVar.f6630k.f6619i), eVar.f6630k.f6618h.f6648h.f6647j, eVar.f6628i, P(eVar.f6631l.f6619i), eVar.f6631l.f6618h.f6648h.f6647j, eVar.f6629j, eVar.f6632m));
            it = it2;
            str5 = str10;
            str7 = str11;
            str2 = str2;
            str = str;
            i11 = i11;
        }
        return new va.e(j10, z10, str9, str8, str6, str4, i11, str, str2, arrayList, str7, str5, str3, i10, mVar.f6670n, mVar.f6674r.f6637h);
    }

    public static final List C(Object... objArr) {
        p4.h.j(objArr, "elements");
        return objArr.length == 0 ? new ArrayList() : new ArrayList(new gd.e(objArr, true));
    }

    public static final List D(List list) {
        int size = list.size();
        if (size != 0) {
            return size != 1 ? list : y(list.get(0));
        }
        return gd.p.f8070h;
    }

    public static final String E(Reader reader) throws IOException {
        StringWriter stringWriter = new StringWriter();
        char[] cArr = new char[8192];
        int i10 = reader.read(cArr);
        while (i10 >= 0) {
            stringWriter.write(cArr, 0, i10);
            i10 = reader.read(cArr);
        }
        String string = stringWriter.toString();
        p4.h.i(string, "buffer.toString()");
        return string;
    }

    public static final u1 F(da.g gVar) {
        p4.h.j(gVar, "<this>");
        return gVar.f6155i ? u1.LEFT : u1.RIGHT;
    }

    /* JADX WARN: Code duplicated, block: B:12:0x002a  */
    /* JADX WARN: Code duplicated, block: B:21:? A[RETURN, SYNTHETIC] */
    public static final int G(de.g0 g0Var, int i10) {
        int i11;
        p4.h.j(g0Var, "<this>");
        int[] iArr = g0Var.f6233n;
        int i12 = i10 + 1;
        int i13 = 0;
        int length = g0Var.f6232m.length;
        p4.h.j(iArr, "<this>");
        int i14 = length - 1;
        while (i13 <= i14) {
            i11 = (i13 + i14) >>> 1;
            int i15 = iArr[i11];
            if (i15 < i12) {
                i13 = i11 + 1;
            } else {
                if (i15 <= i12) {
                    if (i11 >= 0) {
                        return i11;
                    }
                    return ~i11;
                }
                i14 = i11 - 1;
            }
        }
        i11 = (-i13) - 1;
        if (i11 >= 0) {
            return i11;
        }
        return ~i11;
    }

    public static final void H(View view, b1.d dVar) {
        p4.h.j(view, "<this>");
        view.setTag(R.id.view_tree_saved_state_registry_owner, dVar);
    }

    public static void I(View view, float f10) {
        Drawable background = view.getBackground();
        if (background instanceof m6.f) {
            ((m6.f) background).n(f10);
        }
    }

    public static void J(View view) {
        Drawable background = view.getBackground();
        if (background instanceof m6.f) {
            K(view, (m6.f) background);
        }
    }

    public static void K(View view, m6.f fVar) {
        d6.a aVar = fVar.f10495h.f10516b;
        if (aVar != null && aVar.f6047a) {
            float fI = 0.0f;
            for (ViewParent parent = view.getParent(); parent instanceof View; parent = parent.getParent()) {
                WeakHashMap<View, j0.g0> weakHashMap = j0.a0.f9147a;
                fI += j0.a0.i.i((View) parent);
            }
            m6.f.b bVar = fVar.f10495h;
            if (bVar.f10527m != fI) {
                bVar.f10527m = fI;
                fVar.w();
            }
        }
    }

    public static final void L() {
        throw new ArithmeticException("Index overflow has happened.");
    }

    public static final ea.d M(va.b bVar) {
        p4.h.j(bVar, "adaptKitColor");
        int i10 = bVar.f16967h;
        int i11 = bVar.f16968i;
        int i12 = bVar.f16969j;
        int i13 = bVar.f16970k;
        int i14 = 0;
        for (int i15 : q.g.b(5)) {
            if (q.g.a(i15) == i13) {
                i14 = i15;
                break;
            }
        }
        return new ea.d(i10, i11, i12, i14 != 0 ? i14 : 5);
    }

    public static final List N(JSONArray jSONArray) throws JSONException {
        Integer numValueOf;
        ArrayList arrayList = new ArrayList();
        int length = jSONArray.length();
        int i10 = 0;
        while (i10 < length) {
            JSONObject jSONObject = jSONArray.getJSONObject(i10);
            String str = "getJSONObject(i)";
            p4.h.i(jSONObject, "getJSONObject(i)");
            long j10 = jSONObject.getLong("clientUpdatedDateUTC");
            String strOptString = jSONObject.optString("colorway", null);
            if (strOptString == null || p4.h.c(strOptString, SafeJsonPrimitive.NULL_STRING)) {
                strOptString = null;
            }
            long j11 = jSONObject.getLong("createdDateUTC");
            boolean z10 = jSONObject.getBoolean("isDefault");
            String strOptString2 = jSONObject.optString("lastSelectedPreset", null);
            if (strOptString2 == null || p4.h.c(strOptString2, SafeJsonPrimitive.NULL_STRING)) {
                strOptString2 = null;
            }
            String string = jSONObject.getString("leftDeviceIdentifier");
            p4.h.i(string, "getString(\"leftDeviceIdentifier\")");
            String string2 = jSONObject.getString("leftEngineDiscoveryKey");
            p4.h.i(string2, "getString(\"leftEngineDiscoveryKey\")");
            String string3 = jSONObject.getString("leftKey");
            int i11 = length;
            p4.h.i(string3, "getString(\"leftKey\")");
            int i12 = jSONObject.getInt("leftMaxTightness");
            String string4 = jSONObject.getString("pairId");
            p4.h.i(string4, "getString(\"pairId\")");
            String string5 = jSONObject.getString("pairName");
            p4.h.i(string5, "getString(\"pairName\")");
            JSONArray jSONArray2 = jSONObject.getJSONArray("presets");
            p4.h.i(jSONArray2, "getJSONArray(\"presets\")");
            ArrayList arrayList2 = new ArrayList();
            int i13 = i10;
            int length2 = jSONArray2.length();
            ArrayList arrayList3 = arrayList;
            int i14 = 0;
            while (i14 < length2) {
                int i15 = length2;
                JSONObject jSONObject2 = jSONArray2.getJSONObject(i14);
                p4.h.i(jSONObject2, str);
                String str2 = str;
                String string6 = jSONObject2.getString("id");
                JSONArray jSONArray3 = jSONArray2;
                p4.h.i(string6, "getString(\"id\")");
                JSONObject jSONObject3 = jSONObject2.getJSONObject("leftColor");
                String str3 = string5;
                p4.h.i(jSONObject3, "getJSONObject(\"leftColor\")");
                va.b bVarQ = Q(jSONObject3);
                int i16 = jSONObject2.getInt("leftPercent");
                String string7 = jSONObject2.getString("name");
                p4.h.i(string7, "getString(\"name\")");
                JSONObject jSONObject4 = jSONObject2.getJSONObject("rightColor");
                String str4 = string4;
                p4.h.i(jSONObject4, "getJSONObject(\"rightColor\")");
                va.b bVarQ2 = Q(jSONObject4);
                int i17 = jSONObject2.getInt("rightPercent");
                boolean z11 = jSONObject2.getBoolean("autoGenerated");
                try {
                    numValueOf = Integer.valueOf(jSONObject2.getInt("displayOrder"));
                } catch (Throwable unused) {
                    numValueOf = null;
                }
                arrayList2.add(new va.c(string6, bVarQ, i16, string7, bVarQ2, i17, z11, numValueOf));
                i14++;
                length2 = i15;
                str = str2;
                jSONArray2 = jSONArray3;
                string5 = str3;
                string4 = str4;
            }
            String string8 = jSONObject.getString("rightDeviceIdentifier");
            p4.h.i(string8, "getString(\"rightDeviceIdentifier\")");
            String string9 = jSONObject.getString("rightEngineDiscoveryKey");
            p4.h.i(string9, "getString(\"rightEngineDiscoveryKey\")");
            String string10 = jSONObject.getString("rightKey");
            p4.h.i(string10, "getString(\"rightKey\")");
            arrayList3.add(new va.d(j10, strOptString, j11, z10, strOptString2, string, string2, string3, i12, string4, string5, arrayList2, string8, string9, string10, jSONObject.getInt("rightMaxTightness"), jSONObject.getLong("updatedDateUTC"), jSONObject.optInt("deviceType", 0)));
            i10 = i13 + 1;
            arrayList = arrayList3;
            length = i11;
        }
        return arrayList;
    }

    public static final Map O(JSONArray jSONArray) throws JSONException {
        HashMap map = new HashMap();
        int length = jSONArray.length();
        for (int i10 = 0; i10 < length; i10++) {
            JSONObject jSONObject = jSONArray.getJSONObject(i10);
            p4.h.i(jSONObject, "getJSONObject(i)");
            String string = jSONObject.getString("pairId");
            p4.h.i(string, "getString(\"pairId\")");
            JSONObject jSONObject2 = jSONArray.getJSONObject(i10);
            p4.h.i(jSONObject2, "getJSONObject(i)");
            pa.g gVar = pa.g.NOT_FOUND;
            String string2 = jSONObject2.getString("status");
            p4.h.i(string2, "getString(\"status\")");
            String lowerCase = string2.toLowerCase(Locale.ROOT);
            p4.h.i(lowerCase, "this as java.lang.String).toLowerCase(Locale.ROOT)");
            int iHashCode = lowerCase.hashCode();
            if (iHashCode != -1289358244) {
                if (iHashCode == -188109835) {
                    lowerCase.equals("not found");
                } else if (iHashCode == 1550463001 && lowerCase.equals("deleted")) {
                    gVar = pa.g.DELETED;
                }
            } else if (lowerCase.equals("exists")) {
                gVar = pa.g.EXISTS;
            }
            map.put(string, gVar);
        }
        return map;
    }

    public static final va.b P(ea.d dVar) {
        int i10 = dVar.f6624j;
        int i11 = dVar.f6625k;
        int i12 = dVar.f6623i;
        int i13 = dVar.f6622h;
        androidx.appcompat.widget.o.d(i11, "intensity");
        return new va.b(i13, i12, i10, q.g.a(i11));
    }

    public static final va.b Q(JSONObject jSONObject) throws JSONException {
        int i10 = jSONObject.getInt("blue");
        int i11 = jSONObject.getInt("brightness");
        return new va.b(jSONObject.getInt("red"), jSONObject.getInt("green"), i10, i11);
    }

    public static final JSONObject R(va.b bVar) throws JSONException {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("blue", bVar.f16969j);
        jSONObject.put("brightness", bVar.f16970k);
        jSONObject.put("green", bVar.f16968i);
        jSONObject.put("red", bVar.f16967h);
        return jSONObject;
    }

    public static Class S(Class cls) {
        if (cls == Integer.TYPE) {
            return Integer.class;
        }
        if (cls == Float.TYPE) {
            return Float.class;
        }
        if (cls == Byte.TYPE) {
            return Byte.class;
        }
        if (cls == Double.TYPE) {
            return Double.class;
        }
        if (cls == Long.TYPE) {
            return Long.class;
        }
        if (cls == Character.TYPE) {
            return Character.class;
        }
        if (cls == Boolean.TYPE) {
            return Boolean.class;
        }
        if (cls == Short.TYPE) {
            return Short.class;
        }
        return cls == Void.TYPE ? Void.class : cls;
    }

    public static final void a(Canvas canvas, Bitmap bitmap, float f10, ImageView imageView, int i10, Paint paint, int i11, int i12, Bitmap bitmap2) {
        canvas.drawBitmap(bitmap, 0.0f, 0.0f, (Paint) null);
        float f11 = 1.0f - f10;
        Context context = imageView.getContext();
        p4.h.i(context, "batteryImageView.context");
        Object obj = y.a.f18143a;
        int iA = y.a.c.a(context, com.nike.adapt.R.color.battery_background);
        float f12 = i12;
        paint.setShader(new LinearGradient(0.0f, 0.0f, 0.0f, f12, new int[]{iA, iA, i10, i10}, new float[]{0.0f, f11, f11, 1.0f}, Shader.TileMode.CLAMP));
        canvas.drawRect(0.0f, 0.0f, i11, f12, paint);
        imageView.setImageBitmap(bitmap2);
    }

    public static final Bitmap b(Context context, int i10, int i11) {
        Drawable drawableNewDrawable;
        Object obj = y.a.f18143a;
        Drawable drawableB = y.a.b.b(context, com.nike.adapt.R.drawable.ic_battery_large_pre_animation);
        p4.h.g(drawableB);
        Drawable.ConstantState constantState = drawableB.getConstantState();
        Drawable drawableMutate = (constantState == null || (drawableNewDrawable = constantState.newDrawable()) == null) ? null : drawableNewDrawable.mutate();
        p4.h.h(drawableMutate, "null cannot be cast to non-null type android.graphics.drawable.VectorDrawable");
        VectorDrawable vectorDrawable = (VectorDrawable) drawableMutate;
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(i10, i11, Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(bitmapCreateBitmap);
        vectorDrawable.setBounds(0, 0, canvas.getWidth(), canvas.getHeight());
        vectorDrawable.draw(canvas);
        p4.h.i(bitmapCreateBitmap, "bitmap");
        return bitmapCreateBitmap;
    }

    public static final List c(List list) {
        ArrayList arrayList = new ArrayList();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            String lowerCase = ((ea.m) it.next()).f6664h.toLowerCase(Locale.ROOT);
            p4.h.i(lowerCase, "this as java.lang.String).toLowerCase(Locale.ROOT)");
            arrayList.add(lowerCase);
        }
        return arrayList;
    }

    public static final void d(Appendable appendable, Object obj, qd.l lVar) {
        if (lVar != null) {
            appendable.append((CharSequence) lVar.invoke(obj));
            return;
        }
        if (obj == null ? true : obj instanceof CharSequence) {
            appendable.append((CharSequence) obj);
        } else if (obj instanceof Character) {
            appendable.append(((Character) obj).charValue());
        } else {
            appendable.append(String.valueOf(obj));
        }
    }

    public static final ArrayList e(Object... objArr) {
        return objArr.length == 0 ? new ArrayList() : new ArrayList(new gd.e(objArr, true));
    }

    public static Object f(Object obj, Object obj2) {
        if (obj != null) {
            return obj;
        }
        throw new NullPointerException(String.valueOf(obj2));
    }

    public static int g(int i10, int i11, int i12) {
        if (i10 < i11) {
            return i11;
        }
        return i10 > i12 ? i12 : i10;
    }

    public static long h(InputStream inputStream, OutputStream outputStream) throws IOException {
        p4.h.j(inputStream, "<this>");
        byte[] bArr = new byte[8192];
        int i10 = inputStream.read(bArr);
        long j10 = 0;
        while (i10 >= 0) {
            outputStream.write(bArr, 0, i10);
            j10 += (long) i10;
            i10 = inputStream.read(bArr);
        }
        return j10;
    }

    public static k0 i(int i10) {
        if (i10 != 0) {
            return i10 != 1 ? new m6.h() : new m6.d();
        }
        return new m6.h();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final jd.d j(qd.p pVar, Object obj, jd.d dVar) {
        p4.h.j(pVar, "<this>");
        p4.h.j(dVar, "completion");
        if (pVar instanceof ld.a) {
            return ((ld.a) pVar).create(obj, dVar);
        }
        jd.f context = dVar.getContext();
        return context == jd.h.f9512h ? new kd.b(dVar, pVar, obj) : new kd.c(dVar, context, pVar, obj);
    }

    public static final void k(Activity activity, b9.e eVar) {
        p4.h.j(activity, "<this>");
        p4.h.j(eVar, "ctaAction");
        if (eVar instanceof b9.i) {
            activity.onBackPressed();
            return;
        }
        if (eVar instanceof b9.g) {
            activity.startActivity(((b9.g) eVar).f3588h);
        } else if (eVar instanceof b9.j) {
            b9.j jVar = (b9.j) eVar;
            activity.startActivity(jVar.a());
            jVar.b(activity);
        }
    }

    public static final void l(ViewGroup viewGroup, qd.l lVar) {
        p4.h.j(viewGroup, "<this>");
        p4.h.j(lVar, "perform");
        int childCount = viewGroup.getChildCount();
        for (int i10 = 0; i10 < childCount; i10++) {
            View childAt = viewGroup.getChildAt(i10);
            if (childAt instanceof ViewGroup) {
                l((ViewGroup) childAt, lVar);
            } else if (childAt != null) {
                ((i9.e0.c) lVar).invoke(childAt);
            }
        }
    }

    public static final o7.s m() {
        return BigfootApplication.f5638p.b().f5649j;
    }

    public static final Application n() {
        hc.h0 h0Var = hc.h0.f8505a;
        return (Application) hc.h0.f8507c.getValue();
    }

    public static final int o(int i10) {
        BigfootApplication bigfootApplicationA = BigfootApplication.f5638p.a();
        Object obj = y.a.f18143a;
        return y.a.c.a(bigfootApplicationA, i10);
    }

    public static final int p(List list) {
        p4.h.j(list, "<this>");
        return list.size() - 1;
    }

    public static final hc.g0 q() {
        hc.h0 h0Var = hc.h0.f8505a;
        hc.g0 g0Var = hc.h0.f8506b;
        if (g0Var != null) {
            return g0Var;
        }
        p4.h.C("coreRFLogger");
        throw null;
    }

    public static final String r(int i10) {
        String string = BigfootApplication.f5638p.a().getString(i10);
        p4.h.i(string, "BigfootApplication.APPLICATION.getString(this)");
        return string;
    }

    public static final String s(v7.c cVar) {
        p4.h.j(cVar, "<this>");
        int iA = cVar.a();
        v7.c.e eVar = v7.c.e.f16371c;
        if (iA == 1) {
            return r(com.nike.adapt.R.string.adapt_lights_effect_pulsing);
        }
        v7.c.f fVar = v7.c.f.f16373c;
        if (iA == 2) {
            return r(com.nike.adapt.R.string.adapt_lights_effect_strobe);
        }
        v7.c.C0294c c0294c = v7.c.C0294c.f16368c;
        if (iA == 3) {
            return r(com.nike.adapt.R.string.adapt_lights_effect_gradient);
        }
        return null;
    }

    public static final jd.d t(jd.d dVar) {
        jd.d<Object> dVarIntercepted;
        p4.h.j(dVar, "<this>");
        ld.c cVar = dVar instanceof ld.c ? (ld.c) dVar : null;
        return (cVar == null || (dVarIntercepted = cVar.intercepted()) == null) ? dVar : dVarIntercepted;
    }

    public static boolean u(MotionEvent motionEvent, int i10) {
        return (motionEvent.getSource() & i10) == i10;
    }

    public static final int v(x8.d0 d0Var, x8.d0 d0Var2) {
        x8.d0 d0Var3;
        x8.d0 d0Var4;
        x8.d0 d0Var5 = x8.d0.IN_BETWEEN;
        boolean z10 = false;
        if (d0Var == d0Var5 || d0Var2 == d0Var5 || d0Var == (d0Var4 = x8.d0.MAX) || d0Var2 == d0Var4) {
            return 2;
        }
        x8.d0 d0Var6 = x8.d0.MIN;
        if ((d0Var == d0Var6 && d0Var2 == d0Var6) || ((d0Var == (d0Var3 = x8.d0.MIN_WITH_NO_FPS) && d0Var2 == d0Var3) || ((d0Var == d0Var6 && d0Var2 == d0Var3) || (d0Var == d0Var3 && d0Var2 == d0Var6)))) {
            z10 = true;
        }
        return z10 ? 1 : 3;
    }

    public static final fd.d w(int i10, qd.a aVar) {
        androidx.appcompat.widget.o.d(i10, "mode");
        p4.h.j(aVar, "initializer");
        if (i10 == 0) {
            throw null;
        }
        int i11 = i10 - 1;
        if (i11 == 0) {
            return new fd.h(aVar);
        }
        if (i11 == 1) {
            return new fd.g(aVar);
        }
        if (i11 == 2) {
            return new fd.p(aVar);
        }
        throw new j2.a();
    }

    public static final fd.d x(qd.a aVar) {
        p4.h.j(aVar, "initializer");
        return new fd.h(aVar);
    }

    public static final List y(Object obj) {
        List listSingletonList = Collections.singletonList(obj);
        p4.h.i(listSingletonList, "singletonList(element)");
        return listSingletonList;
    }

    public static final List z(Object... objArr) {
        p4.h.j(objArr, "elements");
        return objArr.length > 0 ? gd.g.i(objArr) : gd.p.f8070h;
    }

    @Override // g7.q
    public Object construct() {
        return new ArrayDeque();
    }

    public /* synthetic */ o(boolean z10, Configuration configuration) {
    }
}
