package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.drawable.Drawable;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.ContextThemeWrapper;
import android.view.Gravity;
import android.view.KeyEvent;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.TextView;
import androidx.appcompat.R;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import java.util.WeakHashMap;

/* JADX INFO: loaded from: classes.dex */
public class Toolbar extends ViewGroup {
    public w0 A;
    public int B;
    public int C;
    public int D;
    public CharSequence E;
    public CharSequence F;
    public ColorStateList G;
    public ColorStateList H;
    public boolean I;
    public boolean J;
    public final ArrayList<View> K;
    public final ArrayList<View> L;
    public final int[] M;
    public final j0.i N;
    public ArrayList<MenuItem> O;
    public f P;
    public final a Q;
    public i1 R;
    public androidx.appcompat.widget.c S;
    public d T;
    public androidx.appcompat.view.menu.i.a U;
    public androidx.appcompat.view.menu.e.a V;
    public boolean W;

    /* JADX INFO: renamed from: a0, reason: collision with root package name */
    public final b f1114a0;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public ActionMenuView f1115h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public AppCompatTextView f1116i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public AppCompatTextView f1117j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public q f1118k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public s f1119l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public Drawable f1120m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public CharSequence f1121n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public q f1122o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public View f1123p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public Context f1124q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public int f1125r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public int f1126s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public int f1127t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public int f1128u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public int f1129v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public int f1130w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public int f1131x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public int f1132y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public int f1133z;

    public class a implements ActionMenuView.e {
        public a() {
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            Toolbar.this.w();
        }
    }

    public class c implements View.OnClickListener {
        public c() {
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            d dVar = Toolbar.this.T;
            androidx.appcompat.view.menu.g gVar = dVar == null ? null : dVar.f1138i;
            if (gVar != null) {
                gVar.collapseActionView();
            }
        }
    }

    public class d implements androidx.appcompat.view.menu.i {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public androidx.appcompat.view.menu.e f1137h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public androidx.appcompat.view.menu.g f1138i;

        public d() {
        }

        @Override // androidx.appcompat.view.menu.i
        public final void b(androidx.appcompat.view.menu.e eVar, boolean z10) {
        }

        @Override // androidx.appcompat.view.menu.i
        public final boolean d(androidx.appcompat.view.menu.g gVar) {
            KeyEvent.Callback callback = Toolbar.this.f1123p;
            if (callback instanceof j.b) {
                ((j.b) callback).e();
            }
            Toolbar toolbar = Toolbar.this;
            toolbar.removeView(toolbar.f1123p);
            Toolbar toolbar2 = Toolbar.this;
            toolbar2.removeView(toolbar2.f1122o);
            Toolbar toolbar3 = Toolbar.this;
            toolbar3.f1123p = null;
            int size = toolbar3.L.size();
            while (true) {
                size--;
                if (size < 0) {
                    toolbar3.L.clear();
                    this.f1138i = null;
                    Toolbar.this.requestLayout();
                    gVar.C = false;
                    gVar.f918n.r(false);
                    return true;
                }
                toolbar3.addView(toolbar3.L.get(size));
            }
        }

        @Override // androidx.appcompat.view.menu.i
        public final void e(Context context, androidx.appcompat.view.menu.e eVar) {
            androidx.appcompat.view.menu.g gVar;
            androidx.appcompat.view.menu.e eVar2 = this.f1137h;
            if (eVar2 != null && (gVar = this.f1138i) != null) {
                eVar2.e(gVar);
            }
            this.f1137h = eVar;
        }

        @Override // androidx.appcompat.view.menu.i
        public final void f() {
            if (this.f1138i != null) {
                androidx.appcompat.view.menu.e eVar = this.f1137h;
                boolean z10 = false;
                if (eVar != null) {
                    int size = eVar.size();
                    for (int i10 = 0; i10 < size; i10++) {
                        if (this.f1137h.getItem(i10) == this.f1138i) {
                            z10 = true;
                            break;
                        }
                    }
                }
                if (z10) {
                    return;
                }
                d(this.f1138i);
            }
        }

        @Override // androidx.appcompat.view.menu.i
        public final boolean h(androidx.appcompat.view.menu.l lVar) {
            return false;
        }

        @Override // androidx.appcompat.view.menu.i
        public final boolean i() {
            return false;
        }

        @Override // androidx.appcompat.view.menu.i
        public final boolean k(androidx.appcompat.view.menu.g gVar) {
            Toolbar.this.c();
            ViewParent parent = Toolbar.this.f1122o.getParent();
            Toolbar toolbar = Toolbar.this;
            if (parent != toolbar) {
                if (parent instanceof ViewGroup) {
                    ((ViewGroup) parent).removeView(toolbar.f1122o);
                }
                Toolbar toolbar2 = Toolbar.this;
                toolbar2.addView(toolbar2.f1122o);
            }
            Toolbar.this.f1123p = gVar.getActionView();
            this.f1138i = gVar;
            ViewParent parent2 = Toolbar.this.f1123p.getParent();
            Toolbar toolbar3 = Toolbar.this;
            if (parent2 != toolbar3) {
                if (parent2 instanceof ViewGroup) {
                    ((ViewGroup) parent2).removeView(toolbar3.f1123p);
                }
                Objects.requireNonNull(Toolbar.this);
                e eVar = new e();
                Toolbar toolbar4 = Toolbar.this;
                eVar.f6800a = 8388611 | (toolbar4.f1128u & 112);
                eVar.f1140b = 2;
                toolbar4.f1123p.setLayoutParams(eVar);
                Toolbar toolbar5 = Toolbar.this;
                toolbar5.addView(toolbar5.f1123p);
            }
            Toolbar toolbar6 = Toolbar.this;
            int childCount = toolbar6.getChildCount();
            while (true) {
                childCount--;
                if (childCount < 0) {
                    break;
                }
                View childAt = toolbar6.getChildAt(childCount);
                if (((e) childAt.getLayoutParams()).f1140b != 2 && childAt != toolbar6.f1115h) {
                    toolbar6.removeViewAt(childCount);
                    toolbar6.L.add(childAt);
                }
            }
            Toolbar.this.requestLayout();
            gVar.C = true;
            gVar.f918n.r(false);
            KeyEvent.Callback callback = Toolbar.this.f1123p;
            if (callback instanceof j.b) {
                ((j.b) callback).c();
            }
            return true;
        }
    }

    public interface f {
    }

