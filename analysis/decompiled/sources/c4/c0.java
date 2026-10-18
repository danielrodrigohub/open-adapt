package c4;

import android.util.SparseArray;
import android.util.SparseBooleanArray;
import android.util.SparseIntArray;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import m5.g0;
import n3.i1;
import n3.r0;

/* JADX INFO: compiled from: TsExtractor.java */
/* JADX INFO: loaded from: classes.dex */
public final class c0 implements s3.h {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f3906a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f3907b = 112800;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final List<m5.d0> f3908c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final m5.w f3909d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final SparseIntArray f3910e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final d0.c f3911f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final SparseArray<d0> f3912g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final SparseBooleanArray f3913h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final SparseBooleanArray f3914i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final b0 f3915j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public a0 f3916k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public s3.j f3917l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public int f3918m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public boolean f3919n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public boolean f3920o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public boolean f3921p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public d0 f3922q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public int f3923r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public int f3924s;

    /* JADX INFO: compiled from: TsExtractor.java */
    public class a implements x {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final m5.v f3925a = new m5.v(new byte[4], 4);

        public a() {
        }

        @Override // c4.x
        public final void b(m5.d0 d0Var, s3.j jVar, d0.d dVar) {
        }

        @Override // c4.x
        public final void c(m5.w wVar) {
            if (wVar.t() == 0 && (wVar.t() & 128) != 0) {
                wVar.E(6);
                int i10 = (wVar.f10477c - wVar.f10476b) / 4;
                for (int i11 = 0; i11 < i10; i11++) {
                    wVar.c(this.f3925a, 4);
                    int iG = this.f3925a.g(16);
                    this.f3925a.m(3);
                    if (iG == 0) {
                        this.f3925a.m(13);
                    } else {
                        int iG2 = this.f3925a.g(13);
                        if (c0.this.f3912g.get(iG2) == null) {
                            c0 c0Var = c0.this;
                            c0Var.f3912g.put(iG2, new y(c0Var.new b(iG2)));
                            c0.this.f3918m++;
                        }
                    }
                }
                c0 c0Var2 = c0.this;
                if (c0Var2.f3906a != 2) {
                    c0Var2.f3912g.remove(0);
                }
            }
        }
    }

    /* JADX INFO: compiled from: TsExtractor.java */
    public class b implements x {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final m5.v f3927a = new m5.v(new byte[5], 5);

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final SparseArray<d0> f3928b = new SparseArray<>();

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final SparseIntArray f3929c = new SparseIntArray();

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public final int f3930d;

        public b(int i10) {
            this.f3930d = i10;
        }

        @Override // c4.x
        public final void b(m5.d0 d0Var, s3.j jVar, d0.d dVar) {
        }

