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
import java.util.List;
import java.util.Objects;

/* JADX INFO: loaded from: classes.dex */
public class LinearLayoutManager extends RecyclerView.m implements t.g, RecyclerView.x.b {
    public int A;
    public d B;
    public final a C;
    public final b D;
    public int E;
    public int[] F;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public int f2366r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public c f2367s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public c0 f2368t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public boolean f2369u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public boolean f2370v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public boolean f2371w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public boolean f2372x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public boolean f2373y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public int f2374z;

    public static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public c0 f2375a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f2376b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public int f2377c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public boolean f2378d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public boolean f2379e;

        public a() {
            d();
        }

        public final void a() {
            this.f2377c = this.f2378d ? this.f2375a.g() : this.f2375a.k();
        }

        public final void b(View view, int i10) {
            if (this.f2378d) {
                this.f2377c = this.f2375a.m() + this.f2375a.b(view);
            } else {
                this.f2377c = this.f2375a.e(view);
            }
            this.f2376b = i10;
        }

        public final void c(View view, int i10) {
            int iM = this.f2375a.m();
            if (iM >= 0) {
                b(view, i10);
                return;
            }
            this.f2376b = i10;
            if (!this.f2378d) {
                int iE = this.f2375a.e(view);
                int iK = iE - this.f2375a.k();
                this.f2377c = iE;
                if (iK > 0) {
                    int iG = (this.f2375a.g() - Math.min(0, (this.f2375a.g() - iM) - this.f2375a.b(view))) - (this.f2375a.c(view) + iE);
                    if (iG < 0) {
                        this.f2377c -= Math.min(iK, -iG);
                        return;
                    }
                    return;
                }
                return;
            }
            int iG2 = (this.f2375a.g() - iM) - this.f2375a.b(view);
            this.f2377c = this.f2375a.g() - iG2;
            if (iG2 > 0) {
                int iC = this.f2377c - this.f2375a.c(view);
                int iK2 = this.f2375a.k();
                int iMin = iC - (Math.min(this.f2375a.e(view) - iK2, 0) + iK2);
                if (iMin < 0) {
                    this.f2377c = Math.min(iG2, -iMin) + this.f2377c;
                }
            }
        }

        public final void d() {
            this.f2376b = -1;
            this.f2377c = Integer.MIN_VALUE;
            this.f2378d = false;
            this.f2379e = false;
        }

