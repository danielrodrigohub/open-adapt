package androidx.appcompat.widget;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.Window;
import androidx.appcompat.R;
import androidx.appcompat.widget.Toolbar.d;

/* JADX INFO: compiled from: ToolbarWidgetWrapper.java */
/* JADX INFO: loaded from: classes.dex */
public final class i1 implements k0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public Toolbar f1293a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f1294b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public x0 f1295c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public View f1296d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public Drawable f1297e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public Drawable f1298f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public Drawable f1299g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public boolean f1300h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public CharSequence f1301i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public CharSequence f1302j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public CharSequence f1303k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public Window.Callback f1304l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public boolean f1305m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public c f1306n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public int f1307o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public Drawable f1308p;

    /* JADX INFO: compiled from: ToolbarWidgetWrapper.java */
    public class a extends i0.b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public boolean f1309a = false;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final /* synthetic */ int f1310b;

        public a(int i10) {
            this.f1310b = i10;
        }

        @Override // j0.h0
        public final void a() {
            if (this.f1309a) {
                return;
            }
            i1.this.f1293a.setVisibility(this.f1310b);
        }

        @Override // i0.b, j0.h0
        public final void b(View view) {
            this.f1309a = true;
        }

        @Override // i0.b, j0.h0
        public final void c() {
            i1.this.f1293a.setVisibility(0);
        }
    }

    public i1(Toolbar toolbar, boolean z10) {
        int i10;
        Drawable drawable;
        int i11 = R.string.abc_action_bar_up_description;
        this.f1307o = 0;
        this.f1293a = toolbar;
        this.f1301i = toolbar.getTitle();
        this.f1302j = toolbar.getSubtitle();
        this.f1300h = this.f1301i != null;
        this.f1299g = toolbar.getNavigationIcon();
        f1 f1VarQ = f1.q(toolbar.getContext(), null, R.styleable.ActionBar, R.attr.actionBarStyle);
        this.f1308p = f1VarQ.g(R.styleable.ActionBar_homeAsUpIndicator);
        if (z10) {
            CharSequence charSequenceN = f1VarQ.n(R.styleable.ActionBar_title);
            if (!TextUtils.isEmpty(charSequenceN)) {
                setTitle(charSequenceN);
            }
            CharSequence charSequenceN2 = f1VarQ.n(R.styleable.ActionBar_subtitle);
            if (!TextUtils.isEmpty(charSequenceN2)) {
                this.f1302j = charSequenceN2;
                if ((this.f1294b & 8) != 0) {
                    this.f1293a.setSubtitle(charSequenceN2);
                }
            }
            Drawable drawableG = f1VarQ.g(R.styleable.ActionBar_logo);
            if (drawableG != null) {
                this.f1298f = drawableG;
                x();
            }
            Drawable drawableG2 = f1VarQ.g(R.styleable.ActionBar_icon);
            if (drawableG2 != null) {
                setIcon(drawableG2);
            }
            if (this.f1299g == null && (drawable = this.f1308p) != null) {
                this.f1299g = drawable;
                w();
            }
            l(f1VarQ.j(R.styleable.ActionBar_displayOptions, 0));
            int iL = f1VarQ.l(R.styleable.ActionBar_customNavigationLayout, 0);
            if (iL != 0) {
                View viewInflate = LayoutInflater.from(this.f1293a.getContext()).inflate(iL, (ViewGroup) this.f1293a, false);
                View view = this.f1296d;
                if (view != null && (this.f1294b & 16) != 0) {
                    this.f1293a.removeView(view);
                }
                this.f1296d = viewInflate;
                if (viewInflate != null && (this.f1294b & 16) != 0) {
                    this.f1293a.addView(viewInflate);
                }
                l(this.f1294b | 16);
            }
            int iK = f1VarQ.k(R.styleable.ActionBar_height, 0);
            if (iK > 0) {
                ViewGroup.LayoutParams layoutParams = this.f1293a.getLayoutParams();
                layoutParams.height = iK;
                this.f1293a.setLayoutParams(layoutParams);
            }
            int iE = f1VarQ.e(R.styleable.ActionBar_contentInsetStart, -1);
            int iE2 = f1VarQ.e(R.styleable.ActionBar_contentInsetEnd, -1);
            if (iE >= 0 || iE2 >= 0) {
                Toolbar toolbar2 = this.f1293a;
                int iMax = Math.max(iE, 0);
                int iMax2 = Math.max(iE2, 0);
                toolbar2.d();
                toolbar2.A.a(iMax, iMax2);
            }
            int iL2 = f1VarQ.l(R.styleable.ActionBar_titleTextStyle, 0);
            if (iL2 != 0) {
                Toolbar toolbar3 = this.f1293a;
                Context context = toolbar3.getContext();
                toolbar3.f1126s = iL2;
                AppCompatTextView appCompatTextView = toolbar3.f1116i;
                if (appCompatTextView != null) {
                    appCompatTextView.setTextAppearance(context, iL2);
                }
            }
            int iL3 = f1VarQ.l(R.styleable.ActionBar_subtitleTextStyle, 0);
            if (iL3 != 0) {
                Toolbar toolbar4 = this.f1293a;
                Context context2 = toolbar4.getContext();
                toolbar4.f1127t = iL3;
                AppCompatTextView appCompatTextView2 = toolbar4.f1117j;
                if (appCompatTextView2 != null) {
                    appCompatTextView2.setTextAppearance(context2, iL3);
                }
            }
            int iL4 = f1VarQ.l(R.styleable.ActionBar_popupTheme, 0);
            if (iL4 != 0) {
                this.f1293a.setPopupTheme(iL4);
            }
        } else {
            if (this.f1293a.getNavigationIcon() != null) {
                i10 = 15;
                this.f1308p = this.f1293a.getNavigationIcon();
            } else {
                i10 = 11;
            }
            this.f1294b = i10;
        }
        f1VarQ.r();
        if (i11 != this.f1307o) {
            this.f1307o = i11;
            if (TextUtils.isEmpty(this.f1293a.getNavigationContentDescription())) {
                int i12 = this.f1307o;
                this.f1303k = i12 != 0 ? getContext().getString(i12) : null;
                v();
            }
        }
        this.f1303k = this.f1293a.getNavigationContentDescription();
        this.f1293a.setNavigationOnClickListener(new h1(this));
    }

    @Override // androidx.appcompat.widget.k0
    public final void a(Menu menu, androidx.appcompat.view.menu.i.a aVar) {
        androidx.appcompat.view.menu.g gVar;
        if (this.f1306n == null) {
            this.f1306n = new c(this.f1293a.getContext());
        }
        c cVar = this.f1306n;
        cVar.f830l = aVar;
        Toolbar toolbar = this.f1293a;
        androidx.appcompat.view.menu.e eVar = (androidx.appcompat.view.menu.e) menu;
        if (eVar == null && toolbar.f1115h == null) {
            return;
        }
        toolbar.f();
        androidx.appcompat.view.menu.e eVar2 = toolbar.f1115h.f1010w;
        if (eVar2 == eVar) {
            return;
        }
        if (eVar2 != null) {
            eVar2.v(toolbar.S);
            eVar2.v(toolbar.T);
        }
        if (toolbar.T == null) {
            toolbar.T = toolbar.new d();
        }
        cVar.f1183x = true;
        if (eVar != null) {
            eVar.c(cVar, toolbar.f1124q);
            eVar.c(toolbar.T, toolbar.f1124q);
        } else {
            cVar.e(toolbar.f1124q, null);
            Toolbar.d dVar = toolbar.T;
            androidx.appcompat.view.menu.e eVar3 = dVar.f1137h;
            if (eVar3 != null && (gVar = dVar.f1138i) != null) {
                eVar3.e(gVar);
            }
            dVar.f1137h = null;
            cVar.f();
            toolbar.T.f();
        }
        toolbar.f1115h.setPopupTheme(toolbar.f1125r);
        toolbar.f1115h.setPresenter(cVar);
        toolbar.S = cVar;
    }

    @Override // androidx.appcompat.widget.k0
    public final boolean b() {
        return this.f1293a.q();
    }

    @Override // androidx.appcompat.widget.k0
    public final void c() {
        this.f1305m = true;
    }

    @Override // androidx.appcompat.widget.k0
    public final void collapseActionView() {
        Toolbar.d dVar = this.f1293a.T;
        androidx.appcompat.view.menu.g gVar = dVar == null ? null : dVar.f1138i;
        if (gVar != null) {
            gVar.collapseActionView();
        }
    }

    /* JADX WARN: Code duplicated, block: B:15:0x001e  */
    @Override // androidx.appcompat.widget.k0
    public final boolean d() {
        boolean z10;
        ActionMenuView actionMenuView = this.f1293a.f1115h;
        if (actionMenuView != null) {
            c cVar = actionMenuView.A;
            if (cVar == null) {
                z10 = false;
            } else {
                if (cVar.B != null || cVar.l()) {
                    z10 = true;
                } else {
                    z10 = false;
                }
            }
            if (z10) {
                return true;
            }
        }
        return false;
    }

    @Override // androidx.appcompat.widget.k0
    public final boolean e() {
        ActionMenuView actionMenuView = this.f1293a.f1115h;
        if (actionMenuView != null) {
            c cVar = actionMenuView.A;
            if (cVar != null && cVar.g()) {
                return true;
            }
        }
        return false;
    }

    @Override // androidx.appcompat.widget.k0
    public final boolean f() {
        return this.f1293a.w();
    }

    @Override // androidx.appcompat.widget.k0
    public final boolean g() {
        ActionMenuView actionMenuView;
        Toolbar toolbar = this.f1293a;
        return toolbar.getVisibility() == 0 && (actionMenuView = toolbar.f1115h) != null && actionMenuView.f1013z;
    }

    @Override // androidx.appcompat.widget.k0
    public final Context getContext() {
        return this.f1293a.getContext();
    }

    @Override // androidx.appcompat.widget.k0
    public final CharSequence getTitle() {
        return this.f1293a.getTitle();
    }

    @Override // androidx.appcompat.widget.k0
    public final void h() {
        c cVar;
        ActionMenuView actionMenuView = this.f1293a.f1115h;
        if (actionMenuView == null || (cVar = actionMenuView.A) == null) {
            return;
        }
        cVar.a();
    }

    @Override // androidx.appcompat.widget.k0
    public final void i(int i10) {
        this.f1293a.setVisibility(i10);
    }

    @Override // androidx.appcompat.widget.k0
    public final void j() {
    }

    @Override // androidx.appcompat.widget.k0
    public final boolean k() {
        Toolbar.d dVar = this.f1293a.T;
        return (dVar == null || dVar.f1138i == null) ? false : true;
    }

    @Override // androidx.appcompat.widget.k0
    public final void l(int i10) {
        View view;
        int i11 = this.f1294b ^ i10;
        this.f1294b = i10;
        if (i11 != 0) {
            if ((i11 & 4) != 0) {
                if ((i10 & 4) != 0) {
                    v();
                }
                w();
            }
            if ((i11 & 3) != 0) {
                x();
            }
            if ((i11 & 8) != 0) {
                if ((i10 & 8) != 0) {
                    this.f1293a.setTitle(this.f1301i);
                    this.f1293a.setSubtitle(this.f1302j);
                } else {
                    this.f1293a.setTitle((CharSequence) null);
                    this.f1293a.setSubtitle((CharSequence) null);
                }
            }
            if ((i11 & 16) == 0 || (view = this.f1296d) == null) {
                return;
            }
            if ((i10 & 16) != 0) {
                this.f1293a.addView(view);
            } else {
                this.f1293a.removeView(view);
            }
        }
    }

    @Override // androidx.appcompat.widget.k0
    public final void m() {
        x0 x0Var = this.f1295c;
        if (x0Var != null) {
            ViewParent parent = x0Var.getParent();
            Toolbar toolbar = this.f1293a;
            if (parent == toolbar) {
                toolbar.removeView(this.f1295c);
            }
        }
        this.f1295c = null;
    }

    @Override // androidx.appcompat.widget.k0
    public final int n() {
        return this.f1294b;
    }

    @Override // androidx.appcompat.widget.k0
    public final void o(int i10) {
        this.f1298f = i10 != 0 ? g.a.b(getContext(), i10) : null;
        x();
    }

    @Override // androidx.appcompat.widget.k0
    public final void p() {
    }

    @Override // androidx.appcompat.widget.k0
    public final j0.g0 q(int i10, long j10) {
        j0.g0 g0VarB = j0.a0.b(this.f1293a);
        g0VarB.a(i10 == 0 ? 1.0f : 0.0f);
        g0VarB.c(j10);
        g0VarB.d(new a(i10));
        return g0VarB;
    }

    @Override // androidx.appcompat.widget.k0
    public final void r() {
        Log.i("ToolbarWidgetWrapper", "Progress display unsupported");
    }

    @Override // androidx.appcompat.widget.k0
    public final void s() {
        Log.i("ToolbarWidgetWrapper", "Progress display unsupported");
    }

    @Override // androidx.appcompat.widget.k0
    public final void setIcon(int i10) {
        setIcon(i10 != 0 ? g.a.b(getContext(), i10) : null);
    }

    @Override // androidx.appcompat.widget.k0
    public final void setTitle(CharSequence charSequence) {
        this.f1300h = true;
        u(charSequence);
    }

    @Override // androidx.appcompat.widget.k0
    public final void setWindowCallback(Window.Callback callback) {
        this.f1304l = callback;
    }

    @Override // androidx.appcompat.widget.k0
    public final void setWindowTitle(CharSequence charSequence) {
        if (this.f1300h) {
            return;
        }
        u(charSequence);
    }

    @Override // androidx.appcompat.widget.k0
    public final void t(boolean z10) {
        this.f1293a.setCollapsible(z10);
    }

    public final void u(CharSequence charSequence) {
        this.f1301i = charSequence;
        if ((this.f1294b & 8) != 0) {
            this.f1293a.setTitle(charSequence);
            if (this.f1300h) {
                j0.a0.r(this.f1293a.getRootView(), charSequence);
            }
        }
    }

    public final void v() {
        if ((this.f1294b & 4) != 0) {
            if (TextUtils.isEmpty(this.f1303k)) {
                this.f1293a.setNavigationContentDescription(this.f1307o);
            } else {
                this.f1293a.setNavigationContentDescription(this.f1303k);
            }
        }
    }

    public final void w() {
        if ((this.f1294b & 4) == 0) {
            this.f1293a.setNavigationIcon((Drawable) null);
            return;
        }
        Toolbar toolbar = this.f1293a;
        Drawable drawable = this.f1299g;
        if (drawable == null) {
            drawable = this.f1308p;
        }
        toolbar.setNavigationIcon(drawable);
    }

    public final void x() {
        Drawable drawable;
        int i10 = this.f1294b;
        if ((i10 & 2) == 0) {
            drawable = null;
        } else if ((i10 & 1) == 0 || (drawable = this.f1298f) == null) {
            drawable = this.f1297e;
        }
        this.f1293a.setLogo(drawable);
    }

    @Override // androidx.appcompat.widget.k0
    public final void setIcon(Drawable drawable) {
        this.f1297e = drawable;
        x();
    }
}