        /* JADX WARN: Code duplicated, block: B:102:0x0203  */
        /* JADX WARN: Code duplicated, block: B:47:0x0134  */
        /* JADX WARN: Code duplicated, block: B:51:0x013c  */
        @Override // c4.x
        public final void c(m5.w wVar) {
            m5.d0 d0Var;
            int i10;
            int i11;
            d0 d0VarA;
            int i12;
            if (wVar.t() != 2) {
                return;
            }
            c0 c0Var = c0.this;
            int i13 = c0Var.f3906a;
            if (i13 == 1 || i13 == 2 || c0Var.f3918m == 1) {
                d0Var = c0Var.f3908c.get(0);
            } else {
                d0Var = new m5.d0(c0Var.f3908c.get(0).c());
                c0.this.f3908c.add(d0Var);
            }
            if ((wVar.t() & 128) == 0) {
                return;
            }
            wVar.E(1);
            int iY = wVar.y();
            int i14 = 3;
            wVar.E(3);
            wVar.c(this.f3927a, 2);
            this.f3927a.m(3);
            int i15 = 13;
            c0.this.f3924s = this.f3927a.g(13);
            wVar.c(this.f3927a, 2);
            int i16 = 4;
            this.f3927a.m(4);
            int i17 = 12;
            wVar.E(this.f3927a.g(12));
            c0 c0Var2 = c0.this;
            int i18 = 21;
            if (c0Var2.f3906a == 2 && c0Var2.f3922q == null) {
                d0.b bVar = new d0.b(21, null, null, g0.f10389f);
                c0 c0Var3 = c0.this;
                c0Var3.f3922q = c0Var3.f3911f.a(21, bVar);
                c0 c0Var4 = c0.this;
                d0 d0Var2 = c0Var4.f3922q;
                if (d0Var2 != null) {
                    d0Var2.b(d0Var, c0Var4.f3917l, new d0.d(iY, 21, 8192));
                }
            }
            this.f3928b.clear();
            this.f3929c.clear();
            int i19 = wVar.f10477c - wVar.f10476b;
            while (i19 > 0) {
                int i20 = 5;
                wVar.c(this.f3927a, 5);
                int iG = this.f3927a.g(8);
                this.f3927a.m(i14);
                int iG2 = this.f3927a.g(i15);
                this.f3927a.m(i16);
                int iG3 = this.f3927a.g(i17);
                int i21 = wVar.f10476b;
                int i22 = iG3 + i21;
                int i23 = -1;
                String strTrim = null;
                ArrayList arrayList = null;
                while (true) {
                    if (wVar.f10476b >= i22) {
                        i10 = i16;
                        break;
                    }
                    int iT = wVar.t();
                    int iT2 = wVar.f10476b + wVar.t();
                    if (iT2 > i22) {
                        i10 = 4;
                        break;
                    }
                    int i24 = 172;
                    if (iT == i20) {
                        long jU = wVar.u();
                        if (jU == 1094921523) {
                            i24 = 129;
                        } else {
                            if (jU == 1161904947) {
                                i23 = 135;
                            } else {
                                if (jU != 1094921524) {
                                    if (jU == 1212503619) {
                                        i23 = 36;
                                    }
                                    i24 = i23;
                                }
                                i23 = i24;
                            }
                            i12 = 4;
                        }
                        i23 = i24;
                        i12 = 4;
                    } else {
                        if (iT == 106) {
                            i24 = 129;
                        } else if (iT == 122) {
                            i23 = 135;
                            i12 = 4;
                        } else {
                            if (iT == 127) {
                                if (wVar.t() == i18) {
                                }
                                i23 = i24;
                                i12 = 4;
                            } else if (iT == 123) {
                                i23 = 138;
                            } else if (iT == 10) {
                                strTrim = wVar.q(3).trim();
                                i24 = i23;
                                i23 = i24;
                                i12 = 4;
                            } else {
                                int i25 = 3;
                                if (iT == 89) {
                                    ArrayList arrayList2 = new ArrayList();
                                    while (wVar.f10476b < iT2) {
                                        String strTrim2 = wVar.q(i25).trim();
                                        wVar.t();
                                        byte[] bArr = new byte[4];
                                        wVar.d(bArr, 0, 4);
                                        arrayList2.add(new d0.a(strTrim2, bArr));
                                        i25 = 3;
                                    }
                                    i12 = 4;
                                    arrayList = arrayList2;
                                    i23 = 89;
                                } else {
                                    i12 = 4;
                                    if (iT == 111) {
                                        i23 = 257;
                                    }
                                }
                            }
                            i24 = i23;
                            i23 = i24;
                            i12 = 4;
                        }
                        i23 = i24;
                        i12 = 4;
                    }
                    wVar.E(iT2 - wVar.f10476b);
                    i16 = i12;
                    i20 = 5;
                    i18 = 21;
                }
                wVar.D(i22);
                d0.b bVar2 = new d0.b(i23, strTrim, arrayList, Arrays.copyOfRange(wVar.f10475a, i21, i22));
                if (iG == 6 || iG == 5) {
                    iG = i23;
                }
                i19 -= iG3 + 5;
                c0 c0Var5 = c0.this;
                int i26 = c0Var5.f3906a == 2 ? iG : iG2;
                if (c0Var5.f3913h.get(i26)) {
                    i11 = 21;
                } else {
                    c0 c0Var6 = c0.this;
                    if (c0Var6.f3906a == 2) {
                        i11 = 21;
                        if (iG == 21) {
                            d0VarA = c0Var6.f3922q;
                        }
                        if (c0.this.f3906a == 2 || iG2 < this.f3929c.get(i26, 8192)) {
                            this.f3929c.put(i26, iG2);
                            this.f3928b.put(i26, d0VarA);
                        }
                    } else {
                        i11 = 21;
                    }
                    d0VarA = c0Var6.f3911f.a(iG, bVar2);
                    if (c0.this.f3906a == 2) {
                        this.f3929c.put(i26, iG2);
                        this.f3928b.put(i26, d0VarA);
                    } else {
                        this.f3929c.put(i26, iG2);
                        this.f3928b.put(i26, d0VarA);
                    }
                }
                i16 = i10;
                i18 = i11;
                i14 = 3;
                i15 = 13;
                i17 = 12;
            }
            int size = this.f3929c.size();
            for (int i27 = 0; i27 < size; i27++) {
                int iKeyAt = this.f3929c.keyAt(i27);
                int iValueAt = this.f3929c.valueAt(i27);
                c0.this.f3913h.put(iKeyAt, true);
                c0.this.f3914i.put(iValueAt, true);
                d0 d0VarValueAt = this.f3928b.valueAt(i27);
                if (d0VarValueAt != null) {
                    c0 c0Var7 = c0.this;
                    if (d0VarValueAt != c0Var7.f3922q) {
                        d0VarValueAt.b(d0Var, c0Var7.f3917l, new d0.d(iY, iKeyAt, 8192));
                    }
                    c0.this.f3912g.put(iValueAt, d0VarValueAt);
                }
            }
            c0 c0Var8 = c0.this;
            if (c0Var8.f3906a == 2) {
                if (c0Var8.f3919n) {
                    return;
                }
                c0Var8.f3917l.b();
                c0 c0Var9 = c0.this;
                c0Var9.f3918m = 0;
                c0Var9.f3919n = true;
                return;
            }
            c0Var8.f3912g.remove(this.f3930d);
            c0 c0Var10 = c0.this;
            int i28 = c0Var10.f3906a == 1 ? 0 : c0Var10.f3918m - 1;
            c0Var10.f3918m = i28;
            if (i28 == 0) {
                c0Var10.f3917l.b();
                c0.this.f3919n = true;
            }
        }
    }

