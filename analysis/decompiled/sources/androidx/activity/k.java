package androidx.activity;

import android.os.Bundle;
import android.os.IBinder;
import androidx.lifecycle.LifecycleCoroutineScopeImpl;
import androidx.lifecycle.q;
import com.newrelic.agent.android.util.SafeJsonPrimitive;
import fa.m;
import gd.z;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.Dispatchers;
import kotlinx.coroutines.SupervisorKt;
import m5.g0;
import m5.p;
import rd.x;
import v9.l;
import w9.u1;

/* JADX INFO: compiled from: ViewTreeOnBackPressedDispatcherOwner.kt */
/* JADX INFO: loaded from: classes.dex */
public class k {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static Method f707a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static Method f708b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final float[][] f709c = {new float[]{0.401288f, 0.650173f, -0.051461f}, new float[]{-0.250268f, 1.204414f, 0.045854f}, new float[]{-0.002079f, 0.048952f, 0.953127f}};

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final float[][] f710d = {new float[]{1.8620678f, -1.0112547f, 0.14918678f}, new float[]{0.38752654f, 0.62144744f, -0.00897398f}, new float[]{-0.0158415f, -0.03412294f, 1.0499644f}};

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final float[] f711e = {95.047f, 100.0f, 108.883f};

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final float[][] f712f = {new float[]{0.41233894f, 0.35762063f, 0.18051042f}, new float[]{0.2126f, 0.7152f, 0.0722f}, new float[]{0.01932141f, 0.11916382f, 0.9503448f}};

    public static final long a(long j10) {
        if (j10 < -4611686018427387903L) {
            return -4611686018427387903L;
        }
        if (j10 > 4611686018427387903L) {
            return 4611686018427387903L;
        }
        return j10;
    }

    /* JADX WARN: Code duplicated, block: B:11:0x0030  */
    /* JADX WARN: Code duplicated, block: B:13:0x0039  */
    /* JADX WARN: Code duplicated, block: B:15:0x0042  */
    public static final long b(long j10, vd.b bVar) {
        if (!(bVar instanceof vd.a)) {
            vd.h hVar = (vd.h) bVar;
            if (!hVar.isEmpty()) {
                if (j10 < ((Number) hVar.k()).longValue()) {
                    return ((Number) hVar.k()).longValue();
                }
                return j10 > ((Number) hVar.l()).longValue() ? ((Number) hVar.l()).longValue() : j10;
            }
            throw new IllegalArgumentException("Cannot coerce value to an empty range: " + bVar + '.');
        }
        Object objValueOf = Long.valueOf(j10);
        vd.a aVar = (vd.a) bVar;
        p4.h.j(objValueOf, "<this>");
        if (aVar.isEmpty()) {
            throw new IllegalArgumentException("Cannot coerce value to an empty range: " + aVar + '.');
        }
        aVar.k();
        if (aVar.m()) {
            aVar.k();
            if (aVar.m()) {
                aVar.l();
                if (aVar.m()) {
                    aVar.l();
                    if (!aVar.m()) {
                        objValueOf = aVar.l();
                    }
                }
            } else {
                objValueOf = aVar.k();
            }
        } else {
            aVar.l();
            if (aVar.m()) {
                aVar.l();
                if (!aVar.m()) {
                    objValueOf = aVar.l();
                }
            }
        }
        return ((Number) objValueOf).longValue();
    }

    public static final void c(u9.b bVar, boolean z10) {
        int i10 = z10 ? 4 : 2;
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        LinkedHashMap linkedHashMap2 = new LinkedHashMap();
        linkedHashMap2.put("name", "oidc-auth-component");
        linkedHashMap2.put("version", "0.13.0");
        linkedHashMap.put("module", linkedHashMap2);
        linkedHashMap.put("classification", "core buy flow");
        linkedHashMap.put("eventName", "Account Authenticated");
        linkedHashMap.put("clickActivity", m.c(i10));
        linkedHashMap.put("view", z.A(new fd.e("pageName", "profile>login complete"), new fd.e("pageType", "profile"), new fd.e("pageDetail", "login complete")));
        bVar.a(new u9.a.C0279a("Account Authenticated", linkedHashMap, 2));
    }

    public static boolean d(CharSequence charSequence, CharSequence charSequence2) {
        char c10;
        int length = charSequence.length();
        if (charSequence == charSequence2) {
            return true;
        }
        if (length != charSequence2.length()) {
            return false;
        }
        for (int i10 = 0; i10 < length; i10++) {
            char cCharAt = charSequence.charAt(i10);
            char cCharAt2 = charSequence2.charAt(i10);
            if (cCharAt != cCharAt2 && ((c10 = (char) ((cCharAt | SafeJsonPrimitive.NULL_CHAR) - 97)) >= 26 || c10 != ((char) ((cCharAt2 | SafeJsonPrimitive.NULL_CHAR) - 97)))) {
                return false;
            }
        }
        return true;
    }

    public static final void e(l lVar, v9.k kVar) {
        p4.h.j(kVar, "adaptKitDeviceRequest");
        lVar.e(u1.BOTH, kVar);
    }

