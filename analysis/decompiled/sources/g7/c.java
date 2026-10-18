package g7;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.animation.ValueAnimator;
import android.app.Activity;
import android.text.Spannable;
import com.newrelic.agent.android.util.SafeJsonPrimitive;
import com.nike.adapt.adk.AdaptConnectionStatusResult;
import com.nike.adapt.adk.AuthFailure;
import com.nike.adapt.adk.BLEConnectionError;
import com.nike.adapt.adk.ConnectedAndAuthenticatedToPair;
import com.nike.adapt.adk.ConnectingToPair;
import com.nike.adapt.adk.DeviceFoundAndReadyToConnect;
import com.nike.adapt.adk.Disconnected;
import com.nike.adapt.adk.NotInitiated;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: compiled from: ConstructorConstructor.java */
/* JADX INFO: loaded from: classes.dex */
public final class c implements q {
    public static final va.a a(String str) throws JSONException {
        JSONObject jSONObject = new JSONObject(str);
        boolean z10 = jSONObject.getBoolean("update");
        String str2 = null;
        String strOptString = jSONObject.optString("version", null);
        String str3 = (strOptString == null || p4.h.c(strOptString, SafeJsonPrimitive.NULL_STRING)) ? null : strOptString;
        boolean zOptBoolean = jSONObject.optBoolean("beta", false);
        boolean zOptBoolean2 = jSONObject.optBoolean("forceUpdate", false);
        String strOptString2 = jSONObject.optString("md5", null);
        String str4 = (strOptString2 == null || p4.h.c(strOptString2, SafeJsonPrimitive.NULL_STRING)) ? null : strOptString2;
        String strOptString3 = jSONObject.optString("url", null);
        if (strOptString3 != null && !p4.h.c(strOptString3, SafeJsonPrimitive.NULL_STRING)) {
            str2 = strOptString3;
        }
        return new va.a(z10, str3, zOptBoolean, zOptBoolean2, str4, str2);
    }

    public static void b(Spannable spannable, Object obj, int i10, int i11) {
        for (Object obj2 : spannable.getSpans(i10, i11, obj.getClass())) {
            if (spannable.getSpanStart(obj2) == i10 && spannable.getSpanEnd(obj2) == i11 && spannable.getSpanFlags(obj2) == 33) {
                spannable.removeSpan(obj2);
            }
        }
        spannable.setSpan(obj, i10, i11, 33);
    }

    public static long c(Map map, String str) {
        try {
            String str2 = (String) map.get(str);
            if (str2 != null) {
                return Long.parseLong(str2);
            }
            return -9223372036854775807L;
        } catch (NumberFormatException unused) {
            return -9223372036854775807L;
        }
    }

    public static final boolean d(Activity activity) {
        p4.h.j(activity, "<this>");
        return ((activity instanceof o7.h) || yd.o.g0(activity.getClass().getName(), "com.nike.authcomponent.oidc", false)) ? false : true;
    }

    public static final t9.d e(AdaptConnectionStatusResult adaptConnectionStatusResult) {
        t9.d dVar = t9.d.CONNECTING;
        t9.d dVar2 = t9.d.DISCONNECTED;
        p4.h.j(adaptConnectionStatusResult, "result");
        if ((adaptConnectionStatusResult instanceof DeviceFoundAndReadyToConnect) || (adaptConnectionStatusResult instanceof ConnectingToPair)) {
            return dVar;
        }
        if (adaptConnectionStatusResult instanceof ConnectedAndAuthenticatedToPair) {
            return t9.d.CONNECTED;
        }
        if ((adaptConnectionStatusResult instanceof Disconnected) || (adaptConnectionStatusResult instanceof NotInitiated) || (adaptConnectionStatusResult instanceof AuthFailure) || (adaptConnectionStatusResult instanceof BLEConnectionError)) {
            return dVar2;
        }
        throw new j2.a();
    }

    public static void f(AnimatorSet animatorSet, List list) {
        int size = list.size();
        long jMax = 0;
        for (int i10 = 0; i10 < size; i10++) {
            Animator animator = (Animator) list.get(i10);
            jMax = Math.max(jMax, animator.getDuration() + animator.getStartDelay());
        }
        ValueAnimator valueAnimatorOfInt = ValueAnimator.ofInt(0, 0);
        valueAnimatorOfInt.setDuration(jMax);
        list.add(0, valueAnimatorOfInt);
        animatorSet.playTogether(list);
    }

    public static final int g(int i10, int i11) {
        return p4.h.l(i10 ^ Integer.MIN_VALUE, i11 ^ Integer.MIN_VALUE);
    }

    public static final int h(long j10, long j11) {
        long j12 = j10 ^ Long.MIN_VALUE;
        long j13 = j11 ^ Long.MIN_VALUE;
        if (j12 < j13) {
            return -1;
        }
        return j12 == j13 ? 0 : 1;
    }

    public static final t9.d i(t9.d dVar, t9.d dVar2) {
        t9.d dVar3 = t9.d.DISCONNECTED;
        p4.h.j(dVar, "<this>");
        p4.h.j(dVar2, "andWith");
        t9.d dVar4 = t9.d.CONNECTED;
        if (dVar == dVar4 && dVar2 == dVar4) {
            return dVar4;
        }
        t9.d dVar5 = t9.d.CONNECTING;
        return ((dVar == dVar5 && dVar2 == dVar5) || (dVar == dVar4 && dVar2 == dVar5) || ((dVar == dVar5 && dVar2 == dVar4) || ((dVar == dVar4 && dVar2 == dVar3) || ((dVar == dVar5 && dVar2 == dVar3) || ((dVar == dVar3 && dVar2 == dVar4) || (dVar == dVar3 && dVar2 == dVar5)))))) ? dVar5 : dVar3;
    }

    @Override // g7.q
    public Object construct() {
        return new LinkedHashSet();
    }
}