    static {
        r0 r0Var = r0.f11668f;
    }

    public c0(int i10, m5.d0 d0Var, d0.c cVar) {
        this.f3911f = cVar;
        this.f3906a = i10;
        if (i10 == 1 || i10 == 2) {
            this.f3908c = Collections.singletonList(d0Var);
        } else {
            ArrayList arrayList = new ArrayList();
            this.f3908c = arrayList;
            arrayList.add(d0Var);
        }
        this.f3909d = new m5.w(new byte[9400], 0);
        SparseBooleanArray sparseBooleanArray = new SparseBooleanArray();
        this.f3913h = sparseBooleanArray;
        this.f3914i = new SparseBooleanArray();
        SparseArray<d0> sparseArray = new SparseArray<>();
        this.f3912g = sparseArray;
        this.f3910e = new SparseIntArray();
        this.f3915j = new b0();
        this.f3917l = s3.j.f15050g;
        this.f3924s = -1;
        sparseBooleanArray.clear();
        sparseArray.clear();
        SparseArray sparseArray2 = new SparseArray();
        int size = sparseArray2.size();
        for (int i11 = 0; i11 < size; i11++) {
            this.f3912g.put(sparseArray2.keyAt(i11), (d0) sparseArray2.valueAt(i11));
        }
        this.f3912g.put(0, new y(new a()));
        this.f3922q = null;
    }