    public static final void f(l lVar, v9.k kVar) {
        p4.h.j(kVar, "adaptKitDeviceRequest");
        lVar.e(u1.LEFT, kVar);
    }

    public static final void g(l lVar, v9.k kVar) {
        p4.h.j(kVar, "adaptKitDeviceRequest");
        lVar.e(u1.RIGHT, kVar);
    }

    public static final void h(l lVar, u1 u1Var, v9.k kVar) {
        p4.h.j(lVar, "<this>");
        p4.h.j(u1Var, "shoe");
        lVar.e(u1Var, kVar);
    }

    public static IBinder i(Bundle bundle, String str) {
        if (g0.f10384a >= 18) {
            return bundle.getBinder(str);
        }
        Method method = f707a;
        if (method == null) {
            try {
                Method method2 = Bundle.class.getMethod("getIBinder", String.class);
                f707a = method2;
                method2.setAccessible(true);
                method = f707a;
            } catch (NoSuchMethodException e10) {
                p.f("Failed to retrieve getIBinder method", e10);
                return null;
            }
        }
        try {
            return (IBinder) method.invoke(bundle, str);
        } catch (IllegalAccessException | IllegalArgumentException | InvocationTargetException e11) {
            p.f("Failed to invoke getIBinder via reflection", e11);
            return null;
        }
    }

    public static final Class j(wd.b bVar) {
        p4.h.j(bVar, "<this>");
        Class<?> clsB = ((rd.f) bVar).b();
        p4.h.h(clsB, "null cannot be cast to non-null type java.lang.Class<T of kotlin.jvm.JvmClassMappingKt.<get-java>>");
        return clsB;
    }

    public static final Class k(wd.b bVar) {
        p4.h.j(bVar, "<this>");
        Class<?> clsB = ((rd.f) bVar).b();
        if (!clsB.isPrimitive()) {
            return clsB;
        }
        String name = clsB.getName();
        switch (name.hashCode()) {
            case -1325958191:
                return !name.equals("double") ? clsB : Double.class;
            case 104431:
                return !name.equals("int") ? clsB : Integer.class;
            case 3039496:
                return !name.equals("byte") ? clsB : Byte.class;
            case 3052374:
                return !name.equals("char") ? clsB : Character.class;
            case 3327612:
                return !name.equals("long") ? clsB : Long.class;
            case 3625364:
                return !name.equals("void") ? clsB : Void.class;
            case 64711720:
                return !name.equals("boolean") ? clsB : Boolean.class;
            case 97526364:
                return !name.equals("float") ? clsB : Float.class;
            case 109413500:
                return !name.equals("short") ? clsB : Short.class;
            default:
                return clsB;
        }
    }

    public static final wd.b l(Class cls) {
        p4.h.j(cls, "<this>");
        return x.a(cls);
    }

    public static final androidx.lifecycle.l m(q qVar) {
        LifecycleCoroutineScopeImpl lifecycleCoroutineScopeImpl;
        p4.h.j(qVar, "<this>");
        androidx.lifecycle.i iVarA = qVar.a();
        p4.h.i(iVarA, "lifecycle");
        do {
            lifecycleCoroutineScopeImpl = (LifecycleCoroutineScopeImpl) iVarA.f2192a.get();
            if (lifecycleCoroutineScopeImpl == null) {
                lifecycleCoroutineScopeImpl = new LifecycleCoroutineScopeImpl(iVarA, SupervisorKt.SupervisorJob$default(null, 1, null).plus(Dispatchers.getMain().getImmediate()));
            }
            return lifecycleCoroutineScopeImpl;
        } while (!iVarA.f2192a.compareAndSet(null, lifecycleCoroutineScopeImpl));
        BuildersKt__Builders_commonKt.launch$default(lifecycleCoroutineScopeImpl, Dispatchers.getMain().getImmediate(), null, new androidx.lifecycle.m(lifecycleCoroutineScopeImpl, null), 2, null);
        return lifecycleCoroutineScopeImpl;
    }

    public static int n(float f10) {
        if (f10 < 1.0f) {
            return -16777216;
        }
        if (f10 > 99.0f) {
            return -1;
        }
        float f11 = (f10 + 16.0f) / 116.0f;
        float f12 = (f10 > 8.0f ? 1 : (f10 == 8.0f ? 0 : -1)) > 0 ? f11 * f11 * f11 : f10 / 903.2963f;
        float f13 = f11 * f11 * f11;
        boolean z10 = f13 > 0.008856452f;
        float f14 = z10 ? f13 : ((f11 * 116.0f) - 16.0f) / 903.2963f;
        if (!z10) {
            f13 = ((f11 * 116.0f) - 16.0f) / 903.2963f;
        }
        float[] fArr = f711e;
        return a0.a.a(f14 * fArr[0], f12 * fArr[1], f13 * fArr[2]);
    }

    public static float o(int i10) {
        float f10 = i10 / 255.0f;
        return (f10 <= 0.04045f ? f10 / 12.92f : (float) Math.pow((f10 + 0.055f) / 1.055f, 2.4000000953674316d)) * 100.0f;
    }

