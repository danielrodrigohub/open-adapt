package f1;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.animation.ArgbEvaluator;
import android.animation.ObjectAnimator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.Color;
import android.graphics.drawable.Animatable;
import android.graphics.drawable.Drawable;
import android.media.MediaFormat;
import android.net.Uri;
import android.util.Property;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewPropertyAnimator;
import android.view.animation.AccelerateDecelerateInterpolator;
import android.view.animation.AnticipateOvershootInterpolator;
import android.view.animation.DecelerateInterpolator;
import android.widget.Space;
import android.widget.TextView;
import androidx.appcompat.widget.e0;
import androidx.lifecycle.o;
import androidx.recyclerview.widget.d;
import com.newrelic.agent.android.util.SafeJsonPrimitive;
import com.nike.adapt.R;
import ea.c;
import ea.f;
import ea.i;
import ea.m;
import fd.e;
import java.nio.ByteBuffer;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashSet;
import java.util.List;
import m5.g0;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import p4.h;
import x8.g;
import x8.l;

/* JADX INFO: compiled from: TraceApi18Impl.java */
/* JADX INFO: loaded from: classes.dex */
public class b {
    /* JADX WARN: Multi-variable type inference failed */
    public static void a(final View view, int i10, int i11, long j10, long j11, boolean z10, boolean z11, int i12) {
        if ((i12 & 16) != 0) {
            z10 = false;
        }
        if ((i12 & 32) != 0) {
            z11 = false;
        }
        e eVar = z10 ? new e(Integer.valueOf(i11), Integer.valueOf(i10)) : new e(Integer.valueOf(i10), Integer.valueOf(i11));
        ValueAnimator valueAnimatorH = h(z11, ((Number) eVar.f7388h).intValue(), ((Number) eVar.f7389i).intValue());
        valueAnimatorH.setDuration(j11);
        valueAnimatorH.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: x8.c
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                View view2 = view;
                p4.h.j(view2, "$this_animateBackground");
                p4.h.j(valueAnimator, "animator");
                Object animatedValue = valueAnimator.getAnimatedValue();
                p4.h.h(animatedValue, "null cannot be cast to non-null type kotlin.Int");
                view2.setBackgroundColor(((Integer) animatedValue).intValue());
            }
        });
        valueAnimatorH.setStartDelay(j10);
        valueAnimatorH.start();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final void b(Drawable drawable, View view, boolean z10) {
        h.j(drawable, "drawable");
        h.j(view, "view");
        if (drawable instanceof Animatable) {
            Animatable animatable = (Animatable) drawable;
            if (!animatable.isRunning()) {
                animatable.start();
            }
        }
        if (z10) {
            view.performHapticFeedback(3);
        }
    }

    public static final void c(final View view, qd.a aVar) {
        h.j(view, "<this>");
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(1.0f, 1.07f);
        valueAnimatorOfFloat.setInterpolator(new AnticipateOvershootInterpolator());
        valueAnimatorOfFloat.setDuration(100L);
        valueAnimatorOfFloat.setRepeatCount(1);
        valueAnimatorOfFloat.setRepeatMode(2);
        valueAnimatorOfFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: x8.d
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                View view2 = view;
                p4.h.j(view2, "$this_animateIconTouch");
                p4.h.j(valueAnimator, "it");
                Object animatedValue = valueAnimator.getAnimatedValue();
                p4.h.h(animatedValue, "null cannot be cast to non-null type kotlin.Float");
                view2.setScaleX(((Float) animatedValue).floatValue());
                Object animatedValue2 = valueAnimator.getAnimatedValue();
                p4.h.h(animatedValue2, "null cannot be cast to non-null type kotlin.Float");
                view2.setScaleY(((Float) animatedValue2).floatValue());
            }
        });
        valueAnimatorOfFloat.addListener(new g(aVar));
        valueAnimatorOfFloat.start();
    }

    public static final Animator d(View view, float f10) {
        h.j(view, "<this>");
        ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(view, (Property<View, Float>) View.TRANSLATION_X, f10);
        objectAnimatorOfFloat.setDuration(1000L);
        objectAnimatorOfFloat.setInterpolator(new DecelerateInterpolator());
        return objectAnimatorOfFloat;
    }

    public static void e(ViewGroup viewGroup, boolean z10, int i10, boolean z11, long j10, int i11) {
        int i12;
        ViewGroup viewGroup2 = viewGroup;
        int i13 = 0;
        boolean z12 = (i11 & 4) != 0 ? false : z11;
        long j11 = (i11 & 8) != 0 ? 250L : j10;
        AnimatorSet animatorSet = new AnimatorSet();
        HashSet hashSet = new HashSet();
        int childCount = viewGroup.getChildCount();
        int i14 = 0;
        for (int i15 = 0; i15 < childCount; i15++) {
            View childAt = viewGroup2.getChildAt(i15);
            h.i(childAt, "getChildAt(index)");
            if (!(childAt instanceof Space)) {
                i14++;
            }
        }
        int i16 = i14 - 1;
        int i17 = i16 <= 0 ? 1 : -1;
        int childCount2 = viewGroup.getChildCount();
        int i18 = 0;
        while (i18 < childCount2) {
            View childAt2 = viewGroup2.getChildAt(i18);
            h.i(childAt2, "getChildAt(index)");
            if (childAt2 instanceof Space) {
                i12 = i13;
            } else {
                int i19 = i10 == i16 ? 1 : i13;
                childAt2.setVisibility(i13);
                View viewFindViewById = childAt2.findViewById(R.id.view_indicator);
                TextView textView = (TextView) childAt2.findViewById(R.id.view_indicator_percent);
                Context context = childAt2.getContext();
                Object obj = y.a.f18143a;
                int iA = y.a.c.a(context, R.color.indicator_active);
                int iA2 = y.a.c.a(childAt2.getContext(), R.color.indicator_inactive);
                View view = z12 ? textView : childAt2;
                float[] fArr = new float[2];
                i12 = 0;
                fArr[0] = childAt2.getAlpha();
                fArr[1] = z10 ? 1.0f : 0.0f;
                ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(view, "alpha", fArr);
                viewFindViewById.setBackgroundColor((i19 == 0 || z12) ? iA2 : iA);
                textView.setVisibility((i19 == 0 || z12) ? 8 : 0);
                h.i(objectAnimatorOfFloat, "ofFloat(fadeView, \"alpha…IBLE else View.GONE\n    }");
                hashSet.add(objectAnimatorOfFloat);
                i16 += i17;
            }
            i18++;
            viewGroup2 = viewGroup;
            i13 = i12;
        }
        animatorSet.setDuration(j11);
        animatorSet.playTogether(hashSet);
        animatorSet.setInterpolator(new AccelerateDecelerateInterpolator());
        animatorSet.setStartDelay(0L);
        animatorSet.start();
    }

    public static String f(String str) {
        return a0.b.a(".", str, ",.", str, " *");
    }

    public static Animator g(View view, boolean z10, int i10) {
        long j10 = (i10 & 2) != 0 ? 250L : 0L;
        if ((i10 & 4) != 0) {
            z10 = false;
        }
        float[] fArr = new float[2];
        fArr[0] = z10 ? 0.0f : 1.0f;
        fArr[1] = z10 ? 1.0f : 0.0f;
        ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(view, "alpha", fArr);
        objectAnimatorOfFloat.setInterpolator(new DecelerateInterpolator());
        objectAnimatorOfFloat.setDuration(j10);
        return objectAnimatorOfFloat;
    }

    public static final ValueAnimator h(boolean z10, int i10, int i11) {
        if (z10) {
            ValueAnimator valueAnimatorOfObject = ValueAnimator.ofObject(new ArgbEvaluator(), Integer.valueOf(i10), Integer.valueOf(i11), Integer.valueOf(i10));
            h.i(valueAnimatorOfObject, "ofObject(ArgbEvaluator()…olor, toColor, fromColor)");
            return valueAnimatorOfObject;
        }
        ValueAnimator valueAnimatorOfObject2 = ValueAnimator.ofObject(new ArgbEvaluator(), Integer.valueOf(i10), Integer.valueOf(i11));
        h.i(valueAnimatorOfObject2, "{\n        ValueAnimator.…fromColor, toColor)\n    }");
        return valueAnimatorOfObject2;
    }

    public static int i(long j10) {
        return (int) (j10 ^ (j10 >>> 32));
    }

    public static boolean j(Uri uri) {
        return uri != null && "content".equals(uri.getScheme()) && "media".equals(uri.getAuthority());
    }

    public static void k(MediaFormat mediaFormat, String str, int i10) {
        if (i10 != -1) {
            mediaFormat.setInteger(str, i10);
        }
    }

    public static final int l(float f10) {
        if (Float.isNaN(f10)) {
            throw new IllegalArgumentException("Cannot round NaN value.");
        }
        return Math.round(f10);
    }

    public static void m(MediaFormat mediaFormat, List list) {
        for (int i10 = 0; i10 < list.size(); i10++) {
            mediaFormat.setByteBuffer(e0.d("csd-", i10), ByteBuffer.wrap((byte[]) list.get(i10)));
        }
    }

    public static final String n(String str) throws NoSuchAlgorithmException {
        h.j(str, "<this>");
        MessageDigest messageDigest = MessageDigest.getInstance("SHA-256");
        byte[] bytes = d.c("526b353737a463bff343360f33b96470e0d731fcd42af12fa9cb5ecc700c7e55", str).getBytes(yd.a.f19171b);
        h.i(bytes, "this as java.lang.String).getBytes(charset)");
        byte[] bArrDigest = messageDigest.digest(bytes);
        h.i(bArrDigest, "getInstance(\"SHA-256\")\n …T + input).toByteArray())");
        String strC = "";
        for (byte b10 : bArrDigest) {
            String str2 = String.format("%02x", Arrays.copyOf(new Object[]{Byte.valueOf(b10)}, 1));
            h.i(str2, "format(this, *args)");
            strC = d.c(strC, str2);
        }
        return strC;
    }

    public static void o(View view, boolean z10, int i10) {
        long j10 = (i10 & 1) != 0 ? 250L : 0L;
        if ((i10 & 2) != 0) {
            z10 = false;
        }
        h.j(view, "<this>");
        view.animate().setDuration(j10).alpha(z10 ? 1.0f : 0.0f).start();
    }

    public static void p(TextView textView, String str) {
        h.j(str, "nextText");
        ViewPropertyAnimator viewPropertyAnimatorAlpha = textView.animate().setDuration(250L).alpha(0.0f);
        viewPropertyAnimatorAlpha.setListener(new l(textView, str, 250L));
        viewPropertyAnimatorAlpha.start();
    }

    public static final ea.b q(JSONObject jSONObject) throws JSONException {
        String strOptString = jSONObject.optString("colorway", null);
        if (strOptString != null) {
            h.c(strOptString, SafeJsonPrimitive.NULL_STRING);
        }
        String string = jSONObject.getString("scanningKey");
        h.i(string, "getString(\"scanningKey\")");
        String string2 = jSONObject.getString("stringIdentifier");
        h.i(string2, "getString(\"stringIdentifier\")");
        String string3 = jSONObject.getString("connectionAddress");
        h.i(string3, "getString(\"connectionAddress\")");
        String string4 = jSONObject.getString("authenticationKey");
        h.i(string4, "getString(\"authenticationKey\")");
        return new ea.b(null, string, string2, string3, string4, jSONObject.getInt("maxTightness"), jSONObject.optBoolean("hasConnectedLocally", false));
    }

    public static final c r(JSONObject jSONObject, int i10) throws JSONException {
        i iVar = new i(new ea.h.a(jSONObject.getInt("percent")), i10);
        JSONObject jSONObject2 = jSONObject.getJSONObject("adaptKitColor");
        h.i(jSONObject2, "getJSONObject(\"adaptKitColor\")");
        int i11 = jSONObject2.getInt("red");
        int i12 = jSONObject2.getInt("green");
        int i13 = jSONObject2.getInt("blue");
        int i14 = jSONObject2.getInt("brightness");
        int i15 = 0;
        for (int i16 : q.g.b(5)) {
            if (q.g.a(i16) == i14) {
                i15 = i16;
                break;
            }
        }
        return new c(iVar, new ea.d(i11, i12, i13, i15 != 0 ? i15 : 5));
    }

    /* JADX WARN: Code duplicated, block: B:36:0x0144 A[PHI: r5
      0x0144: PHI (r5v5 ea.f) = (r5v2 ea.f), (r5v1 ea.f) binds: [B:35:0x0142, B:29:0x0135] A[DONT_GENERATE, DONT_INLINE]] */
    public static final List s(JSONArray jSONArray) throws JSONException {
        String str;
        String str2;
        f fVar;
        Integer numValueOf;
        ArrayList arrayList = new ArrayList();
        int length = jSONArray.length();
        int i10 = 0;
        while (i10 < length) {
            JSONObject jSONObject = jSONArray.getJSONObject(i10);
            h.i(jSONObject, "this@toAdaptKitPairedDevices.getJSONObject(i)");
            JSONObject jSONObject2 = jSONObject.getJSONObject("leftDevice");
            h.i(jSONObject2, "getJSONObject(\"leftDevice\")");
            ea.b bVarQ = q(jSONObject2);
            JSONObject jSONObject3 = jSONObject.getJSONObject("rightDevice");
            h.i(jSONObject3, "getJSONObject(\"rightDevice\")");
            ea.b bVarQ2 = q(jSONObject3);
            String string = jSONObject.getString("pairId");
            String string2 = jSONObject.getString("pairName");
            boolean z10 = jSONObject.getBoolean("isDefault");
            String strOptString = jSONObject.optString("lastSnapshotUsedName");
            if (strOptString != null) {
                if (h.c(strOptString, SafeJsonPrimitive.NULL_STRING)) {
                    strOptString = null;
                }
                str = strOptString;
            } else {
                str = null;
            }
            String strOptString2 = jSONObject.optString("colorway", null);
            if (strOptString2 != null) {
                if (h.c(strOptString2, SafeJsonPrimitive.NULL_STRING)) {
                    strOptString2 = null;
                }
                str2 = strOptString2;
            } else {
                str2 = null;
            }
            JSONArray jSONArray2 = jSONObject.getJSONArray("snapshots");
            h.i(jSONArray2, "getJSONArray(\"snapshots\")");
            int i11 = bVarQ.f6615m;
            int i12 = bVarQ2.f6615m;
            ArrayList arrayList2 = new ArrayList();
            int i13 = length;
            int length2 = jSONArray2.length();
            int i14 = 0;
            while (i14 < length2) {
                int i15 = length2;
                JSONObject jSONObject4 = jSONArray2.getJSONObject(i14);
                JSONArray jSONArray3 = jSONArray2;
                h.i(jSONObject4, "this@toAdaptKitDevicePresets.getJSONObject(i)");
                String string3 = jSONObject4.getString("id");
                int i16 = i10;
                h.i(string3, "getString(\"id\")");
                String string4 = jSONObject4.getString("name");
                ArrayList arrayList3 = arrayList;
                h.i(string4, "getString(\"name\")");
                boolean z11 = jSONObject4.getBoolean("autoGenerated");
                JSONObject jSONObject5 = jSONObject4.getJSONObject("leftAttributes");
                String str3 = str2;
                h.i(jSONObject5, "getJSONObject(\"leftAttributes\")");
                c cVarR = r(jSONObject5, i11);
                JSONObject jSONObject6 = jSONObject4.getJSONObject("rightAttributes");
                h.i(jSONObject6, "getJSONObject(\"rightAttributes\")");
                c cVarR2 = r(jSONObject6, i12);
                try {
                    numValueOf = Integer.valueOf(jSONObject4.getInt("displayOrder"));
                } catch (Throwable unused) {
                    numValueOf = null;
                }
                arrayList2.add(new ea.e(string3, string4, z11, cVarR, cVarR2, numValueOf));
                i14++;
                length2 = i15;
                jSONArray2 = jSONArray3;
                str2 = str3;
                i10 = i16;
                arrayList = arrayList3;
            }
            ArrayList arrayList4 = arrayList;
            int i17 = i10;
            String str4 = str2;
            long j10 = jSONObject.getLong("localUpdatedMillis");
            boolean z12 = jSONObject.getBoolean("scheduledForDeletion");
            long j11 = jSONObject.getLong("createdDateUTC");
            long j12 = jSONObject.getLong("updatedDateUTC");
            Integer numValueOf2 = Integer.valueOf(jSONObject.optInt("deviceType", 0));
            f fVar2 = f.TRILLIUM;
            if (numValueOf2 != null && numValueOf2.intValue() == 1) {
                fVar = fVar2;
            } else {
                fVar2 = f.SESSION;
                if (numValueOf2 != null && numValueOf2.intValue() == 2) {
                    fVar = fVar2;
                } else {
                    fVar = f.BIGFOOT;
                }
            }
            h.i(string, "getString(\"pairId\")");
            h.i(string2, "getString(\"pairName\")");
            m mVar = new m(string, string2, z10, bVarQ, bVarQ2, str, str4, arrayList2, j11, j12, fVar, j10, z12);
            arrayList = arrayList4;
            arrayList.add(mVar);
            i10 = i17 + 1;
            length = i13;
        }
        return arrayList;
    }

    public static final JSONArray t(List list) throws JSONException {
        JSONArray jSONArray = new JSONArray();
        int i10 = 0;
        for (Object obj : list) {
            int i11 = i10 + 1;
            if (i10 < 0) {
                o.L();
                throw null;
            }
            m mVar = (m) obj;
            h.j(mVar, "<this>");
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("pairId", mVar.f6664h);
            jSONObject.put("pairName", mVar.f6665i);
            jSONObject.put("isDefault", mVar.f6666j);
            jSONObject.put("leftDevice", v(mVar.f6667k));
            jSONObject.put("rightDevice", v(mVar.f6668l));
            jSONObject.put("lastSnapshotUsedName", mVar.f6669m);
            jSONObject.put("colorway", mVar.f6670n);
            List<ea.e> list2 = mVar.f6671o;
            JSONArray jSONArray2 = new JSONArray();
            int i12 = 0;
            for (Object obj2 : list2) {
                int i13 = i12 + 1;
                if (i12 < 0) {
                    o.L();
                    throw null;
                }
                ea.e eVar = (ea.e) obj2;
                JSONObject jSONObject2 = new JSONObject();
                jSONObject2.put("id", eVar.f6627h);
                jSONObject2.put("name", eVar.f6628i);
                jSONObject2.put("autoGenerated", eVar.f6629j);
                jSONObject2.put("leftAttributes", w(eVar.f6630k));
                jSONObject2.put("rightAttributes", w(eVar.f6631l));
                jSONObject2.put("displayOrder", eVar.f6632m);
                jSONArray2.put(i12, jSONObject2);
                i12 = i13;
            }
            jSONObject.put("snapshots", jSONArray2);
            jSONObject.put("localUpdatedMillis", mVar.f6675s);
            jSONObject.put("createdDateUTC", mVar.f6672p);
            jSONObject.put("updatedDateUTC", mVar.f6673q);
            jSONObject.put("scheduledForDeletion", mVar.f6676t);
            jSONObject.put("deviceType", mVar.f6674r.f6637h);
            jSONArray.put(i10, jSONObject);
            i10 = i11;
        }
        return jSONArray;
    }

    public static String u(int i10) {
        return g0.m("rgba(%d,%d,%d,%.3f)", Integer.valueOf(Color.red(i10)), Integer.valueOf(Color.green(i10)), Integer.valueOf(Color.blue(i10)), Double.valueOf(((double) Color.alpha(i10)) / 255.0d));
    }

    public static final JSONObject v(ea.b bVar) throws JSONException {
        h.j(bVar, "<this>");
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("scanningKey", bVar.f6611i);
        jSONObject.put("stringIdentifier", bVar.f6612j);
        jSONObject.put("connectionAddress", bVar.f6613k);
        jSONObject.put("authenticationKey", bVar.f6614l);
        jSONObject.put("maxTightness", bVar.f6615m);
        jSONObject.put("hasConnectedLocally", bVar.f6616n);
        return jSONObject;
    }

    public static final JSONObject w(c cVar) throws JSONException {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("percent", cVar.f6618h.f6649i.f6646j);
        ea.d dVar = cVar.f6619i;
        JSONObject jSONObject2 = new JSONObject();
        jSONObject2.put("red", dVar.f6622h);
        jSONObject2.put("green", dVar.f6623i);
        jSONObject2.put("blue", dVar.f6624j);
        jSONObject2.put("brightness", q.g.a(dVar.f6625k));
        jSONObject.put("adaptKitColor", jSONObject2);
        return jSONObject;
    }
}
