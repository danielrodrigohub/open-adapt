package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.util.SparseBooleanArray;
import android.view.LayoutInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.R;
import androidx.appcompat.view.menu.ActionMenuItemView;
import java.util.ArrayList;
import java.util.Objects;

/* JADX INFO: compiled from: ActionMenuPresenter.java */
/* JADX INFO: loaded from: classes.dex */
public final class c extends androidx.appcompat.view.menu.a {
    public a A;
    public RunnableC0018c B;
    public b C;
    public final f D;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public d f1175p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public Drawable f1176q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public boolean f1177r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public boolean f1178s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public boolean f1179t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public int f1180u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public int f1181v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public int f1182w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public boolean f1183x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public final SparseBooleanArray f1184y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public e f1185z;

    /* JADX INFO: compiled from: ActionMenuPresenter.java */
    public class a extends androidx.appcompat.view.menu.h {
        public a(Context context, androidx.appcompat.view.menu.l lVar, View view) {
            super(context, lVar, view, false, R.attr.actionOverflowMenuStyle, 0);
            if (!lVar.A.g()) {
                View view2 = c.this.f1175p;
                this.f937f = view2 == null ? (View) c.this.f833o : view2;
            }
            d(c.this.D);
        }

        @Override // androidx.appcompat.view.menu.h
        public final void c() {
            c.this.A = null;
            super.c();
        }
    }

    /* JADX INFO: compiled from: ActionMenuPresenter.java */
    public class b extends ActionMenuItemView.b {
        public b() {
        }
    }

    /* JADX INFO: renamed from: androidx.appcompat.widget.c$c, reason: collision with other inner class name */
    /* JADX INFO: compiled from: ActionMenuPresenter.java */
    public class RunnableC0018c implements Runnable {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public e f1188h;

        public RunnableC0018c(e eVar) {
            this.f1188h = eVar;
        }

        @Override // java.lang.Runnable
        public final void run() {
            androidx.appcompat.view.menu.e.a aVar;
            androidx.appcompat.view.menu.e eVar = c.this.f828j;
            if (eVar != null && (aVar = eVar.f882e) != null) {
                aVar.b(eVar);
            }
            View view = (View) c.this.f833o;
            if (view != null && view.getWindowToken() != null) {
                e eVar2 = this.f1188h;
                boolean z10 = true;
                if (!eVar2.b()) {
                    if (eVar2.f937f == null) {
                        z10 = false;
                    } else {
                        eVar2.e(0, 0, false, false);
                    }
                }
                if (z10) {
                    c.this.f1185z = this.f1188h;
                }
            }
            c.this.B = null;
        }
    }

    /* JADX INFO: compiled from: ActionMenuPresenter.java */
    public class d extends s implements ActionMenuView.a {

        /* JADX INFO: compiled from: ActionMenuPresenter.java */
        public class a extends o0 {
            public a(View view) {
                super(view);
            }

            @Override // androidx.appcompat.widget.o0
            public final k.f b() {
                e eVar = c.this.f1185z;
                if (eVar == null) {
                    return null;
                }
                return eVar.a();
            }

            @Override // androidx.appcompat.widget.o0
            public final boolean c() {
                c.this.m();
                return true;
            }

            @Override // androidx.appcompat.widget.o0
            public final boolean d() {
                c cVar = c.this;
                if (cVar.B != null) {
                    return false;
                }
                cVar.g();
                return true;
            }
        }

        public d(Context context) {
            super(context, null, R.attr.actionOverflowButtonStyle);
            setClickable(true);
            setFocusable(true);
            setVisibility(0);
            setEnabled(true);
            j1.a(this, getContentDescription());
            setOnTouchListener(new a(this));
        }

        @Override // androidx.appcompat.widget.ActionMenuView.a
        public final boolean a() {
            return false;
        }

        @Override // androidx.appcompat.widget.ActionMenuView.a
        public final boolean b() {
            return false;
        }

        @Override // android.view.View
        public final boolean performClick() {
            if (super.performClick()) {
                return true;
            }
            playSoundEffect(0);
            c.this.m();
            return true;
        }