    public static final int p(int i10) {
        if (i10 < 0) {
            return i10;
        }
        if (i10 < 3) {
            return i10 + 1;
        }
        if (i10 < 1073741824) {
            return (int) ((i10 / 0.75f) + 1.0f);
        }
        return Integer.MAX_VALUE;
    }

    public static void q(Bundle bundle, String str, IBinder iBinder) {
        if (g0.f10384a >= 18) {
            bundle.putBinder(str, iBinder);
            return;
        }
        Method method = f708b;
        if (method == null) {
            try {
                Method method2 = Bundle.class.getMethod("putIBinder", String.class, IBinder.class);
                f708b = method2;
                method2.setAccessible(true);
                method = f708b;
            } catch (NoSuchMethodException e10) {
                p.f("Failed to retrieve putIBinder method", e10);
                return;
            }
        }
        try {
            method.invoke(bundle, str, iBinder);
        } catch (IllegalAccessException | IllegalArgumentException | InvocationTargetException e11) {
            p.f("Failed to invoke putIBinder via reflection", e11);
        }
    }

    public static final vd.c r(vd.c cVar, int i10) {
        p4.h.j(cVar, "<this>");
        boolean z10 = i10 > 0;
        Integer numValueOf = Integer.valueOf(i10);
        p4.h.j(numValueOf, "step");
        if (z10) {
            int i11 = cVar.f17021h;
            int i12 = cVar.f17022i;
            if (cVar.f17023j <= 0) {
                i10 = -i10;
            }
            return new vd.c(i11, i12, i10);
        }
        throw new IllegalArgumentException("Step must be positive, was: " + numValueOf + '.');
    }

    public static String s(String str) {
        int length = str.length();
        int i10 = 0;
        while (i10 < length) {
            char cCharAt = str.charAt(i10);
            if (cCharAt >= 'A' && cCharAt <= 'Z') {
                char[] charArray = str.toCharArray();
                while (i10 < length) {
                    char c10 = charArray[i10];
                    if (c10 >= 'A' && c10 <= 'Z') {
                        charArray[i10] = (char) (c10 ^ SafeJsonPrimitive.NULL_CHAR);
                    }
                    i10++;
                }
                return String.valueOf(charArray);
            }
            i10++;
        }
        return str;
    }

    public static final Map t(Map map) {
        p4.h.j(map, "<this>");
        Map.Entry entry = (Map.Entry) map.entrySet().iterator().next();
        Map mapSingletonMap = Collections.singletonMap(entry.getKey(), entry.getValue());
        p4.h.i(mapSingletonMap, "with(entries.iterator().…ingletonMap(key, value) }");
        return mapSingletonMap;
    }

    public static String u(String str) {
        int length = str.length();
        int i10 = 0;
        while (i10 < length) {
            char cCharAt = str.charAt(i10);
            if (cCharAt >= 'a' && cCharAt <= 'z') {
                char[] charArray = str.toCharArray();
                while (i10 < length) {
                    char c10 = charArray[i10];
                    if (c10 >= 'a' && c10 <= 'z') {
                        charArray[i10] = (char) (c10 ^ SafeJsonPrimitive.NULL_CHAR);
                    }
                    i10++;
                }
                return String.valueOf(charArray);
            }
            i10++;
        }
        return str;
    }

    public static final void v(u9.b bVar, ob.c cVar, ed.e eVar) {
        p4.h.j(bVar, "<this>");
        p4.h.j(cVar, "credential");
        p4.h.j(eVar, "telemetryProvider");
        int iB = ob.d.a(cVar, eVar).b();
        if (iB == 0) {
            return;
        }
        int iA = q.g.a(iB);
        if (iA == 0) {
            c(bVar, false);
            return;
        }
        if (iA != 1) {
            if (iA == 2) {
                c(bVar, true);
                return;
            } else {
                if (iA != 3) {
                    return;
                }
                c(bVar, false);
                return;
            }
        }
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        LinkedHashMap linkedHashMap2 = new LinkedHashMap();
        linkedHashMap2.put("name", "oidc-auth-component");
        linkedHashMap2.put("version", "0.13.0");
        linkedHashMap.put("module", linkedHashMap2);
        linkedHashMap.put("classification", "core buy flow");
        linkedHashMap.put("eventName", "Account Created");
        linkedHashMap.put("clickActivity", "oidc:join now:success");
        linkedHashMap.put("view", z.A(new fd.e("pageName", "profile>registration complete"), new fd.e("pageType", "profile"), new fd.e("pageDetail", "registration complete")));
        bVar.a(new u9.a.C0279a("Account Created", linkedHashMap, 2));
    }

    public static final vd.e w(int i10, int i11) {
        if (i11 > Integer.MIN_VALUE) {
            return new vd.e(i10, i11 - 1);
        }
        vd.e.a aVar = vd.e.f17028k;
        return vd.e.f17029l;
    }

    public static float x() {
        return ((float) Math.pow((((double) 50.0f) + 16.0d) / 116.0d, 3.0d)) * 100.0f;
    }
}