        public final String toString() {
            StringBuilder sbC = a0.b.c("AnchorInfo{mPosition=");
            sbC.append(this.f2376b);
            sbC.append(", mCoordinate=");
            sbC.append(this.f2377c);
            sbC.append(", mLayoutFromEnd=");
            sbC.append(this.f2378d);
            sbC.append(", mValid=");
            sbC.append(this.f2379e);
            sbC.append('}');
            return sbC.toString();
        }
    }

    public static class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public int f2380a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public boolean f2381b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public boolean f2382c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public boolean f2383d;
    }

    public static class c {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f2385b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public int f2386c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public int f2387d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public int f2388e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public int f2389f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        public int f2390g;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public int f2393j;

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        public boolean f2395l;

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public boolean f2384a = true;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public int f2391h = 0;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public int f2392i = 0;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public List<RecyclerView.b0> f2394k = null;

        public final void a(View view) {
            int iA;
            int size = this.f2394k.size();
            View view2 = null;
            int i10 = Integer.MAX_VALUE;
            for (int i11 = 0; i11 < size; i11++) {
                View view3 = this.f2394k.get(i11).f2453a;
                RecyclerView.n nVar = (RecyclerView.n) view3.getLayoutParams();
                if (view3 != view && !nVar.c() && (iA = (nVar.a() - this.f2387d) * this.f2388e) >= 0 && iA < i10) {
                    view2 = view3;
                    if (iA == 0) {
                        break;
                    } else {
                        i10 = iA;
                    }
                }
            }
            if (view2 == null) {
                this.f2387d = -1;
            } else {
                this.f2387d = ((RecyclerView.n) view2.getLayoutParams()).a();
            }
        }

        public final boolean b(RecyclerView.y yVar) {
            int i10 = this.f2387d;
            return i10 >= 0 && i10 < yVar.b();
        }

        public final View c(RecyclerView.t tVar) {
            List<RecyclerView.b0> list = this.f2394k;
            if (list == null) {
                View view = tVar.j(this.f2387d, Long.MAX_VALUE).f2453a;
                this.f2387d += this.f2388e;
                return view;
            }
            int size = list.size();
            for (int i10 = 0; i10 < size; i10++) {
                View view2 = this.f2394k.get(i10).f2453a;
                RecyclerView.n nVar = (RecyclerView.n) view2.getLayoutParams();
                if (!nVar.c() && this.f2387d == nVar.a()) {
                    a(view2);
                    return view2;
                }
            }
            return null;
        }
    }

    @SuppressLint({"BanParcelableUsage"})
    public static class d implements Parcelable {
        public static final Parcelable.Creator<d> CREATOR = new a();

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public int f2396h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public int f2397i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public boolean f2398j;

        public class a implements Parcelable.Creator<d> {
            @Override // android.os.Parcelable.Creator
            public final d createFromParcel(Parcel parcel) {
                return new d(parcel);
            }

            @Override // android.os.Parcelable.Creator
            public final d[] newArray(int i10) {
                return new d[i10];
            }
        }

        public d() {
        }

        public final boolean a() {
            return this.f2396h >= 0;
        }

        @Override // android.os.Parcelable
        public final int describeContents() {
            return 0;
        }

        @Override // android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i10) {
            parcel.writeInt(this.f2396h);
            parcel.writeInt(this.f2397i);
            parcel.writeInt(this.f2398j ? 1 : 0);
        }

        public d(Parcel parcel) {
            this.f2396h = parcel.readInt();
            this.f2397i = parcel.readInt();
            this.f2398j = parcel.readInt() == 1;
        }

        public d(d dVar) {
            this.f2396h = dVar.f2396h;
            this.f2397i = dVar.f2397i;
            this.f2398j = dVar.f2398j;
        }
    }

    public LinearLayoutManager(Context context) {
        this(1);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.m
    public final boolean F0() {
        boolean z10;
        if (this.f2499o != 1073741824 && this.f2498n != 1073741824) {
            int iZ = z();
            int i10 = 0;
            while (true) {
                if (i10 >= iZ) {
                    z10 = false;
                    break;
                }
                ViewGroup.LayoutParams layoutParams = y(i10).getLayoutParams();
                if (layoutParams.width < 0 && layoutParams.height < 0) {
                    z10 = true;
                    break;
                }
                i10++;
            }
            if (z10) {
                return true;
            }
        }
        return false;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.m
    public void H0(RecyclerView recyclerView, RecyclerView.y yVar, int i10) {
        x xVar = new x(recyclerView.getContext());
        xVar.f2528a = i10;
        I0(xVar);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.m
    public boolean J0() {
        return this.B == null && this.f2369u == this.f2372x;
    }

    public void K0(RecyclerView.y yVar, int[] iArr) {
        int i10;
        int iL = yVar.f2543a != -1 ? this.f2368t.l() : 0;
        if (this.f2367s.f2389f == -1) {
            i10 = 0;
        } else {
            i10 = iL;
            iL = 0;
        }
        iArr[0] = iL;
        iArr[1] = i10;
    }

    public void L0(RecyclerView.y yVar, c cVar, RecyclerView.m.c cVar2) {
        int i10 = cVar.f2387d;
        if (i10 < 0 || i10 >= yVar.b()) {
            return;
        }
        ((r.b) cVar2).a(i10, Math.max(0, cVar.f2390g));
    }

    public final int M0(RecyclerView.y yVar) {
        if (z() == 0) {
            return 0;
        }
        Q0();
        return i0.a(yVar, this.f2368t, T0(!this.f2373y), S0(!this.f2373y), this, this.f2373y);
    }

    public final int N0(RecyclerView.y yVar) {
        if (z() == 0) {
            return 0;
        }
        Q0();
        return i0.b(yVar, this.f2368t, T0(!this.f2373y), S0(!this.f2373y), this, this.f2373y, this.f2371w);
    }

    public final int O0(RecyclerView.y yVar) {
        if (z() == 0) {
            return 0;
        }
        Q0();
        return i0.c(yVar, this.f2368t, T0(!this.f2373y), S0(!this.f2373y), this, this.f2373y);
    }

    public final int P0(int i10) {
        if (i10 == 1) {
            return (this.f2366r != 1 && d1()) ? 1 : -1;
        }
        if (i10 == 2) {
            return (this.f2366r != 1 && d1()) ? -1 : 1;
        }
        if (i10 == 17) {
            return this.f2366r == 0 ? -1 : Integer.MIN_VALUE;
        }
        if (i10 == 33) {
            return this.f2366r == 1 ? -1 : Integer.MIN_VALUE;
        }
        if (i10 != 66) {
            return (i10 == 130 && this.f2366r == 1) ? 1 : Integer.MIN_VALUE;
        }
        return this.f2366r == 0 ? 1 : Integer.MIN_VALUE;
    }

    public final void Q0() {
        if (this.f2367s == null) {
            this.f2367s = new c();
        }
    }

    public final int R0(RecyclerView.t tVar, c cVar, RecyclerView.y yVar, boolean z10) {
        int i10 = cVar.f2386c;
        int i11 = cVar.f2390g;
        if (i11 != Integer.MIN_VALUE) {
            if (i10 < 0) {
                cVar.f2390g = i11 + i10;
            }
            g1(tVar, cVar);
        }
        int i12 = cVar.f2386c + cVar.f2391h;
        b bVar = this.D;
        while (true) {
            if ((!cVar.f2395l && i12 <= 0) || !cVar.b(yVar)) {
                break;
            }
            bVar.f2380a = 0;
            bVar.f2381b = false;
            bVar.f2382c = false;
            bVar.f2383d = false;
            e1(tVar, yVar, cVar, bVar);
            if (!bVar.f2381b) {
                int i13 = cVar.f2385b;
                int i14 = bVar.f2380a;
                cVar.f2385b = (cVar.f2389f * i14) + i13;
                if (!bVar.f2382c || cVar.f2394k != null || !yVar.f2549g) {
                    cVar.f2386c -= i14;
                    i12 -= i14;
                }
                int i15 = cVar.f2390g;
                if (i15 != Integer.MIN_VALUE) {
                    int i16 = i15 + i14;
                    cVar.f2390g = i16;
                    int i17 = cVar.f2386c;
                    if (i17 < 0) {
                        cVar.f2390g = i16 + i17;
                    }
                    g1(tVar, cVar);
                }
                if (z10 && bVar.f2383d) {
                    break;
                }
            } else {
                break;
            }
        }
        return i10 - cVar.f2386c;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.m
    public final boolean S() {
        return true;
    }

    public final View S0(boolean z10) {
        return this.f2371w ? X0(0, z(), z10) : X0(z() - 1, -1, z10);
    }

    public final View T0(boolean z10) {
        return this.f2371w ? X0(z() - 1, -1, z10) : X0(0, z(), z10);
    }

    public final int U0() {
        View viewX0 = X0(0, z(), false);
        if (viewX0 == null) {
            return -1;
        }
        return O(viewX0);
    }

    public final int V0() {
        View viewX0 = X0(z() - 1, -1, false);
        if (viewX0 == null) {
            return -1;
        }
        return O(viewX0);
    }

    public final View W0(int i10, int i11) {
        byte b10;
        int i12;
        int i13;
        Q0();
        if (i11 > i10) {
            b10 = 1;
        } else {
            b10 = i11 < i10 ? (byte) -1 : (byte) 0;
        }
        if (b10 == 0) {
            return y(i10);
        }
        if (this.f2368t.e(y(i10)) < this.f2368t.k()) {
            i12 = 16644;
            i13 = 16388;
        } else {
            i12 = 4161;
            i13 = 4097;
        }
        return this.f2366r == 0 ? this.f2489e.a(i10, i11, i12, i13) : this.f2490f.a(i10, i11, i12, i13);
    }

    public final View X0(int i10, int i11, boolean z10) {
        Q0();
        int i12 = z10 ? 24579 : 320;
        return this.f2366r == 0 ? this.f2489e.a(i10, i11, i12, 320) : this.f2490f.a(i10, i11, i12, 320);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.m
    public final void Y(RecyclerView recyclerView) {
    }

    /* JADX WARN: Code duplicated, block: B:33:0x0073  */
    /* JADX WARN: Code duplicated, block: B:35:0x0077  */
    public View Y0(RecyclerView.t tVar, RecyclerView.y yVar, boolean z10, boolean z11) {
        int iZ;
        int i10;
        Q0();
        int iZ2 = z();
        int i11 = -1;
        if (z11) {
            iZ = z() - 1;
            i10 = -1;
        } else {
            i11 = iZ2;
            iZ = 0;
            i10 = 1;
        }
        int iB = yVar.b();
        int iK = this.f2368t.k();
        int iG = this.f2368t.g();
        View view = null;
        View view2 = null;
        View view3 = null;
        while (iZ != i11) {
            View viewY = y(iZ);
            int iO = O(viewY);
            int iE = this.f2368t.e(viewY);
            int iB2 = this.f2368t.b(viewY);
            if (iO >= 0 && iO < iB) {
                if (!((RecyclerView.n) viewY.getLayoutParams()).c()) {
                    boolean z12 = iB2 <= iK && iE < iK;
                    boolean z13 = iE >= iG && iB2 > iG;
                    if (!z12 && !z13) {
                        return viewY;
                    }
                    if (z10) {
                        if (z13) {
                            view2 = viewY;
                        } else if (view == null) {
                            view = viewY;
                        }
                    } else if (z12) {
                        view2 = viewY;
                    } else if (view == null) {
                        view = viewY;
                    }
                } else if (view3 == null) {
                    view3 = viewY;
                }
            }
            iZ += i10;
        }
        if (view != null) {
            return view;
        }
        return view2 != null ? view2 : view3;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.m
    public View Z(View view, int i10, RecyclerView.t tVar, RecyclerView.y yVar) {
        int iP0;
        View viewW0;
        i1();
        if (z() == 0 || (iP0 = P0(i10)) == Integer.MIN_VALUE) {
            return null;
        }
        Q0();
        n1(iP0, (int) (this.f2368t.l() * 0.33333334f), false, yVar);
        c cVar = this.f2367s;
        cVar.f2390g = Integer.MIN_VALUE;
        cVar.f2384a = false;
        R0(tVar, cVar, yVar, true);
        if (iP0 == -1) {
            viewW0 = this.f2371w ? W0(z() - 1, -1) : W0(0, z());
        } else {
            viewW0 = this.f2371w ? W0(0, z()) : W0(z() - 1, -1);
        }
        View viewC1 = iP0 == -1 ? c1() : b1();
        if (!viewC1.hasFocusable()) {
            return viewW0;
        }
        if (viewW0 == null) {
            return null;
        }
        return viewC1;
    }

    public final int Z0(int i10, RecyclerView.t tVar, RecyclerView.y yVar, boolean z10) {
        int iG;
        int iG2 = this.f2368t.g() - i10;
        if (iG2 <= 0) {
            return 0;
        }
        int i11 = -j1(-iG2, tVar, yVar);
        int i12 = i10 + i11;
        if (!z10 || (iG = this.f2368t.g() - i12) <= 0) {
            return i11;
        }
        this.f2368t.p(iG);
        return iG + i11;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.x.b
    public final PointF a(int i10) {
        if (z() == 0) {
            return null;
        }
        int i11 = (i10 < O(y(0))) != this.f2371w ? -1 : 1;
        return this.f2366r == 0 ? new PointF(i11, 0.0f) : new PointF(0.0f, i11);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.m
    public final void a0(AccessibilityEvent accessibilityEvent) {
        super.a0(accessibilityEvent);
        if (z() > 0) {
            accessibilityEvent.setFromIndex(U0());
            accessibilityEvent.setToIndex(V0());
        }
    }

    public final int a1(int i10, RecyclerView.t tVar, RecyclerView.y yVar, boolean z10) {
        int iK;
        int iK2 = i10 - this.f2368t.k();
        if (iK2 <= 0) {
            return 0;
        }
        int i11 = -j1(iK2, tVar, yVar);
        int i12 = i10 + i11;
        if (!z10 || (iK = i12 - this.f2368t.k()) <= 0) {
            return i11;
        }
        this.f2368t.p(-iK);
        return i11 - iK;
    }

    @Override // androidx.recyclerview.widget.t.g
    public final void b(View view, View view2) {
        e("Cannot drop a view during a scroll or layout calculation");
        Q0();
        i1();
        int iO = O(view);
        int iO2 = O(view2);
        byte b10 = iO < iO2 ? (byte) 1 : (byte) -1;
        if (this.f2371w) {
            if (b10 == 1) {
                k1(iO2, this.f2368t.g() - (this.f2368t.c(view) + this.f2368t.e(view2)));
                return;
            } else {
                k1(iO2, this.f2368t.g() - this.f2368t.b(view2));
                return;
            }
        }
        if (b10 == -1) {
            k1(iO2, this.f2368t.e(view2));
        } else {
            k1(iO2, this.f2368t.b(view2) - this.f2368t.c(view));
        }
    }

    public final View b1() {
        return y(this.f2371w ? 0 : z() - 1);
    }

    public final View c1() {
        return y(this.f2371w ? z() - 1 : 0);
    }

    public final boolean d1() {
        return H() == 1;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.m
    public final void e(String str) {
        if (this.B == null) {
            super.e(str);
        }
    }

    public void e1(RecyclerView.t tVar, RecyclerView.y yVar, c cVar, b bVar) {
        int i10;
        int i11;
        int i12;
        int iL;
        int iD;
        View viewC = cVar.c(tVar);
        if (viewC == null) {
            bVar.f2381b = true;
            return;
        }
        RecyclerView.n nVar = (RecyclerView.n) viewC.getLayoutParams();
        if (cVar.f2394k == null) {
            if (this.f2371w == (cVar.f2389f == -1)) {
                c(viewC);
            } else {
                d(viewC, 0, false);
            }
        } else {
            if (this.f2371w == (cVar.f2389f == -1)) {
                d(viewC, -1, true);
            } else {
                d(viewC, 0, true);
            }
        }
        RecyclerView.n nVar2 = (RecyclerView.n) viewC.getLayoutParams();
        Rect rectM = this.f2486b.M(viewC);
        int i13 = rectM.left + rectM.right + 0;
        int i14 = rectM.top + rectM.bottom + 0;
        int iA = RecyclerView.m.A(this.f2500p, this.f2498n, M() + L() + ((ViewGroup.MarginLayoutParams) nVar2).leftMargin + ((ViewGroup.MarginLayoutParams) nVar2).rightMargin + i13, ((ViewGroup.MarginLayoutParams) nVar2).width, g());
        int iA2 = RecyclerView.m.A(this.f2501q, this.f2499o, K() + N() + ((ViewGroup.MarginLayoutParams) nVar2).topMargin + ((ViewGroup.MarginLayoutParams) nVar2).bottomMargin + i14, ((ViewGroup.MarginLayoutParams) nVar2).height, h());
        if (E0(viewC, iA, iA2, nVar2)) {
            viewC.measure(iA, iA2);
        }
        bVar.f2380a = this.f2368t.c(viewC);
        if (this.f2366r == 1) {
            if (d1()) {
                iD = this.f2500p - M();
                iL = iD - this.f2368t.d(viewC);
            } else {
                iL = L();
                iD = this.f2368t.d(viewC) + iL;
            }
            if (cVar.f2389f == -1) {
                int i15 = cVar.f2385b;
                i12 = i15;
                i11 = iD;
                i10 = i15 - bVar.f2380a;
            } else {
                int i16 = cVar.f2385b;
                i10 = i16;
                i11 = iD;
                i12 = bVar.f2380a + i16;
            }
        } else {
            int iN = N();
            int iD2 = this.f2368t.d(viewC) + iN;
            if (cVar.f2389f == -1) {
                int i17 = cVar.f2385b;
                i11 = i17;
                i10 = iN;
                i12 = iD2;
                iL = i17 - bVar.f2380a;
            } else {
                int i18 = cVar.f2385b;
                i10 = iN;
                i11 = bVar.f2380a + i18;
                i12 = iD2;
                iL = i18;
            }
        }
        U(viewC, iL, i10, i11, i12);
        if (nVar.c() || nVar.b()) {
            bVar.f2382c = true;
        }
        bVar.f2383d = viewC.hasFocusable();
    }

    public void f1(RecyclerView.t tVar, RecyclerView.y yVar, a aVar, int i10) {
    }

    @Override // androidx.recyclerview.widget.RecyclerView.m
    public final boolean g() {
        return this.f2366r == 0;
    }

    public final void g1(RecyclerView.t tVar, c cVar) {
        if (!cVar.f2384a || cVar.f2395l) {
            return;
        }
        int i10 = cVar.f2390g;
        int i11 = cVar.f2392i;
        if (cVar.f2389f == -1) {
            int iZ = z();
            if (i10 < 0) {
                return;
            }
            int iF = (this.f2368t.f() - i10) + i11;
            if (this.f2371w) {
                for (int i12 = 0; i12 < iZ; i12++) {
                    View viewY = y(i12);
                    if (this.f2368t.e(viewY) < iF || this.f2368t.o(viewY) < iF) {
                        h1(tVar, 0, i12);
                        return;
                    }
                }
                return;
            }
            int i13 = iZ - 1;
            for (int i14 = i13; i14 >= 0; i14--) {
                View viewY2 = y(i14);
                if (this.f2368t.e(viewY2) < iF || this.f2368t.o(viewY2) < iF) {
                    h1(tVar, i13, i14);
                    return;
                }
            }
            return;
        }
        if (i10 < 0) {
            return;
        }
        int i15 = i10 - i11;
        int iZ2 = z();
        if (!this.f2371w) {
            for (int i16 = 0; i16 < iZ2; i16++) {
                View viewY3 = y(i16);
                if (this.f2368t.b(viewY3) > i15 || this.f2368t.n(viewY3) > i15) {
                    h1(tVar, 0, i16);
                    return;
                }
            }
            return;
        }
        int i17 = iZ2 - 1;
        for (int i18 = i17; i18 >= 0; i18--) {
            View viewY4 = y(i18);
            if (this.f2368t.b(viewY4) > i15 || this.f2368t.n(viewY4) > i15) {
                h1(tVar, i17, i18);
                return;
            }
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.m
    public boolean h() {
        return this.f2366r == 1;
    }

    public final void h1(RecyclerView.t tVar, int i10, int i11) {
        if (i10 == i11) {
            return;
        }
        if (i11 <= i10) {
            while (i10 > i11) {
                r0(i10, tVar);
                i10--;
            }
        } else {
            for (int i12 = i11 - 1; i12 >= i10; i12--) {
                r0(i12, tVar);
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:112:0x01f5  */
    /* JADX WARN: Code duplicated, block: B:116:0x01fc  */
    /* JADX WARN: Code duplicated, block: B:119:0x0201  */
    /* JADX WARN: Code duplicated, block: B:121:0x0205  */
    /* JADX WARN: Code duplicated, block: B:124:0x020a  */
    /* JADX WARN: Code duplicated, block: B:99:0x01b7  */
    @Override // androidx.recyclerview.widget.RecyclerView.m
    public void i0(RecyclerView.t tVar, RecyclerView.y yVar) {
        boolean z10;
        boolean z11;
        boolean z12;
        boolean z13;
        View viewY0;
        int iE;
        int iB;
        int iK;
        int iG;
        boolean z14;
        boolean z15;
        int i10;
        int i11;
        int i12;
        int i13;
        int i14;
        int iZ0;
        int i15;
        View viewU;
        int iE2;
        int iG2;
        if (!(this.B == null && this.f2374z == -1) && yVar.b() == 0) {
            o0(tVar);
            return;
        }
        d dVar = this.B;
        if (dVar != null && dVar.a()) {
            this.f2374z = this.B.f2396h;
        }
        Q0();
        this.f2367s.f2384a = false;
        i1();
        View viewG = G();
        a aVar = this.C;
        boolean z16 = true;
        if (!aVar.f2379e || this.f2374z != -1 || this.B != null) {
            aVar.d();
            a aVar2 = this.C;
            aVar2.f2378d = this.f2371w ^ this.f2372x;
            if (yVar.f2549g || (i10 = this.f2374z) == -1) {
                z10 = false;
            } else if (i10 < 0 || i10 >= yVar.b()) {
                this.f2374z = -1;
                this.A = Integer.MIN_VALUE;
                z10 = false;
            } else {
                aVar2.f2376b = this.f2374z;
                d dVar2 = this.B;
                if (dVar2 != null && dVar2.a()) {
                    boolean z17 = this.B.f2398j;
                    aVar2.f2378d = z17;
                    if (z17) {
                        aVar2.f2377c = this.f2368t.g() - this.B.f2397i;
                    } else {
                        aVar2.f2377c = this.f2368t.k() + this.B.f2397i;
                    }
                } else if (this.A == Integer.MIN_VALUE) {
                    View viewU2 = u(this.f2374z);
                    if (viewU2 == null) {
                        if (z() > 0) {
                            aVar2.f2378d = (this.f2374z < O(y(0))) == this.f2371w;
                        }
                        aVar2.a();
                    } else if (this.f2368t.c(viewU2) > this.f2368t.l()) {
                        aVar2.a();
                    } else if (this.f2368t.e(viewU2) - this.f2368t.k() < 0) {
                        aVar2.f2377c = this.f2368t.k();
                        aVar2.f2378d = false;
                    } else if (this.f2368t.g() - this.f2368t.b(viewU2) < 0) {
                        aVar2.f2377c = this.f2368t.g();
                        aVar2.f2378d = true;
                    } else {
                        aVar2.f2377c = aVar2.f2378d ? this.f2368t.m() + this.f2368t.b(viewU2) : this.f2368t.e(viewU2);
                    }
                } else {
                    boolean z18 = this.f2371w;
                    aVar2.f2378d = z18;
                    if (z18) {
                        aVar2.f2377c = this.f2368t.g() - this.A;
                    } else {
                        aVar2.f2377c = this.f2368t.k() + this.A;
                    }
                }
                z10 = true;
            }
            if (!z10) {
                if (z() != 0) {
                    View viewG2 = G();
                    if (viewG2 != null) {
                        RecyclerView.n nVar = (RecyclerView.n) viewG2.getLayoutParams();
                        if (!nVar.c() && nVar.a() >= 0 && nVar.a() < yVar.b()) {
                            aVar2.c(viewG2, O(viewG2));
                        } else {
                            z12 = this.f2369u;
                            z13 = this.f2372x;
                            if (z12 == z13 && (viewY0 = Y0(tVar, yVar, aVar2.f2378d, z13)) != null) {
                                aVar2.b(viewY0, O(viewY0));
                                if (!yVar.f2549g && J0()) {
                                    iE = this.f2368t.e(viewY0);
                                    iB = this.f2368t.b(viewY0);
                                    iK = this.f2368t.k();
                                    iG = this.f2368t.g();
                                    if (iB <= iK || iE >= iK) {
                                        z14 = false;
                                    } else {
                                        z14 = true;
                                    }
                                    if (iE >= iG || iB <= iG) {
                                        z15 = false;
                                    } else {
                                        z15 = true;
                                    }
                                    if (z14 || z15) {
                                        if (aVar2.f2378d) {
                                            iK = iG;
                                        }
                                        aVar2.f2377c = iK;
                                    }
                                }
                            } else {
                                z11 = false;
                            }
                        }
                        z11 = true;
                    } else {
                        z12 = this.f2369u;
                        z13 = this.f2372x;
                        if (z12 == z13) {
                            aVar2.b(viewY0, O(viewY0));
                            if (!yVar.f2549g) {
                                iE = this.f2368t.e(viewY0);
                                iB = this.f2368t.b(viewY0);
                                iK = this.f2368t.k();
                                iG = this.f2368t.g();
                                if (iB <= iK) {
                                    z14 = false;
                                } else {
                                    z14 = false;
                                }
                                if (iE >= iG) {
                                    z15 = false;
                                } else {
                                    z15 = false;
                                }
                                if (z14) {
                                    if (aVar2.f2378d) {
                                        iK = iG;
                                    }
                                    aVar2.f2377c = iK;
                                } else {
                                    if (aVar2.f2378d) {
                                        iK = iG;
                                    }
                                    aVar2.f2377c = iK;
                                }
                            }
                            z11 = true;
                        }
                        z11 = false;
                    }
                } else {
                    z11 = false;
                }
                if (!z11) {
                    aVar2.a();
                    aVar2.f2376b = this.f2372x ? yVar.b() - 1 : 0;
                }
            }
            this.C.f2379e = true;
        } else if (viewG != null && (this.f2368t.e(viewG) >= this.f2368t.g() || this.f2368t.b(viewG) <= this.f2368t.k())) {
            this.C.c(viewG, O(viewG));
        }
        c cVar = this.f2367s;
        cVar.f2389f = cVar.f2393j >= 0 ? 1 : -1;
        int[] iArr = this.F;
        iArr[0] = 0;
        iArr[1] = 0;
        K0(yVar, iArr);
        int iK2 = this.f2368t.k() + Math.max(0, this.F[0]);
        int iH = this.f2368t.h() + Math.max(0, this.F[1]);
        if (yVar.f2549g && (i15 = this.f2374z) != -1 && this.A != Integer.MIN_VALUE && (viewU = u(i15)) != null) {
            if (this.f2371w) {
                iG2 = this.f2368t.g() - this.f2368t.b(viewU);
                iE2 = this.A;
            } else {
                iE2 = this.f2368t.e(viewU) - this.f2368t.k();
                iG2 = this.A;
            }
            int i16 = iG2 - iE2;
            if (i16 > 0) {
                iK2 += i16;
            } else {
                iH -= i16;
            }
        }
        a aVar3 = this.C;
        f1(tVar, yVar, aVar3, (!aVar3.f2378d ? this.f2371w : !this.f2371w) ? 1 : -1);
        s(tVar);
        this.f2367s.f2395l = this.f2368t.i() == 0 && this.f2368t.f() == 0;
        Objects.requireNonNull(this.f2367s);
        this.f2367s.f2392i = 0;
        a aVar4 = this.C;
        if (aVar4.f2378d) {
            p1(aVar4.f2376b, aVar4.f2377c);
            c cVar2 = this.f2367s;
            cVar2.f2391h = iK2;
            R0(tVar, cVar2, yVar, false);
            c cVar3 = this.f2367s;
            i12 = cVar3.f2385b;
            int i17 = cVar3.f2387d;
            int i18 = cVar3.f2386c;
            if (i18 > 0) {
                iH += i18;
            }
            a aVar5 = this.C;
            o1(aVar5.f2376b, aVar5.f2377c);
            c cVar4 = this.f2367s;
            cVar4.f2391h = iH;
            cVar4.f2387d += cVar4.f2388e;
            R0(tVar, cVar4, yVar, false);
            c cVar5 = this.f2367s;
            i11 = cVar5.f2385b;
            int i19 = cVar5.f2386c;
            if (i19 > 0) {
                p1(i17, i12);
                c cVar6 = this.f2367s;
                cVar6.f2391h = i19;
                R0(tVar, cVar6, yVar, false);
                i12 = this.f2367s.f2385b;
            }
        } else {
            o1(aVar4.f2376b, aVar4.f2377c);
            c cVar7 = this.f2367s;
            cVar7.f2391h = iH;
            R0(tVar, cVar7, yVar, false);
            c cVar8 = this.f2367s;
            i11 = cVar8.f2385b;
            int i20 = cVar8.f2387d;
            int i21 = cVar8.f2386c;
            if (i21 > 0) {
                iK2 += i21;
            }
            a aVar6 = this.C;
            p1(aVar6.f2376b, aVar6.f2377c);
            c cVar9 = this.f2367s;
            cVar9.f2391h = iK2;
            cVar9.f2387d += cVar9.f2388e;
            R0(tVar, cVar9, yVar, false);
            c cVar10 = this.f2367s;
            i12 = cVar10.f2385b;
            int i22 = cVar10.f2386c;
            if (i22 > 0) {
                o1(i20, i11);
                c cVar11 = this.f2367s;
                cVar11.f2391h = i22;
                R0(tVar, cVar11, yVar, false);
                i11 = this.f2367s.f2385b;
            }
        }
        if (z() > 0) {
            if (this.f2371w ^ this.f2372x) {
                int iZ1 = Z0(i11, tVar, yVar, true);
                i13 = i12 + iZ1;
                i14 = i11 + iZ1;
                iZ0 = a1(i13, tVar, yVar, false);
            } else {
                int iA1 = a1(i12, tVar, yVar, true);
                i13 = i12 + iA1;
                i14 = i11 + iA1;
                iZ0 = Z0(i14, tVar, yVar, false);
            }
            i12 = i13 + iZ0;
            i11 = i14 + iZ0;
        }
        if (yVar.f2553k && z() != 0 && !yVar.f2549g && J0()) {
            List<RecyclerView.b0> list = tVar.f2521d;
            int size = list.size();
            int iO = O(y(0));
            int i23 = 0;
            int iC = 0;
            int iC2 = 0;
            while (i23 < size) {
                RecyclerView.b0 b0Var = list.get(i23);
                if (!b0Var.p()) {
                    if (((b0Var.i() < iO ? z16 : false) != this.f2371w ? (byte) -1 : (byte) 1) == -1) {
                        iC += this.f2368t.c(b0Var.f2453a);
                    } else {
                        iC2 += this.f2368t.c(b0Var.f2453a);
                    }
                }
                i23++;
                z16 = true;
            }
            this.f2367s.f2394k = list;
            if (iC > 0) {
                p1(O(c1()), i12);
                c cVar12 = this.f2367s;
                cVar12.f2391h = iC;
                cVar12.f2386c = 0;
                cVar12.a(null);
                R0(tVar, this.f2367s, yVar, false);
            }
            if (iC2 > 0) {
                o1(O(b1()), i11);
                c cVar13 = this.f2367s;
                cVar13.f2391h = iC2;
                cVar13.f2386c = 0;
                cVar13.a(null);
                R0(tVar, this.f2367s, yVar, false);
            }
            this.f2367s.f2394k = null;
        }
        if (yVar.f2549g) {
            this.C.d();
        } else {
            c0 c0Var = this.f2368t;
            c0Var.f2614b = c0Var.l();
        }
        this.f2369u = this.f2372x;
    }

    public final void i1() {
        if (this.f2366r == 1 || !d1()) {
            this.f2371w = this.f2370v;
        } else {
            this.f2371w = !this.f2370v;
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.m
    public void j0(RecyclerView.y yVar) {
        this.B = null;
        this.f2374z = -1;
        this.A = Integer.MIN_VALUE;
        this.C.d();
    }

    public final int j1(int i10, RecyclerView.t tVar, RecyclerView.y yVar) {
        if (z() == 0 || i10 == 0) {
            return 0;
        }
        Q0();
        this.f2367s.f2384a = true;
        int i11 = i10 > 0 ? 1 : -1;
        int iAbs = Math.abs(i10);
        n1(i11, iAbs, true, yVar);
        c cVar = this.f2367s;
        int iR0 = R0(tVar, cVar, yVar, false) + cVar.f2390g;
        if (iR0 < 0) {
            return 0;
        }
        if (iAbs > iR0) {
            i10 = i11 * iR0;
        }
        this.f2368t.p(-i10);
        this.f2367s.f2393j = i10;
        return i10;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.m
    public final void k(int i10, int i11, RecyclerView.y yVar, RecyclerView.m.c cVar) {
        if (this.f2366r != 0) {
            i10 = i11;
        }
        if (z() == 0 || i10 == 0) {
            return;
        }
        Q0();
        n1(i10 > 0 ? 1 : -1, Math.abs(i10), true, yVar);
        L0(yVar, this.f2367s, cVar);
    }

    public final void k1(int i10, int i11) {
        this.f2374z = i10;
        this.A = i11;
        d dVar = this.B;
        if (dVar != null) {
            dVar.f2396h = -1;
        }
        u0();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.m
    public final void l(int i10, RecyclerView.m.c cVar) {
        boolean z10;
        int i11;
        d dVar = this.B;
        if (dVar == null || !dVar.a()) {
            i1();
            z10 = this.f2371w;
            i11 = this.f2374z;
            if (i11 == -1) {
                i11 = z10 ? i10 - 1 : 0;
            }
        } else {
            d dVar2 = this.B;
            z10 = dVar2.f2398j;
            i11 = dVar2.f2396h;
        }
        int i12 = z10 ? -1 : 1;
        for (int i13 = 0; i13 < this.E && i11 >= 0 && i11 < i10; i13++) {
            ((r.b) cVar).a(i11, 0);
            i11 += i12;
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.m
    public final void l0(Parcelable parcelable) {
        if (parcelable instanceof d) {
            d dVar = (d) parcelable;
            this.B = dVar;
            if (this.f2374z != -1) {
                dVar.f2396h = -1;
            }
            u0();
        }
    }

    public final void l1(int i10) {
        if (i10 != 0 && i10 != 1) {
            throw new IllegalArgumentException(androidx.appcompat.widget.e0.d("invalid orientation:", i10));
        }
        e(null);
        if (i10 != this.f2366r || this.f2368t == null) {
            c0 c0VarA = c0.a(this, i10);
            this.f2368t = c0VarA;
            this.C.f2375a = c0VarA;
            this.f2366r = i10;
            u0();
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.m
    public final int m(RecyclerView.y yVar) {
        return M0(yVar);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.m
    public final Parcelable m0() {
        d dVar = this.B;
        if (dVar != null) {
            return new d(dVar);
        }
        d dVar2 = new d();
        if (z() > 0) {
            Q0();
            boolean z10 = this.f2369u ^ this.f2371w;
            dVar2.f2398j = z10;
            if (z10) {
                View viewB1 = b1();
                dVar2.f2397i = this.f2368t.g() - this.f2368t.b(viewB1);
                dVar2.f2396h = O(viewB1);
            } else {
                View viewC1 = c1();
                dVar2.f2396h = O(viewC1);
                dVar2.f2397i = this.f2368t.e(viewC1) - this.f2368t.k();
            }
        } else {
            dVar2.f2396h = -1;
        }
        return dVar2;
    }

    public void m1(boolean z10) {
        e(null);
        if (this.f2372x == z10) {
            return;
        }
        this.f2372x = z10;
        u0();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.m
    public int n(RecyclerView.y yVar) {
        return N0(yVar);
    }

    public final void n1(int i10, int i11, boolean z10, RecyclerView.y yVar) {
        int iK;
        this.f2367s.f2395l = this.f2368t.i() == 0 && this.f2368t.f() == 0;
        this.f2367s.f2389f = i10;
        int[] iArr = this.F;
        iArr[0] = 0;
        iArr[1] = 0;
        K0(yVar, iArr);
        int iMax = Math.max(0, this.F[0]);
        int iMax2 = Math.max(0, this.F[1]);
        boolean z11 = i10 == 1;
        c cVar = this.f2367s;
        int i12 = z11 ? iMax2 : iMax;
        cVar.f2391h = i12;
        if (!z11) {
            iMax = iMax2;
        }
        cVar.f2392i = iMax;
        if (z11) {
            cVar.f2391h = this.f2368t.h() + i12;
            View viewB1 = b1();
            c cVar2 = this.f2367s;
            cVar2.f2388e = this.f2371w ? -1 : 1;
            int iO = O(viewB1);
            c cVar3 = this.f2367s;
            cVar2.f2387d = iO + cVar3.f2388e;
            cVar3.f2385b = this.f2368t.b(viewB1);
            iK = this.f2368t.b(viewB1) - this.f2368t.g();
        } else {
            View viewC1 = c1();
            c cVar4 = this.f2367s;
            cVar4.f2391h = this.f2368t.k() + cVar4.f2391h;
            c cVar5 = this.f2367s;
            cVar5.f2388e = this.f2371w ? 1 : -1;
            int iO2 = O(viewC1);
            c cVar6 = this.f2367s;
            cVar5.f2387d = iO2 + cVar6.f2388e;
            cVar6.f2385b = this.f2368t.e(viewC1);
            iK = (-this.f2368t.e(viewC1)) + this.f2368t.k();
        }
        c cVar7 = this.f2367s;
        cVar7.f2386c = i11;
        if (z10) {
            cVar7.f2386c = i11 - iK;
        }
        cVar7.f2390g = iK;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.m
    public int o(RecyclerView.y yVar) {
        return O0(yVar);
    }

    public final void o1(int i10, int i11) {
        this.f2367s.f2386c = this.f2368t.g() - i11;
        c cVar = this.f2367s;
        cVar.f2388e = this.f2371w ? -1 : 1;
        cVar.f2387d = i10;
        cVar.f2389f = 1;
        cVar.f2385b = i11;
        cVar.f2390g = Integer.MIN_VALUE;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.m
    public final int p(RecyclerView.y yVar) {
        return M0(yVar);
    }

    public final void p1(int i10, int i11) {
        this.f2367s.f2386c = i11 - this.f2368t.k();
        c cVar = this.f2367s;
        cVar.f2387d = i10;
        cVar.f2388e = this.f2371w ? 1 : -1;
        cVar.f2389f = -1;
        cVar.f2385b = i11;
        cVar.f2390g = Integer.MIN_VALUE;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.m
    public int q(RecyclerView.y yVar) {
        return N0(yVar);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.m
    public int r(RecyclerView.y yVar) {
        return O0(yVar);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.m
    public final View u(int i10) {
        int iZ = z();
        if (iZ == 0) {
            return null;
        }
        int iO = i10 - O(y(0));
        if (iO >= 0 && iO < iZ) {
            View viewY = y(iO);
            if (O(viewY) == i10) {
                return viewY;
            }
        }
        return super.u(i10);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.m
    public RecyclerView.n v() {
        return new RecyclerView.n(-2, -2);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.m
    public int v0(int i10, RecyclerView.t tVar, RecyclerView.y yVar) {
        if (this.f2366r == 1) {
            return 0;
        }
        return j1(i10, tVar, yVar);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.m
    public final void w0(int i10) {
        this.f2374z = i10;
        this.A = Integer.MIN_VALUE;
        d dVar = this.B;
        if (dVar != null) {
            dVar.f2396h = -1;
        }
        u0();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.m
    public int x0(int i10, RecyclerView.t tVar, RecyclerView.y yVar) {
        if (this.f2366r == 0) {
            return 0;
        }
        return j1(i10, tVar, yVar);
    }

    public LinearLayoutManager(int i10) {
        this.f2366r = 1;
        this.f2370v = false;
        this.f2371w = false;
        this.f2372x = false;
        this.f2373y = true;
        this.f2374z = -1;
        this.A = Integer.MIN_VALUE;
        this.B = null;
        this.C = new a();
        this.D = new b();
        this.E = 2;
        this.F = new int[2];
        l1(i10);
        e(null);
        if (this.f2370v) {
            this.f2370v = false;
            u0();
        }
    }

    public LinearLayoutManager(Context context, AttributeSet attributeSet, int i10, int i11) {
        this.f2366r = 1;
        this.f2370v = false;
        this.f2371w = false;
        this.f2372x = false;
        this.f2373y = true;
        this.f2374z = -1;
        this.A = Integer.MIN_VALUE;
        this.B = null;
        this.C = new a();
        this.D = new b();
        this.E = 2;
        this.F = new int[2];
        RecyclerView.m.d dVarP = RecyclerView.m.P(context, attributeSet, i10, i11);
        l1(dVarP.f2504a);
        boolean z10 = dVarP.f2506c;
        e(null);
        if (z10 != this.f2370v) {
            this.f2370v = z10;
            u0();
        }
        m1(dVarP.f2507d);
    }
}
