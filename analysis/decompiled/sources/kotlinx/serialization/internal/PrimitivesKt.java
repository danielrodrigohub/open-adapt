package kotlinx.serialization.internal;

import a0.d;
import a4.g;
import fd.e;
import fd.o;
import gd.z;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.builtins.BuiltinSerializersKt;
import kotlinx.serialization.descriptors.PrimitiveKind;
import kotlinx.serialization.descriptors.SerialDescriptor;
import p4.h;
import qd.l;
import rd.a0;
import rd.c;
import rd.i;
import rd.j;
import rd.n;
import rd.p;
import rd.x;
import wd.b;
import yd.k;
import yd.s;

/* JADX INFO: compiled from: Primitives.kt */
/* JADX INFO: loaded from: classes.dex */
public final class PrimitivesKt {
    private static final Map<b<? extends Object>, KSerializer<? extends Object>> BUILTIN_SERIALIZERS = z.z(new e(x.a(String.class), BuiltinSerializersKt.serializer(a0.f14775a)), new e(x.a(Character.TYPE), BuiltinSerializersKt.serializer(rd.e.f14784a)), new e(x.a(char[].class), BuiltinSerializersKt.CharArraySerializer()), new e(x.a(Double.TYPE), BuiltinSerializersKt.serializer(i.f14788a)), new e(x.a(double[].class), BuiltinSerializersKt.DoubleArraySerializer()), new e(x.a(Float.TYPE), BuiltinSerializersKt.serializer(j.f14789a)), new e(x.a(float[].class), BuiltinSerializersKt.FloatArraySerializer()), new e(x.a(Long.TYPE), BuiltinSerializersKt.serializer(p.f14791a)), new e(x.a(long[].class), BuiltinSerializersKt.LongArraySerializer()), new e(x.a(Integer.TYPE), BuiltinSerializersKt.serializer(n.f14790a)), new e(x.a(int[].class), BuiltinSerializersKt.IntArraySerializer()), new e(x.a(Short.TYPE), BuiltinSerializersKt.serializer(rd.z.f14798a)), new e(x.a(short[].class), BuiltinSerializersKt.ShortArraySerializer()), new e(x.a(Byte.TYPE), BuiltinSerializersKt.serializer(c.f14777a)), new e(x.a(byte[].class), BuiltinSerializersKt.ByteArraySerializer()), new e(x.a(Boolean.TYPE), BuiltinSerializersKt.serializer(rd.b.f14776a)), new e(x.a(boolean[].class), BuiltinSerializersKt.BooleanArraySerializer()), new e(x.a(o.class), BuiltinSerializersKt.serializer(o.f7408a)));

    public static final SerialDescriptor PrimitiveDescriptorSafe(String str, PrimitiveKind primitiveKind) throws IOException {
        h.j(str, "serialName");
        h.j(primitiveKind, "kind");
        checkName(str);
        return new PrimitiveSerialDescriptor(str, primitiveKind);
    }

    public static final <T> KSerializer<T> builtinSerializerOrNull(b<T> bVar) {
        h.j(bVar, "<this>");
        return (KSerializer) BUILTIN_SERIALIZERS.get(bVar);
    }

    private static final String capitalize(String str) {
        String strValueOf;
        if (!(str.length() > 0)) {
            return str;
        }
        StringBuilder sb2 = new StringBuilder();
        char cCharAt = str.charAt(0);
        if (Character.isLowerCase(cCharAt)) {
            String strValueOf2 = String.valueOf(cCharAt);
            h.h(strValueOf2, "null cannot be cast to non-null type java.lang.String");
            Locale locale = Locale.ROOT;
            strValueOf = strValueOf2.toUpperCase(locale);
            h.i(strValueOf, "this as java.lang.String).toUpperCase(Locale.ROOT)");
            if (strValueOf.length() <= 1) {
                strValueOf = String.valueOf(Character.toTitleCase(cCharAt));
            } else if (cCharAt != 329) {
                char cCharAt2 = strValueOf.charAt(0);
                String strSubstring = strValueOf.substring(1);
                h.i(strSubstring, "this as java.lang.String).substring(startIndex)");
                String lowerCase = strSubstring.toLowerCase(locale);
                h.i(lowerCase, "this as java.lang.String).toLowerCase(Locale.ROOT)");
                strValueOf = cCharAt2 + lowerCase;
            }
        } else {
            strValueOf = String.valueOf(cCharAt);
        }
        sb2.append(strValueOf.toString());
        String strSubstring2 = str.substring(1);
        h.i(strSubstring2, "(this as java.lang.String).substring(startIndex)");
        sb2.append(strSubstring2);
        return sb2.toString();
    }

