package n3;

import android.os.Bundle;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.UUID;

/* JADX INFO: compiled from: Format.java */
/* JADX INFO: loaded from: classes.dex */
public final class s0 implements h {
    public static final s0 N = new s0(new a());
    public static final h.a<s0> O = r0.f11665c;
    public final int A;
    public final float B;
    public final byte[] C;
    public final int D;
    public final n5.b E;
    public final int F;
    public final int G;
    public final int H;
    public final int I;
    public final int J;
    public final int K;
    public final int L;
    public int M;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final String f11676h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final String f11677i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final String f11678j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final int f11679k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final int f11680l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final int f11681m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final int f11682n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public final int f11683o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public final String f11684p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public final f4.a f11685q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public final String f11686r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public final String f11687s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public final int f11688t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public final List<byte[]> f11689u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public final r3.d f11690v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public final long f11691w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public final int f11692x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public final int f11693y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public final float f11694z;

    public s0(a aVar) {
        this.f11676h = aVar.f11695a;
        this.f11677i = aVar.f11696b;
        this.f11678j = m5.g0.M(aVar.f11697c);
        this.f11679k = aVar.f11698d;
        this.f11680l = aVar.f11699e;
        int i10 = aVar.f11700f;
        this.f11681m = i10;
        int i11 = aVar.f11701g;
        this.f11682n = i11;
        this.f11683o = i11 != -1 ? i11 : i10;
        this.f11684p = aVar.f11702h;
        this.f11685q = aVar.f11703i;
        this.f11686r = aVar.f11704j;
        this.f11687s = aVar.f11705k;
        this.f11688t = aVar.f11706l;
        List<byte[]> list = aVar.f11707m;
        this.f11689u = list == null ? Collections.emptyList() : list;
        r3.d dVar = aVar.f11708n;
        this.f11690v = dVar;
        this.f11691w = aVar.f11709o;
        this.f11692x = aVar.f11710p;
        this.f11693y = aVar.f11711q;
        this.f11694z = aVar.f11712r;
        int i12 = aVar.f11713s;
        this.A = i12 == -1 ? 0 : i12;
        float f10 = aVar.f11714t;
        this.B = f10 == -1.0f ? 1.0f : f10;
        this.C = aVar.f11715u;
        this.D = aVar.f11716v;
        this.E = aVar.f11717w;
        this.F = aVar.f11718x;
        this.G = aVar.f11719y;
        this.H = aVar.f11720z;
        int i13 = aVar.A;
        this.I = i13 == -1 ? 0 : i13;
        int i14 = aVar.B;
        this.J = i14 != -1 ? i14 : 0;
        this.K = aVar.C;
        int i15 = aVar.D;
        if (i15 != 0 || dVar == null) {
            this.L = i15;
        } else {
            this.L = 1;
        }
    }

    public static String e(int i10) {
        return Integer.toString(i10, 36);
    }

    public static String f(int i10) {
        return e(12) + "_" + Integer.toString(i10, 36);
    }

    @Override // n3.h
    public final Bundle a() {
        Bundle bundle = new Bundle();
        bundle.putString(e(0), this.f11676h);
        bundle.putString(e(1), this.f11677i);
        bundle.putString(e(2), this.f11678j);
        bundle.putInt(e(3), this.f11679k);
        bundle.putInt(e(4), this.f11680l);
        bundle.putInt(e(5), this.f11681m);
        bundle.putInt(e(6), this.f11682n);
        bundle.putString(e(7), this.f11684p);
        bundle.putParcelable(e(8), this.f11685q);
        bundle.putString(e(9), this.f11686r);
        bundle.putString(e(10), this.f11687s);
        bundle.putInt(e(11), this.f11688t);
        for (int i10 = 0; i10 < this.f11689u.size(); i10++) {
            bundle.putByteArray(f(i10), this.f11689u.get(i10));
        }
        bundle.putParcelable(e(13), this.f11690v);
        bundle.putLong(e(14), this.f11691w);
        bundle.putInt(e(15), this.f11692x);
        bundle.putInt(e(16), this.f11693y);
        bundle.putFloat(e(17), this.f11694z);
        bundle.putInt(e(18), this.A);
        bundle.putFloat(e(19), this.B);
        bundle.putByteArray(e(20), this.C);
        bundle.putInt(e(21), this.D);
        if (this.E != null) {
            bundle.putBundle(e(22), this.E.a());
        }
        bundle.putInt(e(23), this.F);
        bundle.putInt(e(24), this.G);
        bundle.putInt(e(25), this.H);
        bundle.putInt(e(26), this.I);
        bundle.putInt(e(27), this.J);
        bundle.putInt(e(28), this.K);
        bundle.putInt(e(29), this.L);
        return bundle;
    }

