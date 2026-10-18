package androidx.constraintlayout.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.graphics.drawable.ColorDrawable;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseIntArray;
import android.util.Xml;
import android.view.View;
import android.view.ViewGroup;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Objects;
import org.xmlpull.v1.XmlPullParserException;

/* JADX INFO: compiled from: ConstraintSet.java */
/* JADX INFO: loaded from: classes.dex */
public final class d {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final int[] f1614d = {0, 4, 8};

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static SparseIntArray f1615e = new SparseIntArray();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static SparseIntArray f1616f = new SparseIntArray();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public HashMap<String, androidx.constraintlayout.widget.a> f1617a = new HashMap<>();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public boolean f1618b = true;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public HashMap<Integer, a> f1619c = new HashMap<>();

    /* JADX INFO: compiled from: ConstraintSet.java */
    public static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public int f1620a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final C0021d f1621b = new C0021d();

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final c f1622c = new c();

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public final b f1623d = new b();

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final e f1624e = new e();

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public HashMap<String, androidx.constraintlayout.widget.a> f1625f = new HashMap<>();

        /* JADX INFO: renamed from: androidx.constraintlayout.widget.d$a$a, reason: collision with other inner class name */
        /* JADX INFO: compiled from: ConstraintSet.java */
        public static class C0020a {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public int[] f1626a = new int[10];

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public int[] f1627b = new int[10];

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public int f1628c = 0;

            /* JADX INFO: renamed from: d, reason: collision with root package name */
            public int[] f1629d = new int[10];

            /* JADX INFO: renamed from: e, reason: collision with root package name */
            public float[] f1630e = new float[10];

            /* JADX INFO: renamed from: f, reason: collision with root package name */
            public int f1631f = 0;

            /* JADX INFO: renamed from: g, reason: collision with root package name */
            public int[] f1632g = new int[5];

            /* JADX INFO: renamed from: h, reason: collision with root package name */
            public String[] f1633h = new String[5];

            /* JADX INFO: renamed from: i, reason: collision with root package name */
            public int f1634i = 0;

            /* JADX INFO: renamed from: j, reason: collision with root package name */
            public int[] f1635j = new int[4];

            /* JADX INFO: renamed from: k, reason: collision with root package name */
            public boolean[] f1636k = new boolean[4];

            /* JADX INFO: renamed from: l, reason: collision with root package name */
            public int f1637l = 0;

            public final void a(int i10, float f10) {
                int i11 = this.f1631f;
                int[] iArr = this.f1629d;
                if (i11 >= iArr.length) {
                    this.f1629d = Arrays.copyOf(iArr, iArr.length * 2);
                    float[] fArr = this.f1630e;
                    this.f1630e = Arrays.copyOf(fArr, fArr.length * 2);
                }
                int[] iArr2 = this.f1629d;
                int i12 = this.f1631f;
                iArr2[i12] = i10;
                float[] fArr2 = this.f1630e;
                this.f1631f = i12 + 1;
                fArr2[i12] = f10;
            }

            public final void b(int i10, int i11) {
                int i12 = this.f1628c;
                int[] iArr = this.f1626a;
                if (i12 >= iArr.length) {
                    this.f1626a = Arrays.copyOf(iArr, iArr.length * 2);
                    int[] iArr2 = this.f1627b;
                    this.f1627b = Arrays.copyOf(iArr2, iArr2.length * 2);
                }
                int[] iArr3 = this.f1626a;
                int i13 = this.f1628c;
                iArr3[i13] = i10;
                int[] iArr4 = this.f1627b;
                this.f1628c = i13 + 1;
                iArr4[i13] = i11;
            }

            public final void c(int i10, String str) {
                int i11 = this.f1634i;
                int[] iArr = this.f1632g;
                if (i11 >= iArr.length) {
                    this.f1632g = Arrays.copyOf(iArr, iArr.length * 2);
                    String[] strArr = this.f1633h;
                    this.f1633h = (String[]) Arrays.copyOf(strArr, strArr.length * 2);
                }
                int[] iArr2 = this.f1632g;
                int i12 = this.f1634i;
                iArr2[i12] = i10;
                String[] strArr2 = this.f1633h;
                this.f1634i = i12 + 1;
                strArr2[i12] = str;
            }

            public final void d(int i10, boolean z10) {
                int i11 = this.f1637l;
                int[] iArr = this.f1635j;
                if (i11 >= iArr.length) {
                    this.f1635j = Arrays.copyOf(iArr, iArr.length * 2);
                    boolean[] zArr = this.f1636k;
                    this.f1636k = Arrays.copyOf(zArr, zArr.length * 2);
                }
                int[] iArr2 = this.f1635j;
                int i12 = this.f1637l;
                iArr2[i12] = i10;
                boolean[] zArr2 = this.f1636k;
                this.f1637l = i12 + 1;
                zArr2[i12] = z10;
            }
        }

        public final void a(ConstraintLayout.a aVar) {
            b bVar = this.f1623d;
            aVar.f1538e = bVar.f1652h;
            aVar.f1540f = bVar.f1654i;
            aVar.f1542g = bVar.f1656j;
            aVar.f1544h = bVar.f1658k;
            aVar.f1546i = bVar.f1660l;
            aVar.f1548j = bVar.f1662m;
            aVar.f1550k = bVar.f1664n;
            aVar.f1552l = bVar.f1666o;
            aVar.f1554m = bVar.f1668p;
            aVar.f1556n = bVar.f1669q;
            aVar.f1558o = bVar.f1670r;
            aVar.f1565s = bVar.f1671s;
            aVar.f1566t = bVar.f1672t;
            aVar.f1567u = bVar.f1673u;
            aVar.f1568v = bVar.f1674v;
            ((ViewGroup.MarginLayoutParams) aVar).leftMargin = bVar.F;
            ((ViewGroup.MarginLayoutParams) aVar).rightMargin = bVar.G;
            ((ViewGroup.MarginLayoutParams) aVar).topMargin = bVar.H;
            ((ViewGroup.MarginLayoutParams) aVar).bottomMargin = bVar.I;
            aVar.A = bVar.R;
            aVar.B = bVar.Q;
            aVar.f1570x = bVar.N;
            aVar.f1572z = bVar.P;
            aVar.E = bVar.f1675w;
            aVar.F = bVar.f1676x;
            aVar.f1560p = bVar.f1678z;
            aVar.f1562q = bVar.A;
            aVar.f1564r = bVar.B;
            aVar.G = bVar.f1677y;
            aVar.T = bVar.C;
            aVar.U = bVar.D;
            aVar.I = bVar.T;
            aVar.H = bVar.U;
            aVar.K = bVar.W;
            aVar.J = bVar.V;
            aVar.W = bVar.f1661l0;
            aVar.X = bVar.f1663m0;
            aVar.L = bVar.X;
            aVar.M = bVar.Y;
            aVar.P = bVar.Z;
            aVar.Q = bVar.f1640a0;
            aVar.N = bVar.f1642b0;
            aVar.O = bVar.f1644c0;
            aVar.R = bVar.d0;
            aVar.S = bVar.f1647e0;
            aVar.V = bVar.E;
            aVar.f1535c = bVar.f1648f;
            aVar.f1531a = bVar.f1645d;
            aVar.f1533b = bVar.f1646e;
            ((ViewGroup.MarginLayoutParams) aVar).width = bVar.f1641b;
            ((ViewGroup.MarginLayoutParams) aVar).height = bVar.f1643c;
            String str = bVar.f1659k0;
            if (str != null) {
                aVar.Y = str;
            }
            aVar.Z = bVar.f1667o0;
            aVar.setMarginStart(bVar.K);
            aVar.setMarginEnd(this.f1623d.J);
            aVar.a();
        }

        public final void b(int i10, ConstraintLayout.a aVar) {
            this.f1620a = i10;
            b bVar = this.f1623d;
            bVar.f1652h = aVar.f1538e;
            bVar.f1654i = aVar.f1540f;
            bVar.f1656j = aVar.f1542g;
            bVar.f1658k = aVar.f1544h;
            bVar.f1660l = aVar.f1546i;
            bVar.f1662m = aVar.f1548j;
            bVar.f1664n = aVar.f1550k;
            bVar.f1666o = aVar.f1552l;
            bVar.f1668p = aVar.f1554m;
            bVar.f1669q = aVar.f1556n;
            bVar.f1670r = aVar.f1558o;
            bVar.f1671s = aVar.f1565s;
            bVar.f1672t = aVar.f1566t;
            bVar.f1673u = aVar.f1567u;
            bVar.f1674v = aVar.f1568v;
            bVar.f1675w = aVar.E;
            bVar.f1676x = aVar.F;
            bVar.f1677y = aVar.G;
            bVar.f1678z = aVar.f1560p;
            bVar.A = aVar.f1562q;
            bVar.B = aVar.f1564r;
            bVar.C = aVar.T;
            bVar.D = aVar.U;
            bVar.E = aVar.V;
            bVar.f1648f = aVar.f1535c;
            bVar.f1645d = aVar.f1531a;
            bVar.f1646e = aVar.f1533b;
            bVar.f1641b = ((ViewGroup.MarginLayoutParams) aVar).width;
            bVar.f1643c = ((ViewGroup.MarginLayoutParams) aVar).height;
            bVar.F = ((ViewGroup.MarginLayoutParams) aVar).leftMargin;
            bVar.G = ((ViewGroup.MarginLayoutParams) aVar).rightMargin;
            bVar.H = ((ViewGroup.MarginLayoutParams) aVar).topMargin;
            bVar.I = ((ViewGroup.MarginLayoutParams) aVar).bottomMargin;
            bVar.L = aVar.D;
            bVar.T = aVar.I;
            bVar.U = aVar.H;
            bVar.W = aVar.K;
            bVar.V = aVar.J;
            bVar.f1661l0 = aVar.W;
            bVar.f1663m0 = aVar.X;
            bVar.X = aVar.L;
            bVar.Y = aVar.M;
            bVar.Z = aVar.P;
            bVar.f1640a0 = aVar.Q;
            bVar.f1642b0 = aVar.N;
            bVar.f1644c0 = aVar.O;
            bVar.d0 = aVar.R;
            bVar.f1647e0 = aVar.S;
            bVar.f1659k0 = aVar.Y;
            bVar.N = aVar.f1570x;
            bVar.P = aVar.f1572z;
            bVar.M = aVar.f1569w;
            bVar.O = aVar.f1571y;
            bVar.R = aVar.A;
            bVar.Q = aVar.B;
            bVar.S = aVar.C;
            bVar.f1667o0 = aVar.Z;
            bVar.J = aVar.getMarginEnd();
            this.f1623d.K = aVar.getMarginStart();
        }

        public final void c(int i10, androidx.constraintlayout.widget.e.a aVar) {
            b(i10, aVar);
            this.f1621b.f1692c = aVar.f1709r0;
            e eVar = this.f1624e;
            eVar.f1695a = aVar.f1712u0;
            eVar.f1696b = aVar.f1713v0;
            eVar.f1697c = aVar.f1714w0;
            eVar.f1698d = aVar.f1715x0;
            eVar.f1699e = aVar.f1716y0;
            eVar.f1700f = aVar.f1717z0;
            eVar.f1701g = aVar.A0;
            eVar.f1703i = aVar.B0;
            eVar.f1704j = aVar.C0;
            eVar.f1705k = aVar.D0;
            eVar.f1707m = aVar.f1711t0;
            eVar.f1706l = aVar.f1710s0;
        }

