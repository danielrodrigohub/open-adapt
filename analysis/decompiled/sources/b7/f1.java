package b7;

import java.io.IOException;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.RandomAccess;
import java.util.logging.Logger;

/* JADX INFO: compiled from: SchemaUtil.java */
/* JADX INFO: loaded from: classes.dex */
public final class f1 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final Class<?> f3390a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final l1<?, ?> f3391b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final l1<?, ?> f3392c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final l1<?, ?> f3393d;

    static {
        Class<?> cls;
        try {
            cls = Class.forName("com.google.crypto.tink.shaded.protobuf.GeneratedMessageV3");
        } catch (Throwable unused) {
            cls = null;
        }
        f3390a = cls;
        f3391b = z(false);
        f3392c = z(true);
        f3393d = new n1();
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
    public static <T, FT extends t.a<FT>> void A(q<FT> qVar, T t10, T t11) {
        t<T> tVarC = qVar.c(t11);
        if (tVarC.h()) {
            return;
        }
        t<T> tVarD = qVar.d(t10);
        Objects.requireNonNull(tVarD);
        for (int i10 = 0; i10 < tVarC.f3514a.d(); i10++) {
            tVarD.m(tVarC.f3514a.c(i10));
        }
        Iterator<T> it = tVarC.f3514a.e().iterator();
        while (it.hasNext()) {
            tVarD.m((Map.Entry) it.next());
        }
    }

    public static boolean B(Object obj, Object obj2) {
        return obj == obj2 || (obj != null && obj.equals(obj2));
    }

    public static <UT, UB> UB C(int i10, int i11, UB ub2, l1<UT, UB> l1Var) {
        if (ub2 == null) {
            ub2 = l1Var.m();
        }
        l1Var.e(ub2, i10, i11);
        return ub2;
    }

    public static void D(int i10, List<Boolean> list, t1 t1Var, boolean z10) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        m mVar = (m) t1Var;
        Objects.requireNonNull(mVar);
        int i11 = 0;
        if (!z10) {
            while (i11 < list.size()) {
                mVar.f3451a.D(i10, list.get(i11).booleanValue());
                i11++;
            }
            return;
        }
        mVar.f3451a.P(i10, 2);
        int i12 = 0;
        for (int i13 = 0; i13 < list.size(); i13++) {
            list.get(i13).booleanValue();
            Logger logger = l.f3445b;
            i12++;
        }
        mVar.f3451a.R(i12);
        while (i11 < list.size()) {
            mVar.f3451a.C(list.get(i11).booleanValue() ? (byte) 1 : (byte) 0);
            i11++;
        }
    }

    public static void E(int i10, List<i> list, t1 t1Var) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        m mVar = (m) t1Var;
        Objects.requireNonNull(mVar);
        for (int i11 = 0; i11 < list.size(); i11++) {
            mVar.f3451a.E(i10, list.get(i11));
        }
    }

    public static void F(int i10, List<Double> list, t1 t1Var, boolean z10) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        m mVar = (m) t1Var;
        Objects.requireNonNull(mVar);
        int i11 = 0;
        if (!z10) {
            while (i11 < list.size()) {
                l lVar = mVar.f3451a;
                double dDoubleValue = list.get(i11).doubleValue();
                Objects.requireNonNull(lVar);
                lVar.H(i10, Double.doubleToRawLongBits(dDoubleValue));
                i11++;
            }
            return;
        }
        mVar.f3451a.P(i10, 2);
        int i12 = 0;
        for (int i13 = 0; i13 < list.size(); i13++) {
            list.get(i13).doubleValue();
            Logger logger = l.f3445b;
            i12 += 8;
        }
        mVar.f3451a.R(i12);
        while (i11 < list.size()) {
            l lVar2 = mVar.f3451a;
            double dDoubleValue2 = list.get(i11).doubleValue();
            Objects.requireNonNull(lVar2);
            lVar2.I(Double.doubleToRawLongBits(dDoubleValue2));
            i11++;
        }
    }

    public static void G(int i10, List<Integer> list, t1 t1Var, boolean z10) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        m mVar = (m) t1Var;
        Objects.requireNonNull(mVar);
        int i11 = 0;
        if (!z10) {
            while (i11 < list.size()) {
                mVar.f3451a.J(i10, list.get(i11).intValue());
                i11++;
            }
            return;
        }
        mVar.f3451a.P(i10, 2);
        int iL = 0;
        for (int i12 = 0; i12 < list.size(); i12++) {
            iL += l.l(list.get(i12).intValue());
        }
        mVar.f3451a.R(iL);
        while (i11 < list.size()) {
            mVar.f3451a.K(list.get(i11).intValue());
            i11++;
        }
    }

    public static void H(int i10, List<Integer> list, t1 t1Var, boolean z10) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        m mVar = (m) t1Var;
        Objects.requireNonNull(mVar);
        int i11 = 0;
        if (!z10) {
            while (i11 < list.size()) {
                mVar.f3451a.F(i10, list.get(i11).intValue());
                i11++;
            }
            return;
        }
        mVar.f3451a.P(i10, 2);
        int i12 = 0;
        for (int i13 = 0; i13 < list.size(); i13++) {
            list.get(i13).intValue();
            Logger logger = l.f3445b;
            i12 += 4;
        }
        mVar.f3451a.R(i12);
        while (i11 < list.size()) {
            mVar.f3451a.G(list.get(i11).intValue());
            i11++;
        }
    }

    public static void I(int i10, List<Long> list, t1 t1Var, boolean z10) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        m mVar = (m) t1Var;
        Objects.requireNonNull(mVar);
        int i11 = 0;
        if (!z10) {
            while (i11 < list.size()) {
                mVar.f3451a.H(i10, list.get(i11).longValue());
                i11++;
            }
            return;
        }
        mVar.f3451a.P(i10, 2);
        int i12 = 0;
        for (int i13 = 0; i13 < list.size(); i13++) {
            list.get(i13).longValue();
            Logger logger = l.f3445b;
            i12 += 8;
        }
        mVar.f3451a.R(i12);
        while (i11 < list.size()) {
            mVar.f3451a.I(list.get(i11).longValue());
            i11++;
        }
    }

    public static void J(int i10, List<Float> list, t1 t1Var, boolean z10) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        m mVar = (m) t1Var;
        Objects.requireNonNull(mVar);
        int i11 = 0;
        if (!z10) {
            while (i11 < list.size()) {
                l lVar = mVar.f3451a;
                float fFloatValue = list.get(i11).floatValue();
                Objects.requireNonNull(lVar);
                lVar.F(i10, Float.floatToRawIntBits(fFloatValue));
                i11++;
            }
            return;
        }
        mVar.f3451a.P(i10, 2);
        int i12 = 0;
        for (int i13 = 0; i13 < list.size(); i13++) {
            list.get(i13).floatValue();
            Logger logger = l.f3445b;
            i12 += 4;
        }
        mVar.f3451a.R(i12);
        while (i11 < list.size()) {
            l lVar2 = mVar.f3451a;
            float fFloatValue2 = list.get(i11).floatValue();
            Objects.requireNonNull(lVar2);
            lVar2.G(Float.floatToRawIntBits(fFloatValue2));
            i11++;
        }
    }

    public static void K(int i10, List<?> list, t1 t1Var, e1 e1Var) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        m mVar = (m) t1Var;
        Objects.requireNonNull(mVar);
        for (int i11 = 0; i11 < list.size(); i11++) {
            mVar.h(i10, list.get(i11), e1Var);
        }
    }

    public static void L(int i10, List<Integer> list, t1 t1Var, boolean z10) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        m mVar = (m) t1Var;
        Objects.requireNonNull(mVar);
        int i11 = 0;
        if (!z10) {
            while (i11 < list.size()) {
                mVar.f3451a.J(i10, list.get(i11).intValue());
                i11++;
            }
            return;
        }
        mVar.f3451a.P(i10, 2);
        int iL = 0;
        for (int i12 = 0; i12 < list.size(); i12++) {
            iL += l.l(list.get(i12).intValue());
        }
        mVar.f3451a.R(iL);
        while (i11 < list.size()) {
            mVar.f3451a.K(list.get(i11).intValue());
            i11++;
        }
    }

    public static void M(int i10, List<Long> list, t1 t1Var, boolean z10) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        m mVar = (m) t1Var;
        Objects.requireNonNull(mVar);
        int i11 = 0;
        if (!z10) {
            while (i11 < list.size()) {
                mVar.f3451a.S(i10, list.get(i11).longValue());
                i11++;
            }
            return;
        }
        mVar.f3451a.P(i10, 2);
        int iA = 0;
        for (int i12 = 0; i12 < list.size(); i12++) {
            iA += l.A(list.get(i12).longValue());
        }
        mVar.f3451a.R(iA);
        while (i11 < list.size()) {
            mVar.f3451a.T(list.get(i11).longValue());
            i11++;
        }
    }

    public static void N(int i10, List<?> list, t1 t1Var, e1 e1Var) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        m mVar = (m) t1Var;
        Objects.requireNonNull(mVar);
        for (int i11 = 0; i11 < list.size(); i11++) {
            mVar.k(i10, list.get(i11), e1Var);
        }
    }

    public static void O(int i10, List<Integer> list, t1 t1Var, boolean z10) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        m mVar = (m) t1Var;
        Objects.requireNonNull(mVar);
        int i11 = 0;
        if (!z10) {
            while (i11 < list.size()) {
                mVar.f3451a.F(i10, list.get(i11).intValue());
                i11++;
            }
            return;
        }
        mVar.f3451a.P(i10, 2);
        int i12 = 0;
        for (int i13 = 0; i13 < list.size(); i13++) {
            list.get(i13).intValue();
            Logger logger = l.f3445b;
            i12 += 4;
        }
        mVar.f3451a.R(i12);
        while (i11 < list.size()) {
            mVar.f3451a.G(list.get(i11).intValue());
            i11++;
        }
    }

    public static void P(int i10, List<Long> list, t1 t1Var, boolean z10) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        m mVar = (m) t1Var;
        Objects.requireNonNull(mVar);
        int i11 = 0;
        if (!z10) {
            while (i11 < list.size()) {
                mVar.f3451a.H(i10, list.get(i11).longValue());
                i11++;
            }
            return;
        }
        mVar.f3451a.P(i10, 2);
        int i12 = 0;
        for (int i13 = 0; i13 < list.size(); i13++) {
            list.get(i13).longValue();
            Logger logger = l.f3445b;
            i12 += 8;
        }
        mVar.f3451a.R(i12);
        while (i11 < list.size()) {
            mVar.f3451a.I(list.get(i11).longValue());
            i11++;
        }
    }

    public static void Q(int i10, List<Integer> list, t1 t1Var, boolean z10) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        m mVar = (m) t1Var;
        Objects.requireNonNull(mVar);
        int i11 = 0;
        if (!z10) {
            while (i11 < list.size()) {
                l lVar = mVar.f3451a;
                int iIntValue = list.get(i11).intValue();
                lVar.Q(i10, (iIntValue >> 31) ^ (iIntValue << 1));
                i11++;
            }
            return;
        }
        mVar.f3451a.P(i10, 2);
        int iR = 0;
        for (int i12 = 0; i12 < list.size(); i12++) {
            iR += l.r(list.get(i12).intValue());
        }
        mVar.f3451a.R(iR);
        while (i11 < list.size()) {
            l lVar2 = mVar.f3451a;
            int iIntValue2 = list.get(i11).intValue();
            lVar2.R((iIntValue2 >> 31) ^ (iIntValue2 << 1));
            i11++;
        }
    }

    public static void R(int i10, List<Long> list, t1 t1Var, boolean z10) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        m mVar = (m) t1Var;
        Objects.requireNonNull(mVar);
        int i11 = 0;
        if (!z10) {
            while (i11 < list.size()) {
                mVar.f3451a.S(i10, l.B(list.get(i11).longValue()));
                i11++;
            }
            return;
        }
        mVar.f3451a.P(i10, 2);
        int iT = 0;
        for (int i12 = 0; i12 < list.size(); i12++) {
            iT += l.t(list.get(i12).longValue());
        }
        mVar.f3451a.R(iT);
        while (i11 < list.size()) {
            mVar.f3451a.T(l.B(list.get(i11).longValue()));
            i11++;
        }
    }

    public static void S(int i10, List<String> list, t1 t1Var) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        m mVar = (m) t1Var;
        Objects.requireNonNull(mVar);
        int i11 = 0;
        if (!(list instanceof f0)) {
            while (i11 < list.size()) {
                mVar.f3451a.O(i10, list.get(i11));
                i11++;
            }
            return;
        }
        f0 f0Var = (f0) list;
        while (i11 < list.size()) {
            Object objD = f0Var.d(i11);
            if (objD instanceof String) {
                mVar.f3451a.O(i10, (String) objD);
            } else {
                mVar.f3451a.E(i10, (i) objD);
            }
            i11++;
        }
    }

    public static void T(int i10, List<Integer> list, t1 t1Var, boolean z10) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        m mVar = (m) t1Var;
        Objects.requireNonNull(mVar);
        int i11 = 0;
        if (!z10) {
            while (i11 < list.size()) {
                mVar.f3451a.Q(i10, list.get(i11).intValue());
                i11++;
            }
            return;
        }
        mVar.f3451a.P(i10, 2);
        int iY = 0;
        for (int i12 = 0; i12 < list.size(); i12++) {
            iY += l.y(list.get(i12).intValue());
        }
        mVar.f3451a.R(iY);
        while (i11 < list.size()) {
            mVar.f3451a.R(list.get(i11).intValue());
            i11++;
        }
    }

    public static void U(int i10, List<Long> list, t1 t1Var, boolean z10) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        m mVar = (m) t1Var;
        Objects.requireNonNull(mVar);
        int i11 = 0;
        if (!z10) {
            while (i11 < list.size()) {
                mVar.f3451a.S(i10, list.get(i11).longValue());
                i11++;
            }
            return;
        }
        mVar.f3451a.P(i10, 2);
        int iA = 0;
        for (int i12 = 0; i12 < list.size(); i12++) {
            iA += l.A(list.get(i12).longValue());
        }
        mVar.f3451a.R(iA);
        while (i11 < list.size()) {
            mVar.f3451a.T(list.get(i11).longValue());
            i11++;
        }
    }

    public static int a(int i10, List list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return l.b(i10) * size;
    }

    public static int b(int i10, List<i> list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int iW = l.w(i10) * size;
        for (int i11 = 0; i11 < list.size(); i11++) {
            iW += l.d(list.get(i11));
        }
        return iW;
    }

    public static int c(int i10, List list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return (l.w(i10) * size) + d(list);
    }

    public static int d(List<Integer> list) {
        int iL;
        int size = list.size();
        int i10 = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof y) {
            y yVar = (y) list;
            iL = 0;
            while (i10 < size) {
                iL += l.l(yVar.m(i10));
                i10++;
            }
        } else {
            iL = 0;
            while (i10 < size) {
                iL += l.l(list.get(i10).intValue());
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
        return l.g(i10) * size;
    }

    public static int f(List<?> list) {
        return list.size() * 4;
    }

    public static int g(int i10, List list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return l.h(i10) * size;
    }

    public static int h(List<?> list) {
        return list.size() * 8;
    }

    public static int i(int i10, List<q0> list, e1 e1Var) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int iJ = 0;
        for (int i11 = 0; i11 < size; i11++) {
            iJ += l.j(i10, list.get(i11), e1Var);
        }
        return iJ;
    }

    public static int j(int i10, List list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return (l.w(i10) * size) + k(list);
    }

    public static int k(List<Integer> list) {
        int iL;
        int size = list.size();
        int i10 = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof y) {
            y yVar = (y) list;
            iL = 0;
            while (i10 < size) {
                iL += l.l(yVar.m(i10));
                i10++;
            }
        } else {
            iL = 0;
            while (i10 < size) {
                iL += l.l(list.get(i10).intValue());
                i10++;
            }
        }
        return iL;
    }

    public static int l(int i10, List list) {
        if (list.size() == 0) {
            return 0;
        }
        return (l.w(i10) * list.size()) + m(list);
    }

    public static int m(List<Long> list) {
        int iA;
        int size = list.size();
        int i10 = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof h0) {
            h0 h0Var = (h0) list;
            iA = 0;
            while (i10 < size) {
                iA += l.A(h0Var.m(i10));
                i10++;
            }
        } else {
            iA = 0;
            while (i10 < size) {
                iA += l.A(list.get(i10).longValue());
                i10++;
            }
        }
        return iA;
    }

    public static int n(int i10, Object obj, e1 e1Var) {
        if (obj instanceof d0) {
            return l.n((d0) obj) + l.w(i10);
        }
        int iW = l.w(i10);
        int i11 = ((a) ((q0) obj)).i(e1Var);
        return l.y(i11) + i11 + iW;
    }

    public static int o(int i10, List<?> list, e1 e1Var) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int iW = l.w(i10) * size;
        for (int i11 = 0; i11 < size; i11++) {
            Object obj = list.get(i11);
            if (obj instanceof d0) {
                iW = l.n((d0) obj) + iW;
            } else {
                int i12 = ((a) ((q0) obj)).i(e1Var);
                iW = l.y(i12) + i12 + iW;
            }
        }
        return iW;
    }

    public static int p(int i10, List list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return (l.w(i10) * size) + q(list);
    }

    public static int q(List<Integer> list) {
        int iR;
        int size = list.size();
        int i10 = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof y) {
            y yVar = (y) list;
            iR = 0;
            while (i10 < size) {
                iR += l.r(yVar.m(i10));
                i10++;
            }
        } else {
            iR = 0;
            while (i10 < size) {
                iR += l.r(list.get(i10).intValue());
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
        return (l.w(i10) * size) + s(list);
    }

    public static int s(List<Long> list) {
        int iT;
        int size = list.size();
        int i10 = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof h0) {
            h0 h0Var = (h0) list;
            iT = 0;
            while (i10 < size) {
                iT += l.t(h0Var.m(i10));
                i10++;
            }
        } else {
            iT = 0;
            while (i10 < size) {
                iT += l.t(list.get(i10).longValue());
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
        int iW = l.w(i10) * size;
        if (list instanceof f0) {
            f0 f0Var = (f0) list;
            while (i11 < size) {
                Object objD = f0Var.d(i11);
                iW = (objD instanceof i ? l.d((i) objD) : l.v((String) objD)) + iW;
                i11++;
            }
        } else {
            while (i11 < size) {
                Object obj = list.get(i11);
                iW = (obj instanceof i ? l.d((i) obj) : l.v((String) obj)) + iW;
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
        return (l.w(i10) * size) + v(list);
    }

    public static int v(List<Integer> list) {
        int iY;
        int size = list.size();
        int i10 = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof y) {
            y yVar = (y) list;
            iY = 0;
            while (i10 < size) {
                iY += l.y(yVar.m(i10));
                i10++;
            }
        } else {
            iY = 0;
            while (i10 < size) {
                iY += l.y(list.get(i10).intValue());
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
        return (l.w(i10) * size) + x(list);
    }

    public static int x(List<Long> list) {
        int iA;
        int size = list.size();
        int i10 = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof h0) {
            h0 h0Var = (h0) list;
            iA = 0;
            while (i10 < size) {
                iA += l.A(h0Var.m(i10));
                i10++;
            }
        } else {
            iA = 0;
            while (i10 < size) {
                iA += l.A(list.get(i10).longValue());
                i10++;
            }
        }
        return iA;
    }

    public static <UT, UB> UB y(int i10, List<Integer> list, z.b bVar, UB ub2, l1<UT, UB> l1Var) {
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
                    ub2 = (UB) C(i10, iIntValue, ub2, l1Var);
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
                    ub2 = (UB) C(i10, iIntValue2, ub2, l1Var);
                    it.remove();
                }
            }
        }
        return ub2;
    }

    public static l1<?, ?> z(boolean z10) {
        Class<?> cls;
        try {
            cls = Class.forName("com.google.crypto.tink.shaded.protobuf.UnknownFieldSetSchema");
        } catch (Throwable unused) {
            cls = null;
        }
        if (cls == null) {
            return null;
        }
        try {
            return (l1) cls.getConstructor(Boolean.TYPE).newInstance(Boolean.valueOf(z10));
        } catch (Throwable unused2) {
            return null;
        }
    }
}
