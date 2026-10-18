package androidx.recyclerview.widget;

import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.PointF;
import android.graphics.Rect;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.BitSet;
import java.util.List;
import java.util.Objects;

/* JADX INFO: loaded from: classes.dex */
public class StaggeredGridLayoutManager extends RecyclerView.m implements RecyclerView.x.b {
    public BitSet A;
    public boolean F;
    public boolean G;
    public e H;
    public int[] L;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public int f2557r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public f[] f2558s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public c0 f2559t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public c0 f2560u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public int f2561v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public int f2562w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public final w f2563x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public boolean f2564y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public boolean f2565z = false;
    public int B = -1;
    public int C = Integer.MIN_VALUE;
    public d D = new d();
    public int E = 2;
    public final Rect I = new Rect();
    public final b J = new b();
    public boolean K = true;
    public final a M = new a();

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            StaggeredGridLayoutManager.this.L0();
        }
    }

    public class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public int f2567a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f2568b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public boolean f2569c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public boolean f2570d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public boolean f2571e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public int[] f2572f;

        public b() {
            b();
        }

        public final void a() {
            this.f2568b = this.f2569c ? StaggeredGridLayoutManager.this.f2559t.g() : StaggeredGridLayoutManager.this.f2559t.k();
        }

        public final void b() {
            this.f2567a = -1;
            this.f2568b = Integer.MIN_VALUE;
            this.f2569c = false;
            this.f2570d = false;
            this.f2571e = false;
            int[] iArr = this.f2572f;
            if (iArr != null) {
                Arrays.fill(iArr, -1);
            }
        }
    }

    public static class c extends RecyclerView.n {

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public f f2574e;

        public c(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
        }

        public c(int i10, int i11) {
            super(i10, i11);
        }

        public c(ViewGroup.MarginLayoutParams marginLayoutParams) {
            super(marginLayoutParams);
        }

        public c(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
        }
    }

    @SuppressLint({"BanParcelableUsage"})
    public static class e implements Parcelable {
        public static final Parcelable.Creator<e> CREATOR = new a();

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public int f2581h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public int f2582i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public int f2583j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public int[] f2584k;

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        public int f2585l;

        /* JADX INFO: renamed from: m, reason: collision with root package name */
        public int[] f2586m;

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        public List<d.a> f2587n;

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        public boolean f2588o;

        /* JADX INFO: renamed from: p, reason: collision with root package name */
        public boolean f2589p;

        /* JADX INFO: renamed from: q, reason: collision with root package name */
        public boolean f2590q;

        public class a implements Parcelable.Creator<e> {
            @Override // android.os.Parcelable.Creator
            public final e createFromParcel(Parcel parcel) {
                return new e(parcel);
            }

            @Override // android.os.Parcelable.Creator
            public final e[] newArray(int i10) {
                return new e[i10];
            }
        }

        public e() {
        }

        @Override // android.os.Parcelable
        public final int describeContents() {
            return 0;
        }

        @Override // android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i10) {
            parcel.writeInt(this.f2581h);
            parcel.writeInt(this.f2582i);
            parcel.writeInt(this.f2583j);
            if (this.f2583j > 0) {
                parcel.writeIntArray(this.f2584k);
            }
            parcel.writeInt(this.f2585l);
            if (this.f2585l > 0) {
                parcel.writeIntArray(this.f2586m);
            }
            parcel.writeInt(this.f2588o ? 1 : 0);
            parcel.writeInt(this.f2589p ? 1 : 0);
            parcel.writeInt(this.f2590q ? 1 : 0);
            parcel.writeList(this.f2587n);
        }

        public e(Parcel parcel) {
            this.f2581h = parcel.readInt();
            this.f2582i = parcel.readInt();
            int i10 = parcel.readInt();
            this.f2583j = i10;
            if (i10 > 0) {
                int[] iArr = new int[i10];
                this.f2584k = iArr;
                parcel.readIntArray(iArr);
            }
            int i11 = parcel.readInt();
            this.f2585l = i11;
            if (i11 > 0) {
                int[] iArr2 = new int[i11];
                this.f2586m = iArr2;
                parcel.readIntArray(iArr2);
            }
            this.f2588o = parcel.readInt() == 1;
            this.f2589p = parcel.readInt() == 1;
            this.f2590q = parcel.readInt() == 1;
            this.f2587n = parcel.readArrayList(d.a.class.getClassLoader());
        }

        public e(e eVar) {
            this.f2583j = eVar.f2583j;
            this.f2581h = eVar.f2581h;
            this.f2582i = eVar.f2582i;
            this.f2584k = eVar.f2584k;
            this.f2585l = eVar.f2585l;
            this.f2586m = eVar.f2586m;
            this.f2588o = eVar.f2588o;
            this.f2589p = eVar.f2589p;
            this.f2590q = eVar.f2590q;
            this.f2587n = eVar.f2587n;
        }
    }

    public class f {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public ArrayList<View> f2591a = new ArrayList<>();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f2592b = Integer.MIN_VALUE;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public int f2593c = Integer.MIN_VALUE;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public int f2594d = 0;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final int f2595e;

        public f(int i10) {
            this.f2595e = i10;
        }

        public final void a(View view) {
            c cVar = (c) view.getLayoutParams();
            cVar.f2574e = this;
            this.f2591a.add(view);
            this.f2593c = Integer.MIN_VALUE;
            if (this.f2591a.size() == 1) {
                this.f2592b = Integer.MIN_VALUE;
            }
            if (cVar.c() || cVar.b()) {
                this.f2594d = StaggeredGridLayoutManager.this.f2559t.c(view) + this.f2594d;
            }
        }

        public final void b() {
            ArrayList<View> arrayList = this.f2591a;
            View view = arrayList.get(arrayList.size() - 1);
            c cVarJ = j(view);
            this.f2593c = StaggeredGridLayoutManager.this.f2559t.b(view);
            Objects.requireNonNull(cVarJ);
        }

        public final void c() {
            View view = this.f2591a.get(0);
            c cVarJ = j(view);
            this.f2592b = StaggeredGridLayoutManager.this.f2559t.e(view);
            Objects.requireNonNull(cVarJ);
        }

        public final void d() {
            this.f2591a.clear();
            this.f2592b = Integer.MIN_VALUE;
            this.f2593c = Integer.MIN_VALUE;
            this.f2594d = 0;
        }

        public final int e() {
            return StaggeredGridLayoutManager.this.f2564y ? g(this.f2591a.size() - 1, -1) : g(0, this.f2591a.size());
        }

        public final int f() {
            return StaggeredGridLayoutManager.this.f2564y ? g(0, this.f2591a.size()) : g(this.f2591a.size() - 1, -1);
        }

        public final int g(int i10, int i11) {
            int iK = StaggeredGridLayoutManager.this.f2559t.k();
            int iG = StaggeredGridLayoutManager.this.f2559t.g();
            int i12 = i11 > i10 ? 1 : -1;
            while (i10 != i11) {
                View view = this.f2591a.get(i10);
                int iE = StaggeredGridLayoutManager.this.f2559t.e(view);
                int iB = StaggeredGridLayoutManager.this.f2559t.b(view);
                boolean z10 = iE <= iG;
                boolean z11 = iB >= iK;
                if (z10 && z11 && (iE < iK || iB > iG)) {
                    return StaggeredGridLayoutManager.this.O(view);
                }
                i10 += i12;
            }
            return -1;
        }

        public final int h(int i10) {
            int i11 = this.f2593c;
            if (i11 != Integer.MIN_VALUE) {
                return i11;
            }
            if (this.f2591a.size() == 0) {
                return i10;
            }
            b();
            return this.f2593c;
        }

        public final View i(int i10, int i11) {
            View view = null;
            if (i11 != -1) {
                int size = this.f2591a.size() - 1;
                while (size >= 0) {
                    View view2 = this.f2591a.get(size);
                    StaggeredGridLayoutManager staggeredGridLayoutManager = StaggeredGridLayoutManager.this;
                    if (staggeredGridLayoutManager.f2564y && staggeredGridLayoutManager.O(view2) >= i10) {
                        break;
                    }
                    StaggeredGridLayoutManager staggeredGridLayoutManager2 = StaggeredGridLayoutManager.this;
                    if ((!staggeredGridLayoutManager2.f2564y && staggeredGridLayoutManager2.O(view2) <= i10) || !view2.hasFocusable()) {
                        break;
                    }
                    size--;
                    view = view2;
                }
            } else {
                int size2 = this.f2591a.size();
                int i12 = 0;
                while (i12 < size2) {
                    View view3 = this.f2591a.get(i12);
                    StaggeredGridLayoutManager staggeredGridLayoutManager3 = StaggeredGridLayoutManager.this;
                    if (staggeredGridLayoutManager3.f2564y && staggeredGridLayoutManager3.O(view3) <= i10) {
                        break;
                    }
                    StaggeredGridLayoutManager staggeredGridLayoutManager4 = StaggeredGridLayoutManager.this;
                    if ((!staggeredGridLayoutManager4.f2564y && staggeredGridLayoutManager4.O(view3) >= i10) || !view3.hasFocusable()) {
                        break;
                    }
                    i12++;
                    view = view3;
                }
            }
            return view;
        }

        public final c j(View view) {
            return (c) view.getLayoutParams();
        }

        public final int k(int i10) {
            int i11 = this.f2592b;
            if (i11 != Integer.MIN_VALUE) {
                return i11;
            }
            if (this.f2591a.size() == 0) {
                return i10;
            }
            c();
            return this.f2592b;
        }

        public final void l() {
            int size = this.f2591a.size();
            View viewRemove = this.f2591a.remove(size - 1);
            c cVarJ = j(viewRemove);
            cVarJ.f2574e = null;
            if (cVarJ.c() || cVarJ.b()) {
                this.f2594d -= StaggeredGridLayoutManager.this.f2559t.c(viewRemove);
            }
            if (size == 1) {
                this.f2592b = Integer.MIN_VALUE;
            }
            this.f2593c = Integer.MIN_VALUE;
        }

        public final void m() {
            View viewRemove = this.f2591a.remove(0);
            c cVarJ = j(viewRemove);
            cVarJ.f2574e = null;
            if (this.f2591a.size() == 0) {
                this.f2593c = Integer.MIN_VALUE;
            }
            if (cVarJ.c() || cVarJ.b()) {
                this.f2594d -= StaggeredGridLayoutManager.this.f2559t.c(viewRemove);
            }
            this.f2592b = Integer.MIN_VALUE;
        }

        public final void n(View view) {
            c cVar = (c) view.getLayoutParams();
            cVar.f2574e = this;
            this.f2591a.add(0, view);
            this.f2592b = Integer.MIN_VALUE;
            if (this.f2591a.size() == 1) {
                this.f2593c = Integer.MIN_VALUE;
            }
            if (cVar.c() || cVar.b()) {
                this.f2594d = StaggeredGridLayoutManager.this.f2559t.c(view) + this.f2594d;
            }
        }
    }

    public StaggeredGridLayoutManager(Context context, AttributeSet attributeSet, int i10, int i11) {
        this.f2557r = -1;
        this.f2564y = false;
        RecyclerView.m.d dVarP = RecyclerView.m.P(context, attributeSet, i10, i11);
        int i12 = dVarP.f2504a;
        if (i12 != 0 && i12 != 1) {
            throw new IllegalArgumentException("invalid orientation.");
        }
        e(null);
        if (i12 != this.f2561v) {
            this.f2561v = i12;
            c0 c0Var = this.f2559t;
            this.f2559t = this.f2560u;
            this.f2560u = c0Var;
            u0();
        }
        int i13 = dVarP.f2505b;
        e(null);
        if (i13 != this.f2557r) {
            this.D.a();
            u0();
            this.f2557r = i13;
            this.A = new BitSet(this.f2557r);
            this.f2558s = new f[this.f2557r];
            for (int i14 = 0; i14 < this.f2557r; i14++) {
                this.f2558s[i14] = new f(i14);
            }
            u0();
        }
        boolean z10 = dVarP.f2506c;
        e(null);
        e eVar = this.H;
        if (eVar != null && eVar.f2588o != z10) {
            eVar.f2588o = z10;
        }
        this.f2564y = z10;
        u0();
        this.f2563x = new w();
        this.f2559t = c0.a(this, this.f2561v);
        this.f2560u = c0.a(this, 1 - this.f2561v);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.m
    public final void B0(Rect rect, int i10, int i11) {
        int iJ;
        int iJ2;
        int iM = M() + L();
        int iK = K() + N();
        if (this.f2561v == 1) {
            iJ2 = RecyclerView.m.j(i11, rect.height() + iK, I());
            iJ = RecyclerView.m.j(i10, (this.f2562w * this.f2557r) + iM, J());
        } else {
            iJ = RecyclerView.m.j(i10, rect.width() + iM, J());
            iJ2 = RecyclerView.m.j(i11, (this.f2562w * this.f2557r) + iK, I());
        }
        A0(iJ, iJ2);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.m
    public final void H0(RecyclerView recyclerView, RecyclerView.y yVar, int i10) {
        x xVar = new x(recyclerView.getContext());
        xVar.f2528a = i10;
        I0(xVar);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.m
    public final boolean J0() {
        return this.H == null;
    }

    public final int K0(int i10) {
        if (z() == 0) {
            return this.f2565z ? 1 : -1;
        }
        return (i10 < U0()) != this.f2565z ? -1 : 1;
    }

    public final boolean L0() {
        int iU0;
        if (z() != 0 && this.E != 0 && this.f2493i) {
            if (this.f2565z) {
                iU0 = V0();
                U0();
            } else {
                iU0 = U0();
                V0();
            }
            if (iU0 == 0 && Z0() != null) {
                this.D.a();
                this.f2492h = true;
                u0();
                return true;
            }
        }
        return false;
    }

    public final int M0(RecyclerView.y yVar) {
        if (z() == 0) {
            return 0;
        }
        return i0.a(yVar, this.f2559t, R0(!this.K), Q0(!this.K), this, this.K);
    }

    public final int N0(RecyclerView.y yVar) {
        if (z() == 0) {
            return 0;
        }
        return i0.b(yVar, this.f2559t, R0(!this.K), Q0(!this.K), this, this.K, this.f2565z);
    }

    public final int O0(RecyclerView.y yVar) {
        if (z() == 0) {
            return 0;
        }
        return i0.c(yVar, this.f2559t, R0(!this.K), Q0(!this.K), this, this.K);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v19 */
    /* JADX WARN: Type inference failed for: r1v20, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r1v42 */
    public final int P0(RecyclerView.t tVar, w wVar, RecyclerView.y yVar) {
        int i10;
        int iW0;
        f fVar;
        ?? r10;
        int iC;
        int iC2;
        int iK;
        int iC3;
        int i11;
        int i12;
        int i13;
        int i14 = 0;
        this.A.set(0, this.f2557r, true);
        if (this.f2563x.f2833i) {
            i10 = wVar.f2829e == 1 ? Integer.MAX_VALUE : Integer.MIN_VALUE;
        } else {
            i10 = wVar.f2829e == 1 ? wVar.f2831g + wVar.f2826b : wVar.f2830f - wVar.f2826b;
        }
        l1(wVar.f2829e, i10);
        int iG = this.f2565z ? this.f2559t.g() : this.f2559t.k();
        boolean z10 = false;
        while (true) {
            int i15 = wVar.f2827c;
            int i16 = -1;
            if (((i15 < 0 || i15 >= yVar.b()) ? i14 : 1) == 0 || (!this.f2563x.f2833i && this.A.isEmpty())) {
                break;
            }
            View view = tVar.j(wVar.f2827c, Long.MAX_VALUE).f2453a;
            wVar.f2827c += wVar.f2828d;
            c cVar = (c) view.getLayoutParams();
            int iA = cVar.a();
            int[] iArr = this.D.f2575a;
            int i17 = (iArr == null || iA >= iArr.length) ? -1 : iArr[iA];
            if ((i17 == -1 ? 1 : i14) != 0) {
                if (d1(wVar.f2829e)) {
                    i12 = this.f2557r - 1;
                    i13 = -1;
                } else {
                    i16 = this.f2557r;
                    i12 = i14;
                    i13 = 1;
                }
                f fVar2 = null;
                if (wVar.f2829e == 1) {
                    int iK2 = this.f2559t.k();
                    int i18 = Integer.MAX_VALUE;
                    while (i12 != i16) {
                        f fVar3 = this.f2558s[i12];
                        int iH = fVar3.h(iK2);
                        if (iH < i18) {
                            i18 = iH;
                            fVar2 = fVar3;
                        }
                        i12 += i13;
                    }
                } else {
                    int iG2 = this.f2559t.g();
                    int i19 = Integer.MIN_VALUE;
                    while (i12 != i16) {
                        f fVar4 = this.f2558s[i12];
                        int iK3 = fVar4.k(iG2);
                        if (iK3 > i19) {
                            fVar2 = fVar4;
                            i19 = iK3;
                        }
                        i12 += i13;
                    }
                }
                fVar = fVar2;
                d dVar = this.D;
                dVar.b(iA);
                dVar.f2575a[iA] = fVar.f2595e;
            } else {
                fVar = this.f2558s[i17];
            }
            f fVar5 = fVar;
            cVar.f2574e = fVar5;
            if (wVar.f2829e == 1) {
                c(view);
                r10 = 0;
            } else {
                r10 = 0;
                d(view, 0, false);
            }
            if (this.f2561v == 1) {
                b1(view, RecyclerView.m.A(this.f2562w, this.f2498n, r10, ((ViewGroup.MarginLayoutParams) cVar).width, r10), RecyclerView.m.A(this.f2501q, this.f2499o, K() + N(), ((ViewGroup.MarginLayoutParams) cVar).height, true), r10);
            } else {
                b1(view, RecyclerView.m.A(this.f2500p, this.f2498n, M() + L(), ((ViewGroup.MarginLayoutParams) cVar).width, true), RecyclerView.m.A(this.f2562w, this.f2499o, 0, ((ViewGroup.MarginLayoutParams) cVar).height, false), false);
            }
            if (wVar.f2829e == 1) {
                int iH2 = fVar5.h(iG);
                iC2 = iH2;
                iC = this.f2559t.c(view) + iH2;
            } else {
                int iK4 = fVar5.k(iG);
                iC = iK4;
                iC2 = iK4 - this.f2559t.c(view);
            }
            if (wVar.f2829e == 1) {
                cVar.f2574e.a(view);
            } else {
                cVar.f2574e.n(view);
            }
            if (a1() && this.f2561v == 1) {
                iC3 = this.f2560u.g() - (((this.f2557r - 1) - fVar5.f2595e) * this.f2562w);
                iK = iC3 - this.f2560u.c(view);
            } else {
                iK = this.f2560u.k() + (fVar5.f2595e * this.f2562w);
                iC3 = this.f2560u.c(view) + iK;
            }
            int i20 = iC3;
            int i21 = iK;
            if (this.f2561v == 1) {
                U(view, i21, iC2, i20, iC);
            } else {
                U(view, iC2, i21, iC, i20);
            }
            n1(fVar5, this.f2563x.f2829e, i10);
            f1(tVar, this.f2563x);
            if (this.f2563x.f2832h && view.hasFocusable()) {
                i11 = 0;
                this.A.set(fVar5.f2595e, false);
            } else {
                i11 = 0;
            }
            i14 = i11;
            z10 = true;
        }
        int i22 = i14;
        if (!z10) {
            f1(tVar, this.f2563x);
        }
        if (this.f2563x.f2829e == -1) {
            iW0 = this.f2559t.k() - X0(this.f2559t.k());
        } else {
            iW0 = W0(this.f2559t.g()) - this.f2559t.g();
        }
        return iW0 > 0 ? Math.min(wVar.f2826b, iW0) : i22;
    }

    public final View Q0(boolean z10) {
        int iK = this.f2559t.k();
        int iG = this.f2559t.g();
        View view = null;
        for (int iZ = z() - 1; iZ >= 0; iZ--) {
            View viewY = y(iZ);
            int iE = this.f2559t.e(viewY);
            int iB = this.f2559t.b(viewY);
            if (iB > iK && iE < iG) {
                if (iB <= iG || !z10) {
                    return viewY;
                }
                if (view == null) {
                    view = viewY;
                }
            }
        }
        return view;
    }

    public final View R0(boolean z10) {
        int iK = this.f2559t.k();
        int iG = this.f2559t.g();
        int iZ = z();
        View view = null;
        for (int i10 = 0; i10 < iZ; i10++) {
            View viewY = y(i10);
            int iE = this.f2559t.e(viewY);
            if (this.f2559t.b(viewY) > iK && iE < iG) {
                if (iE >= iK || !z10) {
                    return viewY;
                }
                if (view == null) {
                    view = viewY;
                }
            }
        }
        return view;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.m
    public final boolean S() {
        return this.E != 0;
    }

    public final void S0(RecyclerView.t tVar, RecyclerView.y yVar, boolean z10) {
        int iG;
        int iW0 = W0(Integer.MIN_VALUE);
        if (iW0 != Integer.MIN_VALUE && (iG = this.f2559t.g() - iW0) > 0) {
            int i10 = iG - (-j1(-iG, tVar, yVar));
            if (!z10 || i10 <= 0) {
                return;
            }
            this.f2559t.p(i10);
        }
    }

    public final void T0(RecyclerView.t tVar, RecyclerView.y yVar, boolean z10) {
        int iK;
        int iX0 = X0(Integer.MAX_VALUE);
        if (iX0 != Integer.MAX_VALUE && (iK = iX0 - this.f2559t.k()) > 0) {
            int iJ1 = iK - j1(iK, tVar, yVar);
            if (!z10 || iJ1 <= 0) {
                return;
            }
            this.f2559t.p(-iJ1);
        }
    }

    public final int U0() {
        if (z() == 0) {
            return 0;
        }
        return O(y(0));
    }

    @Override // androidx.recyclerview.widget.RecyclerView.m
    public final void V(int i10) {
        super.V(i10);
        for (int i11 = 0; i11 < this.f2557r; i11++) {
            f fVar = this.f2558s[i11];
            int i12 = fVar.f2592b;
            if (i12 != Integer.MIN_VALUE) {
                fVar.f2592b = i12 + i10;
            }
            int i13 = fVar.f2593c;
            if (i13 != Integer.MIN_VALUE) {
                fVar.f2593c = i13 + i10;
            }
        }
    }

    public final int V0() {
        int iZ = z();
        if (iZ == 0) {
            return 0;
        }
        return O(y(iZ - 1));
    }

    @Override // androidx.recyclerview.widget.RecyclerView.m
    public final void W(int i10) {
        super.W(i10);
        for (int i11 = 0; i11 < this.f2557r; i11++) {
            f fVar = this.f2558s[i11];
            int i12 = fVar.f2592b;
            if (i12 != Integer.MIN_VALUE) {
                fVar.f2592b = i12 + i10;
            }
            int i13 = fVar.f2593c;
            if (i13 != Integer.MIN_VALUE) {
                fVar.f2593c = i13 + i10;
            }
        }
    }

    public final int W0(int i10) {
        int iH = this.f2558s[0].h(i10);
        for (int i11 = 1; i11 < this.f2557r; i11++) {
            int iH2 = this.f2558s[i11].h(i10);
            if (iH2 > iH) {
                iH = iH2;
            }
        }
        return iH;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.m
    public final void X() {
        this.D.a();
        for (int i10 = 0; i10 < this.f2557r; i10++) {
            this.f2558s[i10].d();
        }
    }

    public final int X0(int i10) {
        int iK = this.f2558s[0].k(i10);
        for (int i11 = 1; i11 < this.f2557r; i11++) {
            int iK2 = this.f2558s[i11].k(i10);
            if (iK2 < iK) {
                iK = iK2;
            }
        }
        return iK;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.m
    public final void Y(RecyclerView recyclerView) {
        a aVar = this.M;
        RecyclerView recyclerView2 = this.f2486b;
        if (recyclerView2 != null) {
            recyclerView2.removeCallbacks(aVar);
        }
        for (int i10 = 0; i10 < this.f2557r; i10++) {
            this.f2558s[i10].d();
        }
        recyclerView.requestLayout();
    }

    /* JADX WARN: Code duplicated, block: B:15:0x0025  */
    /* JADX WARN: Code duplicated, block: B:17:0x0028 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:19:0x002b  */
    /* JADX WARN: Code duplicated, block: B:20:0x0036  */
    /* JADX WARN: Code duplicated, block: B:21:0x003c  */
    /* JADX WARN: Code duplicated, block: B:23:0x0043 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:24:0x0044  */
    /* JADX WARN: Code duplicated, block: B:26:0x0048  */
    /* JADX WARN: Code duplicated, block: B:27:0x004d  */
    /* JADX WARN: Code duplicated, block: B:29:0x0053  */
    /* JADX WARN: Code duplicated, block: B:31:? A[RETURN, SYNTHETIC] */
    public final void Y0(int i10, int i11, int i12) {
        int i13;
        int i14;
        int iV0;
        int iV1 = this.f2565z ? V0() : U0();
        if (i12 == 8) {
            if (i10 < i11) {
                i13 = i11 + 1;
            } else {
                i13 = i10 + 1;
                i14 = i11;
            }
            this.D.d(i14);
            if (i12 != 1) {
                this.D.e(i10, i11);
            } else if (i12 != 2) {
                this.D.f(i10, i11);
            } else if (i12 == 8) {
                this.D.f(i10, 1);
                this.D.e(i11, 1);
            }
            if (i13 <= iV1) {
                return;
            }
            if (this.f2565z) {
                iV0 = U0();
            } else {
                iV0 = V0();
            }
            if (i14 <= iV0) {
                u0();
            }
        }
        i13 = i10 + i11;
        i14 = i10;
        this.D.d(i14);
        if (i12 != 1) {
            this.D.e(i10, i11);
        } else if (i12 != 2) {
            this.D.f(i10, i11);
        } else if (i12 == 8) {
            this.D.f(i10, 1);
            this.D.e(i11, 1);
        }
        if (i13 <= iV1) {
            return;
        }
        if (this.f2565z) {
            iV0 = U0();
        } else {
            iV0 = V0();
        }
        if (i14 <= iV0) {
            u0();
        }
    }

    /* JADX WARN: Code duplicated, block: B:45:0x0059  */
    /* JADX WARN: Code duplicated, block: B:46:0x005b  */
    @Override // androidx.recyclerview.widget.RecyclerView.m
    public final View Z(View view, int i10, RecyclerView.t tVar, RecyclerView.y yVar) {
        View viewT;
        int i11;
        if (z() == 0 || (viewT = t(view)) == null) {
            return null;
        }
        i1();
        if (i10 != 1) {
            if (i10 != 2) {
                if (i10 != 17) {
                    if (i10 != 33) {
                        if (i10 == 66 ? this.f2561v == 0 : !(i10 != 130 || this.f2561v != 1)) {
                            i11 = 1;
                        }
                    } else if (this.f2561v == 1) {
                        i11 = -1;
                    }
                    i11 = Integer.MIN_VALUE;
                } else if (this.f2561v == 0) {
                    i11 = -1;
                } else {
                    i11 = Integer.MIN_VALUE;
                }
            } else if (this.f2561v != 1 && a1()) {
                i11 = -1;
            } else {
                i11 = 1;
            }
        } else if (this.f2561v != 1 && a1()) {
            i11 = 1;
        } else {
            i11 = -1;
        }
        if (i11 == Integer.MIN_VALUE) {
            return null;
        }
        c cVar = (c) viewT.getLayoutParams();
        Objects.requireNonNull(cVar);
        f fVar = cVar.f2574e;
        int iV0 = i11 == 1 ? V0() : U0();
        m1(iV0, yVar);
        k1(i11);
        w wVar = this.f2563x;
        wVar.f2827c = wVar.f2828d + iV0;
        wVar.f2826b = (int) (this.f2559t.l() * 0.33333334f);
        w wVar2 = this.f2563x;
        wVar2.f2832h = true;
        wVar2.f2825a = false;
        P0(tVar, wVar2, yVar);
        this.F = this.f2565z;
        View viewI = fVar.i(iV0, i11);
        if (viewI != null && viewI != viewT) {
            return viewI;
        }
        if (d1(i11)) {
            for (int i12 = this.f2557r - 1; i12 >= 0; i12--) {
                View viewI2 = this.f2558s[i12].i(iV0, i11);
                if (viewI2 != null && viewI2 != viewT) {
                    return viewI2;
                }
            }
        } else {
            for (int i13 = 0; i13 < this.f2557r; i13++) {
                View viewI3 = this.f2558s[i13].i(iV0, i11);
                if (viewI3 != null && viewI3 != viewT) {
                    return viewI3;
                }
            }
        }
        boolean z10 = (this.f2564y ^ true) == (i11 == -1);
        View viewU = u(z10 ? fVar.e() : fVar.f());
        if (viewU != null && viewU != viewT) {
            return viewU;
        }
        if (d1(i11)) {
            for (int i14 = this.f2557r - 1; i14 >= 0; i14--) {
                if (i14 != fVar.f2595e) {
                    View viewU2 = u(z10 ? this.f2558s[i14].e() : this.f2558s[i14].f());
                    if (viewU2 != null && viewU2 != viewT) {
                        return viewU2;
                    }
                }
            }
        } else {
            for (int i15 = 0; i15 < this.f2557r; i15++) {
                View viewU3 = u(z10 ? this.f2558s[i15].e() : this.f2558s[i15].f());
                if (viewU3 != null && viewU3 != viewT) {
                    return viewU3;
                }
            }
        }
        return null;
    }

    /* JADX WARN: Code duplicated, block: B:34:0x0096  */
    /* JADX WARN: Code duplicated, block: B:51:0x00d0  */
    /* JADX WARN: Code duplicated, block: B:52:0x00d2  */
    public final View Z0() {
        int i10;
        boolean z10;
        boolean z11;
        int iZ = z() - 1;
        BitSet bitSet = new BitSet(this.f2557r);
        bitSet.set(0, this.f2557r, true);
        byte b10 = (this.f2561v == 1 && a1()) ? (byte) 1 : (byte) -1;
        if (this.f2565z) {
            i10 = -1;
        } else {
            i10 = iZ + 1;
            iZ = 0;
        }
        int i11 = iZ < i10 ? 1 : -1;
        while (iZ != i10) {
            View viewY = y(iZ);
            c cVar = (c) viewY.getLayoutParams();
            if (bitSet.get(cVar.f2574e.f2595e)) {
                f fVar = cVar.f2574e;
                if (this.f2565z) {
                    int i12 = fVar.f2593c;
                    if (i12 == Integer.MIN_VALUE) {
                        fVar.b();
                        i12 = fVar.f2593c;
                    }
                    if (i12 < this.f2559t.g()) {
                        ArrayList<View> arrayList = fVar.f2591a;
                        Objects.requireNonNull(fVar.j(arrayList.get(arrayList.size() - 1)));
                        z11 = true;
                    } else {
                        z11 = false;
                    }
                } else {
                    int i13 = fVar.f2592b;
                    if (i13 == Integer.MIN_VALUE) {
                        fVar.c();
                        i13 = fVar.f2592b;
                    }
                    if (i13 > this.f2559t.k()) {
                        Objects.requireNonNull(fVar.j(fVar.f2591a.get(0)));
                        z11 = true;
                    } else {
                        z11 = false;
                    }
                }
                if (z11) {
                    return viewY;
                }
                bitSet.clear(cVar.f2574e.f2595e);
            }
            int i14 = iZ + i11;
            if (i14 != i10) {
                View viewY2 = y(i14);
                if (this.f2565z) {
                    int iB = this.f2559t.b(viewY);
                    int iB2 = this.f2559t.b(viewY2);
                    if (iB < iB2) {
                        return viewY;
                    }
                    if (iB == iB2) {
                        z10 = true;
                    } else {
                        z10 = false;
                    }
                } else {
                    int iE = this.f2559t.e(viewY);
                    int iE2 = this.f2559t.e(viewY2);
                    if (iE > iE2) {
                        return viewY;
                    }
                    if (iE == iE2) {
                        z10 = true;
                    } else {
                        z10 = false;
                    }
                }
                if (z10) {
                    if ((cVar.f2574e.f2595e - ((c) viewY2.getLayoutParams()).f2574e.f2595e < 0) != (b10 < 0)) {
                        return viewY;
                    }
                } else {
                    continue;
                }
            }
            iZ += i11;
        }
        return null;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.x.b
    public final PointF a(int i10) {
        int iK0 = K0(i10);
        PointF pointF = new PointF();
        if (iK0 == 0) {
            return null;
        }
        if (this.f2561v == 0) {
            pointF.x = iK0;
            pointF.y = 0.0f;
        } else {
            pointF.x = 0.0f;
            pointF.y = iK0;
        }
        return pointF;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.m
    public final void a0(AccessibilityEvent accessibilityEvent) {
        super.a0(accessibilityEvent);
        if (z() > 0) {
            View viewR0 = R0(false);
            View viewQ0 = Q0(false);
            if (viewR0 == null || viewQ0 == null) {
                return;
            }
            int iO = O(viewR0);
            int iO2 = O(viewQ0);
            if (iO < iO2) {
                accessibilityEvent.setFromIndex(iO);
                accessibilityEvent.setToIndex(iO2);
            } else {
                accessibilityEvent.setFromIndex(iO2);
                accessibilityEvent.setToIndex(iO);
            }
        }
    }

    public final boolean a1() {
        return H() == 1;
    }

    public final void b1(View view, int i10, int i11, boolean z10) {
        f(view, this.I);
        c cVar = (c) view.getLayoutParams();
        int i12 = ((ViewGroup.MarginLayoutParams) cVar).leftMargin;
        Rect rect = this.I;
        int iO1 = o1(i10, i12 + rect.left, ((ViewGroup.MarginLayoutParams) cVar).rightMargin + rect.right);
        int i13 = ((ViewGroup.MarginLayoutParams) cVar).topMargin;
        Rect rect2 = this.I;
        int iO2 = o1(i11, i13 + rect2.top, ((ViewGroup.MarginLayoutParams) cVar).bottomMargin + rect2.bottom);
        if (E0(view, iO1, iO2, cVar)) {
            view.measure(iO1, iO2);
        }
    }

    /* JADX WARN: Code duplicated, block: B:248:0x040f  */
    public final void c1(RecyclerView.t tVar, RecyclerView.y yVar, boolean z10) {
        boolean z11;
        e eVar;
        boolean z12;
        int iO;
        int i10;
        b bVar = this.J;
        if (!(this.H == null && this.B == -1) && yVar.b() == 0) {
            o0(tVar);
            bVar.b();
            return;
        }
        boolean z13 = (bVar.f2571e && this.B == -1 && this.H == null) ? false : true;
        if (z13) {
            bVar.b();
            e eVar2 = this.H;
            if (eVar2 != null) {
                int i11 = eVar2.f2583j;
                if (i11 > 0) {
                    if (i11 == this.f2557r) {
                        for (int i12 = 0; i12 < this.f2557r; i12++) {
                            this.f2558s[i12].d();
                            e eVar3 = this.H;
                            int iG = eVar3.f2584k[i12];
                            if (iG != Integer.MIN_VALUE) {
                                iG += eVar3.f2589p ? this.f2559t.g() : this.f2559t.k();
                            }
                            f fVar = this.f2558s[i12];
                            fVar.f2592b = iG;
                            fVar.f2593c = iG;
                        }
                    } else {
                        eVar2.f2584k = null;
                        eVar2.f2583j = 0;
                        eVar2.f2585l = 0;
                        eVar2.f2586m = null;
                        eVar2.f2587n = null;
                        eVar2.f2581h = eVar2.f2582i;
                    }
                }
                e eVar4 = this.H;
                this.G = eVar4.f2590q;
                boolean z14 = eVar4.f2588o;
                e(null);
                e eVar5 = this.H;
                if (eVar5 != null && eVar5.f2588o != z14) {
                    eVar5.f2588o = z14;
                }
                this.f2564y = z14;
                u0();
                i1();
                e eVar6 = this.H;
                int i13 = eVar6.f2581h;
                if (i13 != -1) {
                    this.B = i13;
                    bVar.f2569c = eVar6.f2589p;
                } else {
                    bVar.f2569c = this.f2565z;
                }
                if (eVar6.f2585l > 1) {
                    d dVar = this.D;
                    dVar.f2575a = eVar6.f2586m;
                    dVar.f2576b = eVar6.f2587n;
                }
            } else {
                i1();
                bVar.f2569c = this.f2565z;
            }
            if (yVar.f2549g || (i10 = this.B) == -1) {
                z12 = false;
            } else if (i10 < 0 || i10 >= yVar.b()) {
                this.B = -1;
                this.C = Integer.MIN_VALUE;
                z12 = false;
            } else {
                e eVar7 = this.H;
                if (eVar7 == null || eVar7.f2581h == -1 || eVar7.f2583j < 1) {
                    View viewU = u(this.B);
                    if (viewU != null) {
                        bVar.f2567a = this.f2565z ? V0() : U0();
                        if (this.C != Integer.MIN_VALUE) {
                            if (bVar.f2569c) {
                                bVar.f2568b = (this.f2559t.g() - this.C) - this.f2559t.b(viewU);
                            } else {
                                bVar.f2568b = (this.f2559t.k() + this.C) - this.f2559t.e(viewU);
                            }
                        } else if (this.f2559t.c(viewU) > this.f2559t.l()) {
                            bVar.f2568b = bVar.f2569c ? this.f2559t.g() : this.f2559t.k();
                        } else {
                            int iE = this.f2559t.e(viewU) - this.f2559t.k();
                            if (iE < 0) {
                                bVar.f2568b = -iE;
                            } else {
                                int iG2 = this.f2559t.g() - this.f2559t.b(viewU);
                                if (iG2 < 0) {
                                    bVar.f2568b = iG2;
                                } else {
                                    bVar.f2568b = Integer.MIN_VALUE;
                                }
                            }
                        }
                    } else {
                        int i14 = this.B;
                        bVar.f2567a = i14;
                        int i15 = this.C;
                        if (i15 == Integer.MIN_VALUE) {
                            bVar.f2569c = K0(i14) == 1;
                            bVar.a();
                        } else if (bVar.f2569c) {
                            bVar.f2568b = StaggeredGridLayoutManager.this.f2559t.g() - i15;
                        } else {
                            bVar.f2568b = StaggeredGridLayoutManager.this.f2559t.k() + i15;
                        }
                        bVar.f2570d = true;
                    }
                } else {
                    bVar.f2568b = Integer.MIN_VALUE;
                    bVar.f2567a = this.B;
                }
                z12 = true;
            }
            if (!z12) {
                if (this.F) {
                    int iB = yVar.b();
                    int iZ = z();
                    while (true) {
                        iZ--;
                        if (iZ < 0) {
                            iO = 0;
                            break;
                        }
                        iO = O(y(iZ));
                        if (iO >= 0 && iO < iB) {
                            break;
                        }
                    }
                } else {
                    int iB2 = yVar.b();
                    int iZ2 = z();
                    int i16 = 0;
                    while (true) {
                        if (i16 >= iZ2) {
                            iO = 0;
                            break;
                        }
                        int iO2 = O(y(i16));
                        if (iO2 >= 0 && iO2 < iB2) {
                            iO = iO2;
                            break;
                        }
                        i16++;
                    }
                }
                bVar.f2567a = iO;
                bVar.f2568b = Integer.MIN_VALUE;
            }
            bVar.f2571e = true;
        }
        if (this.H == null && this.B == -1 && (bVar.f2569c != this.F || a1() != this.G)) {
            this.D.a();
            bVar.f2570d = true;
        }
        if (z() > 0 && ((eVar = this.H) == null || eVar.f2583j < 1)) {
            if (bVar.f2570d) {
                for (int i17 = 0; i17 < this.f2557r; i17++) {
                    this.f2558s[i17].d();
                    int i18 = bVar.f2568b;
                    if (i18 != Integer.MIN_VALUE) {
                        f fVar2 = this.f2558s[i17];
                        fVar2.f2592b = i18;
                        fVar2.f2593c = i18;
                    }
                }
            } else if (z13 || this.J.f2572f == null) {
                for (int i19 = 0; i19 < this.f2557r; i19++) {
                    f fVar3 = this.f2558s[i19];
                    boolean z15 = this.f2565z;
                    int i20 = bVar.f2568b;
                    int iH = z15 ? fVar3.h(Integer.MIN_VALUE) : fVar3.k(Integer.MIN_VALUE);
                    fVar3.d();
                    if (iH != Integer.MIN_VALUE && ((!z15 || iH >= StaggeredGridLayoutManager.this.f2559t.g()) && (z15 || iH <= StaggeredGridLayoutManager.this.f2559t.k()))) {
                        if (i20 != Integer.MIN_VALUE) {
                            iH += i20;
                        }
                        fVar3.f2593c = iH;
                        fVar3.f2592b = iH;
                    }
                }
                b bVar2 = this.J;
                f[] fVarArr = this.f2558s;
                Objects.requireNonNull(bVar2);
                int length = fVarArr.length;
                int[] iArr = bVar2.f2572f;
                if (iArr == null || iArr.length < length) {
                    bVar2.f2572f = new int[StaggeredGridLayoutManager.this.f2558s.length];
                }
                for (int i21 = 0; i21 < length; i21++) {
                    bVar2.f2572f[i21] = fVarArr[i21].k(Integer.MIN_VALUE);
                }
            } else {
                for (int i22 = 0; i22 < this.f2557r; i22++) {
                    f fVar4 = this.f2558s[i22];
                    fVar4.d();
                    int i23 = this.J.f2572f[i22];
                    fVar4.f2592b = i23;
                    fVar4.f2593c = i23;
                }
            }
        }
        s(tVar);
        this.f2563x.f2825a = false;
        int iL = this.f2560u.l();
        this.f2562w = iL / this.f2557r;
        View.MeasureSpec.makeMeasureSpec(iL, this.f2560u.i());
        m1(bVar.f2567a, yVar);
        if (bVar.f2569c) {
            k1(-1);
            P0(tVar, this.f2563x, yVar);
            k1(1);
            w wVar = this.f2563x;
            wVar.f2827c = bVar.f2567a + wVar.f2828d;
            P0(tVar, wVar, yVar);
        } else {
            k1(1);
            P0(tVar, this.f2563x, yVar);
            k1(-1);
            w wVar2 = this.f2563x;
            wVar2.f2827c = bVar.f2567a + wVar2.f2828d;
            P0(tVar, wVar2, yVar);
        }
        if (this.f2560u.i() != 1073741824) {
            float fMax = 0.0f;
            int iZ3 = z();
            for (int i24 = 0; i24 < iZ3; i24++) {
                View viewY = y(i24);
                float fC = this.f2560u.c(viewY);
                if (fC >= fMax) {
                    Objects.requireNonNull((c) viewY.getLayoutParams());
                    fMax = Math.max(fMax, fC);
                }
            }
            int i25 = this.f2562w;
            int iRound = Math.round(fMax * this.f2557r);
            if (this.f2560u.i() == Integer.MIN_VALUE) {
                iRound = Math.min(iRound, this.f2560u.l());
            }
            this.f2562w = iRound / this.f2557r;
            View.MeasureSpec.makeMeasureSpec(iRound, this.f2560u.i());
            if (this.f2562w != i25) {
                for (int i26 = 0; i26 < iZ3; i26++) {
                    View viewY2 = y(i26);
                    c cVar = (c) viewY2.getLayoutParams();
                    Objects.requireNonNull(cVar);
                    if (a1() && this.f2561v == 1) {
                        int i27 = this.f2557r;
                        int i28 = cVar.f2574e.f2595e;
                        viewY2.offsetLeftAndRight(((-((i27 - 1) - i28)) * this.f2562w) - ((-((i27 - 1) - i28)) * i25));
                    } else {
                        int i29 = cVar.f2574e.f2595e;
                        int i30 = this.f2562w * i29;
                        int i31 = i29 * i25;
                        if (this.f2561v == 1) {
                            viewY2.offsetLeftAndRight(i30 - i31);
                        } else {
                            viewY2.offsetTopAndBottom(i30 - i31);
                        }
                    }
                }
            }
        }
        if (z() > 0) {
            if (this.f2565z) {
                S0(tVar, yVar, true);
                T0(tVar, yVar, false);
            } else {
                T0(tVar, yVar, true);
                S0(tVar, yVar, false);
            }
        }
        if (z10 && !yVar.f2549g) {
            if ((this.E == 0 || z() <= 0 || Z0() == null) ? false : true) {
                a aVar = this.M;
                RecyclerView recyclerView = this.f2486b;
                if (recyclerView != null) {
                    recyclerView.removeCallbacks(aVar);
                }
                z11 = L0();
            }
        }
        if (yVar.f2549g) {
            this.J.b();
        }
        this.F = bVar.f2569c;
        this.G = a1();
        if (z11) {
            this.J.b();
            c1(tVar, yVar, false);
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.m
    public final void d0(int i10, int i11) {
        Y0(i10, i11, 1);
    }

    public final boolean d1(int i10) {
        if (this.f2561v == 0) {
            return (i10 == -1) != this.f2565z;
        }
        return ((i10 == -1) == this.f2565z) == a1();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.m
    public final void e(String str) {
        if (this.H == null) {
            super.e(str);
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.m
    public final void e0() {
        this.D.a();
        u0();
    }

    public final void e1(int i10, RecyclerView.y yVar) {
        int i11;
        int iU0;
        if (i10 > 0) {
            iU0 = V0();
            i11 = 1;
        } else {
            i11 = -1;
            iU0 = U0();
        }
        this.f2563x.f2825a = true;
        m1(iU0, yVar);
        k1(i11);
        w wVar = this.f2563x;
        wVar.f2827c = iU0 + wVar.f2828d;
        wVar.f2826b = Math.abs(i10);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.m
    public final void f0(int i10, int i11) {
        Y0(i10, i11, 8);
    }

    public final void f1(RecyclerView.t tVar, w wVar) {
        int iMin;
        if (!wVar.f2825a || wVar.f2833i) {
            return;
        }
        if (wVar.f2826b == 0) {
            if (wVar.f2829e == -1) {
                g1(tVar, wVar.f2831g);
                return;
            } else {
                h1(tVar, wVar.f2830f);
                return;
            }
        }
        int i10 = 1;
        if (wVar.f2829e == -1) {
            int i11 = wVar.f2830f;
            int iK = this.f2558s[0].k(i11);
            while (i10 < this.f2557r) {
                int iK2 = this.f2558s[i10].k(i11);
                if (iK2 > iK) {
                    iK = iK2;
                }
                i10++;
            }
            int i12 = i11 - iK;
            g1(tVar, i12 < 0 ? wVar.f2831g : wVar.f2831g - Math.min(i12, wVar.f2826b));
            return;
        }
        int i13 = wVar.f2831g;
        int iH = this.f2558s[0].h(i13);
        while (i10 < this.f2557r) {
            int iH2 = this.f2558s[i10].h(i13);
            if (iH2 < iH) {
                iH = iH2;
            }
            i10++;
        }
        int i14 = iH - wVar.f2831g;
        if (i14 < 0) {
            iMin = wVar.f2830f;
        } else {
            iMin = Math.min(i14, wVar.f2826b) + wVar.f2830f;
        }
        h1(tVar, iMin);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.m
    public final boolean g() {
        return this.f2561v == 0;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.m
    public final void g0(int i10, int i11) {
        Y0(i10, i11, 2);
    }

    public final void g1(RecyclerView.t tVar, int i10) {
        for (int iZ = z() - 1; iZ >= 0; iZ--) {
            View viewY = y(iZ);
            if (this.f2559t.e(viewY) < i10 || this.f2559t.o(viewY) < i10) {
                return;
            }
            c cVar = (c) viewY.getLayoutParams();
            Objects.requireNonNull(cVar);
            if (cVar.f2574e.f2591a.size() == 1) {
                return;
            }
            cVar.f2574e.l();
            q0(viewY, tVar);
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.m
    public final boolean h() {
        return this.f2561v == 1;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.m
    public final void h0(int i10, int i11) {
        Y0(i10, i11, 4);
    }

    public final void h1(RecyclerView.t tVar, int i10) {
        while (z() > 0) {
            View viewY = y(0);
            if (this.f2559t.b(viewY) > i10 || this.f2559t.n(viewY) > i10) {
                return;
            }
            c cVar = (c) viewY.getLayoutParams();
            Objects.requireNonNull(cVar);
            if (cVar.f2574e.f2591a.size() == 1) {
                return;
            }
            cVar.f2574e.m();
            q0(viewY, tVar);
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.m
    public final boolean i(RecyclerView.n nVar) {
        return nVar instanceof c;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.m
    public final void i0(RecyclerView.t tVar, RecyclerView.y yVar) {
        c1(tVar, yVar, true);
    }

    public final void i1() {
        if (this.f2561v == 1 || !a1()) {
            this.f2565z = this.f2564y;
        } else {
            this.f2565z = !this.f2564y;
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.m
    public final void j0(RecyclerView.y yVar) {
        this.B = -1;
        this.C = Integer.MIN_VALUE;
        this.H = null;
        this.J.b();
    }

    public final int j1(int i10, RecyclerView.t tVar, RecyclerView.y yVar) {
        if (z() == 0 || i10 == 0) {
            return 0;
        }
        e1(i10, yVar);
        int iP0 = P0(tVar, this.f2563x, yVar);
        if (this.f2563x.f2826b >= iP0) {
            i10 = i10 < 0 ? -iP0 : iP0;
        }
        this.f2559t.p(-i10);
        this.F = this.f2565z;
        w wVar = this.f2563x;
        wVar.f2826b = 0;
        f1(tVar, wVar);
        return i10;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.m
    public final void k(int i10, int i11, RecyclerView.y yVar, RecyclerView.m.c cVar) {
        int iH;
        int iK;
        if (this.f2561v != 0) {
            i10 = i11;
        }
        if (z() == 0 || i10 == 0) {
            return;
        }
        e1(i10, yVar);
        int[] iArr = this.L;
        if (iArr == null || iArr.length < this.f2557r) {
            this.L = new int[this.f2557r];
        }
        int i12 = 0;
        for (int i13 = 0; i13 < this.f2557r; i13++) {
            w wVar = this.f2563x;
            if (wVar.f2828d == -1) {
                iH = wVar.f2830f;
                iK = this.f2558s[i13].k(iH);
            } else {
                iH = this.f2558s[i13].h(wVar.f2831g);
                iK = this.f2563x.f2831g;
            }
            int i14 = iH - iK;
            if (i14 >= 0) {
                this.L[i12] = i14;
                i12++;
            }
        }
        Arrays.sort(this.L, 0, i12);
        for (int i15 = 0; i15 < i12; i15++) {
            int i16 = this.f2563x.f2827c;
            if (!(i16 >= 0 && i16 < yVar.b())) {
                return;
            }
            ((r.b) cVar).a(this.f2563x.f2827c, this.L[i15]);
            w wVar2 = this.f2563x;
            wVar2.f2827c += wVar2.f2828d;
        }
    }

    public final void k1(int i10) {
        w wVar = this.f2563x;
        wVar.f2829e = i10;
        wVar.f2828d = this.f2565z != (i10 == -1) ? -1 : 1;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.m
    public final void l0(Parcelable parcelable) {
        if (parcelable instanceof e) {
            e eVar = (e) parcelable;
            this.H = eVar;
            if (this.B != -1) {
                eVar.f2581h = -1;
                eVar.f2582i = -1;
                eVar.f2584k = null;
                eVar.f2583j = 0;
                eVar.f2585l = 0;
                eVar.f2586m = null;
                eVar.f2587n = null;
            }
            u0();
        }
    }

    public final void l1(int i10, int i11) {
        for (int i12 = 0; i12 < this.f2557r; i12++) {
            if (!this.f2558s[i12].f2591a.isEmpty()) {
                n1(this.f2558s[i12], i10, i11);
            }
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.m
    public final int m(RecyclerView.y yVar) {
        return M0(yVar);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.m
    public final Parcelable m0() {
        int iK;
        int iK2;
        int[] iArr;
        e eVar = this.H;
        if (eVar != null) {
            return new e(eVar);
        }
        e eVar2 = new e();
        eVar2.f2588o = this.f2564y;
        eVar2.f2589p = this.F;
        eVar2.f2590q = this.G;
        d dVar = this.D;
        if (dVar == null || (iArr = dVar.f2575a) == null) {
            eVar2.f2585l = 0;
        } else {
            eVar2.f2586m = iArr;
            eVar2.f2585l = iArr.length;
            eVar2.f2587n = dVar.f2576b;
        }
        if (z() > 0) {
            eVar2.f2581h = this.F ? V0() : U0();
            View viewQ0 = this.f2565z ? Q0(true) : R0(true);
            eVar2.f2582i = viewQ0 != null ? O(viewQ0) : -1;
            int i10 = this.f2557r;
            eVar2.f2583j = i10;
            eVar2.f2584k = new int[i10];
            for (int i11 = 0; i11 < this.f2557r; i11++) {
                if (this.F) {
                    iK = this.f2558s[i11].h(Integer.MIN_VALUE);
                    if (iK != Integer.MIN_VALUE) {
                        iK2 = this.f2559t.g();
                        iK -= iK2;
                    }
                } else {
                    iK = this.f2558s[i11].k(Integer.MIN_VALUE);
                    if (iK != Integer.MIN_VALUE) {
                        iK2 = this.f2559t.k();
                        iK -= iK2;
                    }
                }
                eVar2.f2584k[i11] = iK;
            }
        } else {
            eVar2.f2581h = -1;
            eVar2.f2582i = -1;
            eVar2.f2583j = 0;
        }
        return eVar2;
    }

    public final void m1(int i10, RecyclerView.y yVar) {
        int iL;
        int iL2;
        int i11;
        w wVar = this.f2563x;
        boolean z10 = false;
        wVar.f2826b = 0;
        wVar.f2827c = i10;
        RecyclerView.x xVar = this.f2491g;
        if (!(xVar != null && xVar.f2532e) || (i11 = yVar.f2543a) == -1) {
            iL = 0;
            iL2 = 0;
        } else {
            if (this.f2565z == (i11 < i10)) {
                iL = this.f2559t.l();
                iL2 = 0;
            } else {
                iL2 = this.f2559t.l();
                iL = 0;
            }
        }
        RecyclerView recyclerView = this.f2486b;
        if (recyclerView != null && recyclerView.f2417n) {
            this.f2563x.f2830f = this.f2559t.k() - iL2;
            this.f2563x.f2831g = this.f2559t.g() + iL;
        } else {
            this.f2563x.f2831g = this.f2559t.f() + iL;
            this.f2563x.f2830f = -iL2;
        }
        w wVar2 = this.f2563x;
        wVar2.f2832h = false;
        wVar2.f2825a = true;
        if (this.f2559t.i() == 0 && this.f2559t.f() == 0) {
            z10 = true;
        }
        wVar2.f2833i = z10;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.m
    public final int n(RecyclerView.y yVar) {
        return N0(yVar);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.m
    public final void n0(int i10) {
        if (i10 == 0) {
            L0();
        }
    }

    public final void n1(f fVar, int i10, int i11) {
        int i12 = fVar.f2594d;
        if (i10 == -1) {
            int i13 = fVar.f2592b;
            if (i13 == Integer.MIN_VALUE) {
                fVar.c();
                i13 = fVar.f2592b;
            }
            if (i13 + i12 <= i11) {
                this.A.set(fVar.f2595e, false);
                return;
            }
            return;
        }
        int i14 = fVar.f2593c;
        if (i14 == Integer.MIN_VALUE) {
            fVar.b();
            i14 = fVar.f2593c;
        }
        if (i14 - i12 >= i11) {
            this.A.set(fVar.f2595e, false);
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.m
    public final int o(RecyclerView.y yVar) {
        return O0(yVar);
    }

    public final int o1(int i10, int i11, int i12) {
        if (i11 == 0 && i12 == 0) {
            return i10;
        }
        int mode = View.MeasureSpec.getMode(i10);
        return (mode == Integer.MIN_VALUE || mode == 1073741824) ? View.MeasureSpec.makeMeasureSpec(Math.max(0, (View.MeasureSpec.getSize(i10) - i11) - i12), mode) : i10;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.m
    public final int p(RecyclerView.y yVar) {
        return M0(yVar);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.m
    public final int q(RecyclerView.y yVar) {
        return N0(yVar);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.m
    public final int r(RecyclerView.y yVar) {
        return O0(yVar);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.m
    public final RecyclerView.n v() {
        return this.f2561v == 0 ? new c(-2, -1) : new c(-1, -2);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.m
    public final int v0(int i10, RecyclerView.t tVar, RecyclerView.y yVar) {
        return j1(i10, tVar, yVar);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.m
    public final RecyclerView.n w(Context context, AttributeSet attributeSet) {
        return new c(context, attributeSet);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.m
    public final void w0(int i10) {
        e eVar = this.H;
        if (eVar != null && eVar.f2581h != i10) {
            eVar.f2584k = null;
            eVar.f2583j = 0;
            eVar.f2581h = -1;
            eVar.f2582i = -1;
        }
        this.B = i10;
        this.C = Integer.MIN_VALUE;
        u0();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.m
    public final RecyclerView.n x(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof ViewGroup.MarginLayoutParams ? new c((ViewGroup.MarginLayoutParams) layoutParams) : new c(layoutParams);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.m
    public final int x0(int i10, RecyclerView.t tVar, RecyclerView.y yVar) {
        return j1(i10, tVar, yVar);
    }

    public static class d {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public int[] f2575a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public List<a> f2576b;

        public final void a() {
            int[] iArr = this.f2575a;
            if (iArr != null) {
                Arrays.fill(iArr, -1);
            }
            this.f2576b = null;
        }

        public final void b(int i10) {
            int[] iArr = this.f2575a;
            if (iArr == null) {
                int[] iArr2 = new int[Math.max(i10, 10) + 1];
                this.f2575a = iArr2;
                Arrays.fill(iArr2, -1);
            } else if (i10 >= iArr.length) {
                int length = iArr.length;
                while (length <= i10) {
                    length *= 2;
                }
                int[] iArr3 = new int[length];
                this.f2575a = iArr3;
                System.arraycopy(iArr, 0, iArr3, 0, iArr.length);
                int[] iArr4 = this.f2575a;
                Arrays.fill(iArr4, iArr.length, iArr4.length, -1);
            }
        }

        public final a c(int i10) {
            List<a> list = this.f2576b;
            if (list == null) {
                return null;
            }
            for (int size = list.size() - 1; size >= 0; size--) {
                a aVar = this.f2576b.get(size);
                if (aVar.f2577h == i10) {
                    return aVar;
                }
            }
            return null;
        }

        /* JADX WARN: Code duplicated, block: B:10:0x000e  */
        public final int d(int i10) {
            int i11;
            int[] iArr = this.f2575a;
            if (iArr == null || i10 >= iArr.length) {
                return -1;
            }
            if (this.f2576b != null) {
                a aVarC = c(i10);
                if (aVarC != null) {
                    this.f2576b.remove(aVarC);
                }
                int size = this.f2576b.size();
                int i12 = 0;
                while (true) {
                    if (i12 >= size) {
                        i12 = -1;
                        break;
                    }
                    if (this.f2576b.get(i12).f2577h >= i10) {
                        break;
                    }
                    i12++;
                }
                if (i12 != -1) {
                    a aVar = this.f2576b.get(i12);
                    this.f2576b.remove(i12);
                    i11 = aVar.f2577h;
                } else {
                    i11 = -1;
                }
            } else {
                i11 = -1;
            }
            if (i11 == -1) {
                int[] iArr2 = this.f2575a;
                Arrays.fill(iArr2, i10, iArr2.length, -1);
                return this.f2575a.length;
            }
            int iMin = Math.min(i11 + 1, this.f2575a.length);
            Arrays.fill(this.f2575a, i10, iMin, -1);
            return iMin;
        }

        public final void e(int i10, int i11) {
            int[] iArr = this.f2575a;
            if (iArr == null || i10 >= iArr.length) {
                return;
            }
            int i12 = i10 + i11;
            b(i12);
            int[] iArr2 = this.f2575a;
            System.arraycopy(iArr2, i10, iArr2, i12, (iArr2.length - i10) - i11);
            Arrays.fill(this.f2575a, i10, i12, -1);
            List<a> list = this.f2576b;
            if (list == null) {
                return;
            }
            for (int size = list.size() - 1; size >= 0; size--) {
                a aVar = this.f2576b.get(size);
                int i13 = aVar.f2577h;
                if (i13 >= i10) {
                    aVar.f2577h = i13 + i11;
                }
            }
        }

        public final void f(int i10, int i11) {
            int[] iArr = this.f2575a;
            if (iArr == null || i10 >= iArr.length) {
                return;
            }
            int i12 = i10 + i11;
            b(i12);
            int[] iArr2 = this.f2575a;
            System.arraycopy(iArr2, i12, iArr2, i10, (iArr2.length - i10) - i11);
            int[] iArr3 = this.f2575a;
            Arrays.fill(iArr3, iArr3.length - i11, iArr3.length, -1);
            List<a> list = this.f2576b;
            if (list == null) {
                return;
            }
            for (int size = list.size() - 1; size >= 0; size--) {
                a aVar = this.f2576b.get(size);
                int i13 = aVar.f2577h;
                if (i13 >= i10) {
                    if (i13 < i12) {
                        this.f2576b.remove(size);
                    } else {
                        aVar.f2577h = i13 - i11;
                    }
                }
            }
        }

        @SuppressLint({"BanParcelableUsage"})
        public static class a implements Parcelable {
            public static final Parcelable.Creator<a> CREATOR = new C0031a();

            /* JADX INFO: renamed from: h, reason: collision with root package name */
            public int f2577h;

            /* JADX INFO: renamed from: i, reason: collision with root package name */
            public int f2578i;

            /* JADX INFO: renamed from: j, reason: collision with root package name */
            public int[] f2579j;

            /* JADX INFO: renamed from: k, reason: collision with root package name */
            public boolean f2580k;

            /* JADX INFO: renamed from: androidx.recyclerview.widget.StaggeredGridLayoutManager$d$a$a, reason: collision with other inner class name */
            public class C0031a implements Parcelable.Creator<a> {
                @Override // android.os.Parcelable.Creator
                public final a createFromParcel(Parcel parcel) {
                    return new a(parcel);
                }

                @Override // android.os.Parcelable.Creator
                public final a[] newArray(int i10) {
                    return new a[i10];
                }
            }

            public a(Parcel parcel) {
                this.f2577h = parcel.readInt();
                this.f2578i = parcel.readInt();
                this.f2580k = parcel.readInt() == 1;
                int i10 = parcel.readInt();
                if (i10 > 0) {
                    int[] iArr = new int[i10];
                    this.f2579j = iArr;
                    parcel.readIntArray(iArr);
                }
            }

            @Override // android.os.Parcelable
            public final int describeContents() {
                return 0;
            }

            public final String toString() {
                StringBuilder sbC = a0.b.c("FullSpanItem{mPosition=");
                sbC.append(this.f2577h);
                sbC.append(", mGapDir=");
                sbC.append(this.f2578i);
                sbC.append(", mHasUnwantedGapAfter=");
                sbC.append(this.f2580k);
                sbC.append(", mGapPerSpan=");
                sbC.append(Arrays.toString(this.f2579j));
                sbC.append('}');
                return sbC.toString();
            }

            @Override // android.os.Parcelable
            public final void writeToParcel(Parcel parcel, int i10) {
                parcel.writeInt(this.f2577h);
                parcel.writeInt(this.f2578i);
                parcel.writeInt(this.f2580k ? 1 : 0);
                int[] iArr = this.f2579j;
                if (iArr == null || iArr.length <= 0) {
                    parcel.writeInt(0);
                } else {
                    parcel.writeInt(iArr.length);
                    parcel.writeIntArray(this.f2579j);
                }
            }

            public a() {
            }
        }
    }
}