        public final Object clone() throws CloneNotSupportedException {
            a aVar = new a();
            b bVar = aVar.f1623d;
            b bVar2 = this.f1623d;
            Objects.requireNonNull(bVar);
            bVar.f1639a = bVar2.f1639a;
            bVar.f1641b = bVar2.f1641b;
            bVar.f1643c = bVar2.f1643c;
            bVar.f1645d = bVar2.f1645d;
            bVar.f1646e = bVar2.f1646e;
            bVar.f1648f = bVar2.f1648f;
            bVar.f1650g = bVar2.f1650g;
            bVar.f1652h = bVar2.f1652h;
            bVar.f1654i = bVar2.f1654i;
            bVar.f1656j = bVar2.f1656j;
            bVar.f1658k = bVar2.f1658k;
            bVar.f1660l = bVar2.f1660l;
            bVar.f1662m = bVar2.f1662m;
            bVar.f1664n = bVar2.f1664n;
            bVar.f1666o = bVar2.f1666o;
            bVar.f1668p = bVar2.f1668p;
            bVar.f1669q = bVar2.f1669q;
            bVar.f1670r = bVar2.f1670r;
            bVar.f1671s = bVar2.f1671s;
            bVar.f1672t = bVar2.f1672t;
            bVar.f1673u = bVar2.f1673u;
            bVar.f1674v = bVar2.f1674v;
            bVar.f1675w = bVar2.f1675w;
            bVar.f1676x = bVar2.f1676x;
            bVar.f1677y = bVar2.f1677y;
            bVar.f1678z = bVar2.f1678z;
            bVar.A = bVar2.A;
            bVar.B = bVar2.B;
            bVar.C = bVar2.C;
            bVar.D = bVar2.D;
            bVar.E = bVar2.E;
            bVar.F = bVar2.F;
            bVar.G = bVar2.G;
            bVar.H = bVar2.H;
            bVar.I = bVar2.I;
            bVar.J = bVar2.J;
            bVar.K = bVar2.K;
            bVar.L = bVar2.L;
            bVar.M = bVar2.M;
            bVar.N = bVar2.N;
            bVar.O = bVar2.O;
            bVar.P = bVar2.P;
            bVar.Q = bVar2.Q;
            bVar.R = bVar2.R;
            bVar.S = bVar2.S;
            bVar.T = bVar2.T;
            bVar.U = bVar2.U;
            bVar.V = bVar2.V;
            bVar.W = bVar2.W;
            bVar.X = bVar2.X;
            bVar.Y = bVar2.Y;
            bVar.Z = bVar2.Z;
            bVar.f1640a0 = bVar2.f1640a0;
            bVar.f1642b0 = bVar2.f1642b0;
            bVar.f1644c0 = bVar2.f1644c0;
            bVar.d0 = bVar2.d0;
            bVar.f1647e0 = bVar2.f1647e0;
            bVar.f1649f0 = bVar2.f1649f0;
            bVar.f1651g0 = bVar2.f1651g0;
            bVar.f1653h0 = bVar2.f1653h0;
            bVar.f1659k0 = bVar2.f1659k0;
            int[] iArr = bVar2.f1655i0;
            if (iArr == null || bVar2.f1657j0 != null) {
                bVar.f1655i0 = null;
            } else {
                bVar.f1655i0 = Arrays.copyOf(iArr, iArr.length);
            }
            bVar.f1657j0 = bVar2.f1657j0;
            bVar.f1661l0 = bVar2.f1661l0;
            bVar.f1663m0 = bVar2.f1663m0;
            bVar.f1665n0 = bVar2.f1665n0;
            bVar.f1667o0 = bVar2.f1667o0;
            c cVar = aVar.f1622c;
            c cVar2 = this.f1622c;
            Objects.requireNonNull(cVar);
            Objects.requireNonNull(cVar2);
            cVar.f1680a = cVar2.f1680a;
            cVar.f1682c = cVar2.f1682c;
            cVar.f1684e = cVar2.f1684e;
            cVar.f1683d = cVar2.f1683d;
            C0021d c0021d = aVar.f1621b;
            C0021d c0021d2 = this.f1621b;
            Objects.requireNonNull(c0021d);
            Objects.requireNonNull(c0021d2);
            c0021d.f1690a = c0021d2.f1690a;
            c0021d.f1692c = c0021d2.f1692c;
            c0021d.f1693d = c0021d2.f1693d;
            c0021d.f1691b = c0021d2.f1691b;
            e eVar = aVar.f1624e;
            e eVar2 = this.f1624e;
            Objects.requireNonNull(eVar);
            Objects.requireNonNull(eVar2);
            eVar.f1695a = eVar2.f1695a;
            eVar.f1696b = eVar2.f1696b;
            eVar.f1697c = eVar2.f1697c;
            eVar.f1698d = eVar2.f1698d;
            eVar.f1699e = eVar2.f1699e;
            eVar.f1700f = eVar2.f1700f;
            eVar.f1701g = eVar2.f1701g;
            eVar.f1702h = eVar2.f1702h;
            eVar.f1703i = eVar2.f1703i;
            eVar.f1704j = eVar2.f1704j;
            eVar.f1705k = eVar2.f1705k;
            eVar.f1706l = eVar2.f1706l;
            eVar.f1707m = eVar2.f1707m;
            aVar.f1620a = this.f1620a;
            return aVar;
        }
    }

    /* JADX INFO: compiled from: ConstraintSet.java */
    public static class b {

        /* JADX INFO: renamed from: p0, reason: collision with root package name */
        public static SparseIntArray f1638p0;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f1641b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public int f1643c;

        /* JADX INFO: renamed from: i0, reason: collision with root package name */
        public int[] f1655i0;

        /* JADX INFO: renamed from: j0, reason: collision with root package name */
        public String f1657j0;

        /* JADX INFO: renamed from: k0, reason: collision with root package name */
        public String f1659k0;

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public boolean f1639a = false;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public int f1645d = -1;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public int f1646e = -1;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public float f1648f = -1.0f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        public boolean f1650g = true;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public int f1652h = -1;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public int f1654i = -1;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public int f1656j = -1;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public int f1658k = -1;

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        public int f1660l = -1;

        /* JADX INFO: renamed from: m, reason: collision with root package name */
        public int f1662m = -1;

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        public int f1664n = -1;

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        public int f1666o = -1;

        /* JADX INFO: renamed from: p, reason: collision with root package name */
        public int f1668p = -1;

        /* JADX INFO: renamed from: q, reason: collision with root package name */
        public int f1669q = -1;

        /* JADX INFO: renamed from: r, reason: collision with root package name */
        public int f1670r = -1;

        /* JADX INFO: renamed from: s, reason: collision with root package name */
        public int f1671s = -1;

        /* JADX INFO: renamed from: t, reason: collision with root package name */
        public int f1672t = -1;

        /* JADX INFO: renamed from: u, reason: collision with root package name */
        public int f1673u = -1;

        /* JADX INFO: renamed from: v, reason: collision with root package name */
        public int f1674v = -1;

        /* JADX INFO: renamed from: w, reason: collision with root package name */
        public float f1675w = 0.5f;

        /* JADX INFO: renamed from: x, reason: collision with root package name */
        public float f1676x = 0.5f;

        /* JADX INFO: renamed from: y, reason: collision with root package name */
        public String f1677y = null;

        /* JADX INFO: renamed from: z, reason: collision with root package name */
        public int f1678z = -1;
        public int A = 0;
        public float B = 0.0f;
        public int C = -1;
        public int D = -1;
        public int E = -1;
        public int F = 0;
        public int G = 0;
        public int H = 0;
        public int I = 0;
        public int J = 0;
        public int K = 0;
        public int L = 0;
        public int M = Integer.MIN_VALUE;
        public int N = Integer.MIN_VALUE;
        public int O = Integer.MIN_VALUE;
        public int P = Integer.MIN_VALUE;
        public int Q = Integer.MIN_VALUE;
        public int R = Integer.MIN_VALUE;
        public int S = Integer.MIN_VALUE;
        public float T = -1.0f;
        public float U = -1.0f;
        public int V = 0;
        public int W = 0;
        public int X = 0;
        public int Y = 0;
        public int Z = 0;

        /* JADX INFO: renamed from: a0, reason: collision with root package name */
        public int f1640a0 = 0;

        /* JADX INFO: renamed from: b0, reason: collision with root package name */
        public int f1642b0 = 0;

        /* JADX INFO: renamed from: c0, reason: collision with root package name */
        public int f1644c0 = 0;
        public float d0 = 1.0f;

        /* JADX INFO: renamed from: e0, reason: collision with root package name */
        public float f1647e0 = 1.0f;

        /* JADX INFO: renamed from: f0, reason: collision with root package name */
        public int f1649f0 = -1;

        /* JADX INFO: renamed from: g0, reason: collision with root package name */
        public int f1651g0 = 0;

        /* JADX INFO: renamed from: h0, reason: collision with root package name */
        public int f1653h0 = -1;

        /* JADX INFO: renamed from: l0, reason: collision with root package name */
        public boolean f1661l0 = false;

        /* JADX INFO: renamed from: m0, reason: collision with root package name */
        public boolean f1663m0 = false;

        /* JADX INFO: renamed from: n0, reason: collision with root package name */
        public boolean f1665n0 = true;

        /* JADX INFO: renamed from: o0, reason: collision with root package name */
        public int f1667o0 = 0;

        static {
            SparseIntArray sparseIntArray = new SparseIntArray();
            f1638p0 = sparseIntArray;
            sparseIntArray.append(R.styleable.Layout_layout_constraintLeft_toLeftOf, 24);
            f1638p0.append(R.styleable.Layout_layout_constraintLeft_toRightOf, 25);
            f1638p0.append(R.styleable.Layout_layout_constraintRight_toLeftOf, 28);
            f1638p0.append(R.styleable.Layout_layout_constraintRight_toRightOf, 29);
            f1638p0.append(R.styleable.Layout_layout_constraintTop_toTopOf, 35);
            f1638p0.append(R.styleable.Layout_layout_constraintTop_toBottomOf, 34);
            f1638p0.append(R.styleable.Layout_layout_constraintBottom_toTopOf, 4);
            f1638p0.append(R.styleable.Layout_layout_constraintBottom_toBottomOf, 3);
            f1638p0.append(R.styleable.Layout_layout_constraintBaseline_toBaselineOf, 1);
            f1638p0.append(R.styleable.Layout_layout_editor_absoluteX, 6);
            f1638p0.append(R.styleable.Layout_layout_editor_absoluteY, 7);
            f1638p0.append(R.styleable.Layout_layout_constraintGuide_begin, 17);
            f1638p0.append(R.styleable.Layout_layout_constraintGuide_end, 18);
            f1638p0.append(R.styleable.Layout_layout_constraintGuide_percent, 19);
            f1638p0.append(R.styleable.Layout_guidelineUseRtl, 90);
            f1638p0.append(R.styleable.Layout_android_orientation, 26);
            f1638p0.append(R.styleable.Layout_layout_constraintStart_toEndOf, 31);
            f1638p0.append(R.styleable.Layout_layout_constraintStart_toStartOf, 32);
            f1638p0.append(R.styleable.Layout_layout_constraintEnd_toStartOf, 10);
            f1638p0.append(R.styleable.Layout_layout_constraintEnd_toEndOf, 9);
            f1638p0.append(R.styleable.Layout_layout_goneMarginLeft, 13);
            f1638p0.append(R.styleable.Layout_layout_goneMarginTop, 16);
            f1638p0.append(R.styleable.Layout_layout_goneMarginRight, 14);
            f1638p0.append(R.styleable.Layout_layout_goneMarginBottom, 11);
            f1638p0.append(R.styleable.Layout_layout_goneMarginStart, 15);
            f1638p0.append(R.styleable.Layout_layout_goneMarginEnd, 12);
            f1638p0.append(R.styleable.Layout_layout_constraintVertical_weight, 38);
            f1638p0.append(R.styleable.Layout_layout_constraintHorizontal_weight, 37);
            f1638p0.append(R.styleable.Layout_layout_constraintHorizontal_chainStyle, 39);
            f1638p0.append(R.styleable.Layout_layout_constraintVertical_chainStyle, 40);
            f1638p0.append(R.styleable.Layout_layout_constraintHorizontal_bias, 20);
            f1638p0.append(R.styleable.Layout_layout_constraintVertical_bias, 36);
            f1638p0.append(R.styleable.Layout_layout_constraintDimensionRatio, 5);
            f1638p0.append(R.styleable.Layout_layout_constraintLeft_creator, 91);
            f1638p0.append(R.styleable.Layout_layout_constraintTop_creator, 91);
            f1638p0.append(R.styleable.Layout_layout_constraintRight_creator, 91);
            f1638p0.append(R.styleable.Layout_layout_constraintBottom_creator, 91);
            f1638p0.append(R.styleable.Layout_layout_constraintBaseline_creator, 91);
            f1638p0.append(R.styleable.Layout_android_layout_marginLeft, 23);
            f1638p0.append(R.styleable.Layout_android_layout_marginRight, 27);
            f1638p0.append(R.styleable.Layout_android_layout_marginStart, 30);
            f1638p0.append(R.styleable.Layout_android_layout_marginEnd, 8);
            f1638p0.append(R.styleable.Layout_android_layout_marginTop, 33);
            f1638p0.append(R.styleable.Layout_android_layout_marginBottom, 2);
            f1638p0.append(R.styleable.Layout_android_layout_width, 22);
            f1638p0.append(R.styleable.Layout_android_layout_height, 21);
            f1638p0.append(R.styleable.Layout_layout_constraintWidth, 41);
            f1638p0.append(R.styleable.Layout_layout_constraintHeight, 42);
            f1638p0.append(R.styleable.Layout_layout_constrainedWidth, 41);
            f1638p0.append(R.styleable.Layout_layout_constrainedHeight, 42);
            f1638p0.append(R.styleable.Layout_layout_wrapBehaviorInParent, 76);
            f1638p0.append(R.styleable.Layout_layout_constraintCircle, 61);
            f1638p0.append(R.styleable.Layout_layout_constraintCircleRadius, 62);
            f1638p0.append(R.styleable.Layout_layout_constraintCircleAngle, 63);
            f1638p0.append(R.styleable.Layout_layout_constraintWidth_percent, 69);
            f1638p0.append(R.styleable.Layout_layout_constraintHeight_percent, 70);
            f1638p0.append(R.styleable.Layout_chainUseRtl, 71);
            f1638p0.append(R.styleable.Layout_barrierDirection, 72);
            f1638p0.append(R.styleable.Layout_barrierMargin, 73);
            f1638p0.append(R.styleable.Layout_constraint_referenced_ids, 74);
            f1638p0.append(R.styleable.Layout_barrierAllowsGoneWidgets, 75);
        }

        public final void a(Context context, AttributeSet attributeSet) {
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.Layout);
            int indexCount = typedArrayObtainStyledAttributes.getIndexCount();
            for (int i10 = 0; i10 < indexCount; i10++) {
                int index = typedArrayObtainStyledAttributes.getIndex(i10);
                int i11 = f1638p0.get(index);
                switch (i11) {
                    case 1:
                        this.f1668p = d.g(typedArrayObtainStyledAttributes, index, this.f1668p);
                        break;
                    case 2:
                        this.I = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.I);
                        break;
                    case 3:
                        this.f1666o = d.g(typedArrayObtainStyledAttributes, index, this.f1666o);
                        break;
                    case 4:
                        this.f1664n = d.g(typedArrayObtainStyledAttributes, index, this.f1664n);
                        break;
                    case 5:
                        this.f1677y = typedArrayObtainStyledAttributes.getString(index);
                        break;
                    case 6:
                        this.C = typedArrayObtainStyledAttributes.getDimensionPixelOffset(index, this.C);
                        break;
                    case 7:
                        this.D = typedArrayObtainStyledAttributes.getDimensionPixelOffset(index, this.D);
                        break;
                    case 8:
                        this.J = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.J);
                        break;
                    case 9:
                        this.f1674v = d.g(typedArrayObtainStyledAttributes, index, this.f1674v);
                        break;
                    case 10:
                        this.f1673u = d.g(typedArrayObtainStyledAttributes, index, this.f1673u);
                        break;
                    case 11:
                        this.P = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.P);
                        break;
                    case 12:
                        this.Q = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.Q);
                        break;
                    case 13:
                        this.M = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.M);
                        break;
                    case 14:
                        this.O = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.O);
                        break;
                    case 15:
                        this.R = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.R);
                        break;
                    case 16:
                        this.N = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.N);
                        break;
                    case 17:
                        this.f1645d = typedArrayObtainStyledAttributes.getDimensionPixelOffset(index, this.f1645d);
                        break;
                    case 18:
                        this.f1646e = typedArrayObtainStyledAttributes.getDimensionPixelOffset(index, this.f1646e);
                        break;
                    case 19:
                        this.f1648f = typedArrayObtainStyledAttributes.getFloat(index, this.f1648f);
                        break;
                    case 20:
                        this.f1675w = typedArrayObtainStyledAttributes.getFloat(index, this.f1675w);
                        break;
                    case 21:
                        this.f1643c = typedArrayObtainStyledAttributes.getLayoutDimension(index, this.f1643c);
                        break;
                    case 22:
                        this.f1641b = typedArrayObtainStyledAttributes.getLayoutDimension(index, this.f1641b);
                        break;
                    case 23:
                        this.F = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.F);
                        break;
                    case 24:
                        this.f1652h = d.g(typedArrayObtainStyledAttributes, index, this.f1652h);
                        break;
                    case 25:
                        this.f1654i = d.g(typedArrayObtainStyledAttributes, index, this.f1654i);
                        break;
                    case 26:
                        this.E = typedArrayObtainStyledAttributes.getInt(index, this.E);
                        break;
                    case 27:
                        this.G = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.G);
                        break;
                    case 28:
                        this.f1656j = d.g(typedArrayObtainStyledAttributes, index, this.f1656j);
                        break;
                    case 29:
                        this.f1658k = d.g(typedArrayObtainStyledAttributes, index, this.f1658k);
                        break;
                    case 30:
                        this.K = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.K);
                        break;
                    case 31:
                        this.f1671s = d.g(typedArrayObtainStyledAttributes, index, this.f1671s);
                        break;
                    case 32:
                        this.f1672t = d.g(typedArrayObtainStyledAttributes, index, this.f1672t);
                        break;
                    case 33:
                        this.H = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.H);
                        break;
                    case 34:
                        this.f1662m = d.g(typedArrayObtainStyledAttributes, index, this.f1662m);
                        break;
                    case 35:
                        this.f1660l = d.g(typedArrayObtainStyledAttributes, index, this.f1660l);
                        break;
                    case 36:
                        this.f1676x = typedArrayObtainStyledAttributes.getFloat(index, this.f1676x);
                        break;
                    case 37:
                        this.U = typedArrayObtainStyledAttributes.getFloat(index, this.U);
                        break;
                    case 38:
                        this.T = typedArrayObtainStyledAttributes.getFloat(index, this.T);
                        break;
                    case 39:
                        this.V = typedArrayObtainStyledAttributes.getInt(index, this.V);
                        break;
                    case 40:
                        this.W = typedArrayObtainStyledAttributes.getInt(index, this.W);
                        break;
                    case 41:
                        d.h(this, typedArrayObtainStyledAttributes, index, 0);
                        break;
                    case 42:
                        d.h(this, typedArrayObtainStyledAttributes, index, 1);
                        break;
                    default:
                        switch (i11) {
                            case 61:
                                this.f1678z = d.g(typedArrayObtainStyledAttributes, index, this.f1678z);
                                break;
                            case 62:
                                this.A = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.A);
                                break;
                            case 63:
                                this.B = typedArrayObtainStyledAttributes.getFloat(index, this.B);
                                break;
                            default:
                                switch (i11) {
                                    case 69:
                                        this.d0 = typedArrayObtainStyledAttributes.getFloat(index, 1.0f);
                                        break;
                                    case 70:
                                        this.f1647e0 = typedArrayObtainStyledAttributes.getFloat(index, 1.0f);
                                        break;
                                    case 71:
                                        Log.e("ConstraintSet", "CURRENTLY UNSUPPORTED");
                                        break;
                                    case 72:
                                        this.f1649f0 = typedArrayObtainStyledAttributes.getInt(index, this.f1649f0);
                                        break;
                                    case 73:
                                        this.f1651g0 = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.f1651g0);
                                        break;
                                    case 74:
                                        this.f1657j0 = typedArrayObtainStyledAttributes.getString(index);
                                        break;
                                    case 75:
                                        this.f1665n0 = typedArrayObtainStyledAttributes.getBoolean(index, this.f1665n0);
                                        break;
                                    case 76:
                                        this.f1667o0 = typedArrayObtainStyledAttributes.getInt(index, this.f1667o0);
                                        break;
                                    case 77:
                                        this.f1669q = d.g(typedArrayObtainStyledAttributes, index, this.f1669q);
                                        break;
                                    case 78:
                                        this.f1670r = d.g(typedArrayObtainStyledAttributes, index, this.f1670r);
                                        break;
                                    case 79:
                                        this.S = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.S);
                                        break;
                                    case 80:
                                        this.L = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.L);
                                        break;
                                    case 81:
                                        this.X = typedArrayObtainStyledAttributes.getInt(index, this.X);
                                        break;
                                    case 82:
                                        this.Y = typedArrayObtainStyledAttributes.getInt(index, this.Y);
                                        break;
                                    case 83:
                                        this.f1640a0 = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.f1640a0);
                                        break;
                                    case 84:
                                        this.Z = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.Z);
                                        break;
                                    case 85:
                                        this.f1644c0 = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.f1644c0);
                                        break;
                                    case 86:
                                        this.f1642b0 = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.f1642b0);
                                        break;
                                    case 87:
                                        this.f1661l0 = typedArrayObtainStyledAttributes.getBoolean(index, this.f1661l0);
                                        break;
                                    case 88:
                                        this.f1663m0 = typedArrayObtainStyledAttributes.getBoolean(index, this.f1663m0);
                                        break;
                                    case 89:
                                        this.f1659k0 = typedArrayObtainStyledAttributes.getString(index);
                                        break;
                                    case 90:
                                        this.f1650g = typedArrayObtainStyledAttributes.getBoolean(index, this.f1650g);
                                        break;
                                    case 91:
                                        StringBuilder sbC = a0.b.c("unused attribute 0x");
                                        sbC.append(Integer.toHexString(index));
                                        sbC.append("   ");
                                        sbC.append(f1638p0.get(index));
                                        Log.w("ConstraintSet", sbC.toString());
                                        break;
                                    default:
                                        StringBuilder sbC2 = a0.b.c("Unknown attribute 0x");
                                        sbC2.append(Integer.toHexString(index));
                                        sbC2.append("   ");
                                        sbC2.append(f1638p0.get(index));
                                        Log.w("ConstraintSet", sbC2.toString());
                                        break;
                                }
                                break;
                        }
                        break;
                }
            }
            typedArrayObtainStyledAttributes.recycle();
        }
    }

    /* JADX INFO: compiled from: ConstraintSet.java */
    public static class c {

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public static SparseIntArray f1679k;

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public int f1680a = -1;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f1681b = 0;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public int f1682c = -1;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public float f1683d = Float.NaN;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public float f1684e = Float.NaN;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public float f1685f = Float.NaN;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        public int f1686g = -1;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public String f1687h = null;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public int f1688i = -3;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public int f1689j = -1;

        static {
            SparseIntArray sparseIntArray = new SparseIntArray();
            f1679k = sparseIntArray;
            sparseIntArray.append(R.styleable.Motion_motionPathRotate, 1);
            f1679k.append(R.styleable.Motion_pathMotionArc, 2);
            f1679k.append(R.styleable.Motion_transitionEasing, 3);
            f1679k.append(R.styleable.Motion_drawPath, 4);
            f1679k.append(R.styleable.Motion_animateRelativeTo, 5);
            f1679k.append(R.styleable.Motion_animateCircleAngleTo, 6);
            f1679k.append(R.styleable.Motion_motionStagger, 7);
            f1679k.append(R.styleable.Motion_quantizeMotionSteps, 8);
            f1679k.append(R.styleable.Motion_quantizeMotionPhase, 9);
            f1679k.append(R.styleable.Motion_quantizeMotionInterpolator, 10);
        }

        public final void a(Context context, AttributeSet attributeSet) {
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.Motion);
            int indexCount = typedArrayObtainStyledAttributes.getIndexCount();
            for (int i10 = 0; i10 < indexCount; i10++) {
                int index = typedArrayObtainStyledAttributes.getIndex(i10);
                switch (f1679k.get(index)) {
                    case 1:
                        this.f1684e = typedArrayObtainStyledAttributes.getFloat(index, this.f1684e);
                        break;
                    case 2:
                        this.f1682c = typedArrayObtainStyledAttributes.getInt(index, this.f1682c);
                        break;
                    case 3:
                        if (typedArrayObtainStyledAttributes.peekValue(index).type == 3) {
                            typedArrayObtainStyledAttributes.getString(index);
                        } else {
                            String str = r.a.f14174c[typedArrayObtainStyledAttributes.getInteger(index, 0)];
                        }
                        break;
                    case 4:
                        typedArrayObtainStyledAttributes.getInt(index, 0);
                        break;
                    case 5:
                        this.f1680a = d.g(typedArrayObtainStyledAttributes, index, this.f1680a);
                        break;
                    case 6:
                        this.f1681b = typedArrayObtainStyledAttributes.getInteger(index, this.f1681b);
                        break;
                    case 7:
                        this.f1683d = typedArrayObtainStyledAttributes.getFloat(index, this.f1683d);
                        break;
                    case 8:
                        this.f1686g = typedArrayObtainStyledAttributes.getInteger(index, this.f1686g);
                        break;
                    case 9:
                        this.f1685f = typedArrayObtainStyledAttributes.getFloat(index, this.f1685f);
                        break;
                    case 10:
                        int i11 = typedArrayObtainStyledAttributes.peekValue(index).type;
                        if (i11 == 1) {
                            int resourceId = typedArrayObtainStyledAttributes.getResourceId(index, -1);
                            this.f1689j = resourceId;
                            if (resourceId != -1) {
                                this.f1688i = -2;
                            }
                        } else if (i11 == 3) {
                            String string = typedArrayObtainStyledAttributes.getString(index);
                            this.f1687h = string;
                            if (string.indexOf("/") > 0) {
                                this.f1689j = typedArrayObtainStyledAttributes.getResourceId(index, -1);
                                this.f1688i = -2;
                            } else {
                                this.f1688i = -1;
                            }
                        } else {
                            this.f1688i = typedArrayObtainStyledAttributes.getInteger(index, this.f1689j);
                        }
                        break;
                }
            }
            typedArrayObtainStyledAttributes.recycle();
        }
    }

    /* JADX INFO: renamed from: androidx.constraintlayout.widget.d$d, reason: collision with other inner class name */
    /* JADX INFO: compiled from: ConstraintSet.java */
    public static class C0021d {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public int f1690a = 0;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f1691b = 0;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public float f1692c = 1.0f;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public float f1693d = Float.NaN;

        public final void a(Context context, AttributeSet attributeSet) {
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.PropertySet);
            int indexCount = typedArrayObtainStyledAttributes.getIndexCount();
            for (int i10 = 0; i10 < indexCount; i10++) {
                int index = typedArrayObtainStyledAttributes.getIndex(i10);
                if (index == R.styleable.PropertySet_android_alpha) {
                    this.f1692c = typedArrayObtainStyledAttributes.getFloat(index, this.f1692c);
                } else if (index == R.styleable.PropertySet_android_visibility) {
                    int i11 = typedArrayObtainStyledAttributes.getInt(index, this.f1690a);
                    this.f1690a = i11;
                    int[] iArr = d.f1614d;
                    this.f1690a = d.f1614d[i11];
                } else if (index == R.styleable.PropertySet_visibilityMode) {
                    this.f1691b = typedArrayObtainStyledAttributes.getInt(index, this.f1691b);
                } else if (index == R.styleable.PropertySet_motionProgress) {
                    this.f1693d = typedArrayObtainStyledAttributes.getFloat(index, this.f1693d);
                }
            }
            typedArrayObtainStyledAttributes.recycle();
        }
    }

    /* JADX INFO: compiled from: ConstraintSet.java */
    public static class e {

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        public static SparseIntArray f1694n;

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public float f1695a = 0.0f;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public float f1696b = 0.0f;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public float f1697c = 0.0f;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public float f1698d = 1.0f;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public float f1699e = 1.0f;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public float f1700f = Float.NaN;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        public float f1701g = Float.NaN;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public int f1702h = -1;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public float f1703i = 0.0f;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public float f1704j = 0.0f;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public float f1705k = 0.0f;

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        public boolean f1706l = false;

        /* JADX INFO: renamed from: m, reason: collision with root package name */
        public float f1707m = 0.0f;

        static {
            SparseIntArray sparseIntArray = new SparseIntArray();
            f1694n = sparseIntArray;
            sparseIntArray.append(R.styleable.Transform_android_rotation, 1);
            f1694n.append(R.styleable.Transform_android_rotationX, 2);
            f1694n.append(R.styleable.Transform_android_rotationY, 3);
            f1694n.append(R.styleable.Transform_android_scaleX, 4);
            f1694n.append(R.styleable.Transform_android_scaleY, 5);
            f1694n.append(R.styleable.Transform_android_transformPivotX, 6);
            f1694n.append(R.styleable.Transform_android_transformPivotY, 7);
            f1694n.append(R.styleable.Transform_android_translationX, 8);
            f1694n.append(R.styleable.Transform_android_translationY, 9);
            f1694n.append(R.styleable.Transform_android_translationZ, 10);
            f1694n.append(R.styleable.Transform_android_elevation, 11);
            f1694n.append(R.styleable.Transform_transformPivotTarget, 12);
        }

        public final void a(Context context, AttributeSet attributeSet) {
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.Transform);
            int indexCount = typedArrayObtainStyledAttributes.getIndexCount();
            for (int i10 = 0; i10 < indexCount; i10++) {
                int index = typedArrayObtainStyledAttributes.getIndex(i10);
                switch (f1694n.get(index)) {
                    case 1:
                        this.f1695a = typedArrayObtainStyledAttributes.getFloat(index, this.f1695a);
                        break;
                    case 2:
                        this.f1696b = typedArrayObtainStyledAttributes.getFloat(index, this.f1696b);
                        break;
                    case 3:
                        this.f1697c = typedArrayObtainStyledAttributes.getFloat(index, this.f1697c);
                        break;
                    case 4:
                        this.f1698d = typedArrayObtainStyledAttributes.getFloat(index, this.f1698d);
                        break;
                    case 5:
                        this.f1699e = typedArrayObtainStyledAttributes.getFloat(index, this.f1699e);
                        break;
                    case 6:
                        this.f1700f = typedArrayObtainStyledAttributes.getDimension(index, this.f1700f);
                        break;
                    case 7:
                        this.f1701g = typedArrayObtainStyledAttributes.getDimension(index, this.f1701g);
                        break;
                    case 8:
                        this.f1703i = typedArrayObtainStyledAttributes.getDimension(index, this.f1703i);
                        break;
                    case 9:
                        this.f1704j = typedArrayObtainStyledAttributes.getDimension(index, this.f1704j);
                        break;
                    case 10:
                        this.f1705k = typedArrayObtainStyledAttributes.getDimension(index, this.f1705k);
                        break;
                    case 11:
                        this.f1706l = true;
                        this.f1707m = typedArrayObtainStyledAttributes.getDimension(index, this.f1707m);
                        break;
                    case 12:
                        this.f1702h = d.g(typedArrayObtainStyledAttributes, index, this.f1702h);
                        break;
                }
            }
            typedArrayObtainStyledAttributes.recycle();
        }
    }

    static {
        f1615e.append(R.styleable.Constraint_layout_constraintLeft_toLeftOf, 25);
        f1615e.append(R.styleable.Constraint_layout_constraintLeft_toRightOf, 26);
        f1615e.append(R.styleable.Constraint_layout_constraintRight_toLeftOf, 29);
        f1615e.append(R.styleable.Constraint_layout_constraintRight_toRightOf, 30);
        f1615e.append(R.styleable.Constraint_layout_constraintTop_toTopOf, 36);
        f1615e.append(R.styleable.Constraint_layout_constraintTop_toBottomOf, 35);
        f1615e.append(R.styleable.Constraint_layout_constraintBottom_toTopOf, 4);
        f1615e.append(R.styleable.Constraint_layout_constraintBottom_toBottomOf, 3);
        f1615e.append(R.styleable.Constraint_layout_constraintBaseline_toBaselineOf, 1);
        f1615e.append(R.styleable.Constraint_layout_constraintBaseline_toTopOf, 91);
        f1615e.append(R.styleable.Constraint_layout_constraintBaseline_toBottomOf, 92);
        f1615e.append(R.styleable.Constraint_layout_editor_absoluteX, 6);
        f1615e.append(R.styleable.Constraint_layout_editor_absoluteY, 7);
        f1615e.append(R.styleable.Constraint_layout_constraintGuide_begin, 17);
        f1615e.append(R.styleable.Constraint_layout_constraintGuide_end, 18);
        f1615e.append(R.styleable.Constraint_layout_constraintGuide_percent, 19);
        f1615e.append(R.styleable.Constraint_guidelineUseRtl, 99);
        f1615e.append(R.styleable.Constraint_android_orientation, 27);
        f1615e.append(R.styleable.Constraint_layout_constraintStart_toEndOf, 32);
        f1615e.append(R.styleable.Constraint_layout_constraintStart_toStartOf, 33);
        f1615e.append(R.styleable.Constraint_layout_constraintEnd_toStartOf, 10);
        f1615e.append(R.styleable.Constraint_layout_constraintEnd_toEndOf, 9);
        f1615e.append(R.styleable.Constraint_layout_goneMarginLeft, 13);
        f1615e.append(R.styleable.Constraint_layout_goneMarginTop, 16);
        f1615e.append(R.styleable.Constraint_layout_goneMarginRight, 14);
        f1615e.append(R.styleable.Constraint_layout_goneMarginBottom, 11);
        f1615e.append(R.styleable.Constraint_layout_goneMarginStart, 15);
        f1615e.append(R.styleable.Constraint_layout_goneMarginEnd, 12);
        f1615e.append(R.styleable.Constraint_layout_constraintVertical_weight, 40);
        f1615e.append(R.styleable.Constraint_layout_constraintHorizontal_weight, 39);
        f1615e.append(R.styleable.Constraint_layout_constraintHorizontal_chainStyle, 41);
        f1615e.append(R.styleable.Constraint_layout_constraintVertical_chainStyle, 42);
        f1615e.append(R.styleable.Constraint_layout_constraintHorizontal_bias, 20);
        f1615e.append(R.styleable.Constraint_layout_constraintVertical_bias, 37);
        f1615e.append(R.styleable.Constraint_layout_constraintDimensionRatio, 5);
        f1615e.append(R.styleable.Constraint_layout_constraintLeft_creator, 87);
        f1615e.append(R.styleable.Constraint_layout_constraintTop_creator, 87);
        f1615e.append(R.styleable.Constraint_layout_constraintRight_creator, 87);
        f1615e.append(R.styleable.Constraint_layout_constraintBottom_creator, 87);
        f1615e.append(R.styleable.Constraint_layout_constraintBaseline_creator, 87);
        f1615e.append(R.styleable.Constraint_android_layout_marginLeft, 24);
        f1615e.append(R.styleable.Constraint_android_layout_marginRight, 28);
        f1615e.append(R.styleable.Constraint_android_layout_marginStart, 31);
        f1615e.append(R.styleable.Constraint_android_layout_marginEnd, 8);
        f1615e.append(R.styleable.Constraint_android_layout_marginTop, 34);
        f1615e.append(R.styleable.Constraint_android_layout_marginBottom, 2);
        f1615e.append(R.styleable.Constraint_android_layout_width, 23);
        f1615e.append(R.styleable.Constraint_android_layout_height, 21);
        f1615e.append(R.styleable.Constraint_layout_constraintWidth, 95);
        f1615e.append(R.styleable.Constraint_layout_constraintHeight, 96);
        f1615e.append(R.styleable.Constraint_android_visibility, 22);
        f1615e.append(R.styleable.Constraint_android_alpha, 43);
        f1615e.append(R.styleable.Constraint_android_elevation, 44);
        f1615e.append(R.styleable.Constraint_android_rotationX, 45);
        f1615e.append(R.styleable.Constraint_android_rotationY, 46);
        f1615e.append(R.styleable.Constraint_android_rotation, 60);
        f1615e.append(R.styleable.Constraint_android_scaleX, 47);
        f1615e.append(R.styleable.Constraint_android_scaleY, 48);
        f1615e.append(R.styleable.Constraint_android_transformPivotX, 49);
        f1615e.append(R.styleable.Constraint_android_transformPivotY, 50);
        f1615e.append(R.styleable.Constraint_android_translationX, 51);
        f1615e.append(R.styleable.Constraint_android_translationY, 52);
        f1615e.append(R.styleable.Constraint_android_translationZ, 53);
        f1615e.append(R.styleable.Constraint_layout_constraintWidth_default, 54);
        f1615e.append(R.styleable.Constraint_layout_constraintHeight_default, 55);
        f1615e.append(R.styleable.Constraint_layout_constraintWidth_max, 56);
        f1615e.append(R.styleable.Constraint_layout_constraintHeight_max, 57);
        f1615e.append(R.styleable.Constraint_layout_constraintWidth_min, 58);
        f1615e.append(R.styleable.Constraint_layout_constraintHeight_min, 59);
        f1615e.append(R.styleable.Constraint_layout_constraintCircle, 61);
        f1615e.append(R.styleable.Constraint_layout_constraintCircleRadius, 62);
        f1615e.append(R.styleable.Constraint_layout_constraintCircleAngle, 63);
        f1615e.append(R.styleable.Constraint_animateRelativeTo, 64);
        f1615e.append(R.styleable.Constraint_transitionEasing, 65);
        f1615e.append(R.styleable.Constraint_drawPath, 66);
        f1615e.append(R.styleable.Constraint_transitionPathRotate, 67);
        f1615e.append(R.styleable.Constraint_motionStagger, 79);
        f1615e.append(R.styleable.Constraint_android_id, 38);
        f1615e.append(R.styleable.Constraint_motionProgress, 68);
        f1615e.append(R.styleable.Constraint_layout_constraintWidth_percent, 69);
        f1615e.append(R.styleable.Constraint_layout_constraintHeight_percent, 70);
        f1615e.append(R.styleable.Constraint_layout_wrapBehaviorInParent, 97);
        f1615e.append(R.styleable.Constraint_chainUseRtl, 71);
        f1615e.append(R.styleable.Constraint_barrierDirection, 72);
        f1615e.append(R.styleable.Constraint_barrierMargin, 73);
        f1615e.append(R.styleable.Constraint_constraint_referenced_ids, 74);
        f1615e.append(R.styleable.Constraint_barrierAllowsGoneWidgets, 75);
        f1615e.append(R.styleable.Constraint_pathMotionArc, 76);
        f1615e.append(R.styleable.Constraint_layout_constraintTag, 77);
        f1615e.append(R.styleable.Constraint_visibilityMode, 78);
        f1615e.append(R.styleable.Constraint_layout_constrainedWidth, 80);
        f1615e.append(R.styleable.Constraint_layout_constrainedHeight, 81);
        f1615e.append(R.styleable.Constraint_polarRelativeTo, 82);
        f1615e.append(R.styleable.Constraint_transformPivotTarget, 83);
        f1615e.append(R.styleable.Constraint_quantizeMotionSteps, 84);
        f1615e.append(R.styleable.Constraint_quantizeMotionPhase, 85);
        f1615e.append(R.styleable.Constraint_quantizeMotionInterpolator, 86);
        SparseIntArray sparseIntArray = f1616f;
        int i10 = R.styleable.ConstraintOverride_layout_editor_absoluteY;
        sparseIntArray.append(i10, 6);
        f1616f.append(i10, 7);
        f1616f.append(R.styleable.ConstraintOverride_android_orientation, 27);
        f1616f.append(R.styleable.ConstraintOverride_layout_goneMarginLeft, 13);
        f1616f.append(R.styleable.ConstraintOverride_layout_goneMarginTop, 16);
        f1616f.append(R.styleable.ConstraintOverride_layout_goneMarginRight, 14);
        f1616f.append(R.styleable.ConstraintOverride_layout_goneMarginBottom, 11);
        f1616f.append(R.styleable.ConstraintOverride_layout_goneMarginStart, 15);
        f1616f.append(R.styleable.ConstraintOverride_layout_goneMarginEnd, 12);
        f1616f.append(R.styleable.ConstraintOverride_layout_constraintVertical_weight, 40);
        f1616f.append(R.styleable.ConstraintOverride_layout_constraintHorizontal_weight, 39);
        f1616f.append(R.styleable.ConstraintOverride_layout_constraintHorizontal_chainStyle, 41);
        f1616f.append(R.styleable.ConstraintOverride_layout_constraintVertical_chainStyle, 42);
        f1616f.append(R.styleable.ConstraintOverride_layout_constraintHorizontal_bias, 20);
        f1616f.append(R.styleable.ConstraintOverride_layout_constraintVertical_bias, 37);
        f1616f.append(R.styleable.ConstraintOverride_layout_constraintDimensionRatio, 5);
        f1616f.append(R.styleable.ConstraintOverride_layout_constraintLeft_creator, 87);
        f1616f.append(R.styleable.ConstraintOverride_layout_constraintTop_creator, 87);
        f1616f.append(R.styleable.ConstraintOverride_layout_constraintRight_creator, 87);
        f1616f.append(R.styleable.ConstraintOverride_layout_constraintBottom_creator, 87);
        f1616f.append(R.styleable.ConstraintOverride_layout_constraintBaseline_creator, 87);
        f1616f.append(R.styleable.ConstraintOverride_android_layout_marginLeft, 24);
        f1616f.append(R.styleable.ConstraintOverride_android_layout_marginRight, 28);
        f1616f.append(R.styleable.ConstraintOverride_android_layout_marginStart, 31);
        f1616f.append(R.styleable.ConstraintOverride_android_layout_marginEnd, 8);
        f1616f.append(R.styleable.ConstraintOverride_android_layout_marginTop, 34);
        f1616f.append(R.styleable.ConstraintOverride_android_layout_marginBottom, 2);
        f1616f.append(R.styleable.ConstraintOverride_android_layout_width, 23);
        f1616f.append(R.styleable.ConstraintOverride_android_layout_height, 21);
        f1616f.append(R.styleable.ConstraintOverride_layout_constraintWidth, 95);
        f1616f.append(R.styleable.ConstraintOverride_layout_constraintHeight, 96);
        f1616f.append(R.styleable.ConstraintOverride_android_visibility, 22);
        f1616f.append(R.styleable.ConstraintOverride_android_alpha, 43);
        f1616f.append(R.styleable.ConstraintOverride_android_elevation, 44);
        f1616f.append(R.styleable.ConstraintOverride_android_rotationX, 45);
        f1616f.append(R.styleable.ConstraintOverride_android_rotationY, 46);
        f1616f.append(R.styleable.ConstraintOverride_android_rotation, 60);
        f1616f.append(R.styleable.ConstraintOverride_android_scaleX, 47);
        f1616f.append(R.styleable.ConstraintOverride_android_scaleY, 48);
        f1616f.append(R.styleable.ConstraintOverride_android_transformPivotX, 49);
        f1616f.append(R.styleable.ConstraintOverride_android_transformPivotY, 50);
        f1616f.append(R.styleable.ConstraintOverride_android_translationX, 51);
        f1616f.append(R.styleable.ConstraintOverride_android_translationY, 52);
        f1616f.append(R.styleable.ConstraintOverride_android_translationZ, 53);
        f1616f.append(R.styleable.ConstraintOverride_layout_constraintWidth_default, 54);
        f1616f.append(R.styleable.ConstraintOverride_layout_constraintHeight_default, 55);
        f1616f.append(R.styleable.ConstraintOverride_layout_constraintWidth_max, 56);
        f1616f.append(R.styleable.ConstraintOverride_layout_constraintHeight_max, 57);
        f1616f.append(R.styleable.ConstraintOverride_layout_constraintWidth_min, 58);
        f1616f.append(R.styleable.ConstraintOverride_layout_constraintHeight_min, 59);
        f1616f.append(R.styleable.ConstraintOverride_layout_constraintCircleRadius, 62);
        f1616f.append(R.styleable.ConstraintOverride_layout_constraintCircleAngle, 63);
        f1616f.append(R.styleable.ConstraintOverride_animateRelativeTo, 64);
        f1616f.append(R.styleable.ConstraintOverride_transitionEasing, 65);
        f1616f.append(R.styleable.ConstraintOverride_drawPath, 66);
        f1616f.append(R.styleable.ConstraintOverride_transitionPathRotate, 67);
        f1616f.append(R.styleable.ConstraintOverride_motionStagger, 79);
        f1616f.append(R.styleable.ConstraintOverride_android_id, 38);
        f1616f.append(R.styleable.ConstraintOverride_motionTarget, 98);
        f1616f.append(R.styleable.ConstraintOverride_motionProgress, 68);
        f1616f.append(R.styleable.ConstraintOverride_layout_constraintWidth_percent, 69);
        f1616f.append(R.styleable.ConstraintOverride_layout_constraintHeight_percent, 70);
        f1616f.append(R.styleable.ConstraintOverride_chainUseRtl, 71);
        f1616f.append(R.styleable.ConstraintOverride_barrierDirection, 72);
        f1616f.append(R.styleable.ConstraintOverride_barrierMargin, 73);
        f1616f.append(R.styleable.ConstraintOverride_constraint_referenced_ids, 74);
        f1616f.append(R.styleable.ConstraintOverride_barrierAllowsGoneWidgets, 75);
        f1616f.append(R.styleable.ConstraintOverride_pathMotionArc, 76);
        f1616f.append(R.styleable.ConstraintOverride_layout_constraintTag, 77);
        f1616f.append(R.styleable.ConstraintOverride_visibilityMode, 78);
        f1616f.append(R.styleable.ConstraintOverride_layout_constrainedWidth, 80);
        f1616f.append(R.styleable.ConstraintOverride_layout_constrainedHeight, 81);
        f1616f.append(R.styleable.ConstraintOverride_polarRelativeTo, 82);
        f1616f.append(R.styleable.ConstraintOverride_transformPivotTarget, 83);
        f1616f.append(R.styleable.ConstraintOverride_quantizeMotionSteps, 84);
        f1616f.append(R.styleable.ConstraintOverride_quantizeMotionPhase, 85);
        f1616f.append(R.styleable.ConstraintOverride_quantizeMotionInterpolator, 86);
        f1616f.append(R.styleable.ConstraintOverride_layout_wrapBehaviorInParent, 97);
    }

    public static int g(TypedArray typedArray, int i10, int i11) {
        int resourceId = typedArray.getResourceId(i10, i11);
        return resourceId == -1 ? typedArray.getInt(i10, -1) : resourceId;
    }

    /* JADX WARN: Code duplicated, block: B:112:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:20:0x0033  */
    /* JADX WARN: Code duplicated, block: B:22:0x0037  */
    /* JADX WARN: Code duplicated, block: B:23:0x003c  */
    /* JADX WARN: Code duplicated, block: B:24:0x0041  */
    /* JADX WARN: Code duplicated, block: B:26:0x0045  */
    /* JADX WARN: Code duplicated, block: B:28:0x0049  */
    /* JADX WARN: Code duplicated, block: B:29:0x004e  */
    /* JADX WARN: Code duplicated, block: B:30:0x0053  */
    /* JADX WARN: Code duplicated, block: B:32:0x0057  */
    /* JADX WARN: Code duplicated, block: B:34:0x005b  */
    /* JADX WARN: Code duplicated, block: B:35:0x0064  */
    public static void h(Object obj, TypedArray typedArray, int i10, int i11) {
        int dimensionPixelSize;
        a.C0020a c0020a;
        b bVar;
        ConstraintLayout.a aVar;
        if (obj == null) {
            return;
        }
        int i12 = typedArray.peekValue(i10).type;
        boolean z10 = true;
        int i13 = 0;
        if (i12 != 3) {
            if (i12 != 5) {
                dimensionPixelSize = typedArray.getInt(i10, 0);
                if (dimensionPixelSize == -4) {
                    i13 = -2;
                } else if (dimensionPixelSize == -3 || (dimensionPixelSize != -2 && dimensionPixelSize != -1)) {
                    z10 = false;
                }
                if (obj instanceof ConstraintLayout.a) {
                    aVar = (ConstraintLayout.a) obj;
                    if (i11 == 0) {
                        ((ViewGroup.MarginLayoutParams) aVar).width = i13;
                        aVar.W = z10;
                        return;
                    } else {
                        ((ViewGroup.MarginLayoutParams) aVar).height = i13;
                        aVar.X = z10;
                        return;
                    }
                }
                if (obj instanceof b) {
                    bVar = (b) obj;
                    if (i11 == 0) {
                        bVar.f1641b = i13;
                        bVar.f1661l0 = z10;
                        return;
                    } else {
                        bVar.f1643c = i13;
                        bVar.f1663m0 = z10;
                        return;
                    }
                }
                if (obj instanceof a.C0020a) {
                    c0020a = (a.C0020a) obj;
                    if (i11 == 0) {
                        c0020a.b(23, i13);
                        c0020a.d(80, z10);
                        return;
                    } else {
                        c0020a.b(21, i13);
                        c0020a.d(81, z10);
                        return;
                    }
                }
                return;
            }
            dimensionPixelSize = typedArray.getDimensionPixelSize(i10, 0);
            z10 = false;
            i13 = dimensionPixelSize;
            if (obj instanceof ConstraintLayout.a) {
                aVar = (ConstraintLayout.a) obj;
                if (i11 == 0) {
                    ((ViewGroup.MarginLayoutParams) aVar).width = i13;
                    aVar.W = z10;
                    return;
                } else {
                    ((ViewGroup.MarginLayoutParams) aVar).height = i13;
                    aVar.X = z10;
                    return;
                }
            }
            if (obj instanceof b) {
                bVar = (b) obj;
                if (i11 == 0) {
                    bVar.f1641b = i13;
                    bVar.f1661l0 = z10;
                    return;
                } else {
                    bVar.f1643c = i13;
                    bVar.f1663m0 = z10;
                    return;
                }
            }
            if (obj instanceof a.C0020a) {
                c0020a = (a.C0020a) obj;
                if (i11 == 0) {
                    c0020a.b(23, i13);
                    c0020a.d(80, z10);
                    return;
                } else {
                    c0020a.b(21, i13);
                    c0020a.d(81, z10);
                    return;
                }
            }
            return;
        }
        String string = typedArray.getString(i10);
        if (string == null) {
            return;
        }
        int iIndexOf = string.indexOf(61);
        int length = string.length();
        if (iIndexOf <= 0 || iIndexOf >= length - 1) {
            return;
        }
        String strSubstring = string.substring(0, iIndexOf);
        String strSubstring2 = string.substring(iIndexOf + 1);
        if (strSubstring2.length() > 0) {
            String strTrim = strSubstring.trim();
            String strTrim2 = strSubstring2.trim();
            if ("ratio".equalsIgnoreCase(strTrim)) {
                if (obj instanceof ConstraintLayout.a) {
                    ConstraintLayout.a aVar2 = (ConstraintLayout.a) obj;
                    if (i11 == 0) {
                        ((ViewGroup.MarginLayoutParams) aVar2).width = 0;
                    } else {
                        ((ViewGroup.MarginLayoutParams) aVar2).height = 0;
                    }
                    i(aVar2, strTrim2);
                    return;
                }
                if (obj instanceof b) {
                    ((b) obj).f1677y = strTrim2;
                    return;
                } else {
                    if (obj instanceof a.C0020a) {
                        ((a.C0020a) obj).c(5, strTrim2);
                        return;
                    }
                    return;
                }
            }
            try {
                if ("weight".equalsIgnoreCase(strTrim)) {
                    float f10 = Float.parseFloat(strTrim2);
                    if (obj instanceof ConstraintLayout.a) {
                        ConstraintLayout.a aVar3 = (ConstraintLayout.a) obj;
                        if (i11 == 0) {
                            ((ViewGroup.MarginLayoutParams) aVar3).width = 0;
                            aVar3.H = f10;
                        } else {
                            ((ViewGroup.MarginLayoutParams) aVar3).height = 0;
                            aVar3.I = f10;
                        }
                    } else if (obj instanceof b) {
                        b bVar2 = (b) obj;
                        if (i11 == 0) {
                            bVar2.f1641b = 0;
                            bVar2.U = f10;
                        } else {
                            bVar2.f1643c = 0;
                            bVar2.T = f10;
                        }
                    } else if (obj instanceof a.C0020a) {
                        a.C0020a c0020a2 = (a.C0020a) obj;
                        if (i11 == 0) {
                            c0020a2.b(23, 0);
                            c0020a2.a(39, f10);
                        } else {
                            c0020a2.b(21, 0);
                            c0020a2.a(40, f10);
                        }
                    }
                } else {
                    if (!"parent".equalsIgnoreCase(strTrim)) {
                        return;
                    }
                    float fMax = Math.max(0.0f, Math.min(1.0f, Float.parseFloat(strTrim2)));
                    if (obj instanceof ConstraintLayout.a) {
                        ConstraintLayout.a aVar4 = (ConstraintLayout.a) obj;
                        if (i11 == 0) {
                            ((ViewGroup.MarginLayoutParams) aVar4).width = 0;
                            aVar4.R = fMax;
                            aVar4.L = 2;
                        } else {
                            ((ViewGroup.MarginLayoutParams) aVar4).height = 0;
                            aVar4.S = fMax;
                            aVar4.M = 2;
                        }
                    } else if (obj instanceof b) {
                        b bVar3 = (b) obj;
                        if (i11 == 0) {
                            bVar3.f1641b = 0;
                            bVar3.d0 = fMax;
                            bVar3.X = 2;
                        } else {
                            bVar3.f1643c = 0;
                            bVar3.f1647e0 = fMax;
                            bVar3.Y = 2;
                        }
                    } else if (obj instanceof a.C0020a) {
                        a.C0020a c0020a3 = (a.C0020a) obj;
                        if (i11 == 0) {
                            c0020a3.b(23, 0);
                            c0020a3.b(54, 2);
                        } else {
                            c0020a3.b(21, 0);
                            c0020a3.b(55, 2);
                        }
                    }
                }
            } catch (NumberFormatException unused) {
            }
        }
    }

    public static void i(ConstraintLayout.a aVar, String str) {
        if (str != null) {
            int length = str.length();
            int iIndexOf = str.indexOf(44);
            int i10 = 0;
            int i11 = -1;
            if (iIndexOf > 0 && iIndexOf < length - 1) {
                String strSubstring = str.substring(0, iIndexOf);
                if (!strSubstring.equalsIgnoreCase("W")) {
                    i10 = strSubstring.equalsIgnoreCase("H") ? 1 : -1;
                }
                i11 = i10;
                i10 = iIndexOf + 1;
            }
            int iIndexOf2 = str.indexOf(58);
            try {
                if (iIndexOf2 < 0 || iIndexOf2 >= length - 1) {
                    String strSubstring2 = str.substring(i10);
                    if (strSubstring2.length() > 0) {
                        Float.parseFloat(strSubstring2);
                    }
                } else {
                    String strSubstring3 = str.substring(i10, iIndexOf2);
                    String strSubstring4 = str.substring(iIndexOf2 + 1);
                    if (strSubstring3.length() > 0 && strSubstring4.length() > 0) {
                        float f10 = Float.parseFloat(strSubstring3);
                        float f11 = Float.parseFloat(strSubstring4);
                        if (f10 > 0.0f && f11 > 0.0f) {
                            if (i11 == 1) {
                                Math.abs(f11 / f10);
                            } else {
                                Math.abs(f10 / f11);
                            }
                        }
                    }
                }
            } catch (NumberFormatException unused) {
            }
        }
        aVar.G = str;
    }

    public final void a(ConstraintLayout constraintLayout) {
        b(constraintLayout);
        constraintLayout.setConstraintSet(null);
        constraintLayout.requestLayout();
    }

    public final void b(ConstraintLayout constraintLayout) {
        int childCount = constraintLayout.getChildCount();
        HashSet<Integer> hashSet = new HashSet(this.f1619c.keySet());
        for (int i10 = 0; i10 < childCount; i10++) {
            View childAt = constraintLayout.getChildAt(i10);
            int id2 = childAt.getId();
            if (!this.f1619c.containsKey(Integer.valueOf(id2))) {
                StringBuilder sbC = a0.b.c("id unknown ");
                sbC.append(u.a.b(childAt));
                Log.w("ConstraintSet", sbC.toString());
            } else {
                if (this.f1618b && id2 == -1) {
                    throw new RuntimeException("All children of ConstraintLayout must have ids to use ConstraintSet");
                }
                if (id2 != -1) {
                    if (this.f1619c.containsKey(Integer.valueOf(id2))) {
                        hashSet.remove(Integer.valueOf(id2));
                        a aVar = this.f1619c.get(Integer.valueOf(id2));
                        if (aVar != null) {
                            if (childAt instanceof Barrier) {
                                aVar.f1623d.f1653h0 = 1;
                                Barrier barrier = (Barrier) childAt;
                                barrier.setId(id2);
                                barrier.setType(aVar.f1623d.f1649f0);
                                barrier.setMargin(aVar.f1623d.f1651g0);
                                barrier.setAllowsGoneWidget(aVar.f1623d.f1665n0);
                                b bVar = aVar.f1623d;
                                int[] iArr = bVar.f1655i0;
                                if (iArr != null) {
                                    barrier.setReferencedIds(iArr);
                                } else {
                                    String str = bVar.f1657j0;
                                    if (str != null) {
                                        bVar.f1655i0 = d(barrier, str);
                                        barrier.setReferencedIds(aVar.f1623d.f1655i0);
                                    }
                                }
                            }
                            ConstraintLayout.a aVar2 = (ConstraintLayout.a) childAt.getLayoutParams();
                            aVar2.a();
                            aVar.a(aVar2);
                            androidx.constraintlayout.widget.a.b(childAt, aVar.f1625f);
                            childAt.setLayoutParams(aVar2);
                            C0021d c0021d = aVar.f1621b;
                            if (c0021d.f1691b == 0) {
                                childAt.setVisibility(c0021d.f1690a);
                            }
                            childAt.setAlpha(aVar.f1621b.f1692c);
                            childAt.setRotation(aVar.f1624e.f1695a);
                            childAt.setRotationX(aVar.f1624e.f1696b);
                            childAt.setRotationY(aVar.f1624e.f1697c);
                            childAt.setScaleX(aVar.f1624e.f1698d);
                            childAt.setScaleY(aVar.f1624e.f1699e);
                            e eVar = aVar.f1624e;
                            if (eVar.f1702h != -1) {
                                View viewFindViewById = ((View) childAt.getParent()).findViewById(aVar.f1624e.f1702h);
                                if (viewFindViewById != null) {
                                    float bottom = (viewFindViewById.getBottom() + viewFindViewById.getTop()) / 2.0f;
                                    float right = (viewFindViewById.getRight() + viewFindViewById.getLeft()) / 2.0f;
                                    if (childAt.getRight() - childAt.getLeft() > 0 && childAt.getBottom() - childAt.getTop() > 0) {
                                        float left = right - childAt.getLeft();
                                        float top = bottom - childAt.getTop();
                                        childAt.setPivotX(left);
                                        childAt.setPivotY(top);
                                    }
                                }
                            } else {
                                if (!Float.isNaN(eVar.f1700f)) {
                                    childAt.setPivotX(aVar.f1624e.f1700f);
                                }
                                if (!Float.isNaN(aVar.f1624e.f1701g)) {
                                    childAt.setPivotY(aVar.f1624e.f1701g);
                                }
                            }
                            childAt.setTranslationX(aVar.f1624e.f1703i);
                            childAt.setTranslationY(aVar.f1624e.f1704j);
                            childAt.setTranslationZ(aVar.f1624e.f1705k);
                            e eVar2 = aVar.f1624e;
                            if (eVar2.f1706l) {
                                childAt.setElevation(eVar2.f1707m);
                            }
                        }
                    } else {
                        Log.v("ConstraintSet", "WARNING NO CONSTRAINTS for view " + id2);
                    }
                }
            }
        }
        for (Integer num : hashSet) {
            a aVar3 = this.f1619c.get(num);
            if (aVar3 != null) {
                if (aVar3.f1623d.f1653h0 == 1) {
                    Barrier barrier2 = new Barrier(constraintLayout.getContext());
                    barrier2.setId(num.intValue());
                    b bVar2 = aVar3.f1623d;
                    int[] iArr2 = bVar2.f1655i0;
                    if (iArr2 != null) {
                        barrier2.setReferencedIds(iArr2);
                    } else {
                        String str2 = bVar2.f1657j0;
                        if (str2 != null) {
                            bVar2.f1655i0 = d(barrier2, str2);
                            barrier2.setReferencedIds(aVar3.f1623d.f1655i0);
                        }
                    }
                    barrier2.setType(aVar3.f1623d.f1649f0);
                    barrier2.setMargin(aVar3.f1623d.f1651g0);
                    ConstraintLayout.a aVar4 = new ConstraintLayout.a();
                    barrier2.k();
                    aVar3.a(aVar4);
                    constraintLayout.addView(barrier2, aVar4);
                }
                if (aVar3.f1623d.f1639a) {
                    View guideline = new Guideline(constraintLayout.getContext());
                    guideline.setId(num.intValue());
                    ConstraintLayout.a aVar5 = new ConstraintLayout.a();
                    aVar3.a(aVar5);
                    constraintLayout.addView(guideline, aVar5);
                }
            }
        }
        for (int i11 = 0; i11 < childCount; i11++) {
            View childAt2 = constraintLayout.getChildAt(i11);
            if (childAt2 instanceof androidx.constraintlayout.widget.b) {
                ((androidx.constraintlayout.widget.b) childAt2).g(constraintLayout);
            }
        }
    }

    public final void c(ConstraintLayout constraintLayout) {
        d dVar = this;
        int childCount = constraintLayout.getChildCount();
        dVar.f1619c.clear();
        int i10 = 0;
        while (i10 < childCount) {
            View childAt = constraintLayout.getChildAt(i10);
            ConstraintLayout.a aVar = (ConstraintLayout.a) childAt.getLayoutParams();
            int id2 = childAt.getId();
            if (dVar.f1618b && id2 == -1) {
                throw new RuntimeException("All children of ConstraintLayout must have ids to use ConstraintSet");
            }
            if (!dVar.f1619c.containsKey(Integer.valueOf(id2))) {
                dVar.f1619c.put(Integer.valueOf(id2), new a());
            }
            a aVar2 = dVar.f1619c.get(Integer.valueOf(id2));
            if (aVar2 != null) {
                HashMap<String, androidx.constraintlayout.widget.a> map = dVar.f1617a;
                HashMap<String, androidx.constraintlayout.widget.a> map2 = new HashMap<>();
                Class<?> cls = childAt.getClass();
                for (String str : map.keySet()) {
                    androidx.constraintlayout.widget.a aVar3 = map.get(str);
                    try {
                        if (str.equals("BackgroundColor")) {
                            map2.put(str, new androidx.constraintlayout.widget.a(aVar3, Integer.valueOf(((ColorDrawable) childAt.getBackground()).getColor())));
                        } else {
                            try {
                                map2.put(str, new androidx.constraintlayout.widget.a(aVar3, cls.getMethod("getMap" + str, new Class[0]).invoke(childAt, new Object[0])));
                            } catch (IllegalAccessException e10) {
                                e = e10;
                                e.printStackTrace();
                            } catch (NoSuchMethodException e11) {
                                e = e11;
                                e.printStackTrace();
                            } catch (InvocationTargetException e12) {
                                e = e12;
                                e.printStackTrace();
                            }
                        }
                    } catch (IllegalAccessException e13) {
                        e = e13;
                    } catch (NoSuchMethodException e14) {
                        e = e14;
                    } catch (InvocationTargetException e15) {
                        e = e15;
                    }
                }
                aVar2.f1625f = map2;
                aVar2.b(id2, aVar);
                aVar2.f1621b.f1690a = childAt.getVisibility();
                aVar2.f1621b.f1692c = childAt.getAlpha();
                aVar2.f1624e.f1695a = childAt.getRotation();
                aVar2.f1624e.f1696b = childAt.getRotationX();
                aVar2.f1624e.f1697c = childAt.getRotationY();
                aVar2.f1624e.f1698d = childAt.getScaleX();
                aVar2.f1624e.f1699e = childAt.getScaleY();
                float pivotX = childAt.getPivotX();
                float pivotY = childAt.getPivotY();
                if (pivotX != 0.0d || pivotY != 0.0d) {
                    e eVar = aVar2.f1624e;
                    eVar.f1700f = pivotX;
                    eVar.f1701g = pivotY;
                }
                aVar2.f1624e.f1703i = childAt.getTranslationX();
                aVar2.f1624e.f1704j = childAt.getTranslationY();
                aVar2.f1624e.f1705k = childAt.getTranslationZ();
                e eVar2 = aVar2.f1624e;
                if (eVar2.f1706l) {
                    eVar2.f1707m = childAt.getElevation();
                }
                if (childAt instanceof Barrier) {
                    Barrier barrier = (Barrier) childAt;
                    aVar2.f1623d.f1665n0 = barrier.getAllowsGoneWidget();
                    aVar2.f1623d.f1655i0 = barrier.getReferencedIds();
                    aVar2.f1623d.f1649f0 = barrier.getType();
                    aVar2.f1623d.f1651g0 = barrier.getMargin();
                }
            }
            i10++;
            dVar = this;
        }
    }

    public final int[] d(View view, String str) {
        int iIntValue;
        Object objC;
        String[] strArrSplit = str.split(",");
        Context context = view.getContext();
        int[] iArr = new int[strArrSplit.length];
        int i10 = 0;
        int i11 = 0;
        while (i10 < strArrSplit.length) {
            String strTrim = strArrSplit[i10].trim();
            try {
                iIntValue = R.id.class.getField(strTrim).getInt(null);
            } catch (Exception unused) {
                iIntValue = 0;
            }
            if (iIntValue == 0) {
                iIntValue = context.getResources().getIdentifier(strTrim, "id", context.getPackageName());
            }
            if (iIntValue == 0 && view.isInEditMode() && (view.getParent() instanceof ConstraintLayout) && (objC = ((ConstraintLayout) view.getParent()).c(strTrim)) != null && (objC instanceof Integer)) {
                iIntValue = ((Integer) objC).intValue();
            }
            iArr[i11] = iIntValue;
            i10++;
            i11++;
        }
        return i11 != strArrSplit.length ? Arrays.copyOf(iArr, i11) : iArr;
    }

    public final a e(Context context, AttributeSet attributeSet, boolean z10) {
        a aVar = new a();
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, z10 ? R.styleable.ConstraintOverride : R.styleable.Constraint);
        int i10 = 3;
        int i11 = 1;
        if (z10) {
            int indexCount = typedArrayObtainStyledAttributes.getIndexCount();
            a.C0020a c0020a = new a.C0020a();
            Objects.requireNonNull(aVar.f1622c);
            Objects.requireNonNull(aVar.f1623d);
            Objects.requireNonNull(aVar.f1621b);
            Objects.requireNonNull(aVar.f1624e);
            int i12 = 0;
            while (i12 < indexCount) {
                int index = typedArrayObtainStyledAttributes.getIndex(i12);
                switch (f1616f.get(index)) {
                    case 2:
                        c0020a.b(2, typedArrayObtainStyledAttributes.getDimensionPixelSize(index, aVar.f1623d.I));
                        break;
                    case 3:
                    case 4:
                    case 9:
                    case 10:
                    case 25:
                    case 26:
                    case 29:
                    case 30:
                    case 32:
                    case 33:
                    case 35:
                    case 36:
                    case 61:
                    case 88:
                    case 89:
                    case 90:
                    case 91:
                    case 92:
                    default:
                        StringBuilder sbC = a0.b.c("Unknown attribute 0x");
                        sbC.append(Integer.toHexString(index));
                        sbC.append("   ");
                        sbC.append(f1615e.get(index));
                        Log.w("ConstraintSet", sbC.toString());
                        break;
                    case 5:
                        c0020a.c(5, typedArrayObtainStyledAttributes.getString(index));
                        break;
                    case 6:
                        c0020a.b(6, typedArrayObtainStyledAttributes.getDimensionPixelOffset(index, aVar.f1623d.C));
                        break;
                    case 7:
                        c0020a.b(7, typedArrayObtainStyledAttributes.getDimensionPixelOffset(index, aVar.f1623d.D));
                        break;
                    case 8:
                        c0020a.b(8, typedArrayObtainStyledAttributes.getDimensionPixelSize(index, aVar.f1623d.J));
                        break;
                    case 11:
                        c0020a.b(11, typedArrayObtainStyledAttributes.getDimensionPixelSize(index, aVar.f1623d.P));
                        break;
                    case 12:
                        c0020a.b(12, typedArrayObtainStyledAttributes.getDimensionPixelSize(index, aVar.f1623d.Q));
                        break;
                    case 13:
                        c0020a.b(13, typedArrayObtainStyledAttributes.getDimensionPixelSize(index, aVar.f1623d.M));
                        break;
                    case 14:
                        c0020a.b(14, typedArrayObtainStyledAttributes.getDimensionPixelSize(index, aVar.f1623d.O));
                        break;
                    case 15:
                        c0020a.b(15, typedArrayObtainStyledAttributes.getDimensionPixelSize(index, aVar.f1623d.R));
                        break;
                    case 16:
                        c0020a.b(16, typedArrayObtainStyledAttributes.getDimensionPixelSize(index, aVar.f1623d.N));
                        break;
                    case 17:
                        c0020a.b(17, typedArrayObtainStyledAttributes.getDimensionPixelOffset(index, aVar.f1623d.f1645d));
                        break;
                    case 18:
                        c0020a.b(18, typedArrayObtainStyledAttributes.getDimensionPixelOffset(index, aVar.f1623d.f1646e));
                        break;
                    case 19:
                        c0020a.a(19, typedArrayObtainStyledAttributes.getFloat(index, aVar.f1623d.f1648f));
                        break;
                    case 20:
                        c0020a.a(20, typedArrayObtainStyledAttributes.getFloat(index, aVar.f1623d.f1675w));
                        break;
                    case 21:
                        c0020a.b(21, typedArrayObtainStyledAttributes.getLayoutDimension(index, aVar.f1623d.f1643c));
                        break;
                    case 22:
                        c0020a.b(22, f1614d[typedArrayObtainStyledAttributes.getInt(index, aVar.f1621b.f1690a)]);
                        break;
                    case 23:
                        c0020a.b(23, typedArrayObtainStyledAttributes.getLayoutDimension(index, aVar.f1623d.f1641b));
                        break;
                    case 24:
                        c0020a.b(24, typedArrayObtainStyledAttributes.getDimensionPixelSize(index, aVar.f1623d.F));
                        break;
                    case 27:
                        c0020a.b(27, typedArrayObtainStyledAttributes.getInt(index, aVar.f1623d.E));
                        break;
                    case 28:
                        c0020a.b(28, typedArrayObtainStyledAttributes.getDimensionPixelSize(index, aVar.f1623d.G));
                        break;
                    case 31:
                        c0020a.b(31, typedArrayObtainStyledAttributes.getDimensionPixelSize(index, aVar.f1623d.K));
                        break;
                    case 34:
                        c0020a.b(34, typedArrayObtainStyledAttributes.getDimensionPixelSize(index, aVar.f1623d.H));
                        break;
                    case 37:
                        c0020a.a(37, typedArrayObtainStyledAttributes.getFloat(index, aVar.f1623d.f1676x));
                        break;
                    case 38:
                        int resourceId = typedArrayObtainStyledAttributes.getResourceId(index, aVar.f1620a);
                        aVar.f1620a = resourceId;
                        c0020a.b(38, resourceId);
                        break;
                    case 39:
                        c0020a.a(39, typedArrayObtainStyledAttributes.getFloat(index, aVar.f1623d.U));
                        break;
                    case 40:
                        c0020a.a(40, typedArrayObtainStyledAttributes.getFloat(index, aVar.f1623d.T));
                        break;
                    case 41:
                        c0020a.b(41, typedArrayObtainStyledAttributes.getInt(index, aVar.f1623d.V));
                        break;
                    case 42:
                        c0020a.b(42, typedArrayObtainStyledAttributes.getInt(index, aVar.f1623d.W));
                        break;
                    case 43:
                        c0020a.a(43, typedArrayObtainStyledAttributes.getFloat(index, aVar.f1621b.f1692c));
                        break;
                    case 44:
                        c0020a.d(44, true);
                        c0020a.a(44, typedArrayObtainStyledAttributes.getDimension(index, aVar.f1624e.f1707m));
                        break;
                    case 45:
                        c0020a.a(45, typedArrayObtainStyledAttributes.getFloat(index, aVar.f1624e.f1696b));
                        break;
                    case 46:
                        c0020a.a(46, typedArrayObtainStyledAttributes.getFloat(index, aVar.f1624e.f1697c));
                        break;
                    case 47:
                        c0020a.a(47, typedArrayObtainStyledAttributes.getFloat(index, aVar.f1624e.f1698d));
                        break;
                    case 48:
                        c0020a.a(48, typedArrayObtainStyledAttributes.getFloat(index, aVar.f1624e.f1699e));
                        break;
                    case 49:
                        c0020a.a(49, typedArrayObtainStyledAttributes.getDimension(index, aVar.f1624e.f1700f));
                        break;
                    case 50:
                        c0020a.a(50, typedArrayObtainStyledAttributes.getDimension(index, aVar.f1624e.f1701g));
                        break;
                    case 51:
                        c0020a.a(51, typedArrayObtainStyledAttributes.getDimension(index, aVar.f1624e.f1703i));
                        break;
                    case 52:
                        c0020a.a(52, typedArrayObtainStyledAttributes.getDimension(index, aVar.f1624e.f1704j));
                        break;
                    case 53:
                        c0020a.a(53, typedArrayObtainStyledAttributes.getDimension(index, aVar.f1624e.f1705k));
                        break;
                    case 54:
                        c0020a.b(54, typedArrayObtainStyledAttributes.getInt(index, aVar.f1623d.X));
                        break;
                    case 55:
                        c0020a.b(55, typedArrayObtainStyledAttributes.getInt(index, aVar.f1623d.Y));
                        break;
                    case 56:
                        c0020a.b(56, typedArrayObtainStyledAttributes.getDimensionPixelSize(index, aVar.f1623d.Z));
                        break;
                    case 57:
                        c0020a.b(57, typedArrayObtainStyledAttributes.getDimensionPixelSize(index, aVar.f1623d.f1640a0));
                        break;
                    case 58:
                        c0020a.b(58, typedArrayObtainStyledAttributes.getDimensionPixelSize(index, aVar.f1623d.f1642b0));
                        break;
                    case 59:
                        c0020a.b(59, typedArrayObtainStyledAttributes.getDimensionPixelSize(index, aVar.f1623d.f1644c0));
                        break;
                    case 60:
                        c0020a.a(60, typedArrayObtainStyledAttributes.getFloat(index, aVar.f1624e.f1695a));
                        break;
                    case 62:
                        c0020a.b(62, typedArrayObtainStyledAttributes.getDimensionPixelSize(index, aVar.f1623d.A));
                        break;
                    case 63:
                        c0020a.a(63, typedArrayObtainStyledAttributes.getFloat(index, aVar.f1623d.B));
                        break;
                    case 64:
                        c0020a.b(64, g(typedArrayObtainStyledAttributes, index, aVar.f1622c.f1680a));
                        break;
                    case 65:
                        if (typedArrayObtainStyledAttributes.peekValue(index).type == 3) {
                            c0020a.c(65, typedArrayObtainStyledAttributes.getString(index));
                        } else {
                            c0020a.c(65, r.a.f14174c[typedArrayObtainStyledAttributes.getInteger(index, 0)]);
                        }
                        break;
                    case 66:
                        c0020a.b(66, typedArrayObtainStyledAttributes.getInt(index, 0));
                        break;
                    case 67:
                        c0020a.a(67, typedArrayObtainStyledAttributes.getFloat(index, aVar.f1622c.f1684e));
                        break;
                    case 68:
                        c0020a.a(68, typedArrayObtainStyledAttributes.getFloat(index, aVar.f1621b.f1693d));
                        break;
                    case 69:
                        c0020a.a(69, typedArrayObtainStyledAttributes.getFloat(index, 1.0f));
                        break;
                    case 70:
                        c0020a.a(70, typedArrayObtainStyledAttributes.getFloat(index, 1.0f));
                        break;
                    case 71:
                        Log.e("ConstraintSet", "CURRENTLY UNSUPPORTED");
                        break;
                    case 72:
                        c0020a.b(72, typedArrayObtainStyledAttributes.getInt(index, aVar.f1623d.f1649f0));
                        break;
                    case 73:
                        c0020a.b(73, typedArrayObtainStyledAttributes.getDimensionPixelSize(index, aVar.f1623d.f1651g0));
                        break;
                    case 74:
                        c0020a.c(74, typedArrayObtainStyledAttributes.getString(index));
                        break;
                    case 75:
                        c0020a.d(75, typedArrayObtainStyledAttributes.getBoolean(index, aVar.f1623d.f1665n0));
                        break;
                    case 76:
                        c0020a.b(76, typedArrayObtainStyledAttributes.getInt(index, aVar.f1622c.f1682c));
                        break;
                    case 77:
                        c0020a.c(77, typedArrayObtainStyledAttributes.getString(index));
                        break;
                    case 78:
                        c0020a.b(78, typedArrayObtainStyledAttributes.getInt(index, aVar.f1621b.f1691b));
                        break;
                    case 79:
                        c0020a.a(79, typedArrayObtainStyledAttributes.getFloat(index, aVar.f1622c.f1683d));
                        break;
                    case 80:
                        c0020a.d(80, typedArrayObtainStyledAttributes.getBoolean(index, aVar.f1623d.f1661l0));
                        break;
                    case 81:
                        c0020a.d(81, typedArrayObtainStyledAttributes.getBoolean(index, aVar.f1623d.f1663m0));
                        break;
                    case 82:
                        c0020a.b(82, typedArrayObtainStyledAttributes.getInteger(index, aVar.f1622c.f1681b));
                        break;
                    case 83:
                        c0020a.b(83, g(typedArrayObtainStyledAttributes, index, aVar.f1624e.f1702h));
                        break;
                    case 84:
                        c0020a.b(84, typedArrayObtainStyledAttributes.getInteger(index, aVar.f1622c.f1686g));
                        break;
                    case 85:
                        c0020a.a(85, typedArrayObtainStyledAttributes.getFloat(index, aVar.f1622c.f1685f));
                        break;
                    case 86:
                        int i13 = typedArrayObtainStyledAttributes.peekValue(index).type;
                        if (i13 == i11) {
                            aVar.f1622c.f1689j = typedArrayObtainStyledAttributes.getResourceId(index, -1);
                            c0020a.b(89, aVar.f1622c.f1689j);
                            c cVar = aVar.f1622c;
                            if (cVar.f1689j != -1) {
                                cVar.f1688i = -2;
                                c0020a.b(88, -2);
                            }
                        } else if (i13 == 3) {
                            aVar.f1622c.f1687h = typedArrayObtainStyledAttributes.getString(index);
                            c0020a.c(90, aVar.f1622c.f1687h);
                            if (aVar.f1622c.f1687h.indexOf("/") > 0) {
                                aVar.f1622c.f1689j = typedArrayObtainStyledAttributes.getResourceId(index, -1);
                                c0020a.b(89, aVar.f1622c.f1689j);
                                aVar.f1622c.f1688i = -2;
                                c0020a.b(88, -2);
                            } else {
                                aVar.f1622c.f1688i = -1;
                                c0020a.b(88, -1);
                            }
                        } else {
                            c cVar2 = aVar.f1622c;
                            cVar2.f1688i = typedArrayObtainStyledAttributes.getInteger(index, cVar2.f1689j);
                            c0020a.b(88, aVar.f1622c.f1688i);
                        }
                        break;
                    case 87:
                        StringBuilder sbC2 = a0.b.c("unused attribute 0x");
                        sbC2.append(Integer.toHexString(index));
                        sbC2.append("   ");
                        sbC2.append(f1615e.get(index));
                        Log.w("ConstraintSet", sbC2.toString());
                        break;
                    case 93:
                        c0020a.b(93, typedArrayObtainStyledAttributes.getDimensionPixelSize(index, aVar.f1623d.L));
                        break;
                    case 94:
                        c0020a.b(94, typedArrayObtainStyledAttributes.getDimensionPixelSize(index, aVar.f1623d.S));
                        break;
                    case 95:
                        h(c0020a, typedArrayObtainStyledAttributes, index, 0);
                        break;
                    case 96:
                        h(c0020a, typedArrayObtainStyledAttributes, index, i11);
                        break;
                    case 97:
                        c0020a.b(97, typedArrayObtainStyledAttributes.getInt(index, aVar.f1623d.f1667o0));
                        break;
                    case 98:
                        int i14 = u.d.T;
                        if (typedArrayObtainStyledAttributes.peekValue(index).type == i10) {
                            typedArrayObtainStyledAttributes.getString(index);
                        } else {
                            aVar.f1620a = typedArrayObtainStyledAttributes.getResourceId(index, aVar.f1620a);
                        }
                        break;
                    case 99:
                        c0020a.d(99, typedArrayObtainStyledAttributes.getBoolean(index, aVar.f1623d.f1650g));
                        break;
                }
                i12++;
                i10 = 3;
                i11 = 1;
            }
        } else {
            int indexCount2 = typedArrayObtainStyledAttributes.getIndexCount();
            for (int i15 = 0; i15 < indexCount2; i15++) {
                int index2 = typedArrayObtainStyledAttributes.getIndex(i15);
                if (index2 != R.styleable.Constraint_android_id && R.styleable.Constraint_android_layout_marginStart != index2 && R.styleable.Constraint_android_layout_marginEnd != index2) {
                    Objects.requireNonNull(aVar.f1622c);
                    Objects.requireNonNull(aVar.f1623d);
                    Objects.requireNonNull(aVar.f1621b);
                    Objects.requireNonNull(aVar.f1624e);
                }
                switch (f1615e.get(index2)) {
                    case 1:
                        b bVar = aVar.f1623d;
                        bVar.f1668p = g(typedArrayObtainStyledAttributes, index2, bVar.f1668p);
                        break;
                    case 2:
                        b bVar2 = aVar.f1623d;
                        bVar2.I = typedArrayObtainStyledAttributes.getDimensionPixelSize(index2, bVar2.I);
                        break;
                    case 3:
                        b bVar3 = aVar.f1623d;
                        bVar3.f1666o = g(typedArrayObtainStyledAttributes, index2, bVar3.f1666o);
                        break;
                    case 4:
                        b bVar4 = aVar.f1623d;
                        bVar4.f1664n = g(typedArrayObtainStyledAttributes, index2, bVar4.f1664n);
                        break;
                    case 5:
                        aVar.f1623d.f1677y = typedArrayObtainStyledAttributes.getString(index2);
                        break;
                    case 6:
                        b bVar5 = aVar.f1623d;
                        bVar5.C = typedArrayObtainStyledAttributes.getDimensionPixelOffset(index2, bVar5.C);
                        break;
                    case 7:
                        b bVar6 = aVar.f1623d;
                        bVar6.D = typedArrayObtainStyledAttributes.getDimensionPixelOffset(index2, bVar6.D);
                        break;
                    case 8:
                        b bVar7 = aVar.f1623d;
                        bVar7.J = typedArrayObtainStyledAttributes.getDimensionPixelSize(index2, bVar7.J);
                        break;
                    case 9:
                        b bVar8 = aVar.f1623d;
                        bVar8.f1674v = g(typedArrayObtainStyledAttributes, index2, bVar8.f1674v);
                        break;
                    case 10:
                        b bVar9 = aVar.f1623d;
                        bVar9.f1673u = g(typedArrayObtainStyledAttributes, index2, bVar9.f1673u);
                        break;
                    case 11:
                        b bVar10 = aVar.f1623d;
                        bVar10.P = typedArrayObtainStyledAttributes.getDimensionPixelSize(index2, bVar10.P);
                        break;
                    case 12:
                        b bVar11 = aVar.f1623d;
                        bVar11.Q = typedArrayObtainStyledAttributes.getDimensionPixelSize(index2, bVar11.Q);
                        break;
                    case 13:
                        b bVar12 = aVar.f1623d;
                        bVar12.M = typedArrayObtainStyledAttributes.getDimensionPixelSize(index2, bVar12.M);
                        break;
                    case 14:
                        b bVar13 = aVar.f1623d;
                        bVar13.O = typedArrayObtainStyledAttributes.getDimensionPixelSize(index2, bVar13.O);
                        break;
                    case 15:
                        b bVar14 = aVar.f1623d;
                        bVar14.R = typedArrayObtainStyledAttributes.getDimensionPixelSize(index2, bVar14.R);
                        break;
                    case 16:
                        b bVar15 = aVar.f1623d;
                        bVar15.N = typedArrayObtainStyledAttributes.getDimensionPixelSize(index2, bVar15.N);
                        break;
                    case 17:
                        b bVar16 = aVar.f1623d;
                        bVar16.f1645d = typedArrayObtainStyledAttributes.getDimensionPixelOffset(index2, bVar16.f1645d);
                        break;
                    case 18:
                        b bVar17 = aVar.f1623d;
                        bVar17.f1646e = typedArrayObtainStyledAttributes.getDimensionPixelOffset(index2, bVar17.f1646e);
                        break;
                    case 19:
                        b bVar18 = aVar.f1623d;
                        bVar18.f1648f = typedArrayObtainStyledAttributes.getFloat(index2, bVar18.f1648f);
                        break;
                    case 20:
                        b bVar19 = aVar.f1623d;
                        bVar19.f1675w = typedArrayObtainStyledAttributes.getFloat(index2, bVar19.f1675w);
                        break;
                    case 21:
                        b bVar20 = aVar.f1623d;
                        bVar20.f1643c = typedArrayObtainStyledAttributes.getLayoutDimension(index2, bVar20.f1643c);
                        break;
                    case 22:
                        C0021d c0021d = aVar.f1621b;
                        c0021d.f1690a = typedArrayObtainStyledAttributes.getInt(index2, c0021d.f1690a);
                        C0021d c0021d2 = aVar.f1621b;
                        c0021d2.f1690a = f1614d[c0021d2.f1690a];
                        break;
                    case 23:
                        b bVar21 = aVar.f1623d;
                        bVar21.f1641b = typedArrayObtainStyledAttributes.getLayoutDimension(index2, bVar21.f1641b);
                        break;
                    case 24:
                        b bVar22 = aVar.f1623d;
                        bVar22.F = typedArrayObtainStyledAttributes.getDimensionPixelSize(index2, bVar22.F);
                        break;
                    case 25:
                        b bVar23 = aVar.f1623d;
                        bVar23.f1652h = g(typedArrayObtainStyledAttributes, index2, bVar23.f1652h);
                        break;
                    case 26:
                        b bVar24 = aVar.f1623d;
                        bVar24.f1654i = g(typedArrayObtainStyledAttributes, index2, bVar24.f1654i);
                        break;
                    case 27:
                        b bVar25 = aVar.f1623d;
                        bVar25.E = typedArrayObtainStyledAttributes.getInt(index2, bVar25.E);
                        break;
                    case 28:
                        b bVar26 = aVar.f1623d;
                        bVar26.G = typedArrayObtainStyledAttributes.getDimensionPixelSize(index2, bVar26.G);
                        break;
                    case 29:
                        b bVar27 = aVar.f1623d;
                        bVar27.f1656j = g(typedArrayObtainStyledAttributes, index2, bVar27.f1656j);
                        break;
                    case 30:
                        b bVar28 = aVar.f1623d;
                        bVar28.f1658k = g(typedArrayObtainStyledAttributes, index2, bVar28.f1658k);
                        break;
                    case 31:
                        b bVar29 = aVar.f1623d;
                        bVar29.K = typedArrayObtainStyledAttributes.getDimensionPixelSize(index2, bVar29.K);
                        break;
                    case 32:
                        b bVar30 = aVar.f1623d;
                        bVar30.f1671s = g(typedArrayObtainStyledAttributes, index2, bVar30.f1671s);
                        break;
                    case 33:
                        b bVar31 = aVar.f1623d;
                        bVar31.f1672t = g(typedArrayObtainStyledAttributes, index2, bVar31.f1672t);
                        break;
                    case 34:
                        b bVar32 = aVar.f1623d;
                        bVar32.H = typedArrayObtainStyledAttributes.getDimensionPixelSize(index2, bVar32.H);
                        break;
                    case 35:
                        b bVar33 = aVar.f1623d;
                        bVar33.f1662m = g(typedArrayObtainStyledAttributes, index2, bVar33.f1662m);
                        break;
                    case 36:
                        b bVar34 = aVar.f1623d;
                        bVar34.f1660l = g(typedArrayObtainStyledAttributes, index2, bVar34.f1660l);
                        break;
                    case 37:
                        b bVar35 = aVar.f1623d;
                        bVar35.f1676x = typedArrayObtainStyledAttributes.getFloat(index2, bVar35.f1676x);
                        break;
                    case 38:
                        aVar.f1620a = typedArrayObtainStyledAttributes.getResourceId(index2, aVar.f1620a);
                        break;
                    case 39:
                        b bVar36 = aVar.f1623d;
                        bVar36.U = typedArrayObtainStyledAttributes.getFloat(index2, bVar36.U);
                        break;
                    case 40:
                        b bVar37 = aVar.f1623d;
                        bVar37.T = typedArrayObtainStyledAttributes.getFloat(index2, bVar37.T);
                        break;
                    case 41:
                        b bVar38 = aVar.f1623d;
                        bVar38.V = typedArrayObtainStyledAttributes.getInt(index2, bVar38.V);
                        break;
                    case 42:
                        b bVar39 = aVar.f1623d;
                        bVar39.W = typedArrayObtainStyledAttributes.getInt(index2, bVar39.W);
                        break;
                    case 43:
                        C0021d c0021d3 = aVar.f1621b;
                        c0021d3.f1692c = typedArrayObtainStyledAttributes.getFloat(index2, c0021d3.f1692c);
                        break;
                    case 44:
                        e eVar = aVar.f1624e;
                        eVar.f1706l = true;
                        eVar.f1707m = typedArrayObtainStyledAttributes.getDimension(index2, eVar.f1707m);
                        break;
                    case 45:
                        e eVar2 = aVar.f1624e;
                        eVar2.f1696b = typedArrayObtainStyledAttributes.getFloat(index2, eVar2.f1696b);
                        break;
                    case 46:
                        e eVar3 = aVar.f1624e;
                        eVar3.f1697c = typedArrayObtainStyledAttributes.getFloat(index2, eVar3.f1697c);
                        break;
                    case 47:
                        e eVar4 = aVar.f1624e;
                        eVar4.f1698d = typedArrayObtainStyledAttributes.getFloat(index2, eVar4.f1698d);
                        break;
                    case 48:
                        e eVar5 = aVar.f1624e;
                        eVar5.f1699e = typedArrayObtainStyledAttributes.getFloat(index2, eVar5.f1699e);
                        break;
                    case 49:
                        e eVar6 = aVar.f1624e;
                        eVar6.f1700f = typedArrayObtainStyledAttributes.getDimension(index2, eVar6.f1700f);
                        break;
                    case 50:
                        e eVar7 = aVar.f1624e;
                        eVar7.f1701g = typedArrayObtainStyledAttributes.getDimension(index2, eVar7.f1701g);
                        break;
                    case 51:
                        e eVar8 = aVar.f1624e;
                        eVar8.f1703i = typedArrayObtainStyledAttributes.getDimension(index2, eVar8.f1703i);
                        break;
                    case 52:
                        e eVar9 = aVar.f1624e;
                        eVar9.f1704j = typedArrayObtainStyledAttributes.getDimension(index2, eVar9.f1704j);
                        break;
                    case 53:
                        e eVar10 = aVar.f1624e;
                        eVar10.f1705k = typedArrayObtainStyledAttributes.getDimension(index2, eVar10.f1705k);
                        break;
                    case 54:
                        b bVar40 = aVar.f1623d;
                        bVar40.X = typedArrayObtainStyledAttributes.getInt(index2, bVar40.X);
                        break;
                    case 55:
                        b bVar41 = aVar.f1623d;
                        bVar41.Y = typedArrayObtainStyledAttributes.getInt(index2, bVar41.Y);
                        break;
                    case 56:
                        b bVar42 = aVar.f1623d;
                        bVar42.Z = typedArrayObtainStyledAttributes.getDimensionPixelSize(index2, bVar42.Z);
                        break;
                    case 57:
                        b bVar43 = aVar.f1623d;
                        bVar43.f1640a0 = typedArrayObtainStyledAttributes.getDimensionPixelSize(index2, bVar43.f1640a0);
                        break;
                    case 58:
                        b bVar44 = aVar.f1623d;
                        bVar44.f1642b0 = typedArrayObtainStyledAttributes.getDimensionPixelSize(index2, bVar44.f1642b0);
                        break;
                    case 59:
                        b bVar45 = aVar.f1623d;
                        bVar45.f1644c0 = typedArrayObtainStyledAttributes.getDimensionPixelSize(index2, bVar45.f1644c0);
                        break;
                    case 60:
                        e eVar11 = aVar.f1624e;
                        eVar11.f1695a = typedArrayObtainStyledAttributes.getFloat(index2, eVar11.f1695a);
                        break;
                    case 61:
                        b bVar46 = aVar.f1623d;
                        bVar46.f1678z = g(typedArrayObtainStyledAttributes, index2, bVar46.f1678z);
                        break;
                    case 62:
                        b bVar47 = aVar.f1623d;
                        bVar47.A = typedArrayObtainStyledAttributes.getDimensionPixelSize(index2, bVar47.A);
                        break;
                    case 63:
                        b bVar48 = aVar.f1623d;
                        bVar48.B = typedArrayObtainStyledAttributes.getFloat(index2, bVar48.B);
                        break;
                    case 64:
                        c cVar3 = aVar.f1622c;
                        cVar3.f1680a = g(typedArrayObtainStyledAttributes, index2, cVar3.f1680a);
                        break;
                    case 65:
                        if (typedArrayObtainStyledAttributes.peekValue(index2).type == 3) {
                            c cVar4 = aVar.f1622c;
                            typedArrayObtainStyledAttributes.getString(index2);
                            Objects.requireNonNull(cVar4);
                        } else {
                            c cVar5 = aVar.f1622c;
                            String str = r.a.f14174c[typedArrayObtainStyledAttributes.getInteger(index2, 0)];
                            Objects.requireNonNull(cVar5);
                        }
                        break;
                    case 66:
                        c cVar6 = aVar.f1622c;
                        typedArrayObtainStyledAttributes.getInt(index2, 0);
                        Objects.requireNonNull(cVar6);
                        break;
                    case 67:
                        c cVar7 = aVar.f1622c;
                        cVar7.f1684e = typedArrayObtainStyledAttributes.getFloat(index2, cVar7.f1684e);
                        break;
                    case 68:
                        C0021d c0021d4 = aVar.f1621b;
                        c0021d4.f1693d = typedArrayObtainStyledAttributes.getFloat(index2, c0021d4.f1693d);
                        break;
                    case 69:
                        aVar.f1623d.d0 = typedArrayObtainStyledAttributes.getFloat(index2, 1.0f);
                        break;
                    case 70:
                        aVar.f1623d.f1647e0 = typedArrayObtainStyledAttributes.getFloat(index2, 1.0f);
                        break;
                    case 71:
                        Log.e("ConstraintSet", "CURRENTLY UNSUPPORTED");
                        break;
                    case 72:
                        b bVar49 = aVar.f1623d;
                        bVar49.f1649f0 = typedArrayObtainStyledAttributes.getInt(index2, bVar49.f1649f0);
                        break;
                    case 73:
                        b bVar50 = aVar.f1623d;
                        bVar50.f1651g0 = typedArrayObtainStyledAttributes.getDimensionPixelSize(index2, bVar50.f1651g0);
                        break;
                    case 74:
                        aVar.f1623d.f1657j0 = typedArrayObtainStyledAttributes.getString(index2);
                        break;
                    case 75:
                        b bVar51 = aVar.f1623d;
                        bVar51.f1665n0 = typedArrayObtainStyledAttributes.getBoolean(index2, bVar51.f1665n0);
                        break;
                    case 76:
                        c cVar8 = aVar.f1622c;
                        cVar8.f1682c = typedArrayObtainStyledAttributes.getInt(index2, cVar8.f1682c);
                        break;
                    case 77:
                        aVar.f1623d.f1659k0 = typedArrayObtainStyledAttributes.getString(index2);
                        break;
                    case 78:
                        C0021d c0021d5 = aVar.f1621b;
                        c0021d5.f1691b = typedArrayObtainStyledAttributes.getInt(index2, c0021d5.f1691b);
                        break;
                    case 79:
                        c cVar9 = aVar.f1622c;
                        cVar9.f1683d = typedArrayObtainStyledAttributes.getFloat(index2, cVar9.f1683d);
                        break;
                    case 80:
                        b bVar52 = aVar.f1623d;
                        bVar52.f1661l0 = typedArrayObtainStyledAttributes.getBoolean(index2, bVar52.f1661l0);
                        break;
                    case 81:
                        b bVar53 = aVar.f1623d;
                        bVar53.f1663m0 = typedArrayObtainStyledAttributes.getBoolean(index2, bVar53.f1663m0);
                        break;
                    case 82:
                        c cVar10 = aVar.f1622c;
                        cVar10.f1681b = typedArrayObtainStyledAttributes.getInteger(index2, cVar10.f1681b);
                        break;
                    case 83:
                        e eVar12 = aVar.f1624e;
                        eVar12.f1702h = g(typedArrayObtainStyledAttributes, index2, eVar12.f1702h);
                        break;
                    case 84:
                        c cVar11 = aVar.f1622c;
                        cVar11.f1686g = typedArrayObtainStyledAttributes.getInteger(index2, cVar11.f1686g);
                        break;
                    case 85:
                        c cVar12 = aVar.f1622c;
                        cVar12.f1685f = typedArrayObtainStyledAttributes.getFloat(index2, cVar12.f1685f);
                        break;
                    case 86:
                        int i16 = typedArrayObtainStyledAttributes.peekValue(index2).type;
                        if (i16 == 1) {
                            aVar.f1622c.f1689j = typedArrayObtainStyledAttributes.getResourceId(index2, -1);
                            c cVar13 = aVar.f1622c;
                            if (cVar13.f1689j != -1) {
                                cVar13.f1688i = -2;
                            }
                        } else if (i16 == 3) {
                            aVar.f1622c.f1687h = typedArrayObtainStyledAttributes.getString(index2);
                            if (aVar.f1622c.f1687h.indexOf("/") > 0) {
                                aVar.f1622c.f1689j = typedArrayObtainStyledAttributes.getResourceId(index2, -1);
                                aVar.f1622c.f1688i = -2;
                            } else {
                                aVar.f1622c.f1688i = -1;
                            }
                        } else {
                            c cVar14 = aVar.f1622c;
                            cVar14.f1688i = typedArrayObtainStyledAttributes.getInteger(index2, cVar14.f1689j);
                        }
                        break;
                    case 87:
                        StringBuilder sbC3 = a0.b.c("unused attribute 0x");
                        sbC3.append(Integer.toHexString(index2));
                        sbC3.append("   ");
                        sbC3.append(f1615e.get(index2));
                        Log.w("ConstraintSet", sbC3.toString());
                        break;
                    case 88:
                    case 89:
                    case 90:
                    default:
                        StringBuilder sbC4 = a0.b.c("Unknown attribute 0x");
                        sbC4.append(Integer.toHexString(index2));
                        sbC4.append("   ");
                        sbC4.append(f1615e.get(index2));
                        Log.w("ConstraintSet", sbC4.toString());
                        break;
                    case 91:
                        b bVar54 = aVar.f1623d;
                        bVar54.f1669q = g(typedArrayObtainStyledAttributes, index2, bVar54.f1669q);
                        break;
                    case 92:
                        b bVar55 = aVar.f1623d;
                        bVar55.f1670r = g(typedArrayObtainStyledAttributes, index2, bVar55.f1670r);
                        break;
                    case 93:
                        b bVar56 = aVar.f1623d;
                        bVar56.L = typedArrayObtainStyledAttributes.getDimensionPixelSize(index2, bVar56.L);
                        break;
                    case 94:
                        b bVar57 = aVar.f1623d;
                        bVar57.S = typedArrayObtainStyledAttributes.getDimensionPixelSize(index2, bVar57.S);
                        break;
                    case 95:
                        h(aVar.f1623d, typedArrayObtainStyledAttributes, index2, 0);
                        break;
                    case 96:
                        h(aVar.f1623d, typedArrayObtainStyledAttributes, index2, 1);
                        break;
                    case 97:
                        b bVar58 = aVar.f1623d;
                        bVar58.f1667o0 = typedArrayObtainStyledAttributes.getInt(index2, bVar58.f1667o0);
                        break;
                }
            }
            b bVar59 = aVar.f1623d;
            if (bVar59.f1657j0 != null) {
                bVar59.f1655i0 = null;
            }
        }
        typedArrayObtainStyledAttributes.recycle();
        return aVar;
    }

    public final void f(Context context, int i10) {
        XmlResourceParser xml = context.getResources().getXml(i10);
        try {
            for (int eventType = xml.getEventType(); eventType != 1; eventType = xml.next()) {
                if (eventType == 0) {
                    xml.getName();
                } else if (eventType == 2) {
                    String name = xml.getName();
                    a aVarE = e(context, Xml.asAttributeSet(xml), false);
                    if (name.equalsIgnoreCase("Guideline")) {
                        aVarE.f1623d.f1639a = true;
                    }
                    this.f1619c.put(Integer.valueOf(aVarE.f1620a), aVarE);
                }
            }
        } catch (IOException e10) {
            e10.printStackTrace();
        } catch (XmlPullParserException e11) {
            e11.printStackTrace();
        }
    }
}
