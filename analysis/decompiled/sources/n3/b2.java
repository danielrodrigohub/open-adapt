package n3;

import android.net.Uri;
import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import android.util.Pair;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Objects;

/* JADX INFO: compiled from: Timeline.java */
/* JADX INFO: loaded from: classes.dex */
public abstract class b2 implements h {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final a f11293h = new a();

    /* JADX INFO: compiled from: Timeline.java */
    public class a extends b2 {
        @Override // n3.b2
        public final int d(Object obj) {
            return -1;
        }

        @Override // n3.b2
        public final b i(int i10, b bVar, boolean z10) {
            throw new IndexOutOfBoundsException();
        }

        @Override // n3.b2
        public final int k() {
            return 0;
        }

        @Override // n3.b2
        public final Object o(int i10) {
            throw new IndexOutOfBoundsException();
        }

        @Override // n3.b2
        public final d q(int i10, d dVar, long j10) {
            throw new IndexOutOfBoundsException();
        }

        @Override // n3.b2
        public final int r() {
            return 0;
        }
    }

    /* JADX INFO: compiled from: Timeline.java */
    public static final class b implements h {

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        public static final h.a<b> f11294o = n.f11546g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public Object f11295h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public Object f11296i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public int f11297j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public long f11298k;

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        public long f11299l;

        /* JADX INFO: renamed from: m, reason: collision with root package name */
        public boolean f11300m;

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        public q4.a f11301n = q4.a.f13606n;

        public static String i(int i10) {
            return Integer.toString(i10, 36);
        }

        @Override // n3.h
        public final Bundle a() {
            Bundle bundle = new Bundle();
            bundle.putInt(i(0), this.f11297j);
            bundle.putLong(i(1), this.f11298k);
            bundle.putLong(i(2), this.f11299l);
            bundle.putBoolean(i(3), this.f11300m);
            bundle.putBundle(i(4), this.f11301n.a());
            return bundle;
        }

        public final long b(int i10, int i11) {
            q4.a.C0241a c0241aB = this.f11301n.b(i10);
            if (c0241aB.f13617i != -1) {
                return c0241aB.f13620l[i11];
            }
            return -9223372036854775807L;
        }

        public final int c(long j10) {
            q4.a aVar = this.f11301n;
            long j11 = this.f11298k;
            Objects.requireNonNull(aVar);
            if (j10 == Long.MIN_VALUE) {
                return -1;
            }
            if (j11 != -9223372036854775807L && j10 >= j11) {
                return -1;
            }
            int i10 = aVar.f13613l;
            while (i10 < aVar.f13610i) {
                if (aVar.b(i10).f13616h == Long.MIN_VALUE || aVar.b(i10).f13616h > j10) {
                    q4.a.C0241a c0241aB = aVar.b(i10);
                    if (c0241aB.f13617i == -1 || c0241aB.b(-1) < c0241aB.f13617i) {
                        break;
                    }
                }
                i10++;
            }
            if (i10 < aVar.f13610i) {
                return i10;
            }
            return -1;
        }

        public final int d(long j10) {
            q4.a aVar = this.f11301n;
            long j11 = this.f11298k;
            int i10 = aVar.f13610i - 1;
            while (i10 >= 0) {
                boolean z10 = false;
                if (j10 != Long.MIN_VALUE) {
                    long j12 = aVar.b(i10).f13616h;
                    if (j12 != Long.MIN_VALUE ? j10 < j12 : !(j11 != -9223372036854775807L && j10 >= j11)) {
                        z10 = true;
                    }
                }
                if (!z10) {
                    break;
                }
                i10--;
            }
            if (i10 < 0 || !aVar.b(i10).c()) {
                return -1;
            }
            return i10;
        }

