package m7;

import com.newrelic.agent.android.util.SafeJsonPrimitive;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.TreeSet;

/* JADX INFO: compiled from: MessageLiteToString.java */
/* JADX INFO: loaded from: classes.dex */
public final class r0 {
    public static final String a(String str) {
        StringBuilder sb2 = new StringBuilder();
        for (int i10 = 0; i10 < str.length(); i10++) {
            char cCharAt = str.charAt(i10);
            if (Character.isUpperCase(cCharAt)) {
                sb2.append("_");
            }
            sb2.append(Character.toLowerCase(cCharAt));
        }
        return sb2.toString();
    }

    public static final void b(StringBuilder sb2, int i10, String str, Object obj) {
        if (obj instanceof List) {
            Iterator it = ((List) obj).iterator();
            while (it.hasNext()) {
                b(sb2, i10, str, it.next());
            }
            return;
        }
        if (obj instanceof Map) {
            Iterator it2 = ((Map) obj).entrySet().iterator();
            while (it2.hasNext()) {
                b(sb2, i10, str, (Map.Entry) it2.next());
            }
            return;
        }
        sb2.append('\n');
        int i11 = 0;
        for (int i12 = 0; i12 < i10; i12++) {
            sb2.append(SafeJsonPrimitive.NULL_CHAR);
        }
        sb2.append(str);
        if (obj instanceof String) {
            sb2.append(": \"");
            i.f fVar = i.f10666i;
            sb2.append(androidx.lifecycle.m0.a(new i.f(((String) obj).getBytes(y.f10802b))));
            sb2.append('\"');
            return;
        }
        if (obj instanceof i) {
            sb2.append(": \"");
            sb2.append(androidx.lifecycle.m0.a((i) obj));
            sb2.append('\"');
            return;
        }
        if (obj instanceof w) {
            sb2.append(" {");
            c((w) obj, sb2, i10 + 2);
            sb2.append("\n");
            while (i11 < i10) {
                sb2.append(SafeJsonPrimitive.NULL_CHAR);
                i11++;
            }
            sb2.append("}");
            return;
        }
        if (!(obj instanceof Map.Entry)) {
            sb2.append(": ");
            sb2.append(obj);
            return;
        }
        sb2.append(" {");
        Map.Entry entry = (Map.Entry) obj;
        int i13 = i10 + 2;
        b(sb2, i13, "key", entry.getKey());
        b(sb2, i13, "value", entry.getValue());
        sb2.append("\n");
        while (i11 < i10) {
            sb2.append(SafeJsonPrimitive.NULL_CHAR);
            i11++;
        }
        sb2.append("}");
    }

    /* JADX WARN: Code duplicated, block: B:87:0x0229  */
    /* JADX WARN: Code duplicated, block: B:88:0x022b  */
    public static void c(p0 p0Var, StringBuilder sb2, int i10) {
        boolean zEquals;
        HashMap map = new HashMap();
        HashMap map2 = new HashMap();
        TreeSet<String> treeSet = new TreeSet();
        for (Method method : p0Var.getClass().getDeclaredMethods()) {
            map2.put(method.getName(), method);
            if (method.getParameterTypes().length == 0) {
                map.put(method.getName(), method);
                if (method.getName().startsWith("get")) {
                    treeSet.add(method.getName());
                }
            }
        }
        for (String str : treeSet) {
            String strSubstring = str.startsWith("get") ? str.substring(3) : str;
            boolean zBooleanValue = true;
            if (strSubstring.endsWith("List") && !strSubstring.endsWith("OrBuilderList") && !strSubstring.equals("List")) {
                String str2 = strSubstring.substring(0, 1).toLowerCase() + strSubstring.substring(1, strSubstring.length() - 4);
                Method method2 = (Method) map.get(str);
                if (method2 != null && method2.getReturnType().equals(List.class)) {
                    b(sb2, i10, a(str2), w.r(method2, p0Var, new Object[0]));
                }
            }
            if (strSubstring.endsWith("Map") && !strSubstring.equals("Map")) {
                String str3 = strSubstring.substring(0, 1).toLowerCase() + strSubstring.substring(1, strSubstring.length() - 3);
                Method method3 = (Method) map.get(str);
                if (method3 != null && method3.getReturnType().equals(Map.class) && !method3.isAnnotationPresent(Deprecated.class) && Modifier.isPublic(method3.getModifiers())) {
                    b(sb2, i10, a(str3), w.r(method3, p0Var, new Object[0]));
                }
            }
            if (((Method) map2.get("set" + strSubstring)) != null) {
                if (strSubstring.endsWith("Bytes")) {
                    StringBuilder sbC = a0.b.c("get");
                    sbC.append(strSubstring.substring(0, strSubstring.length() - 5));
                    if (map.containsKey(sbC.toString())) {
                    }
                }
                String str4 = strSubstring.substring(0, 1).toLowerCase() + strSubstring.substring(1);
                Method method4 = (Method) map.get("get" + strSubstring);
                Method method5 = (Method) map.get("has" + strSubstring);
                if (method4 != null) {
                    Object objR = w.r(method4, p0Var, new Object[0]);
                    if (method5 == null) {
                        if (objR instanceof Boolean) {
                            zEquals = !((Boolean) objR).booleanValue();
                        } else if (objR instanceof Integer) {
                            if (((Integer) objR).intValue() == 0) {
                                zEquals = true;
                            } else {
                                zEquals = false;
                            }
                        } else if (objR instanceof Float) {
                            if (Float.floatToRawIntBits(((Float) objR).floatValue()) == 0) {
                                zEquals = true;
                            } else {
                                zEquals = false;
                            }
                        } else if (objR instanceof Double) {
                            if (Double.doubleToRawLongBits(((Double) objR).doubleValue()) == 0) {
                                zEquals = true;
                            } else {
                                zEquals = false;
                            }
                        } else if (objR instanceof String) {
                            zEquals = objR.equals("");
                        } else if (objR instanceof i) {
                            zEquals = objR.equals(i.f10666i);
                        } else if (!(objR instanceof p0) ? !((objR instanceof Enum) && ((Enum) objR).ordinal() == 0) : objR != ((p0) objR).b()) {
                            zEquals = false;
                        } else {
                            zEquals = true;
                        }
                        if (zEquals) {
                            zBooleanValue = false;
                        }
                    } else {
                        zBooleanValue = ((Boolean) w.r(method5, p0Var, new Object[0])).booleanValue();
                    }
                    if (zBooleanValue) {
                        b(sb2, i10, a(str4), objR);
                    }
                }
            }
        }
        if (p0Var instanceof w.c) {
            Iterator<Map.Entry<T, Object>> itL = ((w.c) p0Var).extensions.l();
            while (itL.hasNext()) {
                Map.Entry entry = (Map.Entry) itL.next();
                Objects.requireNonNull((w.d) entry.getKey());
                b(sb2, i10, "[0]", entry.getValue());
            }
        }
        j1 j1Var = ((w) p0Var).unknownFields;
        if (j1Var != null) {
            for (int i11 = 0; i11 < j1Var.f10683a; i11++) {
                b(sb2, i10, String.valueOf(j1Var.f10684b[i11] >>> 3), j1Var.f10685c[i11]);
            }
        }
    }
}
