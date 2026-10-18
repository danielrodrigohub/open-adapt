package m7;

import java.io.IOException;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.RandomAccess;
import java.util.logging.Logger;

/* JADX INFO: compiled from: SchemaUtil.java */
/* JADX INFO: loaded from: classes.dex */
public final class d1 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final Class<?> f10628a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final i1<?, ?> f10629b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final i1<?, ?> f10630c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final i1<?, ?> f10631d;

    static {
        Class<?> cls;
        try {
            cls = Class.forName("com.google.protobuf.GeneratedMessageV3");
        } catch (Throwable unused) {
            cls = null;
        }
        f10628a = cls;
        f10629b = z(false);
        f10630c = z(true);
        f10631d = new k1();
    }

    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$PrimitiveArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    public static <T, FT extends s.a<FT>> void A(p<FT> pVar, T t10, T t11) {
        s<T> sVarC = pVar.c(t11);
        if (sVarC.h()) {
            return;
        }
        s<T> sVarD = pVar.d(t10);
        Objects.requireNonNull(sVarD);
        for (int i10 = 0; i10 < sVarC.f10750a.d(); i10++) {
            sVarD.n(sVarC.f10750a.c(i10));
        }
        Iterator<T> it = sVarC.f10750a.e().iterator();
        while (it.hasNext()) {
            sVarD.n((Map.Entry) it.next());
        }
    }

    public static boolean B(Object obj, Object obj2) {
        return obj == obj2 || (obj != null && obj.equals(obj2));
    }

    public static <UT, UB> UB C(int i10, int i11, UB ub2, i1<UT, UB> i1Var) {
        if (ub2 == null) {
            ub2 = i1Var.g();
        }
        i1Var.a(ub2, i10, i11);
        return ub2;
    }

    public static void D(int i10, List<Boolean> list, q1 q1Var, boolean z10) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        l lVar = (l) q1Var;
        Objects.requireNonNull(lVar);
        int i11 = 0;
        if (!z10) {
            while (i11 < list.size()) {
                lVar.f10694a.D(i10, list.get(i11).booleanValue());
                i11++;
            }
            return;
        }
        lVar.f10694a.P(i10, 2);
        int i12 = 0;
        for (int i13 = 0; i13 < list.size(); i13++) {
            list.get(i13).booleanValue();
            Logger logger = k.f10688b;
            i12++;
        }
        lVar.f10694a.R(i12);
        while (i11 < list.size()) {
            lVar.f10694a.C(list.get(i11).booleanValue() ? (byte) 1 : (byte) 0);
            i11++;
        }
    }

    public static void E(int i10, List<i> list, q1 q1Var) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        l lVar = (l) q1Var;
        Objects.requireNonNull(lVar);
        for (int i11 = 0; i11 < list.size(); i11++) {
            lVar.f10694a.E(i10, list.get(i11));
        }
    }

    public static void F(int i10, List<Double> list, q1 q1Var, boolean z10) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        l lVar = (l) q1Var;
        Objects.requireNonNull(lVar);
        int i11 = 0;
        if (!z10) {
            while (i11 < list.size()) {
                k kVar = lVar.f10694a;
                double dDoubleValue = list.get(i11).doubleValue();
                Objects.requireNonNull(kVar);
                kVar.H(i10, Double.doubleToRawLongBits(dDoubleValue));
                i11++;
            }
            return;
        }
        lVar.f10694a.P(i10, 2);
        int i12 = 0;
        for (int i13 = 0; i13 < list.size(); i13++) {
            list.get(i13).doubleValue();
            Logger logger = k.f10688b;
            i12 += 8;
        }
        lVar.f10694a.R(i12);
        while (i11 < list.size()) {
            k kVar2 = lVar.f10694a;
            double dDoubleValue2 = list.get(i11).doubleValue();
            Objects.requireNonNull(kVar2);
            kVar2.I(Double.doubleToRawLongBits(dDoubleValue2));
            i11++;
        }
    }

    public static void G(int i10, List<Integer> list, q1 q1Var, boolean z10) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        l lVar = (l) q1Var;
        Objects.requireNonNull(lVar);
        int i11 = 0;
        if (!z10) {
            while (i11 < list.size()) {
                lVar.f10694a.J(i10, list.get(i11).intValue());
                i11++;
            }
            return;
        }
        lVar.f10694a.P(i10, 2);
        int iL = 0;
        for (int i12 = 0; i12 < list.size(); i12++) {
            iL += k.l(list.get(i12).intValue());
        }
        lVar.f10694a.R(iL);
        while (i11 < list.size()) {
            lVar.f10694a.K(list.get(i11).intValue());
            i11++;
        }
    }

    public static void H(int i10, List<Integer> list, q1 q1Var, boolean z10) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        l lVar = (l) q1Var;
        Objects.requireNonNull(lVar);
        int i11 = 0;
        if (!z10) {
            while (i11 < list.size()) {
                lVar.f10694a.F(i10, list.get(i11).intValue());
                i11++;
            }
            return;
        }
        lVar.f10694a.P(i10, 2);
        int i12 = 0;
        for (int i13 = 0; i13 < list.size(); i13++) {
            list.get(i13).intValue();
            Logger logger = k.f10688b;
            i12 += 4;
        }
        lVar.f10694a.R(i12);
        while (i11 < list.size()) {
            lVar.f10694a.G(list.get(i11).intValue());
            i11++;
        }
    }

    public static void I(int i10, List<Long> list, q1 q1Var, boolean z10) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        l lVar = (l) q1Var;
        Objects.requireNonNull(lVar);
        int i11 = 0;
        if (!z10) {
            while (i11 < list.size()) {
                lVar.f10694a.H(i10, list.get(i11).longValue());
                i11++;
            }
            return;
        }
        lVar.f10694a.P(i10, 2);
        int i12 = 0;
        for (int i13 = 0; i13 < list.size(); i13++) {
            list.get(i13).longValue();
            Logger logger = k.f10688b;
            i12 += 8;
        }
        lVar.f10694a.R(i12);
        while (i11 < list.size()) {
            lVar.f10694a.I(list.get(i11).longValue());
            i11++;
        }
    }

    public static void J(int i10, List<Float> list, q1 q1Var, boolean z10) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        l lVar = (l) q1Var;
        Objects.requireNonNull(lVar);
        int i11 = 0;
        if (!z10) {
            while (i11 < list.size()) {
                k kVar = lVar.f10694a;
                float fFloatValue = list.get(i11).floatValue();
                Objects.requireNonNull(kVar);
                kVar.F(i10, Float.floatToRawIntBits(fFloatValue));
                i11++;
            }
            return;
        }
        lVar.f10694a.P(i10, 2);
        int i12 = 0;
        for (int i13 = 0; i13 < list.size(); i13++) {
            list.get(i13).floatValue();
            Logger logger = k.f10688b;
            i12 += 4;
        }
        lVar.f10694a.R(i12);
        while (i11 < list.size()) {
            k kVar2 = lVar.f10694a;
            float fFloatValue2 = list.get(i11).floatValue();
            Objects.requireNonNull(kVar2);
            kVar2.G(Float.floatToRawIntBits(fFloatValue2));
            i11++;
        }
    }

    public static void K(int i10, List<?> list, q1 q1Var, c1 c1Var) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        l lVar = (l) q1Var;
        Objects.requireNonNull(lVar);
        for (int i11 = 0; i11 < list.size(); i11++) {
            lVar.h(i10, list.get(i11), c1Var);
        }
    }

    public static void L(int i10, List<Integer> list, q1 q1Var, boolean z10) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        l lVar = (l) q1Var;
        Objects.requireNonNull(lVar);
        int i11 = 0;
        if (!z10) {
            while (i11 < list.size()) {
                lVar.f10694a.J(i10, list.get(i11).intValue());
                i11++;
            }
            return;
        }
        lVar.f10694a.P(i10, 2);
        int iL = 0;
        for (int i12 = 0; i12 < list.size(); i12++) {
            iL += k.l(list.get(i12).intValue());
        }
        lVar.f10694a.R(iL);
        while (i11 < list.size()) {
            lVar.f10694a.K(list.get(i11).intValue());
            i11++;
        }
    }

    public static void M(int i10, List<Long> list, q1 q1Var, boolean z10) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        l lVar = (l) q1Var;
        Objects.requireNonNull(lVar);
        int i11 = 0;
        if (!z10) {
            while (i11 < list.size()) {
                lVar.f10694a.S(i10, list.get(i11).longValue());
                i11++;
            }
            return;
        }
        lVar.f10694a.P(i10, 2);
        int iA = 0;
        for (int i12 = 0; i12 < list.size(); i12++) {
            iA += k.A(list.get(i12).longValue());
        }
        lVar.f10694a.R(iA);
        while (i11 < list.size()) {
            lVar.f10694a.T(list.get(i11).longValue());
            i11++;
        }
    }

    public static void N(int i10, List<?> list, q1 q1Var, c1 c1Var) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        l lVar = (l) q1Var;
        Objects.requireNonNull(lVar);
        for (int i11 = 0; i11 < list.size(); i11++) {
            lVar.k(i10, list.get(i11), c1Var);
        }
    }

    public static void O(int i10, List<Integer> list, q1 q1Var, boolean z10) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        l lVar = (l) q1Var;
        Objects.requireNonNull(lVar);
        int i11 = 0;
        if (!z10) {
            while (i11 < list.size()) {
                lVar.f10694a.F(i10, list.get(i11).intValue());
                i11++;
            }
            return;
        }
        lVar.f10694a.P(i10, 2);
        int i12 = 0;
        for (int i13 = 0; i13 < list.size(); i13++) {
            list.get(i13).intValue();
            Logger logger = k.f10688b;
            i12 += 4;
        }
        lVar.f10694a.R(i12);
        while (i11 < list.size()) {
            lVar.f10694a.G(list.get(i11).intValue());
            i11++;
        }
    }

    public static void P(int i10, List<Long> list, q1 q1Var, boolean z10) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        l lVar = (l) q1Var;
        Objects.requireNonNull(lVar);
        int i11 = 0;
        if (!z10) {
            while (i11 < list.size()) {
                lVar.f10694a.H(i10, list.get(i11).longValue());
                i11++;
            }
            return;
        }
        lVar.f10694a.P(i10, 2);
        int i12 = 0;
        for (int i13 = 0; i13 < list.size(); i13++) {
            list.get(i13).longValue();
            Logger logger = k.f10688b;
            i12 += 8;
        }
        lVar.f10694a.R(i12);
        while (i11 < list.size()) {
            lVar.f10694a.I(list.get(i11).longValue());
            i11++;
        }
    }

    public static void Q(int i10, List<Integer> list, q1 q1Var, boolean z10) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        l lVar = (l) q1Var;
        Objects.requireNonNull(lVar);
        int i11 = 0;
        if (!z10) {
            while (i11 < list.size()) {
                k kVar = lVar.f10694a;
                int iIntValue = list.get(i11).intValue();
                kVar.Q(i10, (iIntValue >> 31) ^ (iIntValue << 1));
                i11++;
            }
            return;
        }
        lVar.f10694a.P(i10, 2);
        int iR = 0;
        for (int i12 = 0; i12 < list.size(); i12++) {
            iR += k.r(list.get(i12).intValue());
        }
        lVar.f10694a.R(iR);
        while (i11 < list.size()) {
            k kVar2 = lVar.f10694a;
            int iIntValue2 = list.get(i11).intValue();
            kVar2.R((iIntValue2 >> 31) ^ (iIntValue2 << 1));
            i11++;
        }
    }

    public static void R(int i10, List<Long> list, q1 q1Var, boolean z10) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        l lVar = (l) q1Var;
        Objects.requireNonNull(lVar);
        int i11 = 0;
        if (!z10) {
            while (i11 < list.size()) {
                lVar.f10694a.S(i10, k.B(list.get(i11).longValue()));
                i11++;
            }
            return;
        }
        lVar.f10694a.P(i10, 2);
        int iT = 0;
        for (int i12 = 0; i12 < list.size(); i12++) {
            iT += k.t(list.get(i12).longValue());
        }
        lVar.f10694a.R(iT);
        while (i11 < list.size()) {
            lVar.f10694a.T(k.B(list.get(i11).longValue()));
            i11++;
        }
    }

    public static void S(int i10, List<String> list, q1 q1Var) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        l lVar = (l) q1Var;
        Objects.requireNonNull(lVar);
        int i11 = 0;
        if (!(list instanceof e0)) {
            while (i11 < list.size()) {
                lVar.f10694a.O(i10, list.get(i11));
                i11++;
            }
            return;
        }
        e0 e0Var = (e0) list;
        while (i11 < list.size()) {
            Object objD = e0Var.d(i11);
            if (objD instanceof String) {
                lVar.f10694a.O(i10, (String) objD);
            } else {
                lVar.f10694a.E(i10, (i) objD);
            }
            i11++;
        }
    }

    public static void T(int i10, List<Integer> list, q1 q1Var, boolean z10) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        l lVar = (l) q1Var;
        Objects.requireNonNull(lVar);
        int i11 = 0;
        if (!z10) {
            while (i11 < list.size()) {
                lVar.f10694a.Q(i10, list.get(i11).intValue());
                i11++;
            }
            return;
        }
        lVar.f10694a.P(i10, 2);
        int iY = 0;
        for (int i12 = 0; i12 < list.size(); i12++) {
            iY += k.y(list.get(i12).intValue());
        }
        lVar.f10694a.R(iY);
        while (i11 < list.size()) {
            lVar.f10694a.R(list.get(i11).intValue());
            i11++;
        }
    }

    public static void U(int i10, List<Long> list, q1 q1Var, boolean z10) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        l lVar = (l) q1Var;
        Objects.requireNonNull(lVar);
        int i11 = 0;
        if (!z10) {
            while (i11 < list.size()) {
                lVar.f10694a.S(i10, list.get(i11).longValue());
                i11++;
            }
            return;
        }
        lVar.f10694a.P(i10, 2);
        int iA = 0;
        for (int i12 = 0; i12 < list.size(); i12++) {
            iA += k.A(list.get(i12).longValue());
        }
        lVar.f10694a.R(iA);
        while (i11 < list.size()) {
            lVar.f10694a.T(list.get(i11).longValue());
            i11++;
        }
    }

    public static int a(int i10, List list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return k.b(i10) * size;
    }

    public static int b(int i10, List<i> list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int iW = k.w(i10) * size;
        for (int i11 = 0; i11 < list.size(); i11++) {
            iW += k.d(list.get(i11));
        }
        return iW;
    }

    public static int c(int i10, List list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return (k.w(i10) * size) + d(list);
    }

    public static int d(List<Integer> list) {
        int iL;
        int size = list.size();
        int i10 = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof x) {
            x xVar = (x) list;
            iL = 0;
            while (i10 < size) {
                iL += k.l(xVar.m(i10));
                i10++;
            }
        } else {
            iL = 0;
            while (i10 < size) {
                iL += k.l(list.get(i10).intValue());
                i10++;
            }
        }
        return iL;
    }

    public static int e(int i10, List list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return k.g(i10) * size;
    }

    public static int f(List<?> list) {
        return list.size() * 4;
    }

    public static int g(int i10, List list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return k.h(i10) * size;
    }

    public static int h(List<?> list) {
        return list.size() * 8;
    }

    public static int i(int i10, List<p0> list, c1 c1Var) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int iJ = 0;
        for (int i11 = 0; i11 < size; i11++) {
            iJ += k.j(i10, list.get(i11), c1Var);
        }
        return iJ;
    }

    public static int j(int i10, List list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return (k.w(i10) * size) + k(list);
    }

    public static int k(List<Integer> list) {
        int iL;
        int size = list.size();
        int i10 = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof x) {
            x xVar = (x) list;
            iL = 0;
            while (i10 < size) {
                iL += k.l(xVar.m(i10));
                i10++;
            }
        } else {
            iL = 0;
            while (i10 < size) {
                iL += k.l(list.get(i10).intValue());
                i10++;
            }
        }
        return iL;
    }

    public static int l(int i10, List list) {
        if (list.size() == 0) {
            return 0;
        }
        return (k.w(i10) * list.size()) + m(list);
    }

    public static int m(List<Long> list) {
        int iA;
        int size = list.size();
        int i10 = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof g0) {
            g0 g0Var = (g0) list;
            iA = 0;
            while (i10 < size) {
                iA += k.A(g0Var.m(i10));
                i10++;
            }
        } else {
            iA = 0;
            while (i10 < size) {
                iA += k.A(list.get(i10).longValue());
                i10++;
            }
        }
        return iA;
    }

    public static int n(int i10, Object obj, c1 c1Var) {
        if (obj instanceof c0) {
            return k.n((c0) obj) + k.w(i10);
        }
        int iW = k.w(i10);
        int iJ = ((a) ((p0) obj)).j(c1Var);
        return k.y(iJ) + iJ + iW;
    }

    public static int o(int i10, List<?> list, c1 c1Var) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int iW = k.w(i10) * size;
        for (int i11 = 0; i11 < size; i11++) {
            Object obj = list.get(i11);
            if (obj instanceof c0) {
                iW = k.n((c0) obj) + iW;
            } else {
                int iJ = ((a) ((p0) obj)).j(c1Var);
                iW = k.y(iJ) + iJ + iW;
            }
        }
        return iW;
    }

    public static int p(int i10, List list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return (k.w(i10) * size) + q(list);
    }

    public static int q(List<Integer> list) {
        int iR;
        int size = list.size();
        int i10 = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof x) {
            x xVar = (x) list;
            iR = 0;
            while (i10 < size) {
                iR += k.r(xVar.m(i10));
                i10++;
            }
        } else {
            iR = 0;
            while (i10 < size) {
                iR += k.r(list.get(i10).intValue());
                i10++;
            }
        }
        return iR;
    }

    public static int r(int i10, List list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return (k.w(i10) * size) + s(list);
    }

    public static int s(List<Long> list) {
        int iT;
        int size = list.size();
        int i10 = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof g0) {
            g0 g0Var = (g0) list;
            iT = 0;
            while (i10 < size) {
                iT += k.t(g0Var.m(i10));
                i10++;
            }
        } else {
            iT = 0;
            while (i10 < size) {
                iT += k.t(list.get(i10).longValue());
                i10++;
            }
        }
        return iT;
    }

    public static int t(int i10, List<?> list) {
        int size = list.size();
        int i11 = 0;
        if (size == 0) {
            return 0;
        }
        int iW = k.w(i10) * size;
        if (list instanceof e0) {
            e0 e0Var = (e0) list;
            while (i11 < size) {
                Object objD = e0Var.d(i11);
                iW = (objD instanceof i ? k.d((i) objD) : k.v((String) objD)) + iW;
                i11++;
            }
        } else {
            while (i11 < size) {
                Object obj = list.get(i11);
                iW = (obj instanceof i ? k.d((i) obj) : k.v((String) obj)) + iW;
                i11++;
            }
        }
        return iW;
    }

    public static int u(int i10, List list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return (k.w(i10) * size) + v(list);
    }

    public static int v(List<Integer> list) {
        int iY;
        int size = list.size();
        int i10 = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof x) {
            x xVar = (x) list;
            iY = 0;
            while (i10 < size) {
                iY += k.y(xVar.m(i10));
                i10++;
            }
        } else {
            iY = 0;
            while (i10 < size) {
                iY += k.y(list.get(i10).intValue());
                i10++;
            }
        }
        return iY;
    }

    public static int w(int i10, List list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return (k.w(i10) * size) + x(list);
    }

    public static int x(List<Long> list) {
        int iA;
        int size = list.size();
        int i10 = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof g0) {
            g0 g0Var = (g0) list;
            iA = 0;
            while (i10 < size) {
                iA += k.A(g0Var.m(i10));
                i10++;
            }
        } else {
            iA = 0;
            while (i10 < size) {
                iA += k.A(list.get(i10).longValue());
                i10++;
            }
        }
        return iA;
    }

    public static <UT, UB> UB y(int i10, List<Integer> list, y.b bVar, UB ub2, i1<UT, UB> i1Var) {
        if (bVar == null) {
            return ub2;
        }
        if (list instanceof RandomAccess) {
            int size = list.size();
            int i11 = 0;
            for (int i12 = 0; i12 < size; i12++) {
                int iIntValue = list.get(i12).intValue();
                if (bVar.a()) {
                    if (i12 != i11) {
                        list.set(i11, Integer.valueOf(iIntValue));
                    }
                    i11++;
                } else {
                    ub2 = (UB) C(i10, iIntValue, ub2, i1Var);
                }
            }
            if (i11 != size) {
                list.subList(i11, size).clear();
            }
        } else {
            Iterator<Integer> it = list.iterator();
            while (it.hasNext()) {
                int iIntValue2 = it.next().intValue();
                if (!bVar.a()) {
                    ub2 = (UB) C(i10, iIntValue2, ub2, i1Var);
                    it.remove();
                }
            }
        }
        return ub2;
    }

    public static i1<?, ?> z(boolean z10) {
        Class<?> cls;
        try {
            cls = Class.forName("com.google.protobuf.UnknownFieldSetSchema");
        } catch (Throwable unused) {
            cls = null;
        }
        if (cls == null) {
            return null;
        }
        try {
            return (i1) cls.getConstructor(Boolean.TYPE).newInstance(Boolean.valueOf(z10));
        } catch (Throwable unused2) {
            return null;
        }
    }
}