        @Override // android.widget.ImageView
        public final boolean setFrame(int i10, int i11, int i12, int i13) {
            boolean frame = super.setFrame(i10, i11, i12, i13);
            Drawable drawable = getDrawable();
            Drawable background = getBackground();
            if (drawable != null && background != null) {
                int width = getWidth();
                int height = getHeight();
                int iMax = Math.max(width, height) / 2;
                int paddingLeft = (width + (getPaddingLeft() - getPaddingRight())) / 2;
                int paddingTop = (height + (getPaddingTop() - getPaddingBottom())) / 2;
                b0.a.b.f(background, paddingLeft - iMax, paddingTop - iMax, paddingLeft + iMax, paddingTop + iMax);
            }
            return frame;
        }
    }

    /* JADX INFO: compiled from: ActionMenuPresenter.java */
    public class e extends androidx.appcompat.view.menu.h {
        public e(Context context, androidx.appcompat.view.menu.e eVar, View view) {
            super(context, eVar, view, true, R.attr.actionOverflowMenuStyle, 0);
            this.f938g = 8388613;
            d(c.this.D);
        }

        @Override // androidx.appcompat.view.menu.h
        public final void c() {
            androidx.appcompat.view.menu.e eVar = c.this.f828j;
            if (eVar != null) {
                eVar.d(true);
            }
            c.this.f1185z = null;
            super.c();
        }
    }

    /* JADX INFO: compiled from: ActionMenuPresenter.java */
    public class f implements androidx.appcompat.view.menu.i.a {
        public f() {
        }

        @Override // androidx.appcompat.view.menu.i.a
        public final void b(androidx.appcompat.view.menu.e eVar, boolean z10) {
            if (eVar instanceof androidx.appcompat.view.menu.l) {
                eVar.l().d(false);
            }
            androidx.appcompat.view.menu.i.a aVar = c.this.f830l;
            if (aVar != null) {
                aVar.b(eVar, z10);
            }
        }

        @Override // androidx.appcompat.view.menu.i.a
        public final boolean c(androidx.appcompat.view.menu.e eVar) {
            c cVar = c.this;
            if (eVar == cVar.f828j) {
                return false;
            }
            Objects.requireNonNull(((androidx.appcompat.view.menu.l) eVar).A);
            Objects.requireNonNull(cVar);
            androidx.appcompat.view.menu.i.a aVar = c.this.f830l;
            if (aVar != null) {
                return aVar.c(eVar);
            }
            return false;
        }
    }

    public c(Context context) {
        super(context, R.layout.abc_action_menu_layout, R.layout.abc_action_menu_item_layout);
        this.f1184y = new SparseBooleanArray();
        this.D = new f();
    }

    public final boolean a() {
        boolean z10;
        boolean zG = g();
        a aVar = this.A;
        if (aVar != null) {
            if (aVar.b()) {
                aVar.f941j.dismiss();
            }
            z10 = true;
        } else {
            z10 = false;
        }
        return zG | z10;
    }

