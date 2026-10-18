package androidx.recyclerview.widget;

import android.content.Context;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseIntArray;
import android.view.View;
import android.view.ViewGroup;
import java.util.Arrays;
import java.util.Objects;

/* JADX INFO: loaded from: classes.dex */
public class GridLayoutManager extends LinearLayoutManager {
    public boolean G;
    public int H;
    public int[] I;
    public View[] J;
    public final SparseIntArray K;
    public final SparseIntArray L;
    public a M;
    public final Rect N;

    public static final class a extends c {
    }

    public static abstract class c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final SparseIntArray f2364a = new SparseIntArray();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final SparseIntArray f2365b = new SparseIntArray();

        public final int a(int i10, int i11) {
            int i12 = 0;
            int i13 = 0;
            for (int i14 = 0; i14 < i10; i14++) {
                i12++;
                if (i12 == i11) {
                    i13++;
                    i12 = 0;
                } else if (i12 > i11) {
                    i13++;
                    i12 = 1;
                }
            }
            return i12 + 1 > i11 ? i13 + 1 : i13;
        }

        public final void b() {
            this.f2365b.clear();
        }

        public final void c() {
            this.f2364a.clear();
        }
    }

    public GridLayoutManager(Context context, AttributeSet attributeSet, int i10, int i11) {
        super(context, attributeSet, i10, i11);
        this.G = false;
        this.H = -1;
        this.K = new SparseIntArray();
        this.L = new SparseIntArray();
        this.M = new a();
        this.N = new Rect();
        y1(RecyclerView.m.P(context, attributeSet, i10, i11).f2505b);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.m
    public final int B(RecyclerView.t tVar, RecyclerView.y yVar) {
        if (this.f2366r == 1) {
            return this.H;
        }
        if (yVar.b() < 1) {
            return 0;
        }
        return t1(tVar, yVar, yVar.b() - 1) + 1;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.m
    public final void B0(Rect rect, int i10, int i11) {
        int iJ;
        int iJ2;
        if (this.I == null) {
            super.B0(rect, i10, i11);
        }
        int iM = M() + L();
        int iK = K() + N();
        if (this.f2366r == 1) {
            iJ2 = RecyclerView.m.j(i11, rect.height() + iK, I());
            int[] iArr = this.I;
            iJ = RecyclerView.m.j(i10, iArr[iArr.length - 1] + iM, J());
        } else {
            iJ = RecyclerView.m.j(i10, rect.width() + iM, J());
            int[] iArr2 = this.I;
            iJ2 = RecyclerView.m.j(i11, iArr2[iArr2.length - 1] + iK, I());
        }
        A0(iJ, iJ2);
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.m
    public final boolean J0() {
        return this.B == null && !this.G;
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager
    public final void L0(RecyclerView.y yVar, LinearLayoutManager.c cVar, RecyclerView.m.c cVar2) {
        int i10 = this.H;
        for (int i11 = 0; i11 < this.H && cVar.b(yVar) && i10 > 0; i11++) {
            ((r.b) cVar2).a(cVar.f2387d, Math.max(0, cVar.f2390g));
            Objects.requireNonNull(this.M);
            i10--;
            cVar.f2387d += cVar.f2388e;
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.m
    public final int Q(RecyclerView.t tVar, RecyclerView.y yVar) {
        if (this.f2366r == 0) {
            return this.H;
        }
        if (yVar.b() < 1) {
            return 0;
        }
        return t1(tVar, yVar, yVar.b() - 1) + 1;
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager
    public final View Y0(RecyclerView.t tVar, RecyclerView.y yVar, boolean z10, boolean z11) {
        int iZ;
        int iZ2 = z();
        int i10 = -1;
        if (z11) {
            iZ = z() - 1;
            iZ2 = -1;
        } else {
            iZ = 0;
            i10 = 1;
        }
        int iB = yVar.b();
        Q0();
        int iK = this.f2368t.k();
        int iG = this.f2368t.g();
        View view = null;
        View view2 = null;
        while (iZ != iZ2) {
            View viewY = y(iZ);
            int iO = O(viewY);
            if (iO >= 0 && iO < iB && u1(tVar, yVar, iO) == 0) {
                if (((RecyclerView.n) viewY.getLayoutParams()).c()) {
                    if (view2 == null) {
                        view2 = viewY;
                    }
                } else {
                    if (this.f2368t.e(viewY) < iG && this.f2368t.b(viewY) >= iK) {
                        return viewY;
                    }
                    if (view == null) {
                        view = viewY;
                    }
                }
            }
            iZ += i10;
        }
        return view != null ? view : view2;
    }

    /* JADX WARN: Code duplicated, block: B:79:0x0107  */
    /* JADX WARN: Code duplicated, block: B:81:0x010d  */
    /* JADX WARN: Code duplicated, block: B:82:0x011e  */
    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.m
    public final View Z(View view, int i10, RecyclerView.t tVar, RecyclerView.y yVar) {
        int iZ;
        int i11;
        int iZ2;
        View view2;
        View view3;
        int i12;
        boolean z10;
        RecyclerView.t tVar2 = tVar;
        RecyclerView.y yVar2 = yVar;
        View viewT = t(view);
        View view4 = null;
        if (viewT == null) {
            return null;
        }
        b bVar = (b) viewT.getLayoutParams();
        int i13 = bVar.f2362e;
        int i14 = bVar.f2363f + i13;
        if (super.Z(view, i10, tVar, yVar) == null) {
            return null;
        }
        if ((P0(i10) == 1) != this.f2371w) {
            iZ2 = z() - 1;
            iZ = -1;
            i11 = -1;
        } else {
            iZ = z();
            i11 = 1;
            iZ2 = 0;
        }
        boolean z11 = this.f2366r == 1 && d1();
        int iT1 = t1(tVar2, yVar2, iZ2);
        int i15 = -1;
        int i16 = -1;
        int i17 = i11;
        int iMin = 0;
        int iMin2 = 0;
        int i18 = iZ2;
        View view5 = null;
        while (i18 != iZ) {
            int i19 = iZ;
            int iT2 = t1(tVar2, yVar2, i18);
            View viewY = y(i18);
            if (viewY == viewT) {
                break;
            }
            if (!viewY.hasFocusable() || iT2 == iT1) {
                b bVar2 = (b) viewY.getLayoutParams();
                int i20 = bVar2.f2362e;
                view2 = viewT;
                int i21 = bVar2.f2363f + i20;
                if (viewY.hasFocusable() && i20 == i13 && i21 == i14) {
                    return viewY;
                }
                if (!(viewY.hasFocusable() && view4 == null) && (viewY.hasFocusable() || view5 != null)) {
                    view3 = view5;
                    int iMin3 = Math.min(i21, i14) - Math.max(i20, i13);
                    if (!viewY.hasFocusable()) {
                        if (view4 == null) {
                            i12 = iMin;
                            if (!(this.f2489e.b(viewY) && this.f2490f.b(viewY))) {
                                if (iMin3 <= iMin2) {
                                    if (iMin3 == iMin2) {
                                        if (z11 == (i20 > i15)) {
                                        }
                                    }
                                }
                                z10 = true;
                            }
                            if (z10) {
                                if (viewY.hasFocusable()) {
                                    int i22 = bVar2.f2362e;
                                    iMin = Math.min(i21, i14) - Math.max(i20, i13);
                                    i16 = i22;
                                    view5 = view3;
                                    view4 = viewY;
                                } else {
                                    int i23 = bVar2.f2362e;
                                    iMin2 = Math.min(i21, i14) - Math.max(i20, i13);
                                    i15 = i23;
                                    iMin = i12;
                                    view5 = viewY;
                                }
                            }
                            i18 += i17;
                            tVar2 = tVar;
                            yVar2 = yVar;
                            iZ = i19;
                            viewT = view2;
                        }
                        z10 = false;
                        if (z10) {
                            if (viewY.hasFocusable()) {
                                int i24 = bVar2.f2362e;
                                iMin = Math.min(i21, i14) - Math.max(i20, i13);
                                i16 = i24;
                                view5 = view3;
                                view4 = viewY;
                            } else {
                                int i25 = bVar2.f2362e;
                                iMin2 = Math.min(i21, i14) - Math.max(i20, i13);
                                i15 = i25;
                                iMin = i12;
                                view5 = viewY;
                            }
                        }
                        i18 += i17;
                        tVar2 = tVar;
                        yVar2 = yVar;
                        iZ = i19;
                        viewT = view2;
                    } else if (iMin3 <= iMin) {
                        if (iMin3 == iMin) {
                            if (z11 == (i20 > i16)) {
                            }
                            if (z10) {
                                if (viewY.hasFocusable()) {
                                    int i26 = bVar2.f2362e;
                                    iMin = Math.min(i21, i14) - Math.max(i20, i13);
                                    i16 = i26;
                                    view5 = view3;
                                    view4 = viewY;
                                } else {
                                    int i27 = bVar2.f2362e;
                                    iMin2 = Math.min(i21, i14) - Math.max(i20, i13);
                                    i15 = i27;
                                    iMin = i12;
                                    view5 = viewY;
                                }
                            }
                            i18 += i17;
                            tVar2 = tVar;
                            yVar2 = yVar;
                            iZ = i19;
                            viewT = view2;
                        }
                    }
                    i12 = iMin;
                    z10 = false;
                    if (z10) {
                        if (viewY.hasFocusable()) {
                            int i28 = bVar2.f2362e;
                            iMin = Math.min(i21, i14) - Math.max(i20, i13);
                            i16 = i28;
                            view5 = view3;
                            view4 = viewY;
                        } else {
                            int i29 = bVar2.f2362e;
                            iMin2 = Math.min(i21, i14) - Math.max(i20, i13);
                            i15 = i29;
                            iMin = i12;
                            view5 = viewY;
                        }
                    }
                    i18 += i17;
                    tVar2 = tVar;
                    yVar2 = yVar;
                    iZ = i19;
                    viewT = view2;
                } else {
                    view3 = view5;
                }
                i12 = iMin;
                z10 = true;
                if (z10) {
                    if (viewY.hasFocusable()) {
                        int i210 = bVar2.f2362e;
                        iMin = Math.min(i21, i14) - Math.max(i20, i13);
                        i16 = i210;
                        view5 = view3;
                        view4 = viewY;
                    } else {
                        int i211 = bVar2.f2362e;
                        iMin2 = Math.min(i21, i14) - Math.max(i20, i13);
                        i15 = i211;
                        iMin = i12;
                        view5 = viewY;
                    }
                }
                i18 += i17;
                tVar2 = tVar;
                yVar2 = yVar;
                iZ = i19;
                viewT = view2;
            } else {
                if (view4 != null) {
                    break;
                }
                view2 = viewT;
                view3 = view5;
                i12 = iMin;
            }
            iMin = i12;
            view5 = view3;
            i18 += i17;
            tVar2 = tVar;
            yVar2 = yVar;
            iZ = i19;
            viewT = view2;
        }
        return view4 != null ? view4 : view5;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.m
    public final void c0(RecyclerView.t tVar, RecyclerView.y yVar, View view, k0.f fVar) {
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        if (!(layoutParams instanceof b)) {
            b0(view, fVar);
            return;
        }
        b bVar = (b) layoutParams;
        int iT1 = t1(tVar, yVar, bVar.a());
        if (this.f2366r == 0) {
            fVar.q(k0.f.c.a(bVar.f2362e, bVar.f2363f, iT1, 1, false));
        } else {
            fVar.q(k0.f.c.a(iT1, 1, bVar.f2362e, bVar.f2363f, false));
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.m
    public final void d0(int i10, int i11) {
        this.M.c();
        this.M.b();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.m
    public final void e0() {
        this.M.c();
        this.M.b();
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager
    public final void e1(RecyclerView.t tVar, RecyclerView.y yVar, LinearLayoutManager.c cVar, LinearLayoutManager.b bVar) {
        int i10;
        int i11;
        int i12;
        int i13;
        int i14;
        int i15;
        int i16;
        int i17;
        int i18;
        int i19;
        int i20;
        int iD;
        int iL;
        int iD2;
        int i21;
        int i22;
        int iA;
        int iA2;
        boolean z10;
        View viewC;
        int iJ = this.f2368t.j();
        boolean z11 = iJ != 1073741824;
        int i23 = z() > 0 ? this.I[this.H] : 0;
        if (z11) {
            z1();
        }
        boolean z12 = cVar.f2388e == 1;
        int iU1 = this.H;
        if (!z12) {
            iU1 = u1(tVar, yVar, cVar.f2387d) + v1(tVar, yVar, cVar.f2387d);
        }
        int i24 = 0;
        while (i24 < this.H && cVar.b(yVar) && iU1 > 0) {
            int i25 = cVar.f2387d;
            int iV1 = v1(tVar, yVar, i25);
            if (iV1 > this.H) {
                throw new IllegalArgumentException(s.a(s.b("Item at position ", i25, " requires ", iV1, " spans but GridLayoutManager has only "), this.H, " spans."));
            }
            iU1 -= iV1;
            if (iU1 < 0 || (viewC = cVar.c(tVar)) == null) {
                break;
            }
            this.J[i24] = viewC;
            i24++;
        }
        if (i24 == 0) {
            bVar.f2381b = true;
            return;
        }
        if (z12) {
            i12 = 1;
            i11 = i24;
            i10 = 0;
        } else {
            i10 = i24 - 1;
            i11 = -1;
            i12 = -1;
        }
        int i26 = 0;
        while (i10 != i11) {
            View view = this.J[i10];
            b bVar2 = (b) view.getLayoutParams();
            int iV2 = v1(tVar, yVar, O(view));
            bVar2.f2363f = iV2;
            bVar2.f2362e = i26;
            i26 += iV2;
            i10 += i12;
        }
        float f10 = 0.0f;
        int i27 = 0;
        for (int i28 = 0; i28 < i24; i28++) {
            View view2 = this.J[i28];
            if (cVar.f2394k != null) {
                z10 = false;
                if (z12) {
                    d(view2, -1, true);
                } else {
                    d(view2, 0, true);
                }
            } else if (z12) {
                c(view2);
                z10 = false;
            } else {
                z10 = false;
                d(view2, 0, false);
            }
            f(view2, this.N);
            w1(view2, iJ, z10);
            int iC = this.f2368t.c(view2);
            if (iC > i27) {
                i27 = iC;
            }
            float fD = (this.f2368t.d(view2) * 1.0f) / ((b) view2.getLayoutParams()).f2363f;
            if (fD > f10) {
                f10 = fD;
            }
        }
        if (z11) {
            q1(Math.max(Math.round(f10 * this.H), i23));
            i27 = 0;
            for (int i29 = 0; i29 < i24; i29++) {
                View view3 = this.J[i29];
                w1(view3, 1073741824, true);
                int iC2 = this.f2368t.c(view3);
                if (iC2 > i27) {
                    i27 = iC2;
                }
            }
        }
        for (int i30 = 0; i30 < i24; i30++) {
            View view4 = this.J[i30];
            if (this.f2368t.c(view4) != i27) {
                b bVar3 = (b) view4.getLayoutParams();
                Rect rect = bVar3.f2509b;
                int i31 = rect.top + rect.bottom + ((ViewGroup.MarginLayoutParams) bVar3).topMargin + ((ViewGroup.MarginLayoutParams) bVar3).bottomMargin;
                int i32 = rect.left + rect.right + ((ViewGroup.MarginLayoutParams) bVar3).leftMargin + ((ViewGroup.MarginLayoutParams) bVar3).rightMargin;
                int iS1 = s1(bVar3.f2362e, bVar3.f2363f);
                if (this.f2366r == 1) {
                    iA2 = RecyclerView.m.A(iS1, 1073741824, i32, ((ViewGroup.MarginLayoutParams) bVar3).width, false);
                    iA = View.MeasureSpec.makeMeasureSpec(i27 - i31, 1073741824);
                } else {
                    int iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(i27 - i32, 1073741824);
                    iA = RecyclerView.m.A(iS1, 1073741824, i31, ((ViewGroup.MarginLayoutParams) bVar3).height, false);
                    iA2 = iMakeMeasureSpec;
                }
                x1(view4, iA2, iA, true);
            }
        }
        bVar.f2380a = i27;
        if (this.f2366r == 1) {
            if (cVar.f2389f == -1) {
                i22 = cVar.f2385b;
                i21 = i22 - i27;
            } else {
                int i33 = cVar.f2385b;
                i21 = i33;
                i22 = i27 + i33;
            }
            i16 = i21;
            i15 = 0;
            i17 = i22;
            i14 = 0;
        } else {
            if (cVar.f2389f == -1) {
                i14 = cVar.f2385b;
                i13 = i14 - i27;
            } else {
                int i34 = cVar.f2385b;
                i13 = i34;
                i14 = i27 + i34;
            }
            i15 = i13;
            i16 = 0;
            i17 = 0;
        }
        int i35 = 0;
        while (i35 < i24) {
            View view5 = this.J[i35];
            b bVar4 = (b) view5.getLayoutParams();
            if (this.f2366r == 1) {
                if (d1()) {
                    iD2 = L() + this.I[this.H - bVar4.f2362e];
                    iL = iD2 - this.f2368t.d(view5);
                } else {
                    iL = this.I[bVar4.f2362e] + L();
                    iD2 = this.f2368t.d(view5) + iL;
                }
                i19 = iL;
                i20 = i16;
                iD = i17;
                i18 = iD2;
            } else {
                int iN = N() + this.I[bVar4.f2362e];
                i18 = i14;
                i19 = i15;
                i20 = iN;
                iD = this.f2368t.d(view5) + iN;
            }
            U(view5, i19, i20, i18, iD);
            if (bVar4.c() || bVar4.b()) {
                bVar.f2382c = true;
            }
            bVar.f2383d |= view5.hasFocusable();
            i35++;
            i14 = i18;
            i15 = i19;
            i16 = i20;
            i17 = iD;
        }
        Arrays.fill(this.J, (Object) null);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.m
    public final void f0(int i10, int i11) {
        this.M.c();
        this.M.b();
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager
    public final void f1(RecyclerView.t tVar, RecyclerView.y yVar, LinearLayoutManager.a aVar, int i10) {
        z1();
        if (yVar.b() > 0 && !yVar.f2549g) {
            boolean z10 = i10 == 1;
            int iU1 = u1(tVar, yVar, aVar.f2376b);
            if (z10) {
                while (iU1 > 0) {
                    int i11 = aVar.f2376b;
                    if (i11 <= 0) {
                        break;
                    }
                    int i12 = i11 - 1;
                    aVar.f2376b = i12;
                    iU1 = u1(tVar, yVar, i12);
                }
            } else {
                int iB = yVar.b() - 1;
                int i13 = aVar.f2376b;
                while (i13 < iB) {
                    int i14 = i13 + 1;
                    int iU2 = u1(tVar, yVar, i14);
                    if (iU2 <= iU1) {
                        break;
                    }
                    i13 = i14;
                    iU1 = iU2;
                }
                aVar.f2376b = i13;
            }
        }
        r1();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.m
    public final void g0(int i10, int i11) {
        this.M.c();
        this.M.b();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.m
    public final void h0(int i10, int i11) {
        this.M.c();
        this.M.b();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.m
    public final boolean i(RecyclerView.n nVar) {
        return nVar instanceof b;
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.m
    public final void i0(RecyclerView.t tVar, RecyclerView.y yVar) {
        if (yVar.f2549g) {
            int iZ = z();
            for (int i10 = 0; i10 < iZ; i10++) {
                b bVar = (b) y(i10).getLayoutParams();
                int iA = bVar.a();
                this.K.put(iA, bVar.f2363f);
                this.L.put(iA, bVar.f2362e);
            }
        }
        super.i0(tVar, yVar);
        this.K.clear();
        this.L.clear();
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.m
    public final void j0(RecyclerView.y yVar) {
        super.j0(yVar);
        this.G = false;
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager
    public final void m1(boolean z10) {
        if (z10) {
            throw new UnsupportedOperationException("GridLayoutManager does not support stack from end. Consider using reverse layout");
        }
        e(null);
        if (this.f2372x) {
            this.f2372x = false;
            u0();
        }
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.m
    public final int n(RecyclerView.y yVar) {
        return N0(yVar);
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.m
    public final int o(RecyclerView.y yVar) {
        return O0(yVar);
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.m
    public final int q(RecyclerView.y yVar) {
        return N0(yVar);
    }

    public final void q1(int i10) {
        int i11;
        int[] iArr = this.I;
        int i12 = this.H;
        if (iArr == null || iArr.length != i12 + 1 || iArr[iArr.length - 1] != i10) {
            iArr = new int[i12 + 1];
        }
        int i13 = 0;
        iArr[0] = 0;
        int i14 = i10 / i12;
        int i15 = i10 % i12;
        int i16 = 0;
        for (int i17 = 1; i17 <= i12; i17++) {
            i13 += i15;
            if (i13 <= 0 || i12 - i13 >= i15) {
                i11 = i14;
            } else {
                i11 = i14 + 1;
                i13 -= i12;
            }
            i16 += i11;
            iArr[i17] = i16;
        }
        this.I = iArr;
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.m
    public final int r(RecyclerView.y yVar) {
        return O0(yVar);
    }

    public final void r1() {
        View[] viewArr = this.J;
        if (viewArr == null || viewArr.length != this.H) {
            this.J = new View[this.H];
        }
    }

    public final int s1(int i10, int i11) {
        if (this.f2366r != 1 || !d1()) {
            int[] iArr = this.I;
            return iArr[i11 + i10] - iArr[i10];
        }
        int[] iArr2 = this.I;
        int i12 = this.H;
        return iArr2[i12 - i10] - iArr2[(i12 - i10) - i11];
    }

    public final int t1(RecyclerView.t tVar, RecyclerView.y yVar, int i10) {
        if (!yVar.f2549g) {
            return this.M.a(i10, this.H);
        }
        int iC = tVar.c(i10);
        if (iC != -1) {
            return this.M.a(iC, this.H);
        }
        Log.w("GridLayoutManager", "Cannot find span size for pre layout position. " + i10);
        return 0;
    }

    public final int u1(RecyclerView.t tVar, RecyclerView.y yVar, int i10) {
        if (!yVar.f2549g) {
            a aVar = this.M;
            int i11 = this.H;
            Objects.requireNonNull(aVar);
            return i10 % i11;
        }
        int i12 = this.L.get(i10, -1);
        if (i12 != -1) {
            return i12;
        }
        int iC = tVar.c(i10);
        if (iC != -1) {
            a aVar2 = this.M;
            int i13 = this.H;
            Objects.requireNonNull(aVar2);
            return iC % i13;
        }
        Log.w("GridLayoutManager", "Cannot find span size for pre layout position. It is not cached, not in the adapter. Pos:" + i10);
        return 0;
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.m
    public final RecyclerView.n v() {
        return this.f2366r == 0 ? new b(-2, -1) : new b(-1, -2);
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.m
    public final int v0(int i10, RecyclerView.t tVar, RecyclerView.y yVar) {
        z1();
        r1();
        return super.v0(i10, tVar, yVar);
    }

    public final int v1(RecyclerView.t tVar, RecyclerView.y yVar, int i10) {
        if (!yVar.f2549g) {
            Objects.requireNonNull(this.M);
            return 1;
        }
        int i11 = this.K.get(i10, -1);
        if (i11 != -1) {
            return i11;
        }
        if (tVar.c(i10) != -1) {
            Objects.requireNonNull(this.M);
            return 1;
        }
        Log.w("GridLayoutManager", "Cannot find span size for pre layout position. It is not cached, not in the adapter. Pos:" + i10);
        return 1;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.m
    public final RecyclerView.n w(Context context, AttributeSet attributeSet) {
        return new b(context, attributeSet);
    }

    public final void w1(View view, int i10, boolean z10) {
        int iA;
        int iA2;
        b bVar = (b) view.getLayoutParams();
        Rect rect = bVar.f2509b;
        int i11 = rect.top + rect.bottom + ((ViewGroup.MarginLayoutParams) bVar).topMargin + ((ViewGroup.MarginLayoutParams) bVar).bottomMargin;
        int i12 = rect.left + rect.right + ((ViewGroup.MarginLayoutParams) bVar).leftMargin + ((ViewGroup.MarginLayoutParams) bVar).rightMargin;
        int iS1 = s1(bVar.f2362e, bVar.f2363f);
        if (this.f2366r == 1) {
            iA2 = RecyclerView.m.A(iS1, i10, i12, ((ViewGroup.MarginLayoutParams) bVar).width, false);
            iA = RecyclerView.m.A(this.f2368t.l(), this.f2499o, i11, ((ViewGroup.MarginLayoutParams) bVar).height, true);
        } else {
            int iA3 = RecyclerView.m.A(iS1, i10, i11, ((ViewGroup.MarginLayoutParams) bVar).height, false);
            int iA4 = RecyclerView.m.A(this.f2368t.l(), this.f2498n, i12, ((ViewGroup.MarginLayoutParams) bVar).width, true);
            iA = iA3;
            iA2 = iA4;
        }
        x1(view, iA2, iA, z10);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.m
    public final RecyclerView.n x(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof ViewGroup.MarginLayoutParams ? new b((ViewGroup.MarginLayoutParams) layoutParams) : new b(layoutParams);
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.m
    public final int x0(int i10, RecyclerView.t tVar, RecyclerView.y yVar) {
        z1();
        r1();
        if (this.f2366r == 0) {
            return 0;
        }
        return j1(i10, tVar, yVar);
    }

    public final void x1(View view, int i10, int i11, boolean z10) {
        RecyclerView.n nVar = (RecyclerView.n) view.getLayoutParams();
        if (z10 ? G0(view, i10, i11, nVar) : E0(view, i10, i11, nVar)) {
            view.measure(i10, i11);
        }
    }

    public final void y1(int i10) {
        if (i10 == this.H) {
            return;
        }
        this.G = true;
        if (i10 < 1) {
            throw new IllegalArgumentException(androidx.appcompat.widget.e0.d("Span count should be at least 1. Provided ", i10));
        }
        this.H = i10;
        this.M.c();
        u0();
    }

    public final void z1() {
        int iK;
        int iN;
        if (this.f2366r == 1) {
            iK = this.f2500p - M();
            iN = L();
        } else {
            iK = this.f2501q - K();
            iN = N();
        }
        q1(iK - iN);
    }

    public static class b extends RecyclerView.n {

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public int f2362e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public int f2363f;

        public b(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            this.f2362e = -1;
            this.f2363f = 0;
        }

        public b(int i10, int i11) {
            super(i10, i11);
            this.f2362e = -1;
            this.f2363f = 0;
        }

        public b(ViewGroup.MarginLayoutParams marginLayoutParams) {
            super(marginLayoutParams);
            this.f2362e = -1;
            this.f2363f = 0;
        }

        public b(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
            this.f2362e = -1;
            this.f2363f = 0;
        }
    }

    public GridLayoutManager(Context context, int i10) {
        super(1);
        this.G = false;
        this.H = -1;
        this.K = new SparseIntArray();
        this.L = new SparseIntArray();
        this.M = new a();
        this.N = new Rect();
        y1(i10);
    }
}