    private static final void checkName(String str) throws IOException {
        Comparable comparable;
        Iterator<b<? extends Object>> it = BUILTIN_SERIALIZERS.keySet().iterator();
        while (it.hasNext()) {
            String strA = it.next().a();
            h.g(strA);
            String strCapitalize = capitalize(strA);
            if (yd.o.Z(str, h.B("kotlin.", strCapitalize)) || yd.o.Z(str, strCapitalize)) {
                StringBuilder sbE = g.e("\n                The name of serial descriptor should uniquely identify associated serializer.\n                For serial name ", str, " there already exist ");
                sbE.append(capitalize(strCapitalize));
                sbE.append("Serializer.\n                Please refer to SerialDescriptor documentation for additional information.\n            ");
                String string = sbE.toString();
                h.j(string, "<this>");
                List<String> listT0 = s.t0(string);
                ArrayList arrayList = new ArrayList();
                for (Object obj : listT0) {
                    if (true ^ yd.o.b0((String) obj)) {
                        arrayList.add(obj);
                    }
                }
                ArrayList arrayList2 = new ArrayList(gd.j.T(arrayList, 10));
                Iterator it2 = arrayList.iterator();
                while (true) {
                    int length = 0;
                    if (!it2.hasNext()) {
                        break;
                    }
                    String str2 = (String) it2.next();
                    int length2 = str2.length();
                    while (true) {
                        if (length >= length2) {
                            length = -1;
                            break;
                        } else if (!d3.e.m(str2.charAt(length))) {
                            break;
                        } else {
                            length++;
                        }
                    }
                    if (length == -1) {
                        length = str2.length();
                    }
                    arrayList2.add(Integer.valueOf(length));
                }
                Iterator it3 = arrayList2.iterator();
                if (it3.hasNext()) {
                    comparable = (Comparable) it3.next();
                    while (it3.hasNext()) {
                        Comparable comparable2 = (Comparable) it3.next();
                        if (comparable.compareTo(comparable2) > 0) {
                            comparable = comparable2;
                        }
                    }
                } else {
                    comparable = null;
                }
                Integer num = (Integer) comparable;
                int iIntValue = num != null ? num.intValue() : 0;
                int size = (listT0.size() * 0) + string.length();
                l lVarT = k.T();
                int iP = androidx.lifecycle.o.p(listT0);
                ArrayList arrayList3 = new ArrayList();
                int i10 = 0;
                for (Object obj2 : listT0) {
                    int i11 = i10 + 1;
                    if (i10 < 0) {
                        androidx.lifecycle.o.L();
                        throw null;
                    }
                    String str3 = (String) obj2;
                    if ((i10 == 0 || i10 == iP) && yd.o.b0(str3)) {
                        str3 = null;
                    } else {
                        h.j(str3, "<this>");
                        if (!(iIntValue >= 0)) {
                            throw new IllegalArgumentException(d.b("Requested character count ", iIntValue, " is less than zero.").toString());
                        }
                        int length3 = str3.length();
                        if (iIntValue <= length3) {
                            length3 = iIntValue;
                        }
                        String strSubstring = str3.substring(length3);
                        h.i(strSubstring, "this as java.lang.String).substring(startIndex)");
                        String str4 = (String) lVarT.invoke(strSubstring);
                        if (str4 != null) {
                            str3 = str4;
                        }
                    }
                    if (str3 != null) {
                        arrayList3.add(str3);
                    }
                    i10 = i11;
                }
                StringBuilder sb2 = new StringBuilder(size);
                gd.n.c0(arrayList3, sb2);
                String string2 = sb2.toString();
                h.i(string2, "mapIndexedNotNull { inde…\"\\n\")\n        .toString()");
                throw new IllegalArgumentException(string2);
            }
        }
    }
}