    public Toolbar(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.toolbarStyle);
    }

    private ArrayList<MenuItem> getCurrentMenuItems() {
        ArrayList<MenuItem> arrayList = new ArrayList<>();
        Menu menu = getMenu();
        for (int i10 = 0; i10 < menu.size(); i10++) {
            arrayList.add(menu.getItem(i10));
        }
        return arrayList;
    }

    private MenuInflater getMenuInflater() {
        return new j.f(getContext());
    }

    public final void a(List<View> list, int i10) {
        WeakHashMap<View, j0.g0> weakHashMap = j0.a0.f9147a;
        boolean z10 = j0.a0.e.d(this) == 1;
        int childCount = getChildCount();
        int absoluteGravity = Gravity.getAbsoluteGravity(i10, j0.a0.e.d(this));
        list.clear();
        if (!z10) {
            for (int i11 = 0; i11 < childCount; i11++) {
                View childAt = getChildAt(i11);
                e eVar = (e) childAt.getLayoutParams();
                if (eVar.f1140b == 0 && v(childAt) && j(eVar.f6800a) == absoluteGravity) {
                    list.add(childAt);
                }
            }
            return;
        }
        for (int i12 = childCount - 1; i12 >= 0; i12--) {
            View childAt2 = getChildAt(i12);
            e eVar2 = (e) childAt2.getLayoutParams();
            if (eVar2.f1140b == 0 && v(childAt2) && j(eVar2.f6800a) == absoluteGravity) {
                list.add(childAt2);
            }
        }
    }

    public final void b(View view, boolean z10) {
        e eVarGenerateLayoutParams;
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        if (layoutParams == null) {
            eVarGenerateLayoutParams = generateDefaultLayoutParams();
        } else {
            eVarGenerateLayoutParams = !checkLayoutParams(layoutParams) ? generateLayoutParams(layoutParams) : (e) layoutParams;
        }
        eVarGenerateLayoutParams.f1140b = 1;
        if (!z10 || this.f1123p == null) {
            addView(view, eVarGenerateLayoutParams);
        } else {
            view.setLayoutParams(eVarGenerateLayoutParams);
            this.L.add(view);
        }
    }

    public final void c() {
        if (this.f1122o == null) {
            q qVar = new q(getContext(), null, R.attr.toolbarNavigationButtonStyle);
            this.f1122o = qVar;
            qVar.setImageDrawable(this.f1120m);
            this.f1122o.setContentDescription(this.f1121n);
            e eVar = new e();
            eVar.f6800a = 8388611 | (this.f1128u & 112);
            eVar.f1140b = 2;
            this.f1122o.setLayoutParams(eVar);
            this.f1122o.setOnClickListener(new c());
        }
    }

    @Override // android.view.ViewGroup
    public final boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return super.checkLayoutParams(layoutParams) && (layoutParams instanceof e);
    }

    public final void d() {
        if (this.A == null) {
            this.A = new w0();
        }
    }

    public final void e() {
        f();
        ActionMenuView actionMenuView = this.f1115h;
        if (actionMenuView.f1010w == null) {
            androidx.appcompat.view.menu.e eVar = (androidx.appcompat.view.menu.e) actionMenuView.getMenu();
            if (this.T == null) {
                this.T = new d();
            }
            this.f1115h.setExpandedActionViewsExclusive(true);
            eVar.c(this.T, this.f1124q);
        }
    }

    public final void f() {
        if (this.f1115h == null) {
            ActionMenuView actionMenuView = new ActionMenuView(getContext(), null);
            this.f1115h = actionMenuView;
            actionMenuView.setPopupTheme(this.f1125r);
            this.f1115h.setOnMenuItemClickListener(this.Q);
            ActionMenuView actionMenuView2 = this.f1115h;
            androidx.appcompat.view.menu.i.a aVar = this.U;
            androidx.appcompat.view.menu.e.a aVar2 = this.V;
            actionMenuView2.B = aVar;
            actionMenuView2.C = aVar2;
            e eVar = new e();
            eVar.f6800a = 8388613 | (this.f1128u & 112);
            this.f1115h.setLayoutParams(eVar);
            b(this.f1115h, false);
        }
    }

    public final void g() {
        if (this.f1118k == null) {
            this.f1118k = new q(getContext(), null, R.attr.toolbarNavigationButtonStyle);
            e eVar = new e();
            eVar.f6800a = 8388611 | (this.f1128u & 112);
            this.f1118k.setLayoutParams(eVar);
        }
    }

    public CharSequence getCollapseContentDescription() {
        q qVar = this.f1122o;
        if (qVar != null) {
            return qVar.getContentDescription();
        }
        return null;
    }

    public Drawable getCollapseIcon() {
        q qVar = this.f1122o;
        if (qVar != null) {
            return qVar.getDrawable();
        }
        return null;
    }

    public int getContentInsetEnd() {
        w0 w0Var = this.A;
        if (w0Var != null) {
            return w0Var.f1478g ? w0Var.f1472a : w0Var.f1473b;
        }
        return 0;
    }

    public int getContentInsetEndWithActions() {
        int i10 = this.C;
        return i10 != Integer.MIN_VALUE ? i10 : getContentInsetEnd();
    }

    public int getContentInsetLeft() {
        w0 w0Var = this.A;
        if (w0Var != null) {
            return w0Var.f1472a;
        }
        return 0;
    }

    public int getContentInsetRight() {
        w0 w0Var = this.A;
        if (w0Var != null) {
            return w0Var.f1473b;
        }
        return 0;
    }

    public int getContentInsetStart() {
        w0 w0Var = this.A;
        if (w0Var != null) {
            return w0Var.f1478g ? w0Var.f1473b : w0Var.f1472a;
        }
        return 0;
    }

    public int getContentInsetStartWithNavigation() {
        int i10 = this.B;
        return i10 != Integer.MIN_VALUE ? i10 : getContentInsetStart();
    }

    public int getCurrentContentInsetEnd() {
        androidx.appcompat.view.menu.e eVar;
        ActionMenuView actionMenuView = this.f1115h;
        return actionMenuView != null && (eVar = actionMenuView.f1010w) != null && eVar.hasVisibleItems() ? Math.max(getContentInsetEnd(), Math.max(this.C, 0)) : getContentInsetEnd();
    }

    public int getCurrentContentInsetLeft() {
        WeakHashMap<View, j0.g0> weakHashMap = j0.a0.f9147a;
        return j0.a0.e.d(this) == 1 ? getCurrentContentInsetEnd() : getCurrentContentInsetStart();
    }

    public int getCurrentContentInsetRight() {
        WeakHashMap<View, j0.g0> weakHashMap = j0.a0.f9147a;
        return j0.a0.e.d(this) == 1 ? getCurrentContentInsetStart() : getCurrentContentInsetEnd();
    }

    public int getCurrentContentInsetStart() {
        return getNavigationIcon() != null ? Math.max(getContentInsetStart(), Math.max(this.B, 0)) : getContentInsetStart();
    }

    public Drawable getLogo() {
        s sVar = this.f1119l;
        if (sVar != null) {
            return sVar.getDrawable();
        }
        return null;
    }

    public CharSequence getLogoDescription() {
        s sVar = this.f1119l;
        if (sVar != null) {
            return sVar.getContentDescription();
        }
        return null;
    }

    public Menu getMenu() {
        e();
        return this.f1115h.getMenu();
    }

    public View getNavButtonView() {
        return this.f1118k;
    }

    public CharSequence getNavigationContentDescription() {
        q qVar = this.f1118k;
        if (qVar != null) {
            return qVar.getContentDescription();
        }
        return null;
    }

    public Drawable getNavigationIcon() {
        q qVar = this.f1118k;
        if (qVar != null) {
            return qVar.getDrawable();
        }
        return null;
    }

    public androidx.appcompat.widget.c getOuterActionMenuPresenter() {
        return this.S;
    }

    public Drawable getOverflowIcon() {
        e();
        return this.f1115h.getOverflowIcon();
    }

    Context getPopupContext() {
        return this.f1124q;
    }

    public int getPopupTheme() {
        return this.f1125r;
    }

    public CharSequence getSubtitle() {
        return this.F;
    }

    public final TextView getSubtitleTextView() {
        return this.f1117j;
    }

    public CharSequence getTitle() {
        return this.E;
    }

    public int getTitleMarginBottom() {
        return this.f1133z;
    }

    public int getTitleMarginEnd() {
        return this.f1131x;
    }

    public int getTitleMarginStart() {
        return this.f1130w;
    }

    public int getTitleMarginTop() {
        return this.f1132y;
    }

    public final TextView getTitleTextView() {
        return this.f1116i;
    }

    public k0 getWrapper() {
        if (this.R == null) {
            this.R = new i1(this, true);
        }
        return this.R;
    }

    @Override // android.view.ViewGroup
    /* JADX INFO: renamed from: h, reason: merged with bridge method [inline-methods] */
    public final e generateDefaultLayoutParams() {
        return new e();
    }

    @Override // android.view.ViewGroup
    /* JADX INFO: renamed from: i, reason: merged with bridge method [inline-methods] */
    public final e generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        if (layoutParams instanceof e) {
            return new e((e) layoutParams);
        }
        if (layoutParams instanceof f.a.C0123a) {
            return new e((f.a.C0123a) layoutParams);
        }
        return layoutParams instanceof ViewGroup.MarginLayoutParams ? new e((ViewGroup.MarginLayoutParams) layoutParams) : new e(layoutParams);
    }

    public final int j(int i10) {
        WeakHashMap<View, j0.g0> weakHashMap = j0.a0.f9147a;
        int iD = j0.a0.e.d(this);
        int absoluteGravity = Gravity.getAbsoluteGravity(i10, iD) & 7;
        if (absoluteGravity == 1 || absoluteGravity == 3 || absoluteGravity == 5) {
            return absoluteGravity;
        }
        return iD == 1 ? 5 : 3;
    }

    public final int k(View view, int i10) {
        e eVar = (e) view.getLayoutParams();
        int measuredHeight = view.getMeasuredHeight();
        int i11 = i10 > 0 ? (measuredHeight - i10) / 2 : 0;
        int i12 = eVar.f6800a & 112;
        if (i12 != 16 && i12 != 48 && i12 != 80) {
            i12 = this.D & 112;
        }
        if (i12 == 48) {
            return getPaddingTop() - i11;
        }
        if (i12 == 80) {
            return (((getHeight() - getPaddingBottom()) - measuredHeight) - ((ViewGroup.MarginLayoutParams) eVar).bottomMargin) - i11;
        }
        int paddingTop = getPaddingTop();
        int paddingBottom = getPaddingBottom();
        int height = getHeight();
        int iMax = (((height - paddingTop) - paddingBottom) - measuredHeight) / 2;
        int i13 = ((ViewGroup.MarginLayoutParams) eVar).topMargin;
        if (iMax < i13) {
            iMax = i13;
        } else {
            int i14 = (((height - paddingBottom) - measuredHeight) - iMax) - paddingTop;
            int i15 = ((ViewGroup.MarginLayoutParams) eVar).bottomMargin;
            if (i14 < i15) {
                iMax = Math.max(0, iMax - (i15 - i14));
            }
        }
        return paddingTop + iMax;
    }

    public final int l(View view) {
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
        return j0.h.b(marginLayoutParams) + j0.h.c(marginLayoutParams);
    }

    public final int m(View view) {
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
        return marginLayoutParams.topMargin + marginLayoutParams.bottomMargin;
    }

    public final void n(int i10) {
        getMenuInflater().inflate(i10, getMenu());
    }

    public final void o() {
        Iterator<MenuItem> it = this.O.iterator();
        while (it.hasNext()) {
            getMenu().removeItem(it.next().getItemId());
        }
        Menu menu = getMenu();
        ArrayList<MenuItem> currentMenuItems = getCurrentMenuItems();
        this.N.a(menu, getMenuInflater());
        ArrayList<MenuItem> currentMenuItems2 = getCurrentMenuItems();
        currentMenuItems2.removeAll(currentMenuItems);
        this.O = currentMenuItems2;
        this.N.c(menu);
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        removeCallbacks(this.f1114a0);
    }

    @Override // android.view.View
    public final boolean onHoverEvent(MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 9) {
            this.J = false;
        }
        if (!this.J) {
            boolean zOnHoverEvent = super.onHoverEvent(motionEvent);
            if (actionMasked == 9 && !zOnHoverEvent) {
                this.J = true;
            }
        }
        if (actionMasked == 10 || actionMasked == 3) {
            this.J = false;
        }
        return true;
    }

    /* JADX WARN: Code duplicated, block: B:100:0x0280  */
    /* JADX WARN: Code duplicated, block: B:103:0x0294 A[LOOP:0: B:102:0x0292->B:103:0x0294, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:106:0x02b6 A[LOOP:1: B:105:0x02b4->B:106:0x02b6, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:109:0x02db A[LOOP:2: B:108:0x02d9->B:109:0x02db, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:113:0x031c A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:114:0x031e  */
    /* JADX WARN: Code duplicated, block: B:115:0x0322  */
    /* JADX WARN: Code duplicated, block: B:118:0x0330 A[LOOP:3: B:117:0x032e->B:118:0x0330, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:19:0x0061 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:20:0x0063  */
    /* JADX WARN: Code duplicated, block: B:21:0x006a  */
    /* JADX WARN: Code duplicated, block: B:24:0x0078 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:25:0x007a  */
    /* JADX WARN: Code duplicated, block: B:26:0x0081  */
    /* JADX WARN: Code duplicated, block: B:29:0x00b5 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:30:0x00b7  */
    /* JADX WARN: Code duplicated, block: B:31:0x00be  */
    /* JADX WARN: Code duplicated, block: B:34:0x00cc A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:35:0x00ce  */
    /* JADX WARN: Code duplicated, block: B:36:0x00d5  */
    /* JADX WARN: Code duplicated, block: B:39:0x00e9  */
    /* JADX WARN: Code duplicated, block: B:40:0x0102  */
    /* JADX WARN: Code duplicated, block: B:42:0x0107  */
    /* JADX WARN: Code duplicated, block: B:43:0x011f  */
    /* JADX WARN: Code duplicated, block: B:48:0x012c A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:49:0x012e  */
    /* JADX WARN: Code duplicated, block: B:50:0x0131  */
    /* JADX WARN: Code duplicated, block: B:52:0x0135  */
    /* JADX WARN: Code duplicated, block: B:53:0x0138  */
    /* JADX WARN: Code duplicated, block: B:56:0x0148  */
    /* JADX WARN: Code duplicated, block: B:58:0x0150 A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:65:0x0169  */
    /* JADX WARN: Code duplicated, block: B:67:0x016d  */
    /* JADX WARN: Code duplicated, block: B:69:0x017c  */
    /* JADX WARN: Code duplicated, block: B:70:0x017e  */
    /* JADX WARN: Code duplicated, block: B:72:0x0189  */
    /* JADX WARN: Code duplicated, block: B:74:0x0195  */
    /* JADX WARN: Code duplicated, block: B:75:0x01a1  */
    /* JADX WARN: Code duplicated, block: B:77:0x01b0 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:78:0x01b2  */
    /* JADX WARN: Code duplicated, block: B:79:0x01b5  */
    /* JADX WARN: Code duplicated, block: B:82:0x01c9  */
    /* JADX WARN: Code duplicated, block: B:83:0x01ed  */
    /* JADX WARN: Code duplicated, block: B:85:0x01f0  */
    /* JADX WARN: Code duplicated, block: B:86:0x0214  */
    /* JADX WARN: Code duplicated, block: B:88:0x0217  */
    /* JADX WARN: Code duplicated, block: B:89:0x021d A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:90:0x021f  */
    /* JADX WARN: Code duplicated, block: B:91:0x0222  */
    /* JADX WARN: Code duplicated, block: B:94:0x0235  */
    /* JADX WARN: Code duplicated, block: B:95:0x0258  */
    /* JADX WARN: Code duplicated, block: B:97:0x025b  */
    /* JADX WARN: Code duplicated, block: B:98:0x027d  */
    @Override // android.view.ViewGroup, android.view.View
    public void onLayout(boolean z10, int i10, int i11, int i12, int i13) {
        int iR;
        int iS;
        int iMax;
        int iMin;
        boolean zV;
        boolean zV2;
        int measuredHeight;
        AppCompatTextView appCompatTextView;
        AppCompatTextView appCompatTextView2;
        e eVar;
        e eVar2;
        boolean z11;
        int i14;
        int i15;
        int paddingTop;
        int i16;
        int i17;
        int i18;
        int i19;
        int i20;
        int i21;
        int iMax2;
        int i22;
        int i23;
        int i24;
        int i25;
        int size;
        int iR2;
        int i26;
        int i27;
        int size2;
        int i28;
        ArrayList<View> arrayList;
        int i29;
        int size3;
        int i30;
        int i31;
        int measuredWidth;
        int i32;
        int i33;
        int size4;
        int i34;
        int iR3;
        WeakHashMap<View, j0.g0> weakHashMap = j0.a0.f9147a;
        boolean z12 = j0.a0.e.d(this) == 1;
        int width = getWidth();
        int height = getHeight();
        int paddingLeft = getPaddingLeft();
        int paddingRight = getPaddingRight();
        int paddingTop2 = getPaddingTop();
        int paddingBottom = getPaddingBottom();
        int i35 = width - paddingRight;
        int[] iArr = this.M;
        iArr[1] = 0;
        iArr[0] = 0;
        int iD = j0.a0.d.d(this);
        int iMin2 = iD >= 0 ? Math.min(iD, i13 - i11) : 0;
        if (v(this.f1118k)) {
            if (z12) {
                iS = s(this.f1118k, i35, iArr, iMin2);
                iR = paddingLeft;
            } else {
                iR = r(this.f1118k, paddingLeft, iArr, iMin2);
            }
            if (v(this.f1122o)) {
                if (z12) {
                    iS = s(this.f1122o, iS, iArr, iMin2);
                } else {
                    iR = r(this.f1122o, iR, iArr, iMin2);
                }
            }
            if (v(this.f1115h)) {
                if (z12) {
                    iR = r(this.f1115h, iR, iArr, iMin2);
                } else {
                    iS = s(this.f1115h, iS, iArr, iMin2);
                }
            }
            int currentContentInsetLeft = getCurrentContentInsetLeft();
            int currentContentInsetRight = getCurrentContentInsetRight();
            iArr[0] = Math.max(0, currentContentInsetLeft - iR);
            iArr[1] = Math.max(0, currentContentInsetRight - (i35 - iS));
            iMax = Math.max(iR, currentContentInsetLeft);
            iMin = Math.min(iS, i35 - currentContentInsetRight);
            if (v(this.f1123p)) {
                if (z12) {
                    iMin = s(this.f1123p, iMin, iArr, iMin2);
                } else {
                    iMax = r(this.f1123p, iMax, iArr, iMin2);
                }
            }
            if (v(this.f1119l)) {
                if (z12) {
                    iMin = s(this.f1119l, iMin, iArr, iMin2);
                } else {
                    iMax = r(this.f1119l, iMax, iArr, iMin2);
                }
            }
            zV = v(this.f1116i);
            zV2 = v(this.f1117j);
            if (zV) {
                e eVar3 = (e) this.f1116i.getLayoutParams();
                measuredHeight = this.f1116i.getMeasuredHeight() + ((ViewGroup.MarginLayoutParams) eVar3).topMargin + ((ViewGroup.MarginLayoutParams) eVar3).bottomMargin + 0;
            } else {
                measuredHeight = 0;
            }
            if (zV2) {
                e eVar4 = (e) this.f1117j.getLayoutParams();
                measuredHeight += this.f1117j.getMeasuredHeight() + ((ViewGroup.MarginLayoutParams) eVar4).topMargin + ((ViewGroup.MarginLayoutParams) eVar4).bottomMargin;
            }
            if (!zV || zV2) {
                if (zV) {
                    appCompatTextView = this.f1116i;
                } else {
                    appCompatTextView = this.f1117j;
                }
                if (zV2) {
                    appCompatTextView2 = this.f1117j;
                } else {
                    appCompatTextView2 = this.f1116i;
                }
                eVar = (e) appCompatTextView.getLayoutParams();
                eVar2 = (e) appCompatTextView2.getLayoutParams();
                z11 = (!zV && this.f1116i.getMeasuredWidth() > 0) || (zV2 && this.f1117j.getMeasuredWidth() > 0);
                i14 = this.D & 112;
                i15 = paddingLeft;
                if (i14 == 48) {
                    paddingTop = getPaddingTop() + ((ViewGroup.MarginLayoutParams) eVar).topMargin + this.f1132y;
                } else if (i14 != 80) {
                    iMax2 = (((height - paddingTop2) - paddingBottom) - measuredHeight) / 2;
                    i22 = ((ViewGroup.MarginLayoutParams) eVar).topMargin + this.f1132y;
                    if (iMax2 < i22) {
                        iMax2 = i22;
                    } else {
                        i23 = (((height - paddingBottom) - measuredHeight) - iMax2) - paddingTop2;
                        i24 = ((ViewGroup.MarginLayoutParams) eVar).bottomMargin;
                        i25 = this.f1133z;
                        if (i23 < i24 + i25) {
                            iMax2 = Math.max(0, iMax2 - ((((ViewGroup.MarginLayoutParams) eVar2).bottomMargin + i25) - i23));
                        }
                    }
                    paddingTop = paddingTop2 + iMax2;
                } else {
                    paddingTop = (((height - paddingBottom) - ((ViewGroup.MarginLayoutParams) eVar2).bottomMargin) - this.f1133z) - measuredHeight;
                }
                if (z12) {
                    if (z11) {
                        i19 = this.f1130w;
                    } else {
                        i19 = 0;
                    }
                    int i36 = i19 - iArr[1];
                    iMin -= Math.max(0, i36);
                    iArr[1] = Math.max(0, -i36);
                    if (zV) {
                        e eVar5 = (e) this.f1116i.getLayoutParams();
                        int measuredWidth2 = iMin - this.f1116i.getMeasuredWidth();
                        int measuredHeight2 = this.f1116i.getMeasuredHeight() + paddingTop;
                        this.f1116i.layout(measuredWidth2, paddingTop, iMin, measuredHeight2);
                        i20 = measuredWidth2 - this.f1131x;
                        paddingTop = measuredHeight2 + ((ViewGroup.MarginLayoutParams) eVar5).bottomMargin;
                    } else {
                        i20 = iMin;
                    }
                    if (zV2) {
                        int i37 = paddingTop + ((ViewGroup.MarginLayoutParams) ((e) this.f1117j.getLayoutParams())).topMargin;
                        this.f1117j.layout(iMin - this.f1117j.getMeasuredWidth(), i37, iMin, this.f1117j.getMeasuredHeight() + i37);
                        i21 = iMin - this.f1131x;
                    } else {
                        i21 = iMin;
                    }
                    if (z11) {
                        iMin = Math.min(i20, i21);
                    }
                } else {
                    if (z11) {
                        i16 = this.f1130w;
                    } else {
                        i16 = 0;
                    }
                    int i38 = i16 - iArr[0];
                    iMax += Math.max(0, i38);
                    iArr[0] = Math.max(0, -i38);
                    if (zV) {
                        e eVar6 = (e) this.f1116i.getLayoutParams();
                        int measuredWidth3 = this.f1116i.getMeasuredWidth() + iMax;
                        int measuredHeight3 = this.f1116i.getMeasuredHeight() + paddingTop;
                        this.f1116i.layout(iMax, paddingTop, measuredWidth3, measuredHeight3);
                        i17 = measuredWidth3 + this.f1131x;
                        paddingTop = measuredHeight3 + ((ViewGroup.MarginLayoutParams) eVar6).bottomMargin;
                    } else {
                        i17 = iMax;
                    }
                    if (zV2) {
                        int i39 = paddingTop + ((ViewGroup.MarginLayoutParams) ((e) this.f1117j.getLayoutParams())).topMargin;
                        int measuredWidth4 = this.f1117j.getMeasuredWidth() + iMax;
                        this.f1117j.layout(iMax, i39, measuredWidth4, this.f1117j.getMeasuredHeight() + i39);
                        i18 = measuredWidth4 + this.f1131x;
                    } else {
                        i18 = iMax;
                    }
                    if (z11) {
                        iMax = Math.max(i17, i18);
                    }
                }
            } else {
                i15 = paddingLeft;
                iMin2 = iMin2;
            }
            a(this.K, 3);
            size = this.K.size();
            iR2 = iMax;
            for (i26 = 0; i26 < size; i26++) {
                iR2 = r(this.K.get(i26), iR2, iArr, iMin2);
            }
            i27 = iMin2;
            a(this.K, 5);
            size2 = this.K.size();
            for (i28 = 0; i28 < size2; i28++) {
                iMin = s(this.K.get(i28), iMin, iArr, i27);
            }
            a(this.K, 1);
            arrayList = this.K;
            int i40 = iArr[0];
            i29 = iArr[1];
            size3 = arrayList.size();
            i30 = i40;
            i31 = 0;
            measuredWidth = 0;
            while (i31 < size3) {
                View view = arrayList.get(i31);
                e eVar7 = (e) view.getLayoutParams();
                int i41 = ((ViewGroup.MarginLayoutParams) eVar7).leftMargin - i30;
                int i42 = ((ViewGroup.MarginLayoutParams) eVar7).rightMargin - i29;
                int iMax3 = Math.max(0, i41);
                int iMax4 = Math.max(0, i42);
                int iMax5 = Math.max(0, -i41);
                int iMax6 = Math.max(0, -i42);
                measuredWidth += view.getMeasuredWidth() + iMax3 + iMax4;
                i31++;
                i29 = iMax6;
                i30 = iMax5;
            }
            i32 = ((((width - i15) - paddingRight) / 2) + i15) - (measuredWidth / 2);
            i33 = measuredWidth + i32;
            if (i32 >= iR2) {
                if (i33 > iMin) {
                    iR2 = i32 - (i33 - iMin);
                } else {
                    iR2 = i32;
                }
            }
            size4 = this.K.size();
            int i43 = iR2;
            iR3 = i43;
            for (i34 = 0; i34 < size4; i34++) {
                iR3 = r(this.K.get(i34), iR3, iArr, i27);
            }
            this.K.clear();
        }
        iR = paddingLeft;
        iS = i35;
        if (v(this.f1122o)) {
            if (z12) {
                iS = s(this.f1122o, iS, iArr, iMin2);
            } else {
                iR = r(this.f1122o, iR, iArr, iMin2);
            }
        }
        if (v(this.f1115h)) {
            if (z12) {
                iR = r(this.f1115h, iR, iArr, iMin2);
            } else {
                iS = s(this.f1115h, iS, iArr, iMin2);
            }
        }
        int currentContentInsetLeft2 = getCurrentContentInsetLeft();
        int currentContentInsetRight2 = getCurrentContentInsetRight();
        iArr[0] = Math.max(0, currentContentInsetLeft2 - iR);
        iArr[1] = Math.max(0, currentContentInsetRight2 - (i35 - iS));
        iMax = Math.max(iR, currentContentInsetLeft2);
        iMin = Math.min(iS, i35 - currentContentInsetRight2);
        if (v(this.f1123p)) {
            if (z12) {
                iMin = s(this.f1123p, iMin, iArr, iMin2);
            } else {
                iMax = r(this.f1123p, iMax, iArr, iMin2);
            }
        }
        if (v(this.f1119l)) {
            if (z12) {
                iMin = s(this.f1119l, iMin, iArr, iMin2);
            } else {
                iMax = r(this.f1119l, iMax, iArr, iMin2);
            }
        }
        zV = v(this.f1116i);
        zV2 = v(this.f1117j);
        if (zV) {
            e eVar8 = (e) this.f1116i.getLayoutParams();
            measuredHeight = this.f1116i.getMeasuredHeight() + ((ViewGroup.MarginLayoutParams) eVar8).topMargin + ((ViewGroup.MarginLayoutParams) eVar8).bottomMargin + 0;
        } else {
            measuredHeight = 0;
        }
        if (zV2) {
            e eVar9 = (e) this.f1117j.getLayoutParams();
            measuredHeight += this.f1117j.getMeasuredHeight() + ((ViewGroup.MarginLayoutParams) eVar9).topMargin + ((ViewGroup.MarginLayoutParams) eVar9).bottomMargin;
        }
        if (zV) {
            if (zV) {
                appCompatTextView = this.f1116i;
            } else {
                appCompatTextView = this.f1117j;
            }
            if (zV2) {
                appCompatTextView2 = this.f1117j;
            } else {
                appCompatTextView2 = this.f1116i;
            }
            eVar = (e) appCompatTextView.getLayoutParams();
            eVar2 = (e) appCompatTextView2.getLayoutParams();
            if (zV) {
            }
            i14 = this.D & 112;
            i15 = paddingLeft;
            if (i14 == 48) {
                paddingTop = getPaddingTop() + ((ViewGroup.MarginLayoutParams) eVar).topMargin + this.f1132y;
            } else if (i14 != 80) {
                iMax2 = (((height - paddingTop2) - paddingBottom) - measuredHeight) / 2;
                i22 = ((ViewGroup.MarginLayoutParams) eVar).topMargin + this.f1132y;
                if (iMax2 < i22) {
                    iMax2 = i22;
                } else {
                    i23 = (((height - paddingBottom) - measuredHeight) - iMax2) - paddingTop2;
                    i24 = ((ViewGroup.MarginLayoutParams) eVar).bottomMargin;
                    i25 = this.f1133z;
                    if (i23 < i24 + i25) {
                        iMax2 = Math.max(0, iMax2 - ((((ViewGroup.MarginLayoutParams) eVar2).bottomMargin + i25) - i23));
                    }
                }
                paddingTop = paddingTop2 + iMax2;
            } else {
                paddingTop = (((height - paddingBottom) - ((ViewGroup.MarginLayoutParams) eVar2).bottomMargin) - this.f1133z) - measuredHeight;
            }
            if (z12) {
                if (z11) {
                    i19 = this.f1130w;
                } else {
                    i19 = 0;
                }
                int i310 = i19 - iArr[1];
                iMin -= Math.max(0, i310);
                iArr[1] = Math.max(0, -i310);
                if (zV) {
                    e eVar10 = (e) this.f1116i.getLayoutParams();
                    int measuredWidth5 = iMin - this.f1116i.getMeasuredWidth();
                    int measuredHeight4 = this.f1116i.getMeasuredHeight() + paddingTop;
                    this.f1116i.layout(measuredWidth5, paddingTop, iMin, measuredHeight4);
                    i20 = measuredWidth5 - this.f1131x;
                    paddingTop = measuredHeight4 + ((ViewGroup.MarginLayoutParams) eVar10).bottomMargin;
                } else {
                    i20 = iMin;
                }
                if (zV2) {
                    int i311 = paddingTop + ((ViewGroup.MarginLayoutParams) ((e) this.f1117j.getLayoutParams())).topMargin;
                    this.f1117j.layout(iMin - this.f1117j.getMeasuredWidth(), i311, iMin, this.f1117j.getMeasuredHeight() + i311);
                    i21 = iMin - this.f1131x;
                } else {
                    i21 = iMin;
                }
                if (z11) {
                    iMin = Math.min(i20, i21);
                }
            } else {
                if (z11) {
                    i16 = this.f1130w;
                } else {
                    i16 = 0;
                }
                int i312 = i16 - iArr[0];
                iMax += Math.max(0, i312);
                iArr[0] = Math.max(0, -i312);
                if (zV) {
                    e eVar11 = (e) this.f1116i.getLayoutParams();
                    int measuredWidth6 = this.f1116i.getMeasuredWidth() + iMax;
                    int measuredHeight5 = this.f1116i.getMeasuredHeight() + paddingTop;
                    this.f1116i.layout(iMax, paddingTop, measuredWidth6, measuredHeight5);
                    i17 = measuredWidth6 + this.f1131x;
                    paddingTop = measuredHeight5 + ((ViewGroup.MarginLayoutParams) eVar11).bottomMargin;
                } else {
                    i17 = iMax;
                }
                if (zV2) {
                    int i313 = paddingTop + ((ViewGroup.MarginLayoutParams) ((e) this.f1117j.getLayoutParams())).topMargin;
                    int measuredWidth7 = this.f1117j.getMeasuredWidth() + iMax;
                    this.f1117j.layout(iMax, i313, measuredWidth7, this.f1117j.getMeasuredHeight() + i313);
                    i18 = measuredWidth7 + this.f1131x;
                } else {
                    i18 = iMax;
                }
                if (z11) {
                    iMax = Math.max(i17, i18);
                }
            }
        } else {
            if (zV) {
                appCompatTextView = this.f1116i;
            } else {
                appCompatTextView = this.f1117j;
            }
            if (zV2) {
                appCompatTextView2 = this.f1117j;
            } else {
                appCompatTextView2 = this.f1116i;
            }
            eVar = (e) appCompatTextView.getLayoutParams();
            eVar2 = (e) appCompatTextView2.getLayoutParams();
            if (zV) {
            }
            i14 = this.D & 112;
            i15 = paddingLeft;
            if (i14 == 48) {
                paddingTop = getPaddingTop() + ((ViewGroup.MarginLayoutParams) eVar).topMargin + this.f1132y;
            } else if (i14 != 80) {
                iMax2 = (((height - paddingTop2) - paddingBottom) - measuredHeight) / 2;
                i22 = ((ViewGroup.MarginLayoutParams) eVar).topMargin + this.f1132y;
                if (iMax2 < i22) {
                    iMax2 = i22;
                } else {
                    i23 = (((height - paddingBottom) - measuredHeight) - iMax2) - paddingTop2;
                    i24 = ((ViewGroup.MarginLayoutParams) eVar).bottomMargin;
                    i25 = this.f1133z;
                    if (i23 < i24 + i25) {
                        iMax2 = Math.max(0, iMax2 - ((((ViewGroup.MarginLayoutParams) eVar2).bottomMargin + i25) - i23));
                    }
                }
                paddingTop = paddingTop2 + iMax2;
            } else {
                paddingTop = (((height - paddingBottom) - ((ViewGroup.MarginLayoutParams) eVar2).bottomMargin) - this.f1133z) - measuredHeight;
            }
            if (z12) {
                if (z11) {
                    i19 = this.f1130w;
                } else {
                    i19 = 0;
                }
                int i314 = i19 - iArr[1];
                iMin -= Math.max(0, i314);
                iArr[1] = Math.max(0, -i314);
                if (zV) {
                    e eVar12 = (e) this.f1116i.getLayoutParams();
                    int measuredWidth8 = iMin - this.f1116i.getMeasuredWidth();
                    int measuredHeight6 = this.f1116i.getMeasuredHeight() + paddingTop;
                    this.f1116i.layout(measuredWidth8, paddingTop, iMin, measuredHeight6);
                    i20 = measuredWidth8 - this.f1131x;
                    paddingTop = measuredHeight6 + ((ViewGroup.MarginLayoutParams) eVar12).bottomMargin;
                } else {
                    i20 = iMin;
                }
                if (zV2) {
                    int i315 = paddingTop + ((ViewGroup.MarginLayoutParams) ((e) this.f1117j.getLayoutParams())).topMargin;
                    this.f1117j.layout(iMin - this.f1117j.getMeasuredWidth(), i315, iMin, this.f1117j.getMeasuredHeight() + i315);
                    i21 = iMin - this.f1131x;
                } else {
                    i21 = iMin;
                }
                if (z11) {
                    iMin = Math.min(i20, i21);
                }
            } else {
                if (z11) {
                    i16 = this.f1130w;
                } else {
                    i16 = 0;
                }
                int i316 = i16 - iArr[0];
                iMax += Math.max(0, i316);
                iArr[0] = Math.max(0, -i316);
                if (zV) {
                    e eVar13 = (e) this.f1116i.getLayoutParams();
                    int measuredWidth9 = this.f1116i.getMeasuredWidth() + iMax;
                    int measuredHeight7 = this.f1116i.getMeasuredHeight() + paddingTop;
                    this.f1116i.layout(iMax, paddingTop, measuredWidth9, measuredHeight7);
                    i17 = measuredWidth9 + this.f1131x;
                    paddingTop = measuredHeight7 + ((ViewGroup.MarginLayoutParams) eVar13).bottomMargin;
                } else {
                    i17 = iMax;
                }
                if (zV2) {
                    int i317 = paddingTop + ((ViewGroup.MarginLayoutParams) ((e) this.f1117j.getLayoutParams())).topMargin;
                    int measuredWidth10 = this.f1117j.getMeasuredWidth() + iMax;
                    this.f1117j.layout(iMax, i317, measuredWidth10, this.f1117j.getMeasuredHeight() + i317);
                    i18 = measuredWidth10 + this.f1131x;
                } else {
                    i18 = iMax;
                }
                if (z11) {
                    iMax = Math.max(i17, i18);
                }
            }
        }
        a(this.K, 3);
        size = this.K.size();
        iR2 = iMax;
        while (i26 < size) {
            iR2 = r(this.K.get(i26), iR2, iArr, iMin2);
        }
        i27 = iMin2;
        a(this.K, 5);
        size2 = this.K.size();
        while (i28 < size2) {
            iMin = s(this.K.get(i28), iMin, iArr, i27);
        }
        a(this.K, 1);
        arrayList = this.K;
        int i44 = iArr[0];
        i29 = iArr[1];
        size3 = arrayList.size();
        i30 = i44;
        i31 = 0;
        measuredWidth = 0;
        while (i31 < size3) {
            View view2 = arrayList.get(i31);
            e eVar14 = (e) view2.getLayoutParams();
            int i45 = ((ViewGroup.MarginLayoutParams) eVar14).leftMargin - i30;
            int i46 = ((ViewGroup.MarginLayoutParams) eVar14).rightMargin - i29;
            int iMax7 = Math.max(0, i45);
            int iMax8 = Math.max(0, i46);
            int iMax9 = Math.max(0, -i45);
            int iMax10 = Math.max(0, -i46);
            measuredWidth += view2.getMeasuredWidth() + iMax7 + iMax8;
            i31++;
            i29 = iMax10;
            i30 = iMax9;
        }
        i32 = ((((width - i15) - paddingRight) / 2) + i15) - (measuredWidth / 2);
        i33 = measuredWidth + i32;
        if (i32 >= iR2) {
            if (i33 > iMin) {
                iR2 = i32 - (i33 - iMin);
            } else {
                iR2 = i32;
            }
        }
        size4 = this.K.size();
        int i47 = iR2;
        iR3 = i47;
        while (i34 < size4) {
            iR3 = r(this.K.get(i34), iR3, iArr, i27);
        }
        this.K.clear();
    }

    @Override // android.view.View
    public final void onMeasure(int i10, int i11) {
        int iL;
        int iMax;
        int iCombineMeasuredStates;
        int iL2;
        int iM;
        int iCombineMeasuredStates2;
        int iMax2;
        boolean z10;
        int[] iArr = this.M;
        boolean zB = o1.b(this);
        int i12 = !zB ? 1 : 0;
        if (v(this.f1118k)) {
            u(this.f1118k, i10, 0, i11, this.f1129v);
            iL = l(this.f1118k) + this.f1118k.getMeasuredWidth();
            iMax = Math.max(0, m(this.f1118k) + this.f1118k.getMeasuredHeight());
            iCombineMeasuredStates = View.combineMeasuredStates(0, this.f1118k.getMeasuredState());
        } else {
            iL = 0;
            iMax = 0;
            iCombineMeasuredStates = 0;
        }
        if (v(this.f1122o)) {
            u(this.f1122o, i10, 0, i11, this.f1129v);
            iL = l(this.f1122o) + this.f1122o.getMeasuredWidth();
            iMax = Math.max(iMax, m(this.f1122o) + this.f1122o.getMeasuredHeight());
            iCombineMeasuredStates = View.combineMeasuredStates(iCombineMeasuredStates, this.f1122o.getMeasuredState());
        }
        int currentContentInsetStart = getCurrentContentInsetStart();
        int iMax3 = Math.max(currentContentInsetStart, iL) + 0;
        iArr[zB ? 1 : 0] = Math.max(0, currentContentInsetStart - iL);
        if (v(this.f1115h)) {
            u(this.f1115h, i10, iMax3, i11, this.f1129v);
            iL2 = l(this.f1115h) + this.f1115h.getMeasuredWidth();
            iMax = Math.max(iMax, m(this.f1115h) + this.f1115h.getMeasuredHeight());
            iCombineMeasuredStates = View.combineMeasuredStates(iCombineMeasuredStates, this.f1115h.getMeasuredState());
        } else {
            iL2 = 0;
        }
        int currentContentInsetEnd = getCurrentContentInsetEnd();
        int iMax4 = iMax3 + Math.max(currentContentInsetEnd, iL2);
        iArr[i12] = Math.max(0, currentContentInsetEnd - iL2);
        if (v(this.f1123p)) {
            iMax4 += t(this.f1123p, i10, iMax4, i11, 0, iArr);
            iMax = Math.max(iMax, m(this.f1123p) + this.f1123p.getMeasuredHeight());
            iCombineMeasuredStates = View.combineMeasuredStates(iCombineMeasuredStates, this.f1123p.getMeasuredState());
        }
        if (v(this.f1119l)) {
            iMax4 += t(this.f1119l, i10, iMax4, i11, 0, iArr);
            iMax = Math.max(iMax, m(this.f1119l) + this.f1119l.getMeasuredHeight());
            iCombineMeasuredStates = View.combineMeasuredStates(iCombineMeasuredStates, this.f1119l.getMeasuredState());
        }
        int childCount = getChildCount();
        for (int i13 = 0; i13 < childCount; i13++) {
            View childAt = getChildAt(i13);
            if (((e) childAt.getLayoutParams()).f1140b == 0 && v(childAt)) {
                iMax4 += t(childAt, i10, iMax4, i11, 0, iArr);
                iMax = Math.max(iMax, m(childAt) + childAt.getMeasuredHeight());
                iCombineMeasuredStates = View.combineMeasuredStates(iCombineMeasuredStates, childAt.getMeasuredState());
            }
        }
        int i14 = this.f1132y + this.f1133z;
        int i15 = this.f1130w + this.f1131x;
        if (v(this.f1116i)) {
            t(this.f1116i, i10, iMax4 + i15, i11, i14, iArr);
            int iL3 = l(this.f1116i) + this.f1116i.getMeasuredWidth();
            iM = m(this.f1116i) + this.f1116i.getMeasuredHeight();
            iCombineMeasuredStates2 = View.combineMeasuredStates(iCombineMeasuredStates, this.f1116i.getMeasuredState());
            iMax2 = iL3;
        } else {
            iM = 0;
            iCombineMeasuredStates2 = iCombineMeasuredStates;
            iMax2 = 0;
        }
        if (v(this.f1117j)) {
            iMax2 = Math.max(iMax2, t(this.f1117j, i10, iMax4 + i15, i11, iM + i14, iArr));
            iM += m(this.f1117j) + this.f1117j.getMeasuredHeight();
            iCombineMeasuredStates2 = View.combineMeasuredStates(iCombineMeasuredStates2, this.f1117j.getMeasuredState());
        }
        int iMax5 = Math.max(iMax, iM);
        int paddingRight = getPaddingRight() + getPaddingLeft();
        int paddingBottom = getPaddingBottom() + getPaddingTop() + iMax5;
        int iResolveSizeAndState = View.resolveSizeAndState(Math.max(paddingRight + iMax4 + iMax2, getSuggestedMinimumWidth()), i10, (-16777216) & iCombineMeasuredStates2);
        int iResolveSizeAndState2 = View.resolveSizeAndState(Math.max(paddingBottom, getSuggestedMinimumHeight()), i11, iCombineMeasuredStates2 << 16);
        if (!this.W) {
            z10 = false;
            break;
        }
        int childCount2 = getChildCount();
        int i16 = 0;
        while (true) {
            if (i16 >= childCount2) {
                z10 = true;
                break;
            }
            View childAt2 = getChildAt(i16);
            if (v(childAt2) && childAt2.getMeasuredWidth() > 0 && childAt2.getMeasuredHeight() > 0) {
                z10 = false;
                break;
            }
            i16++;
        }
        setMeasuredDimension(iResolveSizeAndState, z10 ? 0 : iResolveSizeAndState2);
    }

    @Override // android.view.View
    public void onRestoreInstanceState(Parcelable parcelable) {
        MenuItem menuItemFindItem;
        if (!(parcelable instanceof g)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        g gVar = (g) parcelable;
        super.onRestoreInstanceState(gVar.f12620h);
        ActionMenuView actionMenuView = this.f1115h;
        androidx.appcompat.view.menu.e eVar = actionMenuView != null ? actionMenuView.f1010w : null;
        int i10 = gVar.f1141j;
        if (i10 != 0 && this.T != null && eVar != null && (menuItemFindItem = eVar.findItem(i10)) != null) {
            menuItemFindItem.expandActionView();
        }
        if (gVar.f1142k) {
            removeCallbacks(this.f1114a0);
            post(this.f1114a0);
        }
    }

    @Override // android.view.View
    public final void onRtlPropertiesChanged(int i10) {
        super.onRtlPropertiesChanged(i10);
        d();
        w0 w0Var = this.A;
        boolean z10 = i10 == 1;
        if (z10 == w0Var.f1478g) {
            return;
        }
        w0Var.f1478g = z10;
        if (!w0Var.f1479h) {
            w0Var.f1472a = w0Var.f1476e;
            w0Var.f1473b = w0Var.f1477f;
            return;
        }
        if (z10) {
            int i11 = w0Var.f1475d;
            if (i11 == Integer.MIN_VALUE) {
                i11 = w0Var.f1476e;
            }
            w0Var.f1472a = i11;
            int i12 = w0Var.f1474c;
            if (i12 == Integer.MIN_VALUE) {
                i12 = w0Var.f1477f;
            }
            w0Var.f1473b = i12;
            return;
        }
        int i13 = w0Var.f1474c;
        if (i13 == Integer.MIN_VALUE) {
            i13 = w0Var.f1476e;
        }
        w0Var.f1472a = i13;
        int i14 = w0Var.f1475d;
        if (i14 == Integer.MIN_VALUE) {
            i14 = w0Var.f1477f;
        }
        w0Var.f1473b = i14;
    }

    @Override // android.view.View
    public Parcelable onSaveInstanceState() {
        androidx.appcompat.view.menu.g gVar;
        g gVar2 = new g(super.onSaveInstanceState());
        d dVar = this.T;
        if (dVar != null && (gVar = dVar.f1138i) != null) {
            gVar2.f1141j = gVar.f905a;
        }
        gVar2.f1142k = q();
        return gVar2;
    }

    @Override // android.view.View
    public final boolean onTouchEvent(MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            this.I = false;
        }
        if (!this.I) {
            boolean zOnTouchEvent = super.onTouchEvent(motionEvent);
            if (actionMasked == 0 && !zOnTouchEvent) {
                this.I = true;
            }
        }
        if (actionMasked == 1 || actionMasked == 3) {
            this.I = false;
        }
        return true;
    }

    public final boolean p(View view) {
        return view.getParent() == this || this.L.contains(view);
    }

    public final boolean q() {
        ActionMenuView actionMenuView = this.f1115h;
        if (actionMenuView != null) {
            androidx.appcompat.widget.c cVar = actionMenuView.A;
            if (cVar != null && cVar.l()) {
                return true;
            }
        }
        return false;
    }

    public final int r(View view, int i10, int[] iArr, int i11) {
        e eVar = (e) view.getLayoutParams();
        int i12 = ((ViewGroup.MarginLayoutParams) eVar).leftMargin - iArr[0];
        int iMax = Math.max(0, i12) + i10;
        iArr[0] = Math.max(0, -i12);
        int iK = k(view, i11);
        int measuredWidth = view.getMeasuredWidth();
        view.layout(iMax, iK, iMax + measuredWidth, view.getMeasuredHeight() + iK);
        return measuredWidth + ((ViewGroup.MarginLayoutParams) eVar).rightMargin + iMax;
    }

    public final int s(View view, int i10, int[] iArr, int i11) {
        e eVar = (e) view.getLayoutParams();
        int i12 = ((ViewGroup.MarginLayoutParams) eVar).rightMargin - iArr[1];
        int iMax = i10 - Math.max(0, i12);
        iArr[1] = Math.max(0, -i12);
        int iK = k(view, i11);
        int measuredWidth = view.getMeasuredWidth();
        view.layout(iMax - measuredWidth, iK, iMax, view.getMeasuredHeight() + iK);
        return iMax - (measuredWidth + ((ViewGroup.MarginLayoutParams) eVar).leftMargin);
    }

    public void setCollapseContentDescription(int i10) {
        setCollapseContentDescription(i10 != 0 ? getContext().getText(i10) : null);
    }

    public void setCollapseIcon(int i10) {
        setCollapseIcon(g.a.b(getContext(), i10));
    }

    public void setCollapsible(boolean z10) {
        this.W = z10;
        requestLayout();
    }

    public void setContentInsetEndWithActions(int i10) {
        if (i10 < 0) {
            i10 = Integer.MIN_VALUE;
        }
        if (i10 != this.C) {
            this.C = i10;
            if (getNavigationIcon() != null) {
                requestLayout();
            }
        }
    }

    public void setContentInsetStartWithNavigation(int i10) {
        if (i10 < 0) {
            i10 = Integer.MIN_VALUE;
        }
        if (i10 != this.B) {
            this.B = i10;
            if (getNavigationIcon() != null) {
                requestLayout();
            }
        }
    }

    public void setLogo(int i10) {
        setLogo(g.a.b(getContext(), i10));
    }

    public void setLogoDescription(int i10) {
        setLogoDescription(getContext().getText(i10));
    }

    public void setNavigationContentDescription(int i10) {
        setNavigationContentDescription(i10 != 0 ? getContext().getText(i10) : null);
    }

    public void setNavigationIcon(int i10) {
        setNavigationIcon(g.a.b(getContext(), i10));
    }

    public void setNavigationOnClickListener(View.OnClickListener onClickListener) {
        g();
        this.f1118k.setOnClickListener(onClickListener);
    }

    public void setOnMenuItemClickListener(f fVar) {
        this.P = fVar;
    }

    public void setOverflowIcon(Drawable drawable) {
        e();
        this.f1115h.setOverflowIcon(drawable);
    }

    public void setPopupTheme(int i10) {
        if (this.f1125r != i10) {
            this.f1125r = i10;
            if (i10 == 0) {
                this.f1124q = getContext();
            } else {
                this.f1124q = new ContextThemeWrapper(getContext(), i10);
            }
        }
    }

    public void setSubtitle(int i10) {
        setSubtitle(getContext().getText(i10));
    }

    public void setSubtitleTextColor(int i10) {
        setSubtitleTextColor(ColorStateList.valueOf(i10));
    }

    public void setTitle(int i10) {
        setTitle(getContext().getText(i10));
    }

    public void setTitleMarginBottom(int i10) {
        this.f1133z = i10;
        requestLayout();
    }

    public void setTitleMarginEnd(int i10) {
        this.f1131x = i10;
        requestLayout();
    }

    public void setTitleMarginStart(int i10) {
        this.f1130w = i10;
        requestLayout();
    }

    public void setTitleMarginTop(int i10) {
        this.f1132y = i10;
        requestLayout();
    }

    public void setTitleTextColor(int i10) {
        setTitleTextColor(ColorStateList.valueOf(i10));
    }

    public final int t(View view, int i10, int i11, int i12, int i13, int[] iArr) {
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
        int i14 = marginLayoutParams.leftMargin - iArr[0];
        int i15 = marginLayoutParams.rightMargin - iArr[1];
        int iMax = Math.max(0, i15) + Math.max(0, i14);
        iArr[0] = Math.max(0, -i14);
        iArr[1] = Math.max(0, -i15);
        view.measure(ViewGroup.getChildMeasureSpec(i10, getPaddingRight() + getPaddingLeft() + iMax + i11, marginLayoutParams.width), ViewGroup.getChildMeasureSpec(i12, getPaddingBottom() + getPaddingTop() + marginLayoutParams.topMargin + marginLayoutParams.bottomMargin + i13, marginLayoutParams.height));
        return view.getMeasuredWidth() + iMax;
    }

    public final void u(View view, int i10, int i11, int i12, int i13) {
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
        int childMeasureSpec = ViewGroup.getChildMeasureSpec(i10, getPaddingRight() + getPaddingLeft() + marginLayoutParams.leftMargin + marginLayoutParams.rightMargin + i11, marginLayoutParams.width);
        int childMeasureSpec2 = ViewGroup.getChildMeasureSpec(i12, getPaddingBottom() + getPaddingTop() + marginLayoutParams.topMargin + marginLayoutParams.bottomMargin + 0, marginLayoutParams.height);
        int mode = View.MeasureSpec.getMode(childMeasureSpec2);
        if (mode != 1073741824 && i13 >= 0) {
            if (mode != 0) {
                i13 = Math.min(View.MeasureSpec.getSize(childMeasureSpec2), i13);
            }
            childMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(i13, 1073741824);
        }
        view.measure(childMeasureSpec, childMeasureSpec2);
    }

    public final boolean v(View view) {
        return (view == null || view.getParent() != this || view.getVisibility() == 8) ? false : true;
    }

    public final boolean w() {
        ActionMenuView actionMenuView = this.f1115h;
        if (actionMenuView != null) {
            androidx.appcompat.widget.c cVar = actionMenuView.A;
            if (cVar != null && cVar.m()) {
                return true;
            }
        }
        return false;
    }

    public static class e extends f.a.C0123a {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f1140b;

        public e(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            this.f1140b = 0;
        }

        public e() {
            this.f1140b = 0;
            this.f6800a = 8388627;
        }

        public e(e eVar) {
            super((f.a.C0123a) eVar);
            this.f1140b = 0;
            this.f1140b = eVar.f1140b;
        }

        public e(f.a.C0123a c0123a) {
            super(c0123a);
            this.f1140b = 0;
        }

        public e(ViewGroup.MarginLayoutParams marginLayoutParams) {
            super(marginLayoutParams);
            this.f1140b = 0;
            ((ViewGroup.MarginLayoutParams) this).leftMargin = marginLayoutParams.leftMargin;
            ((ViewGroup.MarginLayoutParams) this).topMargin = marginLayoutParams.topMargin;
            ((ViewGroup.MarginLayoutParams) this).rightMargin = marginLayoutParams.rightMargin;
            ((ViewGroup.MarginLayoutParams) this).bottomMargin = marginLayoutParams.bottomMargin;
        }

        public e(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
            this.f1140b = 0;
        }
    }

    public Toolbar(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        this.D = 8388627;
        this.K = new ArrayList<>();
        this.L = new ArrayList<>();
        this.M = new int[2];
        this.N = new j0.i();
        this.O = new ArrayList<>();
        this.Q = new a();
        this.f1114a0 = new b();
        Context context2 = getContext();
        int[] iArr = R.styleable.Toolbar;
        f1 f1VarQ = f1.q(context2, attributeSet, iArr, i10);
        j0.a0.o(this, context, iArr, attributeSet, f1VarQ.f1253b, i10);
        this.f1126s = f1VarQ.l(R.styleable.Toolbar_titleTextAppearance, 0);
        this.f1127t = f1VarQ.l(R.styleable.Toolbar_subtitleTextAppearance, 0);
        this.D = f1VarQ.f1253b.getInteger(R.styleable.Toolbar_android_gravity, this.D);
        this.f1128u = f1VarQ.f1253b.getInteger(R.styleable.Toolbar_buttonGravity, 48);
        int iE = f1VarQ.e(R.styleable.Toolbar_titleMargin, 0);
        int i11 = R.styleable.Toolbar_titleMargins;
        iE = f1VarQ.o(i11) ? f1VarQ.e(i11, iE) : iE;
        this.f1133z = iE;
        this.f1132y = iE;
        this.f1131x = iE;
        this.f1130w = iE;
        int iE2 = f1VarQ.e(R.styleable.Toolbar_titleMarginStart, -1);
        if (iE2 >= 0) {
            this.f1130w = iE2;
        }
        int iE3 = f1VarQ.e(R.styleable.Toolbar_titleMarginEnd, -1);
        if (iE3 >= 0) {
            this.f1131x = iE3;
        }
        int iE4 = f1VarQ.e(R.styleable.Toolbar_titleMarginTop, -1);
        if (iE4 >= 0) {
            this.f1132y = iE4;
        }
        int iE5 = f1VarQ.e(R.styleable.Toolbar_titleMarginBottom, -1);
        if (iE5 >= 0) {
            this.f1133z = iE5;
        }
        this.f1129v = f1VarQ.f(R.styleable.Toolbar_maxButtonHeight, -1);
        int iE6 = f1VarQ.e(R.styleable.Toolbar_contentInsetStart, Integer.MIN_VALUE);
        int iE7 = f1VarQ.e(R.styleable.Toolbar_contentInsetEnd, Integer.MIN_VALUE);
        int iF = f1VarQ.f(R.styleable.Toolbar_contentInsetLeft, 0);
        int iF2 = f1VarQ.f(R.styleable.Toolbar_contentInsetRight, 0);
        d();
        w0 w0Var = this.A;
        w0Var.f1479h = false;
        if (iF != Integer.MIN_VALUE) {
            w0Var.f1476e = iF;
            w0Var.f1472a = iF;
        }
        if (iF2 != Integer.MIN_VALUE) {
            w0Var.f1477f = iF2;
            w0Var.f1473b = iF2;
        }
        if (iE6 != Integer.MIN_VALUE || iE7 != Integer.MIN_VALUE) {
            w0Var.a(iE6, iE7);
        }
        this.B = f1VarQ.e(R.styleable.Toolbar_contentInsetStartWithNavigation, Integer.MIN_VALUE);
        this.C = f1VarQ.e(R.styleable.Toolbar_contentInsetEndWithActions, Integer.MIN_VALUE);
        this.f1120m = f1VarQ.g(R.styleable.Toolbar_collapseIcon);
        this.f1121n = f1VarQ.n(R.styleable.Toolbar_collapseContentDescription);
        CharSequence charSequenceN = f1VarQ.n(R.styleable.Toolbar_title);
        if (!TextUtils.isEmpty(charSequenceN)) {
            setTitle(charSequenceN);
        }
        CharSequence charSequenceN2 = f1VarQ.n(R.styleable.Toolbar_subtitle);
        if (!TextUtils.isEmpty(charSequenceN2)) {
            setSubtitle(charSequenceN2);
        }
        this.f1124q = getContext();
        setPopupTheme(f1VarQ.l(R.styleable.Toolbar_popupTheme, 0));
        Drawable drawableG = f1VarQ.g(R.styleable.Toolbar_navigationIcon);
        if (drawableG != null) {
            setNavigationIcon(drawableG);
        }
        CharSequence charSequenceN3 = f1VarQ.n(R.styleable.Toolbar_navigationContentDescription);
        if (!TextUtils.isEmpty(charSequenceN3)) {
            setNavigationContentDescription(charSequenceN3);
        }
        Drawable drawableG2 = f1VarQ.g(R.styleable.Toolbar_logo);
        if (drawableG2 != null) {
            setLogo(drawableG2);
        }
        CharSequence charSequenceN4 = f1VarQ.n(R.styleable.Toolbar_logoDescription);
        if (!TextUtils.isEmpty(charSequenceN4)) {
            setLogoDescription(charSequenceN4);
        }
        int i12 = R.styleable.Toolbar_titleTextColor;
        if (f1VarQ.o(i12)) {
            setTitleTextColor(f1VarQ.c(i12));
        }
        int i13 = R.styleable.Toolbar_subtitleTextColor;
        if (f1VarQ.o(i13)) {
            setSubtitleTextColor(f1VarQ.c(i13));
        }
        int i14 = R.styleable.Toolbar_menu;
        if (f1VarQ.o(i14)) {
            getMenuInflater().inflate(f1VarQ.l(i14, 0), getMenu());
        }
        f1VarQ.r();
    }

    @Override // android.view.ViewGroup
    public final ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new e(getContext(), attributeSet);
    }

    public void setCollapseContentDescription(CharSequence charSequence) {
        if (!TextUtils.isEmpty(charSequence)) {
            c();
        }
        q qVar = this.f1122o;
        if (qVar != null) {
            qVar.setContentDescription(charSequence);
        }
    }

    public void setCollapseIcon(Drawable drawable) {
        if (drawable != null) {
            c();
            this.f1122o.setImageDrawable(drawable);
        } else {
            q qVar = this.f1122o;
            if (qVar != null) {
                qVar.setImageDrawable(this.f1120m);
            }
        }
    }

    public void setLogo(Drawable drawable) {
        if (drawable != null) {
            if (this.f1119l == null) {
                this.f1119l = new s(getContext(), null);
            }
            if (!p(this.f1119l)) {
                b(this.f1119l, true);
            }
        } else {
            s sVar = this.f1119l;
            if (sVar != null && p(sVar)) {
                removeView(this.f1119l);
                this.L.remove(this.f1119l);
            }
        }
        s sVar2 = this.f1119l;
        if (sVar2 != null) {
            sVar2.setImageDrawable(drawable);
        }
    }

    public void setLogoDescription(CharSequence charSequence) {
        if (!TextUtils.isEmpty(charSequence) && this.f1119l == null) {
            this.f1119l = new s(getContext(), null);
        }
        s sVar = this.f1119l;
        if (sVar != null) {
            sVar.setContentDescription(charSequence);
        }
    }

    public void setNavigationContentDescription(CharSequence charSequence) {
        if (!TextUtils.isEmpty(charSequence)) {
            g();
        }
        q qVar = this.f1118k;
        if (qVar != null) {
            qVar.setContentDescription(charSequence);
            j1.a(this.f1118k, charSequence);
        }
    }

    public void setNavigationIcon(Drawable drawable) {
        if (drawable != null) {
            g();
            if (!p(this.f1118k)) {
                b(this.f1118k, true);
            }
        } else {
            q qVar = this.f1118k;
            if (qVar != null && p(qVar)) {
                removeView(this.f1118k);
                this.L.remove(this.f1118k);
            }
        }
        q qVar2 = this.f1118k;
        if (qVar2 != null) {
            qVar2.setImageDrawable(drawable);
        }
    }

    public void setSubtitle(CharSequence charSequence) {
        if (TextUtils.isEmpty(charSequence)) {
            AppCompatTextView appCompatTextView = this.f1117j;
            if (appCompatTextView != null && p(appCompatTextView)) {
                removeView(this.f1117j);
                this.L.remove(this.f1117j);
            }
        } else {
            if (this.f1117j == null) {
                Context context = getContext();
                AppCompatTextView appCompatTextView2 = new AppCompatTextView(context, null);
                this.f1117j = appCompatTextView2;
                appCompatTextView2.setSingleLine();
                this.f1117j.setEllipsize(TextUtils.TruncateAt.END);
                int i10 = this.f1127t;
                if (i10 != 0) {
                    this.f1117j.setTextAppearance(context, i10);
                }
                ColorStateList colorStateList = this.H;
                if (colorStateList != null) {
                    this.f1117j.setTextColor(colorStateList);
                }
            }
            if (!p(this.f1117j)) {
                b(this.f1117j, true);
            }
        }
        AppCompatTextView appCompatTextView3 = this.f1117j;
        if (appCompatTextView3 != null) {
            appCompatTextView3.setText(charSequence);
        }
        this.F = charSequence;
    }

    public void setSubtitleTextColor(ColorStateList colorStateList) {
        this.H = colorStateList;
        AppCompatTextView appCompatTextView = this.f1117j;
        if (appCompatTextView != null) {
            appCompatTextView.setTextColor(colorStateList);
        }
    }

    public void setTitle(CharSequence charSequence) {
        if (TextUtils.isEmpty(charSequence)) {
            AppCompatTextView appCompatTextView = this.f1116i;
            if (appCompatTextView != null && p(appCompatTextView)) {
                removeView(this.f1116i);
                this.L.remove(this.f1116i);
            }
        } else {
            if (this.f1116i == null) {
                Context context = getContext();
                AppCompatTextView appCompatTextView2 = new AppCompatTextView(context, null);
                this.f1116i = appCompatTextView2;
                appCompatTextView2.setSingleLine();
                this.f1116i.setEllipsize(TextUtils.TruncateAt.END);
                int i10 = this.f1126s;
                if (i10 != 0) {
                    this.f1116i.setTextAppearance(context, i10);
                }
                ColorStateList colorStateList = this.G;
                if (colorStateList != null) {
                    this.f1116i.setTextColor(colorStateList);
                }
            }
            if (!p(this.f1116i)) {
                b(this.f1116i, true);
            }
        }
        AppCompatTextView appCompatTextView3 = this.f1116i;
        if (appCompatTextView3 != null) {
            appCompatTextView3.setText(charSequence);
        }
        this.E = charSequence;
    }

    public void setTitleTextColor(ColorStateList colorStateList) {
        this.G = colorStateList;
        AppCompatTextView appCompatTextView = this.f1116i;
        if (appCompatTextView != null) {
            appCompatTextView.setTextColor(colorStateList);
        }
    }

    public static class g extends p0.a {
        public static final Parcelable.Creator<g> CREATOR = new a();

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public int f1141j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public boolean f1142k;

        public class a implements Parcelable.ClassLoaderCreator<g> {
            @Override // android.os.Parcelable.ClassLoaderCreator
            public final g createFromParcel(Parcel parcel, ClassLoader classLoader) {
                return new g(parcel, classLoader);
            }

            @Override // android.os.Parcelable.Creator
            public final Object[] newArray(int i10) {
                return new g[i10];
            }

            @Override // android.os.Parcelable.Creator
            public final Object createFromParcel(Parcel parcel) {
                return new g(parcel, null);
            }
        }

        public g(Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            this.f1141j = parcel.readInt();
            this.f1142k = parcel.readInt() != 0;
        }

        @Override // p0.a, android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i10) {
            parcel.writeParcelable(this.f12620h, i10);
            parcel.writeInt(this.f1141j);
            parcel.writeInt(this.f1142k ? 1 : 0);
        }

        public g(Parcelable parcelable) {
            super(parcelable);
        }
    }
}