    public final a b() {
        return new a(this);
    }

    public final s0 c(int i10) {
        a aVarB = b();
        aVarB.D = i10;
        return aVarB.a();
    }

    public final boolean d(s0 s0Var) {
        if (this.f11689u.size() != s0Var.f11689u.size()) {
            return false;
        }
        for (int i10 = 0; i10 < this.f11689u.size(); i10++) {
            if (!Arrays.equals(this.f11689u.get(i10), s0Var.f11689u.get(i10))) {
                return false;
            }
        }
        return true;
    }

    public final boolean equals(Object obj) {
        int i10;
        if (this == obj) {
            return true;
        }
        if (obj == null || s0.class != obj.getClass()) {
            return false;
        }
        s0 s0Var = (s0) obj;
        int i11 = this.M;
        if (i11 == 0 || (i10 = s0Var.M) == 0 || i11 == i10) {
            return this.f11679k == s0Var.f11679k && this.f11680l == s0Var.f11680l && this.f11681m == s0Var.f11681m && this.f11682n == s0Var.f11682n && this.f11688t == s0Var.f11688t && this.f11691w == s0Var.f11691w && this.f11692x == s0Var.f11692x && this.f11693y == s0Var.f11693y && this.A == s0Var.A && this.D == s0Var.D && this.F == s0Var.F && this.G == s0Var.G && this.H == s0Var.H && this.I == s0Var.I && this.J == s0Var.J && this.K == s0Var.K && this.L == s0Var.L && Float.compare(this.f11694z, s0Var.f11694z) == 0 && Float.compare(this.B, s0Var.B) == 0 && m5.g0.a(this.f11676h, s0Var.f11676h) && m5.g0.a(this.f11677i, s0Var.f11677i) && m5.g0.a(this.f11684p, s0Var.f11684p) && m5.g0.a(this.f11686r, s0Var.f11686r) && m5.g0.a(this.f11687s, s0Var.f11687s) && m5.g0.a(this.f11678j, s0Var.f11678j) && Arrays.equals(this.C, s0Var.C) && m5.g0.a(this.f11685q, s0Var.f11685q) && m5.g0.a(this.E, s0Var.E) && m5.g0.a(this.f11690v, s0Var.f11690v) && d(s0Var);
        }
        return false;
    }

