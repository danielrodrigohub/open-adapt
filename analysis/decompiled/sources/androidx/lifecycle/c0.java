package androidx.lifecycle;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcelable;
import android.util.Size;
import android.util.SizeF;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import kotlinx.coroutines.flow.MutableStateFlow;

/* JADX INFO: compiled from: R8$$SyntheticClass */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class c0 implements b1.b.InterfaceC0051b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ d0 f2171a;

    public /* synthetic */ c0(d0 d0Var) {
        this.f2171a = d0Var;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v5, types: [java.util.LinkedHashMap, java.util.Map<java.lang.String, java.lang.Object>] */
    /* JADX WARN: Type inference failed for: r3v6, types: [java.util.LinkedHashMap, java.util.Map<java.lang.String, kotlinx.coroutines.flow.MutableStateFlow<java.lang.Object>>] */
    /* JADX WARN: Type inference failed for: r4v5, types: [java.util.LinkedHashMap, java.util.Map<java.lang.String, java.lang.Object>] */
    /* JADX WARN: Type inference failed for: r8v2, types: [java.util.LinkedHashMap, java.util.Map<java.lang.String, java.lang.Object>] */
    @Override // b1.b.InterfaceC0051b
    public final Bundle a() {
        d0 d0Var = this.f2171a;
        p4.h.j(d0Var, "this$0");
        Iterator it = gd.z.E(d0Var.f2178b).entrySet().iterator();
        while (true) {
            int i10 = 0;
            if (!it.hasNext()) {
                Set<String> setKeySet = d0Var.f2177a.keySet();
                ArrayList arrayList = new ArrayList(setKeySet.size());
                ArrayList arrayList2 = new ArrayList(arrayList.size());
                for (String str : setKeySet) {
                    arrayList.add(str);
                    arrayList2.add(d0Var.f2177a.get(str));
                }
                fd.e[] eVarArr = {new fd.e("keys", arrayList), new fd.e("values", arrayList2)};
                Bundle bundle = new Bundle(2);
                while (i10 < 2) {
                    fd.e eVar = eVarArr[i10];
                    String str2 = (String) eVar.f7388h;
                    B b10 = eVar.f7389i;
                    if (b10 == 0) {
                        bundle.putString(str2, null);
                    } else if (b10 instanceof Boolean) {
                        bundle.putBoolean(str2, ((Boolean) b10).booleanValue());
                    } else if (b10 instanceof Byte) {
                        bundle.putByte(str2, ((Number) b10).byteValue());
                    } else if (b10 instanceof Character) {
                        bundle.putChar(str2, ((Character) b10).charValue());
                    } else if (b10 instanceof Double) {
                        bundle.putDouble(str2, ((Number) b10).doubleValue());
                    } else if (b10 instanceof Float) {
                        bundle.putFloat(str2, ((Number) b10).floatValue());
                    } else if (b10 instanceof Integer) {
                        bundle.putInt(str2, ((Number) b10).intValue());
                    } else if (b10 instanceof Long) {
                        bundle.putLong(str2, ((Number) b10).longValue());
                    } else if (b10 instanceof Short) {
                        bundle.putShort(str2, ((Number) b10).shortValue());
                    } else if (b10 instanceof Bundle) {
                        bundle.putBundle(str2, (Bundle) b10);
                    } else if (b10 instanceof CharSequence) {
                        bundle.putCharSequence(str2, (CharSequence) b10);
                    } else if (b10 instanceof Parcelable) {
                        bundle.putParcelable(str2, (Parcelable) b10);
                    } else if (b10 instanceof boolean[]) {
                        bundle.putBooleanArray(str2, (boolean[]) b10);
                    } else if (b10 instanceof byte[]) {
                        bundle.putByteArray(str2, (byte[]) b10);
                    } else if (b10 instanceof char[]) {
                        bundle.putCharArray(str2, (char[]) b10);
                    } else if (b10 instanceof double[]) {
                        bundle.putDoubleArray(str2, (double[]) b10);
                    } else if (b10 instanceof float[]) {
                        bundle.putFloatArray(str2, (float[]) b10);
                    } else if (b10 instanceof int[]) {
                        bundle.putIntArray(str2, (int[]) b10);
                    } else if (b10 instanceof long[]) {
                        bundle.putLongArray(str2, (long[]) b10);
                    } else if (b10 instanceof short[]) {
                        bundle.putShortArray(str2, (short[]) b10);
                    } else if (b10 instanceof Object[]) {
                        Class<?> componentType = b10.getClass().getComponentType();
                        p4.h.g(componentType);
                        if (Parcelable.class.isAssignableFrom(componentType)) {
                            bundle.putParcelableArray(str2, (Parcelable[]) b10);
                        } else if (String.class.isAssignableFrom(componentType)) {
                            bundle.putStringArray(str2, (String[]) b10);
                        } else if (CharSequence.class.isAssignableFrom(componentType)) {
                            bundle.putCharSequenceArray(str2, (CharSequence[]) b10);
                        } else {
                            if (!Serializable.class.isAssignableFrom(componentType)) {
                                throw new IllegalArgumentException("Illegal value array type " + componentType.getCanonicalName() + " for key \"" + str2 + '\"');
                            }
                            bundle.putSerializable(str2, (Serializable) b10);
                        }
                    } else if (b10 instanceof Serializable) {
                        bundle.putSerializable(str2, (Serializable) b10);
                    } else if (b10 instanceof IBinder) {
                        f0.b.a(bundle, str2, (IBinder) b10);
                    } else if (b10 instanceof Size) {
                        f0.c.a(bundle, str2, (Size) b10);
                    } else {
                        if (!(b10 instanceof SizeF)) {
                            throw new IllegalArgumentException("Illegal value type " + b10.getClass().getCanonicalName() + " for key \"" + str2 + '\"');
                        }
                        f0.c.b(bundle, str2, (SizeF) b10);
                    }
                    i10++;
                }
                return bundle;
            }
            Map.Entry entry = (Map.Entry) it.next();
            String str3 = (String) entry.getKey();
            Bundle bundleA = ((b1.b.InterfaceC0051b) entry.getValue()).a();
            p4.h.j(str3, "key");
            if (bundleA == null) {
                i10 = 1;
                break;
            }
            Class<? extends Object>[] clsArr = d0.f2176f;
            for (int i11 = 0; i11 < 29; i11++) {
                Class<? extends Object> cls = clsArr[i11];
                p4.h.g(cls);
                if (cls.isInstance(bundleA)) {
                    i10 = 1;
                    break;
                }
            }
            if (i10 == 0) {
                StringBuilder sb2 = new StringBuilder();
                sb2.append("Can't put value with type ");
                p4.h.g(bundleA);
                sb2.append(bundleA.getClass());
                sb2.append(" into saved state");
                throw new IllegalArgumentException(sb2.toString());
            }
            Object obj = d0Var.f2179c.get(str3);
            v vVar = obj instanceof v ? (v) obj : null;
            if (vVar != null) {
                vVar.h(bundleA);
            } else {
                d0Var.f2177a.put(str3, bundleA);
            }
            MutableStateFlow mutableStateFlow = (MutableStateFlow) d0Var.f2180d.get(str3);
            if (mutableStateFlow != null) {
                mutableStateFlow.setValue(bundleA);
            }
        }
    }
}