        public final long e(int i10) {
            return this.f11301n.b(i10).f13616h;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || !b.class.equals(obj.getClass())) {
                return false;
            }
            b bVar = (b) obj;
            return m5.g0.a(this.f11295h, bVar.f11295h) && m5.g0.a(this.f11296i, bVar.f11296i) && this.f11297j == bVar.f11297j && this.f11298k == bVar.f11298k && this.f11299l == bVar.f11299l && this.f11300m == bVar.f11300m && m5.g0.a(this.f11301n, bVar.f11301n);
        }

        public final int f(int i10, int i11) {
            q4.a.C0241a c0241aB = this.f11301n.b(i10);
            if (c0241aB.f13617i != -1) {
                return c0241aB.f13619k[i11];
            }
            return 0;
        }

        public final int g(int i10) {
            return this.f11301n.b(i10).b(-1);
        }

        public final boolean h(int i10) {
            return this.f11301n.b(i10).f13622n;
        }

        public final int hashCode() {
            Object obj = this.f11295h;
            int iHashCode = (217 + (obj == null ? 0 : obj.hashCode())) * 31;
            Object obj2 = this.f11296i;
            int iHashCode2 = (((iHashCode + (obj2 != null ? obj2.hashCode() : 0)) * 31) + this.f11297j) * 31;
            long j10 = this.f11298k;
            int i10 = (iHashCode2 + ((int) (j10 ^ (j10 >>> 32)))) * 31;
            long j11 = this.f11299l;
            return this.f11301n.hashCode() + ((((i10 + ((int) (j11 ^ (j11 >>> 32)))) * 31) + (this.f11300m ? 1 : 0)) * 31);
        }

        public final b j(Object obj, Object obj2, int i10, long j10, long j11, q4.a aVar, boolean z10) {
            this.f11295h = obj;
            this.f11296i = obj2;
            this.f11297j = i10;
            this.f11298k = j10;
            this.f11299l = j11;
            this.f11301n = aVar;
            this.f11300m = z10;
            return this;
        }

