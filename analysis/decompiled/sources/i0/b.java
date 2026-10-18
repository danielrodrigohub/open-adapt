package i0;

import android.os.Trace;
import android.view.View;
import com.newrelic.agent.android.util.SafeJsonPrimitive;
import j0.h0;
import java.util.Map;
import m5.g0;

/* JADX INFO: compiled from: DebugUtils.java */
/* JADX INFO: loaded from: classes.dex */
public class b implements h0 {
    public static void d(String str) {
        if (g0.f10384a >= 18) {
            Trace.beginSection(str);
        }
    }

    public static void e(Object obj, StringBuilder sb2) {
        int iLastIndexOf;
        if (obj == null) {
            sb2.append(SafeJsonPrimitive.NULL_STRING);
            return;
        }
        String simpleName = obj.getClass().getSimpleName();
        if (simpleName.length() <= 0 && (iLastIndexOf = (simpleName = obj.getClass().getName()).lastIndexOf(46)) > 0) {
            simpleName = simpleName.substring(iLastIndexOf + 1);
        }
        sb2.append(simpleName);
        sb2.append('{');
        sb2.append(Integer.toHexString(System.identityHashCode(obj)));
    }

    public static final void f(int i10, int i11) {
        if (i10 <= i11) {
            return;
        }
        throw new IndexOutOfBoundsException("toIndex (" + i10 + ") is greater than size (" + i11 + ").");
    }

    public static void g() {
        if (g0.f10384a >= 18) {
            Trace.endSection();
        }
    }

    public static g5.f h(g5.f fVar, String[] strArr, Map map) {
        int i10 = 0;
        if (fVar == null) {
            if (strArr == null) {
                return null;
            }
            if (strArr.length == 1) {
                return (g5.f) map.get(strArr[0]);
            }
            if (strArr.length > 1) {
                g5.f fVar2 = new g5.f();
                int length = strArr.length;
                while (i10 < length) {
                    fVar2.a((g5.f) map.get(strArr[i10]));
                    i10++;
                }
                return fVar2;
            }
        } else {
            if (strArr != null && strArr.length == 1) {
                fVar.a((g5.f) map.get(strArr[0]));
                return fVar;
            }
            if (strArr != null && strArr.length > 1) {
                int length2 = strArr.length;
                while (i10 < length2) {
                    fVar.a((g5.f) map.get(strArr[i10]));
                    i10++;
                }
            }
        }
        return fVar;
    }

    @Override // j0.h0
    public void b(View view) {
    }

    @Override // j0.h0
    public void c() {
    }
}