    public final s0 g(s0 s0Var) {
        String str;
        String str2;
        int i10;
        r3.d.b[] bVarArr;
        String str3;
        boolean z10;
        if (this == s0Var) {
            return this;
        }
        int i11 = m5.s.i(this.f11687s);
        String str4 = s0Var.f11676h;
        String str5 = s0Var.f11677i;
        if (str5 == null) {
            str5 = this.f11677i;
        }
        String str6 = this.f11678j;
        if ((i11 == 3 || i11 == 1) && (str = s0Var.f11678j) != null) {
            str6 = str;
        }
        int i12 = this.f11681m;
        if (i12 == -1) {
            i12 = s0Var.f11681m;
        }
        int i13 = this.f11682n;
        if (i13 == -1) {
            i13 = s0Var.f11682n;
        }
        String str7 = this.f11684p;
        if (str7 == null) {
            String strS = m5.g0.s(s0Var.f11684p, i11);
            if (m5.g0.T(strS).length == 1) {
                str7 = strS;
            }
        }
        f4.a aVar = this.f11685q;
        f4.a aVarB = aVar == null ? s0Var.f11685q : aVar.b(s0Var.f11685q);
        float f10 = this.f11694z;
        if (f10 == -1.0f && i11 == 2) {
            f10 = s0Var.f11694z;
        }
        int i14 = this.f11679k | s0Var.f11679k;
        int i15 = this.f11680l | s0Var.f11680l;
        r3.d dVar = s0Var.f11690v;
        r3.d dVar2 = this.f11690v;
        ArrayList arrayList = new ArrayList();
        if (dVar != null) {
            str2 = dVar.f14481j;
            r3.d.b[] bVarArr2 = dVar.f14479h;
            int length = bVarArr2.length;
            int i16 = 0;
            while (i16 < length) {
                int i17 = length;
                r3.d.b bVar = bVarArr2[i16];
                if (bVar.a()) {
                    arrayList.add(bVar);
                }
                i16++;
                length = i17;
            }
        } else {
            str2 = null;
        }
        if (dVar2 != null) {
            if (str2 == null) {
                str2 = dVar2.f14481j;
            }
            int size = arrayList.size();
            r3.d.b[] bVarArr3 = dVar2.f14479h;
            int length2 = bVarArr3.length;
            int i18 = 0;
            while (i18 < length2) {
                int i19 = length2;
                r3.d.b bVar2 = bVarArr3[i18];
                if (bVar2.a()) {
                    bVarArr = bVarArr3;
                    UUID uuid = bVar2.f14484i;
                    str3 = str2;
                    int i20 = 0;
                    while (true) {
                        if (i20 >= size) {
                            i10 = size;
                            z10 = false;
                            break;
                        }
                        i10 = size;
                        if (((r3.d.b) arrayList.get(i20)).f14484i.equals(uuid)) {
                            z10 = true;
                            break;
                        }
                        i20++;
                        size = i10;
                    }
                    if (!z10) {
                        arrayList.add(bVar2);
                    }
                } else {
                    i10 = size;
                    bVarArr = bVarArr3;
                    str3 = str2;
                }
                i18++;
                length2 = i19;
                bVarArr3 = bVarArr;
                str2 = str3;
                size = i10;
            }
        }
        r3.d dVar3 = arrayList.isEmpty() ? null : new r3.d(str2, false, (r3.d.b[]) arrayList.toArray(new r3.d.b[0]));
        a aVarB2 = b();
        aVarB2.f11695a = str4;
        aVarB2.f11696b = str5;
        aVarB2.f11697c = str6;
        aVarB2.f11698d = i14;
        aVarB2.f11699e = i15;
        aVarB2.f11700f = i12;
        aVarB2.f11701g = i13;
        aVarB2.f11702h = str7;
        aVarB2.f11703i = aVarB;
        aVarB2.f11708n = dVar3;
        aVarB2.f11712r = f10;
        return aVarB2.a();
    }

    public final int hashCode() {
        if (this.M == 0) {
            String str = this.f11676h;
            int iHashCode = (527 + (str == null ? 0 : str.hashCode())) * 31;
            String str2 = this.f11677i;
            int iHashCode2 = (iHashCode + (str2 != null ? str2.hashCode() : 0)) * 31;
            String str3 = this.f11678j;
            int iHashCode3 = (((((((((iHashCode2 + (str3 == null ? 0 : str3.hashCode())) * 31) + this.f11679k) * 31) + this.f11680l) * 31) + this.f11681m) * 31) + this.f11682n) * 31;
            String str4 = this.f11684p;
            int iHashCode4 = (iHashCode3 + (str4 == null ? 0 : str4.hashCode())) * 31;
            f4.a aVar = this.f11685q;
            int iHashCode5 = (iHashCode4 + (aVar == null ? 0 : aVar.hashCode())) * 31;
            String str5 = this.f11686r;
            int iHashCode6 = (iHashCode5 + (str5 == null ? 0 : str5.hashCode())) * 31;
            String str6 = this.f11687s;
            this.M = ((((((((((((((((Float.floatToIntBits(this.B) + ((((Float.floatToIntBits(this.f11694z) + ((((((((((iHashCode6 + (str6 != null ? str6.hashCode() : 0)) * 31) + this.f11688t) * 31) + ((int) this.f11691w)) * 31) + this.f11692x) * 31) + this.f11693y) * 31)) * 31) + this.A) * 31)) * 31) + this.D) * 31) + this.F) * 31) + this.G) * 31) + this.H) * 31) + this.I) * 31) + this.J) * 31) + this.K) * 31) + this.L;
        }
        return this.M;
    }