    @Override // androidx.appcompat.view.menu.i
    public final void b(androidx.appcompat.view.menu.e eVar, boolean z10) {
        a();
        androidx.appcompat.view.menu.i.a aVar = this.f830l;
        if (aVar != null) {
            aVar.b(eVar, z10);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final View c(androidx.appcompat.view.menu.g gVar, View view, ViewGroup viewGroup) {
        View actionView = gVar.getActionView();
        if (actionView == null || gVar.f()) {
            androidx.appcompat.view.menu.j.a aVar = view instanceof androidx.appcompat.view.menu.j.a ? (androidx.appcompat.view.menu.j.a) view : (androidx.appcompat.view.menu.j.a) this.f829k.inflate(this.f832n, viewGroup, false);
            aVar.d(gVar);
            ActionMenuItemView actionMenuItemView = (ActionMenuItemView) aVar;
            actionMenuItemView.setItemInvoker((ActionMenuView) this.f833o);
            if (this.C == null) {
                this.C = new b();
            }
            actionMenuItemView.setPopupCallback(this.C);
            actionView = (View) aVar;
        }
        actionView.setVisibility(gVar.C ? 8 : 0);
        ActionMenuView actionMenuView = (ActionMenuView) viewGroup;
        ViewGroup.LayoutParams layoutParams = actionView.getLayoutParams();
        if (!actionMenuView.checkLayoutParams(layoutParams)) {
            actionView.setLayoutParams(actionMenuView.generateLayoutParams(layoutParams));
        }
        return actionView;
    }

    @Override // androidx.appcompat.view.menu.i
    public final void e(Context context, androidx.appcompat.view.menu.e eVar) {
        this.f827i = context;
        LayoutInflater.from(context);
        this.f828j = eVar;
        Resources resources = context.getResources();
        if (!this.f1179t) {
            this.f1178s = true;
        }
        int i10 = 2;
        this.f1180u = context.getResources().getDisplayMetrics().widthPixels / 2;
        Configuration configuration = context.getResources().getConfiguration();
        int i11 = configuration.screenWidthDp;
        int i12 = configuration.screenHeightDp;
        if (configuration.smallestScreenWidthDp > 600 || i11 > 600 || ((i11 > 960 && i12 > 720) || (i11 > 720 && i12 > 960))) {
            i10 = 5;
        } else if (i11 >= 500 || ((i11 > 640 && i12 > 480) || (i11 > 480 && i12 > 640))) {
            i10 = 4;
        } else if (i11 >= 360) {
            i10 = 3;
        }
        this.f1182w = i10;
        int measuredWidth = this.f1180u;
        if (this.f1178s) {
            if (this.f1175p == null) {
                d dVar = new d(this.f826h);
                this.f1175p = dVar;
                if (this.f1177r) {
                    dVar.setImageDrawable(this.f1176q);
                    this.f1176q = null;
                    this.f1177r = false;
                }
                int iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(0, 0);
                this.f1175p.measure(iMakeMeasureSpec, iMakeMeasureSpec);
            }
            measuredWidth -= this.f1175p.getMeasuredWidth();
        } else {
            this.f1175p = null;
        }
        this.f1181v = measuredWidth;
        float f10 = resources.getDisplayMetrics().density;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // androidx.appcompat.view.menu.i
    public final void f() {
        int i10;
        boolean z10;
        ViewGroup viewGroup = (ViewGroup) this.f833o;
        ArrayList<androidx.appcompat.view.menu.g> arrayList = null;
        boolean z11 = false;
        if (viewGroup != null) {
            androidx.appcompat.view.menu.e eVar = this.f828j;
            if (eVar != null) {
                eVar.j();
                ArrayList<androidx.appcompat.view.menu.g> arrayListM = this.f828j.m();
                int size = arrayListM.size();
                i10 = 0;
                for (int i11 = 0; i11 < size; i11++) {
                    androidx.appcompat.view.menu.g gVar = arrayListM.get(i11);
                    if (gVar.g()) {
                        View childAt = viewGroup.getChildAt(i10);
                        androidx.appcompat.view.menu.g itemData = childAt instanceof androidx.appcompat.view.menu.j.a ? ((androidx.appcompat.view.menu.j.a) childAt).getItemData() : null;
                        View viewC = c(gVar, childAt, viewGroup);
                        if (gVar != itemData) {
                            viewC.setPressed(false);
                            viewC.jumpDrawablesToCurrentState();
                        }
                        if (viewC != childAt) {
                            ViewGroup viewGroup2 = (ViewGroup) viewC.getParent();
                            if (viewGroup2 != null) {
                                viewGroup2.removeView(viewC);
                            }
                            ((ViewGroup) this.f833o).addView(viewC, i10);
                        }
                        i10++;
                    }
                }
            } else {
                i10 = 0;
            }
            while (i10 < viewGroup.getChildCount()) {
                if (viewGroup.getChildAt(i10) == this.f1175p) {
                    z10 = false;
                } else {
                    viewGroup.removeViewAt(i10);
                    z10 = true;
                }
                if (!z10) {
                    i10++;
                }
            }
        }
        ((View) this.f833o).requestLayout();
        androidx.appcompat.view.menu.e eVar2 = this.f828j;
        if (eVar2 != null) {
            eVar2.j();
            ArrayList<androidx.appcompat.view.menu.g> arrayList2 = eVar2.f886i;
            int size2 = arrayList2.size();
            for (int i12 = 0; i12 < size2; i12++) {
                j0.b bVar = arrayList2.get(i12).A;
            }
        }
        androidx.appcompat.view.menu.e eVar3 = this.f828j;
        if (eVar3 != null) {
            eVar3.j();
            arrayList = eVar3.f887j;
        }
        if (this.f1178s && arrayList != null) {
            int size3 = arrayList.size();
            if (size3 == 1) {
                z11 = !arrayList.get(0).C;
            } else if (size3 > 0) {
                z11 = true;
            }
        }
        if (z11) {
            if (this.f1175p == null) {
                this.f1175p = new d(this.f826h);
            }
            ViewGroup viewGroup3 = (ViewGroup) this.f1175p.getParent();
            if (viewGroup3 != this.f833o) {
                if (viewGroup3 != null) {
                    viewGroup3.removeView(this.f1175p);
                }
                ActionMenuView actionMenuView = (ActionMenuView) this.f833o;
                d dVar = this.f1175p;
                ActionMenuView.c cVarGenerateDefaultLayoutParams = actionMenuView.generateDefaultLayoutParams();
                cVarGenerateDefaultLayoutParams.f1014a = true;
                actionMenuView.addView(dVar, cVarGenerateDefaultLayoutParams);
            }
        } else {
            d dVar2 = this.f1175p;
            if (dVar2 != null) {
                Object parent = dVar2.getParent();
                Object obj = this.f833o;
                if (parent == obj) {
                    ((ViewGroup) obj).removeView(this.f1175p);
                }
            }
        }
        ((ActionMenuView) this.f833o).setOverflowReserved(this.f1178s);
    }

    public final boolean g() {
        Object obj;
        RunnableC0018c runnableC0018c = this.B;
        if (runnableC0018c != null && (obj = this.f833o) != null) {
            ((View) obj).removeCallbacks(runnableC0018c);
            this.B = null;
            return true;
        }
        e eVar = this.f1185z;
        if (eVar == null) {
            return false;
        }
        if (eVar.b()) {
            eVar.f941j.dismiss();
        }
        return true;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // androidx.appcompat.view.menu.i
    public final boolean h(androidx.appcompat.view.menu.l lVar) {
        boolean z10;
        boolean z11 = false;
        if (!lVar.hasVisibleItems()) {
            return false;
        }
        androidx.appcompat.view.menu.l lVar2 = lVar;
        while (true) {
            androidx.appcompat.view.menu.e eVar = lVar2.f965z;
            if (eVar == this.f828j) {
                break;
            }
            lVar2 = (androidx.appcompat.view.menu.l) eVar;
        }
        androidx.appcompat.view.menu.g gVar = lVar2.A;
        ViewGroup viewGroup = (ViewGroup) this.f833o;
        View view = null;
        view = null;
        if (viewGroup != null) {
            int childCount = viewGroup.getChildCount();
            for (int i10 = 0; i10 < childCount; i10++) {
                View childAt = viewGroup.getChildAt(i10);
                if ((childAt instanceof androidx.appcompat.view.menu.j.a) && ((androidx.appcompat.view.menu.j.a) childAt).getItemData() == gVar) {
                    view = childAt;
                    break;
                }
            }
        }
        if (view == null) {
            return false;
        }
        Objects.requireNonNull(lVar.A);
        int size = lVar.size();
        int i11 = 0;
        while (true) {
            if (i11 >= size) {
                z10 = false;
                break;
            }
            MenuItem item = lVar.getItem(i11);
            if (item.isVisible() && item.getIcon() != null) {
                z10 = true;
                break;
            }
            i11++;
        }
        a aVar = new a(this.f827i, lVar, view);
        this.A = aVar;
        aVar.f939h = z10;
        k.d dVar = aVar.f941j;
        if (dVar != null) {
            dVar.o(z10);
        }
        a aVar2 = this.A;
        if (aVar2.b()) {
            z11 = true;
        } else if (aVar2.f937f != null) {
            aVar2.e(0, 0, false, false);
            z11 = true;
        }
        if (!z11) {
            throw new IllegalStateException("MenuPopupHelper cannot be used without an anchor");
        }
        androidx.appcompat.view.menu.i.a aVar3 = this.f830l;
        if (aVar3 != null) {
            aVar3.c(lVar);
        }
        return true;
    }

    @Override // androidx.appcompat.view.menu.i
    public final boolean i() {
        int size;
        ArrayList<androidx.appcompat.view.menu.g> arrayListM;
        int i10;
        boolean z10;
        androidx.appcompat.view.menu.e eVar = this.f828j;
        if (eVar != null) {
            arrayListM = eVar.m();
            size = arrayListM.size();
        } else {
            size = 0;
            arrayListM = null;
        }
        int i11 = this.f1182w;
        int i12 = this.f1181v;
        int iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(0, 0);
        ViewGroup viewGroup = (ViewGroup) this.f833o;
        int i13 = 0;
        boolean z11 = false;
        int i14 = 0;
        int i15 = 0;
        while (true) {
            i10 = 2;
            z10 = true;
            if (i13 >= size) {
                break;
            }
            androidx.appcompat.view.menu.g gVar = arrayListM.get(i13);
            int i16 = gVar.f929y;
            if ((i16 & 2) == 2) {
                i14++;
            } else if ((i16 & 1) == 1) {
                i15++;
            } else {
                z11 = true;
            }
            if (this.f1183x && gVar.C) {
                i11 = 0;
            }
            i13++;
        }
        if (this.f1178s && (z11 || i15 + i14 > i11)) {
            i11--;
        }
        int i17 = i11 - i14;
        SparseBooleanArray sparseBooleanArray = this.f1184y;
        sparseBooleanArray.clear();
        int i18 = 0;
        int i19 = 0;
        while (i18 < size) {
            androidx.appcompat.view.menu.g gVar2 = arrayListM.get(i18);
            int i20 = gVar2.f929y;
            if ((i20 & 2) == i10 ? z10 : false) {
                View viewC = c(gVar2, null, viewGroup);
                viewC.measure(iMakeMeasureSpec, iMakeMeasureSpec);
                int measuredWidth = viewC.getMeasuredWidth();
                i12 -= measuredWidth;
                if (i19 == 0) {
                    i19 = measuredWidth;
                }
                int i21 = gVar2.f906b;
                if (i21 != 0) {
                    sparseBooleanArray.put(i21, z10);
                }
                gVar2.k(z10);
            } else {
                if ((i20 & 1) == z10 ? z10 : false) {
                    int i22 = gVar2.f906b;
                    boolean z12 = sparseBooleanArray.get(i22);
                    boolean z13 = ((i17 > 0 || z12) && i12 > 0) ? z10 : false;
                    if (z13) {
                        View viewC2 = c(gVar2, null, viewGroup);
                        viewC2.measure(iMakeMeasureSpec, iMakeMeasureSpec);
                        int measuredWidth2 = viewC2.getMeasuredWidth();
                        i12 -= measuredWidth2;
                        if (i19 == 0) {
                            i19 = measuredWidth2;
                        }
                        z13 &= i12 + i19 > 0;
                    }
                    if (z13 && i22 != 0) {
                        sparseBooleanArray.put(i22, true);
                    } else if (z12) {
                        sparseBooleanArray.put(i22, false);
                        for (int i23 = 0; i23 < i18; i23++) {
                            androidx.appcompat.view.menu.g gVar3 = arrayListM.get(i23);
                            if (gVar3.f906b == i22) {
                                if (gVar3.g()) {
                                    i17++;
                                }
                                gVar3.k(false);
                            }
                        }
                    }
                    if (z13) {
                        i17--;
                    }
                    gVar2.k(z13);
                } else {
                    gVar2.k(false);
                }
                i18++;
                i10 = 2;
                z10 = true;
            }
            i18++;
            i10 = 2;
            z10 = true;
        }
        return z10;
    }

    public final boolean l() {
        e eVar = this.f1185z;
        return eVar != null && eVar.b();
    }

    public final boolean m() {
        androidx.appcompat.view.menu.e eVar;
        if (!this.f1178s || l() || (eVar = this.f828j) == null || this.f833o == null || this.B != null) {
            return false;
        }
        eVar.j();
        if (eVar.f887j.isEmpty()) {
            return false;
        }
        RunnableC0018c runnableC0018c = new RunnableC0018c(new e(this.f827i, this.f828j, this.f1175p));
        this.B = runnableC0018c;
        ((View) this.f833o).post(runnableC0018c);
        return true;
    }
}
