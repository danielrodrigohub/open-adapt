package rd;

import com.newrelic.agent.android.util.SafeJsonPrimitive;
import java.util.List;
import java.util.Map;

/* JADX INFO: compiled from: TypeIntrinsics.java */
/* JADX INFO: loaded from: classes.dex */
public final class b0 {
    public static List a(Object obj) {
        if ((obj instanceof sd.a) && !(obj instanceof sd.b)) {
            e(obj, "kotlin.collections.MutableList");
            throw null;
        }
        try {
            return (List) obj;
        } catch (ClassCastException e10) {
            p4.h.A(e10, b0.class.getName());
            throw e10;
        }
    }

    public static Map b(Object obj) {
        if (obj instanceof sd.a) {
            e(obj, "kotlin.collections.MutableMap");
            throw null;
        }
        try {
            return (Map) obj;
        } catch (ClassCastException e10) {
            p4.h.A(e10, b0.class.getName());
            throw e10;
        }
    }

    public static Object c(Object obj) {
        if (obj == null || d(obj, 2)) {
            return obj;
        }
        e(obj, "kotlin.jvm.functions.Function2");
        throw null;
    }

    public static boolean d(Object obj, int i10) {
        int arity;
        if (obj instanceof fd.a) {
            if (obj instanceof k) {
                arity = ((k) obj).getArity();
            } else if (obj instanceof qd.a) {
                arity = 0;
            } else if (obj instanceof qd.l) {
                arity = 1;
            } else if (obj instanceof qd.p) {
                arity = 2;
            } else if (obj instanceof qd.q) {
                arity = 3;
            } else if (obj instanceof qd.r) {
                arity = 4;
            } else if (obj instanceof qd.s) {
                arity = 5;
            } else if (obj instanceof qd.t) {
                arity = 6;
            } else if (obj instanceof qd.u) {
                arity = 7;
            } else if (obj instanceof qd.v) {
                arity = 8;
            } else if (obj instanceof qd.w) {
                arity = 9;
            } else if (obj instanceof qd.b) {
                arity = 10;
            } else if (obj instanceof qd.c) {
                arity = 11;
            } else if (obj instanceof qd.d) {
                arity = 12;
            } else if (obj instanceof qd.e) {
                arity = 13;
            } else if (obj instanceof qd.f) {
                arity = 14;
            } else if (obj instanceof qd.g) {
                arity = 15;
            } else if (obj instanceof qd.h) {
                arity = 16;
            } else if (obj instanceof qd.i) {
                arity = 17;
            } else if (obj instanceof qd.j) {
                arity = 18;
            } else if (obj instanceof qd.k) {
                arity = 19;
            } else if (obj instanceof qd.m) {
                arity = 20;
            } else if (obj instanceof qd.n) {
                arity = 21;
            } else {
                arity = obj instanceof qd.o ? 22 : -1;
            }
            if (arity == i10) {
                return true;
            }
        }
        return false;
    }

    public static void e(Object obj, String str) {
        ClassCastException classCastException = new ClassCastException(a0.d.c(obj == null ? SafeJsonPrimitive.NULL_STRING : obj.getClass().getName(), " cannot be cast to ", str));
        p4.h.A(classCastException, b0.class.getName());
        throw classCastException;
    }
}