    public final String toString() {
        StringBuilder sbC = a0.b.c("Format(");
        sbC.append(this.f11676h);
        sbC.append(", ");
        sbC.append(this.f11677i);
        sbC.append(", ");
        sbC.append(this.f11686r);
        sbC.append(", ");
        sbC.append(this.f11687s);
        sbC.append(", ");
        sbC.append(this.f11684p);
        sbC.append(", ");
        sbC.append(this.f11683o);
        sbC.append(", ");
        sbC.append(this.f11678j);
        sbC.append(", [");
        sbC.append(this.f11692x);
        sbC.append(", ");
        sbC.append(this.f11693y);
        sbC.append(", ");
        sbC.append(this.f11694z);
        sbC.append("], [");
        sbC.append(this.F);
        sbC.append(", ");
        return androidx.recyclerview.widget.s.a(sbC, this.G, "])");
    }

    /* JADX INFO: compiled from: Format.java */
    public static final class a {
        public int A;
        public int B;
        public int C;
        public int D;

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public String f11695a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public String f11696b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public String f11697c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public int f11698d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public int f11699e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public int f11700f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        public int f11701g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public String f11702h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public f4.a f11703i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public String f11704j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public String f11705k;

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        public int f11706l;

        /* JADX INFO: renamed from: m, reason: collision with root package name */
        public List<byte[]> f11707m;

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        public r3.d f11708n;

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        public long f11709o;

        /* JADX INFO: renamed from: p, reason: collision with root package name */
        public int f11710p;

        /* JADX INFO: renamed from: q, reason: collision with root package name */
        public int f11711q;

        /* JADX INFO: renamed from: r, reason: collision with root package name */
        public float f11712r;

        /* JADX INFO: renamed from: s, reason: collision with root package name */
        public int f11713s;

        /* JADX INFO: renamed from: t, reason: collision with root package name */
        public float f11714t;

        /* JADX INFO: renamed from: u, reason: collision with root package name */
        public byte[] f11715u;

        /* JADX INFO: renamed from: v, reason: collision with root package name */
        public int f11716v;

        /* JADX INFO: renamed from: w, reason: collision with root package name */
        public n5.b f11717w;

        /* JADX INFO: renamed from: x, reason: collision with root package name */
        public int f11718x;

        /* JADX INFO: renamed from: y, reason: collision with root package name */
        public int f11719y;

        /* JADX INFO: renamed from: z, reason: collision with root package name */
        public int f11720z;

        public a() {
            this.f11700f = -1;
            this.f11701g = -1;
            this.f11706l = -1;
            this.f11709o = Long.MAX_VALUE;
            this.f11710p = -1;
            this.f11711q = -1;
            this.f11712r = -1.0f;
            this.f11714t = 1.0f;
            this.f11716v = -1;
            this.f11718x = -1;
            this.f11719y = -1;
            this.f11720z = -1;
            this.C = -1;
            this.D = 0;
        }

        public final s0 a() {
            return new s0(this);
        }

        public final a b(int i10) {
            this.f11695a = Integer.toString(i10);
            return this;
        }

        public a(s0 s0Var) {
            this.f11695a = s0Var.f11676h;
            this.f11696b = s0Var.f11677i;
            this.f11697c = s0Var.f11678j;
            this.f11698d = s0Var.f11679k;
            this.f11699e = s0Var.f11680l;
            this.f11700f = s0Var.f11681m;
            this.f11701g = s0Var.f11682n;
            this.f11702h = s0Var.f11684p;
            this.f11703i = s0Var.f11685q;
            this.f11704j = s0Var.f11686r;
            this.f11705k = s0Var.f11687s;
            this.f11706l = s0Var.f11688t;
            this.f11707m = s0Var.f11689u;
            this.f11708n = s0Var.f11690v;
            this.f11709o = s0Var.f11691w;
            this.f11710p = s0Var.f11692x;
            this.f11711q = s0Var.f11693y;
            this.f11712r = s0Var.f11694z;
            this.f11713s = s0Var.A;
            this.f11714t = s0Var.B;
            this.f11715u = s0Var.C;
            this.f11716v = s0Var.D;
            this.f11717w = s0Var.E;
            this.f11718x = s0Var.F;
            this.f11719y = s0Var.G;
            this.f11720z = s0Var.H;
            this.A = s0Var.I;
            this.B = s0Var.J;
            this.C = s0Var.K;
            this.D = s0Var.L;
        }
    }
}