    @Override // s3.h
    public final void a() {
    }

    @Override // s3.h
    public final void b(long j10, long j11) {
        a0 a0Var;
        m5.a.e(this.f3906a != 2);
        int size = this.f3908c.size();
        for (int i10 = 0; i10 < size; i10++) {
            m5.d0 d0Var = this.f3908c.get(i10);
            boolean z10 = d0Var.d() == -9223372036854775807L;
            if (!z10) {
                long jC = d0Var.c();
                z10 = (jC == -9223372036854775807L || jC == 0 || jC == j11) ? false : true;
            }
            if (z10) {
                d0Var.e(j11);
            }
        }
        if (j11 != 0 && (a0Var = this.f3916k) != null) {
            a0Var.e(j11);
        }
        this.f3909d.A(0);
        this.f3910e.clear();
        for (int i11 = 0; i11 < this.f3912g.size(); i11++) {
            this.f3912g.valueAt(i11).a();
        }
        this.f3923r = 0;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r11v13 */
    /* JADX WARN: Type inference failed for: r11v14 */
    /* JADX WARN: Type inference failed for: r11v16 */
    /* JADX WARN: Type inference failed for: r1v1 */
    /* JADX WARN: Type inference failed for: r1v2 */
    /* JADX WARN: Type inference failed for: r1v9 */
    /* JADX WARN: Type inference failed for: r2v15, types: [int] */
    /* JADX WARN: Type inference failed for: r3v21 */
    /* JADX WARN: Type inference failed for: r3v7 */
    /* JADX WARN: Type inference failed for: r3v8 */
    /* JADX WARN: Type inference failed for: r4v10 */
    /* JADX WARN: Type inference failed for: r4v15 */
    /* JADX WARN: Type inference failed for: r4v9 */
    /* JADX WARN: Type inference failed for: r6v10 */
    /* JADX WARN: Type inference failed for: r6v5 */
    /* JADX WARN: Type inference failed for: r6v6 */
    /* JADX WARN: Type inference failed for: r7v0 */
    /* JADX WARN: Type inference failed for: r7v1, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r7v2 */
    /* JADX WARN: Type inference failed for: r7v3 */
    /* JADX WARN: Type inference failed for: r8v1 */
    /* JADX WARN: Type inference failed for: r8v12 */
    /* JADX WARN: Type inference failed for: r8v2 */
    /* JADX WARN: Type inference failed for: r9v1 */
    /* JADX WARN: Type inference failed for: r9v2 */
    /* JADX WARN: Type inference failed for: r9v6, types: [int] */
    /* JADX WARN: Type inference failed for: r9v8 */
    @Override // s3.h
    public final int e(s3.i iVar, s3.t tVar) throws IOException {
        ?? r10;
        long j10;
        ?? r11;
        long jA = iVar.a();
        ?? r12 = 1;
        if (this.f3919n) {
            long j11 = -9223372036854775807L;
            if (((jA == -1 || this.f3906a == 2) ? false : true) != false) {
                b0 b0Var = this.f3915j;
                if (!b0Var.f3897d) {
                    int i10 = this.f3924s;
                    if (i10 <= 0) {
                        b0Var.a(iVar);
                        return 0;
                    }
                    if (!b0Var.f3899f) {
                        long jA2 = iVar.a();
                        int iMin = (int) Math.min(b0Var.f3894a, jA2);
                        long j12 = jA2 - ((long) iMin);
                        if (iVar.u() == j12) {
                            b0Var.f3896c.A(iMin);
                            iVar.i();
                            iVar.s(b0Var.f3896c.f10475a, 0, iMin);
                            m5.w wVar = b0Var.f3896c;
                            int i11 = wVar.f10476b;
                            int i12 = wVar.f10477c;
                            for (int i13 = i12 - 188; i13 >= i11; i13--) {
                                byte[] bArr = wVar.f10475a;
                                int i14 = -4;
                                int i15 = 0;
                                while (true) {
                                    if (i14 > 4) {
                                        r11 = false;
                                        break;
                                    }
                                    int i16 = (i14 * 188) + i13;
                                    if (i16 >= i11 && i16 < i12 && bArr[i16] == 71) {
                                        i15++;
                                        if (i15 == 5) {
                                            r11 = true;
                                            break;
                                        }
                                    } else {
                                        i15 = 0;
                                    }
                                    i14++;
                                }
                                if (r11 != false) {
                                    long jO = d3.e.o(wVar, i13, i10);
                                    if (jO != -9223372036854775807L) {
                                        j11 = jO;
                                        break;
                                    }
                                }
                            }
                            b0Var.f3901h = j11;
                            b0Var.f3899f = true;
                            return 0;
                        }
                        tVar.f15076a = j12;
                    } else {
                        if (b0Var.f3901h == -9223372036854775807L) {
                            b0Var.a(iVar);
                            return 0;
                        }
                        if (b0Var.f3898e) {
                            long j13 = b0Var.f3900g;
                            if (j13 == -9223372036854775807L) {
                                b0Var.a(iVar);
                                return 0;
                            }
                            long jB = b0Var.f3895b.b(b0Var.f3901h) - b0Var.f3895b.b(j13);
                            b0Var.f3902i = jB;
                            if (jB < 0) {
                                StringBuilder sbC = a0.b.c("Invalid duration: ");
                                sbC.append(b0Var.f3902i);
                                sbC.append(". Using TIME_UNSET instead.");
                                m5.p.g("TsDurationReader", sbC.toString());
                                b0Var.f3902i = -9223372036854775807L;
                            }
                            b0Var.a(iVar);
                            return 0;
                        }
                        int iMin2 = (int) Math.min(b0Var.f3894a, iVar.a());
                        long j14 = 0;
                        if (iVar.u() == j14) {
                            b0Var.f3896c.A(iMin2);
                            iVar.i();
                            iVar.s(b0Var.f3896c.f10475a, 0, iMin2);
                            m5.w wVar2 = b0Var.f3896c;
                            int i17 = wVar2.f10477c;
                            for (int i18 = wVar2.f10476b; i18 < i17; i18++) {
                                if (wVar2.f10475a[i18] == 71) {
                                    long jO2 = d3.e.o(wVar2, i18, i10);
                                    if (jO2 != -9223372036854775807L) {
                                        j10 = jO2;
                                        b0Var.f3900g = j10;
                                        b0Var.f3898e = true;
                                        return 0;
                                    }
                                }
                            }
                            j10 = -9223372036854775807L;
                            b0Var.f3900g = j10;
                            b0Var.f3898e = true;
                            return 0;
                        }
                        tVar.f15076a = j14;
                    }
                    return 1;
                }
            }
            if (!this.f3920o) {
                this.f3920o = true;
                b0 b0Var2 = this.f3915j;
                long j15 = b0Var2.f3902i;
                if (j15 != -9223372036854775807L) {
                    a0 a0Var = new a0(b0Var2.f3895b, j15, jA, this.f3924s, this.f3907b);
                    this.f3916k = a0Var;
                    this.f3917l.j(a0Var.f15001a);
                } else {
                    this.f3917l.j(new s3.u.b(j15));
                }
            }
            if (this.f3921p) {
                this.f3921p = false;
                b(0L, 0L);
                if (iVar.u() != 0) {
                    tVar.f15076a = 0L;
                    return 1;
                }
            }
            r12 = 1;
            r12 = 1;
            a0 a0Var2 = this.f3916k;
            if (a0Var2 != null && a0Var2.b()) {
                return this.f3916k.a(iVar, tVar);
            }
        }
        m5.w wVar3 = this.f3909d;
        byte[] bArr2 = wVar3.f10475a;
        int i19 = wVar3.f10476b;
        if (9400 - i19 < 188) {
            int i20 = wVar3.f10477c - i19;
            if (i20 > 0) {
                System.arraycopy(bArr2, i19, bArr2, 0, i20);
            }
            this.f3909d.B(bArr2, i20);
        }
        while (true) {
            m5.w wVar4 = this.f3909d;
            int i21 = wVar4.f10477c;
            if (i21 - wVar4.f10476b >= 188) {
                r10 = r12;
                break;
            }
            int iB = iVar.b(bArr2, i21, 9400 - i21);
            if (iB == -1) {
                r10 = 0;
                break;
            }
            this.f3909d.C(i21 + iB);
        }
        if (r10 == 0) {
            return -1;
        }
        m5.w wVar5 = this.f3909d;
        int i22 = wVar5.f10476b;
        int i23 = wVar5.f10477c;
        byte[] bArr3 = wVar5.f10475a;
        int i24 = i22;
        while (i24 < i23 && bArr3[i24] != 71) {
            i24++;
        }
        this.f3909d.D(i24);
        int i25 = i24 + 188;
        if (i25 > i23) {
            int i26 = (i24 - i22) + this.f3923r;
            this.f3923r = i26;
            if (this.f3906a == 2 && i26 > 376) {
                throw i1.a("Cannot find sync byte. Most likely not a Transport Stream.", null);
            }
        } else {
            this.f3923r = 0;
        }
        m5.w wVar6 = this.f3909d;
        int i27 = wVar6.f10477c;
        if (i25 > i27) {
            return 0;
        }
        int iE = wVar6.e();
        if ((8388608 & iE) != 0) {
            this.f3909d.D(i25);
            return 0;
        }
        int i28 = ((4194304 & iE) != 0 ? r12 : 0) | 0;
        int i29 = (2096896 & iE) >> 8;
        ?? r13 = (iE & 32) != 0 ? r12 : 0;
        d0 d0Var = ((iE & 16) != 0 ? r12 : 0) != 0 ? this.f3912g.get(i29) : null;
        if (d0Var == null) {
            this.f3909d.D(i25);
            return 0;
        }
        if (this.f3906a != 2) {
            int i30 = iE & 15;
            int i31 = this.f3910e.get(i29, i30 - 1);
            this.f3910e.put(i29, i30);
            if (i31 == i30) {
                this.f3909d.D(i25);
                return 0;
            }
            if (i30 != ((i31 + r12) & 15)) {
                d0Var.a();
            }
        }
        if (r13 != 0) {
            int iT = this.f3909d.t();
            i28 |= (this.f3909d.t() & 64) != 0 ? 2 : 0;
            this.f3909d.E(iT - r12);
        }
        boolean z10 = this.f3919n;
        if (((this.f3906a == 2 || z10 || !this.f3914i.get(i29, false)) ? r12 : 0) != 0) {
            this.f3909d.C(i25);
            d0Var.c(this.f3909d, i28);
            this.f3909d.C(i27);
        }
        if (this.f3906a != 2 && !z10 && this.f3919n && jA != -1) {
            this.f3921p = r12;
        }
        this.f3909d.D(i25);
        return 0;
    }

    @Override // s3.h
    public final void g(s3.j jVar) {
        this.f3917l = jVar;
    }

    @Override // s3.h
    public final boolean j(s3.i iVar) throws IOException {
        boolean z10;
        byte[] bArr = this.f3909d.f10475a;
        s3.e eVar = (s3.e) iVar;
        eVar.p(bArr, 0, 940, false);
        for (int i10 = 0; i10 < 188; i10++) {
            int i11 = 0;
            while (true) {
                if (i11 >= 5) {
                    z10 = true;
                    break;
                }
                if (bArr[(i11 * 188) + i10] != 71) {
                    z10 = false;
                    break;
                }
                i11++;
            }
            if (z10) {
                eVar.k(i10);
                return true;
            }
        }
        return false;
    }
}