        public final b k(Object obj, Object obj2, long j10, long j11) {
            j(obj, obj2, 0, j10, j11, q4.a.f13606n, false);
            return this;
        }
    }

    /* JADX INFO: compiled from: Timeline.java */
    public static final class c extends b2 {

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public final u6.v<d> f11302i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public final u6.v<b> f11303j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public final int[] f11304k;

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        public final int[] f11305l;

        public c(u6.v<d> vVar, u6.v<b> vVar2, int[] iArr) {
            m5.a.a(vVar.size() == iArr.length);
            this.f11302i = vVar;
            this.f11303j = vVar2;
            this.f11304k = iArr;
            this.f11305l = new int[iArr.length];
            for (int i10 = 0; i10 < iArr.length; i10++) {
                this.f11305l[iArr[i10]] = i10;
            }
        }

        @Override // n3.b2
        public final int c(boolean z10) {
            if (s()) {
                return -1;
            }
            if (z10) {
                return this.f11304k[0];
            }
            return 0;
        }

        @Override // n3.b2
        public final int d(Object obj) {
            throw new UnsupportedOperationException();
        }

        @Override // n3.b2
        public final int e(boolean z10) {
            if (s()) {
                return -1;
            }
            return z10 ? this.f11304k[r() - 1] : r() - 1;
        }

        @Override // n3.b2
        public final int g(int i10, int i11, boolean z10) {
            if (i11 == 1) {
                return i10;
            }
            if (i10 != e(z10)) {
                return z10 ? this.f11304k[this.f11305l[i10] + 1] : i10 + 1;
            }
            if (i11 == 2) {
                return c(z10);
            }
            return -1;
        }

        @Override // n3.b2
        public final b i(int i10, b bVar, boolean z10) {
            b bVar2 = this.f11303j.get(i10);
            bVar.j(bVar2.f11295h, bVar2.f11296i, bVar2.f11297j, bVar2.f11298k, bVar2.f11299l, bVar2.f11301n, bVar2.f11300m);
            return bVar;
        }

        @Override // n3.b2
        public final int k() {
            return this.f11303j.size();
        }

        @Override // n3.b2
        public final int n(int i10, int i11, boolean z10) {
            if (i11 == 1) {
                return i10;
            }
            if (i10 != c(z10)) {
                return z10 ? this.f11304k[this.f11305l[i10] - 1] : i10 - 1;
            }
            if (i11 == 2) {
                return e(z10);
            }
            return -1;
        }

        @Override // n3.b2
        public final Object o(int i10) {
            throw new UnsupportedOperationException();
        }

        @Override // n3.b2
        public final d q(int i10, d dVar, long j10) {
            d dVar2 = this.f11302i.get(i10);
            dVar.f(dVar2.f11308h, dVar2.f11310j, dVar2.f11311k, dVar2.f11312l, dVar2.f11313m, dVar2.f11314n, dVar2.f11315o, dVar2.f11316p, dVar2.f11318r, dVar2.f11320t, dVar2.f11321u, dVar2.f11322v, dVar2.f11323w, dVar2.f11324x);
            dVar.f11319s = dVar2.f11319s;
            return dVar;
        }

        @Override // n3.b2
        public final int r() {
            return this.f11302i.size();
        }
    }

    /* JADX INFO: compiled from: Timeline.java */
    public static final class d implements h {
        public static final y0 A;
        public static final h.a<d> B;

        /* JADX INFO: renamed from: y, reason: collision with root package name */
        public static final Object f11306y = new Object();

        /* JADX INFO: renamed from: z, reason: collision with root package name */
        public static final Object f11307z = new Object();

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        @Deprecated
        public Object f11309i;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public Object f11311k;

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        public long f11312l;

        /* JADX INFO: renamed from: m, reason: collision with root package name */
        public long f11313m;

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        public long f11314n;

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        public boolean f11315o;

        /* JADX INFO: renamed from: p, reason: collision with root package name */
        public boolean f11316p;

        /* JADX INFO: renamed from: q, reason: collision with root package name */
        @Deprecated
        public boolean f11317q;

        /* JADX INFO: renamed from: r, reason: collision with root package name */
        public y0.f f11318r;

        /* JADX INFO: renamed from: s, reason: collision with root package name */
        public boolean f11319s;

        /* JADX INFO: renamed from: t, reason: collision with root package name */
        public long f11320t;

        /* JADX INFO: renamed from: u, reason: collision with root package name */
        public long f11321u;

        /* JADX INFO: renamed from: v, reason: collision with root package name */
        public int f11322v;

        /* JADX INFO: renamed from: w, reason: collision with root package name */
        public int f11323w;

        /* JADX INFO: renamed from: x, reason: collision with root package name */
        public long f11324x;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public Object f11308h = f11306y;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public y0 f11310j = A;

        static {
            y0.b bVar = new y0.b();
            bVar.f11753a = "com.google.android.exoplayer2.Timeline";
            bVar.f11754b = Uri.EMPTY;
            A = bVar.a();
            B = p.f11614d;
        }

        public static String e(int i10) {
            return Integer.toString(i10, 36);
        }

        @Override // n3.h
        public final Bundle a() {
            return g();
        }

        public final long b() {
            return m5.g0.X(this.f11320t);
        }

        public final long c() {
            return m5.g0.X(this.f11321u);
        }

        public final boolean d() {
            m5.a.e(this.f11317q == (this.f11318r != null));
            return this.f11318r != null;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || !d.class.equals(obj.getClass())) {
                return false;
            }
            d dVar = (d) obj;
            return m5.g0.a(this.f11308h, dVar.f11308h) && m5.g0.a(this.f11310j, dVar.f11310j) && m5.g0.a(this.f11311k, dVar.f11311k) && m5.g0.a(this.f11318r, dVar.f11318r) && this.f11312l == dVar.f11312l && this.f11313m == dVar.f11313m && this.f11314n == dVar.f11314n && this.f11315o == dVar.f11315o && this.f11316p == dVar.f11316p && this.f11319s == dVar.f11319s && this.f11320t == dVar.f11320t && this.f11321u == dVar.f11321u && this.f11322v == dVar.f11322v && this.f11323w == dVar.f11323w && this.f11324x == dVar.f11324x;
        }

        public final d f(Object obj, y0 y0Var, Object obj2, long j10, long j11, long j12, boolean z10, boolean z11, y0.f fVar, long j13, long j14, int i10, int i11, long j15) {
            y0.h hVar;
            this.f11308h = obj;
            this.f11310j = y0Var != null ? y0Var : A;
            this.f11309i = (y0Var == null || (hVar = y0Var.f11748i) == null) ? null : hVar.f11811g;
            this.f11311k = obj2;
            this.f11312l = j10;
            this.f11313m = j11;
            this.f11314n = j12;
            this.f11315o = z10;
            this.f11316p = z11;
            this.f11317q = fVar != null;
            this.f11318r = fVar;
            this.f11320t = j13;
            this.f11321u = j14;
            this.f11322v = i10;
            this.f11323w = i11;
            this.f11324x = j15;
            this.f11319s = false;
            return this;
        }

        public final Bundle g() {
            Bundle bundle = new Bundle();
            bundle.putBundle(e(1), this.f11310j.a());
            bundle.putLong(e(2), this.f11312l);
            bundle.putLong(e(3), this.f11313m);
            bundle.putLong(e(4), this.f11314n);
            bundle.putBoolean(e(5), this.f11315o);
            bundle.putBoolean(e(6), this.f11316p);
            y0.f fVar = this.f11318r;
            if (fVar != null) {
                bundle.putBundle(e(7), fVar.a());
            }
            bundle.putBoolean(e(8), this.f11319s);
            bundle.putLong(e(9), this.f11320t);
            bundle.putLong(e(10), this.f11321u);
            bundle.putInt(e(11), this.f11322v);
            bundle.putInt(e(12), this.f11323w);
            bundle.putLong(e(13), this.f11324x);
            return bundle;
        }

        public final int hashCode() {
            int iHashCode = (this.f11310j.hashCode() + ((this.f11308h.hashCode() + 217) * 31)) * 31;
            Object obj = this.f11311k;
            int iHashCode2 = (iHashCode + (obj == null ? 0 : obj.hashCode())) * 31;
            y0.f fVar = this.f11318r;
            int iHashCode3 = (iHashCode2 + (fVar != null ? fVar.hashCode() : 0)) * 31;
            long j10 = this.f11312l;
            int i10 = (iHashCode3 + ((int) (j10 ^ (j10 >>> 32)))) * 31;
            long j11 = this.f11313m;
            int i11 = (i10 + ((int) (j11 ^ (j11 >>> 32)))) * 31;
            long j12 = this.f11314n;
            int i12 = (((((((i11 + ((int) (j12 ^ (j12 >>> 32)))) * 31) + (this.f11315o ? 1 : 0)) * 31) + (this.f11316p ? 1 : 0)) * 31) + (this.f11319s ? 1 : 0)) * 31;
            long j13 = this.f11320t;
            int i13 = (i12 + ((int) (j13 ^ (j13 >>> 32)))) * 31;
            long j14 = this.f11321u;
            int i14 = (((((i13 + ((int) (j14 ^ (j14 >>> 32)))) * 31) + this.f11322v) * 31) + this.f11323w) * 31;
            long j15 = this.f11324x;
            return i14 + ((int) (j15 ^ (j15 >>> 32)));
        }
    }

    static {
        z0 z0Var = z0.f11840d;
    }

    public static <T extends h> u6.v<T> b(h.a<T> aVar, IBinder iBinder) {
        int i10;
        if (iBinder == null) {
            u6.a aVar2 = u6.v.f16002i;
            return (u6.v<T>) u6.p0.f15967l;
        }
        u6.h.b(4, "initialCapacity");
        Object[] objArrCopyOf = new Object[4];
        int i11 = g.f11395b;
        u6.a aVar3 = u6.v.f16002i;
        u6.h.b(4, "initialCapacity");
        Object[] objArrCopyOf2 = new Object[4];
        int i12 = 0;
        int i13 = 0;
        int i14 = 0;
        int i15 = 1;
        while (i15 != 0) {
            Parcel parcelObtain = Parcel.obtain();
            Parcel parcelObtain2 = Parcel.obtain();
            try {
                parcelObtain.writeInt(i14);
                try {
                    iBinder.transact(1, parcelObtain, parcelObtain2, 0);
                    while (true) {
                        i10 = parcelObtain2.readInt();
                        if (i10 == 1) {
                            Bundle bundle = parcelObtain2.readBundle();
                            Objects.requireNonNull(bundle);
                            int i16 = i13 + 1;
                            if (objArrCopyOf2.length < i16) {
                                objArrCopyOf2 = Arrays.copyOf(objArrCopyOf2, u6.t.b.a(objArrCopyOf2.length, i16));
                            }
                            objArrCopyOf2[i13] = bundle;
                            i14++;
                            i13 = i16;
                        }
                    }
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                    i15 = i10;
                } catch (RemoteException e10) {
                    throw new RuntimeException(e10);
                }
            } catch (Throwable th) {
                parcelObtain2.recycle();
                parcelObtain.recycle();
                throw th;
            }
        }
        u6.v vVarQ = u6.v.q(objArrCopyOf2, i13);
        int i17 = 0;
        while (true) {
            u6.p0 p0Var = (u6.p0) vVarQ;
            if (i12 >= p0Var.f15969k) {
                return u6.v.q(objArrCopyOf, i17);
            }
            h hVarD = aVar.d((Bundle) p0Var.get(i12));
            Objects.requireNonNull(hVarD);
            int i18 = i17 + 1;
            if (objArrCopyOf.length < i18) {
                objArrCopyOf = Arrays.copyOf(objArrCopyOf, u6.t.b.a(objArrCopyOf.length, i18));
            }
            objArrCopyOf[i17] = hVarD;
            i12++;
            i17 = i18;
        }
    }

    public static String t(int i10) {
        return Integer.toString(i10, 36);
    }

    @Override // n3.h
    public final Bundle a() {
        ArrayList arrayList = new ArrayList();
        int iR = r();
        d dVar = new d();
        for (int i10 = 0; i10 < iR; i10++) {
            arrayList.add(q(i10, dVar, 0L).g());
        }
        ArrayList arrayList2 = new ArrayList();
        int iK = k();
        b bVar = new b();
        for (int i11 = 0; i11 < iK; i11++) {
            arrayList2.add(i(i11, bVar, false).a());
        }
        int[] iArr = new int[iR];
        if (iR > 0) {
            iArr[0] = c(true);
        }
        for (int i12 = 1; i12 < iR; i12++) {
            iArr[i12] = g(iArr[i12 - 1], 0, true);
        }
        Bundle bundle = new Bundle();
        androidx.activity.k.q(bundle, t(0), new g(arrayList));
        androidx.activity.k.q(bundle, t(1), new g(arrayList2));
        bundle.putIntArray(t(2), iArr);
        return bundle;
    }

    public int c(boolean z10) {
        return s() ? -1 : 0;
    }

    public abstract int d(Object obj);

    public int e(boolean z10) {
        if (s()) {
            return -1;
        }
        return (-1) + r();
    }

    public final boolean equals(Object obj) {
        int iE;
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof b2)) {
            return false;
        }
        b2 b2Var = (b2) obj;
        if (b2Var.r() != r() || b2Var.k() != k()) {
            return false;
        }
        d dVar = new d();
        b bVar = new b();
        d dVar2 = new d();
        b bVar2 = new b();
        for (int i10 = 0; i10 < r(); i10++) {
            if (!p(i10, dVar).equals(b2Var.p(i10, dVar2))) {
                return false;
            }
        }
        for (int i11 = 0; i11 < k(); i11++) {
            if (!i(i11, bVar, true).equals(b2Var.i(i11, bVar2, true))) {
                return false;
            }
        }
        int iC = c(true);
        if (iC != b2Var.c(true) || (iE = e(true)) != b2Var.e(true)) {
            return false;
        }
        while (iC != iE) {
            int iG = g(iC, 0, true);
            if (iG != b2Var.g(iC, 0, true)) {
                return false;
            }
            iC = iG;
        }
        return true;
    }

    public final int f(int i10, b bVar, d dVar, int i11, boolean z10) {
        int i12 = i(i10, bVar, false).f11297j;
        if (p(i12, dVar).f11323w != i10) {
            return i10 + 1;
        }
        int iG = g(i12, i11, z10);
        if (iG == -1) {
            return -1;
        }
        return p(iG, dVar).f11322v;
    }

    public int g(int i10, int i11, boolean z10) {
        if (i11 == 0) {
            if (i10 == e(z10)) {
                return -1;
            }
            return i10 + 1;
        }
        if (i11 == 1) {
            return i10;
        }
        if (i11 == 2) {
            return i10 == e(z10) ? c(z10) : i10 + 1;
        }
        throw new IllegalStateException();
    }

    public final b h(int i10, b bVar) {
        return i(i10, bVar, false);
    }

    public final int hashCode() {
        d dVar = new d();
        b bVar = new b();
        int iR = r() + 217;
        for (int i10 = 0; i10 < r(); i10++) {
            iR = (iR * 31) + p(i10, dVar).hashCode();
        }
        int iK = k() + (iR * 31);
        for (int i11 = 0; i11 < k(); i11++) {
            iK = (iK * 31) + i(i11, bVar, true).hashCode();
        }
        int iC = c(true);
        while (iC != -1) {
            iK = (iK * 31) + iC;
            iC = g(iC, 0, true);
        }
        return iK;
    }

    public abstract b i(int i10, b bVar, boolean z10);

    public b j(Object obj, b bVar) {
        return i(d(obj), bVar, true);
    }

    public abstract int k();

    public final Pair<Object, Long> l(d dVar, b bVar, int i10, long j10) {
        Pair<Object, Long> pairM = m(dVar, bVar, i10, j10, 0L);
        Objects.requireNonNull(pairM);
        return pairM;
    }

    public final Pair<Object, Long> m(d dVar, b bVar, int i10, long j10, long j11) {
        m5.a.c(i10, r());
        q(i10, dVar, j11);
        if (j10 == -9223372036854775807L) {
            j10 = dVar.f11320t;
            if (j10 == -9223372036854775807L) {
                return null;
            }
        }
        int i11 = dVar.f11322v;
        h(i11, bVar);
        while (i11 < dVar.f11323w && bVar.f11299l != j10) {
            int i12 = i11 + 1;
            if (i(i12, bVar, false).f11299l > j10) {
                break;
            }
            i11 = i12;
        }
        i(i11, bVar, true);
        long jMin = j10 - bVar.f11299l;
        long j12 = bVar.f11298k;
        if (j12 != -9223372036854775807L) {
            jMin = Math.min(jMin, j12 - 1);
        }
        long jMax = Math.max(0L, jMin);
        Object obj = bVar.f11296i;
        Objects.requireNonNull(obj);
        return Pair.create(obj, Long.valueOf(jMax));
    }

    public int n(int i10, int i11, boolean z10) {
        if (i11 == 0) {
            if (i10 == c(z10)) {
                return -1;
            }
            return i10 - 1;
        }
        if (i11 == 1) {
            return i10;
        }
        if (i11 == 2) {
            return i10 == c(z10) ? e(z10) : i10 - 1;
        }
        throw new IllegalStateException();
    }

    public abstract Object o(int i10);

    public final d p(int i10, d dVar) {
        return q(i10, dVar, 0L);
    }

    public abstract d q(int i10, d dVar, long j10);

    public abstract int r();

    public final boolean s() {
        return r() == 0;
    }
}
