package f;

import android.R;
import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.content.res.TypedArray;
import android.util.TypedValue;
import android.view.ContextThemeWrapper;
import android.view.KeyCharacterMap;
import android.view.KeyEvent;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.DecelerateInterpolator;
import androidx.appcompat.widget.ActionBarContainer;
import androidx.appcompat.widget.ActionBarContextView;
import androidx.appcompat.widget.ActionBarOverlayLayout;
import androidx.appcompat.widget.Toolbar;
import androidx.appcompat.widget.k0;
import com.newrelic.agent.android.util.SafeJsonPrimitive;
import j0.a0;
import j0.g0;
import j0.i0;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.WeakHashMap;

/* JADX INFO: compiled from: WindowDecorActionBar.java */
/* JADX INFO: loaded from: classes.dex */
public final class u extends f.a implements ActionBarOverlayLayout.d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public Context f6923a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public Context f6924b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public ActionBarOverlayLayout f6925c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public ActionBarContainer f6926d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public k0 f6927e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public ActionBarContextView f6928f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public View f6929g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public boolean f6930h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public d f6931i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public d f6932j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public j.a.InterfaceC0177a f6933k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public boolean f6934l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public ArrayList<f.a.b> f6935m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public boolean f6936n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public int f6937o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public boolean f6938p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public boolean f6939q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public boolean f6940r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public boolean f6941s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public j.g f6942t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public boolean f6943u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public boolean f6944v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public final a f6945w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public final b f6946x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public final c f6947y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public static final AccelerateInterpolator f6922z = new AccelerateInterpolator();
    public static final DecelerateInterpolator A = new DecelerateInterpolator();

    /* JADX INFO: compiled from: WindowDecorActionBar.java */
    public class a extends i0.b {
        public a() {
        }

        @Override // j0.h0
        public final void a() {
            View view;
            u uVar = u.this;
            if (uVar.f6938p && (view = uVar.f6929g) != null) {
                view.setTranslationY(0.0f);
                u.this.f6926d.setTranslationY(0.0f);
            }
            u.this.f6926d.setVisibility(8);
            u.this.f6926d.setTransitioning(false);
            u uVar2 = u.this;
            uVar2.f6942t = null;
            j.a.InterfaceC0177a interfaceC0177a = uVar2.f6933k;
            if (interfaceC0177a != null) {
                interfaceC0177a.c(uVar2.f6932j);
                uVar2.f6932j = null;
                uVar2.f6933k = null;
            }
            ActionBarOverlayLayout actionBarOverlayLayout = u.this.f6925c;
            if (actionBarOverlayLayout != null) {
                WeakHashMap<View, g0> weakHashMap = a0.f9147a;
                a0.h.c(actionBarOverlayLayout);
            }
        }
    }

    /* JADX INFO: compiled from: WindowDecorActionBar.java */
    public class b extends i0.b {
        public b() {
        }

        @Override // j0.h0
        public final void a() {
            u uVar = u.this;
            uVar.f6942t = null;
            uVar.f6926d.requestLayout();
        }
    }

    /* JADX INFO: compiled from: WindowDecorActionBar.java */
    public class c implements i0 {
        public c() {
        }
    }

    /* JADX INFO: compiled from: WindowDecorActionBar.java */
    public class d extends j.a implements androidx.appcompat.view.menu.e.a {

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public final Context f6951j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public final androidx.appcompat.view.menu.e f6952k;

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        public j.a.InterfaceC0177a f6953l;

        /* JADX INFO: renamed from: m, reason: collision with root package name */
        public WeakReference<View> f6954m;

        public d(Context context, j.a.InterfaceC0177a interfaceC0177a) {
            this.f6951j = context;
            this.f6953l = interfaceC0177a;
            androidx.appcompat.view.menu.e eVar = new androidx.appcompat.view.menu.e(context);
            eVar.f889l = 1;
            this.f6952k = eVar;
            eVar.f882e = this;
        }

        @Override // androidx.appcompat.view.menu.e.a
        public final boolean a(androidx.appcompat.view.menu.e eVar, MenuItem menuItem) {
            j.a.InterfaceC0177a interfaceC0177a = this.f6953l;
            if (interfaceC0177a != null) {
                return interfaceC0177a.a(this, menuItem);
            }
            return false;
        }

        @Override // androidx.appcompat.view.menu.e.a
        public final void b(androidx.appcompat.view.menu.e eVar) {
            if (this.f6953l == null) {
                return;
            }
            i();
            androidx.appcompat.widget.c cVar = u.this.f6928f.f1151k;
            if (cVar != null) {
                cVar.m();
            }
        }

        @Override // j.a
        public final void c() {
            u uVar = u.this;
            if (uVar.f6931i != this) {
                return;
            }
            if (!uVar.f6939q) {
                this.f6953l.c(this);
            } else {
                uVar.f6932j = this;
                uVar.f6933k = this.f6953l;
            }
            this.f6953l = null;
            u.this.r(false);
            ActionBarContextView actionBarContextView = u.this.f6928f;
            if (actionBarContextView.f978r == null) {
                actionBarContextView.h();
            }
            u uVar2 = u.this;
            uVar2.f6925c.setHideOnContentScrollEnabled(uVar2.f6944v);
            u.this.f6931i = null;
        }

        @Override // j.a
        public final View d() {
            WeakReference<View> weakReference = this.f6954m;
            if (weakReference != null) {
                return weakReference.get();
            }
            return null;
        }

        @Override // j.a
        public final Menu e() {
            return this.f6952k;
        }

        @Override // j.a
        public final MenuInflater f() {
            return new j.f(this.f6951j);
        }

        @Override // j.a
        public final CharSequence g() {
            return u.this.f6928f.getSubtitle();
        }

        @Override // j.a
        public final CharSequence h() {
            return u.this.f6928f.getTitle();
        }

        @Override // j.a
        public final void i() {
            if (u.this.f6931i != this) {
                return;
            }
            this.f6952k.B();
            try {
                this.f6953l.d(this, this.f6952k);
            } finally {
                this.f6952k.A();
            }
        }

        @Override // j.a
        public final boolean j() {
            return u.this.f6928f.f986z;
        }

        @Override // j.a
        public final void k(View view) {
            u.this.f6928f.setCustomView(view);
            this.f6954m = new WeakReference<>(view);
        }

        @Override // j.a
        public final void l(int i10) {
            u.this.f6928f.setSubtitle(u.this.f6923a.getResources().getString(i10));
        }

        @Override // j.a
        public final void m(CharSequence charSequence) {
            u.this.f6928f.setSubtitle(charSequence);
        }

        @Override // j.a
        public final void n(int i10) {
            u.this.f6928f.setTitle(u.this.f6923a.getResources().getString(i10));
        }

        @Override // j.a
        public final void o(CharSequence charSequence) {
            u.this.f6928f.setTitle(charSequence);
        }

        @Override // j.a
        public final void p(boolean z10) {
            this.f9079i = z10;
            u.this.f6928f.setTitleOptional(z10);
        }
    }

    public u(Activity activity, boolean z10) {
        new ArrayList();
        this.f6935m = new ArrayList<>();
        this.f6937o = 0;
        this.f6938p = true;
        this.f6941s = true;
        this.f6945w = new a();
        this.f6946x = new b();
        this.f6947y = new c();
        View decorView = activity.getWindow().getDecorView();
        s(decorView);
        if (z10) {
            return;
        }
        this.f6929g = decorView.findViewById(R.id.content);
    }

    @Override // f.a
    public final boolean b() {
        k0 k0Var = this.f6927e;
        if (k0Var == null || !k0Var.k()) {
            return false;
        }
        this.f6927e.collapseActionView();
        return true;
    }

    @Override // f.a
    public final void c(boolean z10) {
        if (z10 == this.f6934l) {
            return;
        }
        this.f6934l = z10;
        int size = this.f6935m.size();
        for (int i10 = 0; i10 < size; i10++) {
            this.f6935m.get(i10).a();
        }
    }

    @Override // f.a
    public final int d() {
        return this.f6927e.n();
    }

    @Override // f.a
    public final Context e() {
        if (this.f6924b == null) {
            TypedValue typedValue = new TypedValue();
            this.f6923a.getTheme().resolveAttribute(androidx.appcompat.R.attr.actionBarWidgetTheme, typedValue, true);
            int i10 = typedValue.resourceId;
            if (i10 != 0) {
                this.f6924b = new ContextThemeWrapper(this.f6923a, i10);
            } else {
                this.f6924b = this.f6923a;
            }
        }
        return this.f6924b;
    }

    @Override // f.a
    public final void g() {
        t(this.f6923a.getResources().getBoolean(androidx.appcompat.R.bool.abc_action_bar_embed_tabs));
    }

    @Override // f.a
    public final boolean i(int i10, KeyEvent keyEvent) {
        androidx.appcompat.view.menu.e eVar;
        d dVar = this.f6931i;
        if (dVar == null || (eVar = dVar.f6952k) == null) {
            return false;
        }
        eVar.setQwertyMode(KeyCharacterMap.load(keyEvent != null ? keyEvent.getDeviceId() : -1).getKeyboardType() != 1);
        return eVar.performShortcut(i10, keyEvent, 0);
    }

    @Override // f.a
    public final void l(boolean z10) {
        if (this.f6930h) {
            return;
        }
        m(z10);
    }

    @Override // f.a
    public final void m(boolean z10) {
        int i10 = z10 ? 4 : 0;
        int iN = this.f6927e.n();
        this.f6930h = true;
        this.f6927e.l((i10 & 4) | ((-5) & iN));
    }

    @Override // f.a
    public final void n(boolean z10) {
        j.g gVar;
        this.f6943u = z10;
        if (z10 || (gVar = this.f6942t) == null) {
            return;
        }
        gVar.a();
    }

    @Override // f.a
    public final void o(CharSequence charSequence) {
        this.f6927e.setTitle(charSequence);
    }

    @Override // f.a
    public final void p(CharSequence charSequence) {
        this.f6927e.setWindowTitle(charSequence);
    }

    @Override // f.a
    public final j.a q(j.a.InterfaceC0177a interfaceC0177a) {
        d dVar = this.f6931i;
        if (dVar != null) {
            dVar.c();
        }
        this.f6925c.setHideOnContentScrollEnabled(false);
        this.f6928f.h();
        d dVar2 = new d(this.f6928f.getContext(), interfaceC0177a);
        dVar2.f6952k.B();
        try {
            boolean zB = dVar2.f6953l.b(dVar2, dVar2.f6952k);
            dVar2.f6952k.A();
            if (!zB) {
                return null;
            }
            this.f6931i = dVar2;
            dVar2.i();
            this.f6928f.f(dVar2);
            r(true);
            return dVar2;
        } catch (Throwable th) {
            dVar2.f6952k.A();
            throw th;
        }
    }

    public final void r(boolean z10) {
        g0 g0VarQ;
        g0 g0VarE;
        if (z10) {
            if (!this.f6940r) {
                this.f6940r = true;
                ActionBarOverlayLayout actionBarOverlayLayout = this.f6925c;
                if (actionBarOverlayLayout != null) {
                    actionBarOverlayLayout.setShowingForActionMode(true);
                }
                u(false);
            }
        } else if (this.f6940r) {
            this.f6940r = false;
            ActionBarOverlayLayout actionBarOverlayLayout2 = this.f6925c;
            if (actionBarOverlayLayout2 != null) {
                actionBarOverlayLayout2.setShowingForActionMode(false);
            }
            u(false);
        }
        ActionBarContainer actionBarContainer = this.f6926d;
        WeakHashMap<View, g0> weakHashMap = a0.f9147a;
        if (!a0.g.c(actionBarContainer)) {
            if (z10) {
                this.f6927e.i(4);
                this.f6928f.setVisibility(0);
                return;
            } else {
                this.f6927e.i(0);
                this.f6928f.setVisibility(8);
                return;
            }
        }
        if (z10) {
            g0VarE = this.f6927e.q(4, 100L);
            g0VarQ = this.f6928f.e(0, 200L);
        } else {
            g0VarQ = this.f6927e.q(0, 200L);
            g0VarE = this.f6928f.e(8, 100L);
        }
        j.g gVar = new j.g();
        gVar.f9133a.add(g0VarE);
        View view = g0VarE.f9190a.get();
        long duration = view != null ? view.animate().getDuration() : 0L;
        View view2 = g0VarQ.f9190a.get();
        if (view2 != null) {
            view2.animate().setStartDelay(duration);
        }
        gVar.f9133a.add(g0VarQ);
        gVar.c();
    }

    public final void s(View view) {
        k0 wrapper;
        ActionBarOverlayLayout actionBarOverlayLayout = (ActionBarOverlayLayout) view.findViewById(androidx.appcompat.R.id.decor_content_parent);
        this.f6925c = actionBarOverlayLayout;
        if (actionBarOverlayLayout != null) {
            actionBarOverlayLayout.setActionBarVisibilityCallback(this);
        }
        KeyEvent.Callback callbackFindViewById = view.findViewById(androidx.appcompat.R.id.action_bar);
        if (callbackFindViewById instanceof k0) {
            wrapper = (k0) callbackFindViewById;
        } else {
            if (!(callbackFindViewById instanceof Toolbar)) {
                StringBuilder sbC = a0.b.c("Can't make a decor toolbar out of ");
                sbC.append(callbackFindViewById != null ? callbackFindViewById.getClass().getSimpleName() : SafeJsonPrimitive.NULL_STRING);
                throw new IllegalStateException(sbC.toString());
            }
            wrapper = ((Toolbar) callbackFindViewById).getWrapper();
        }
        this.f6927e = wrapper;
        this.f6928f = (ActionBarContextView) view.findViewById(androidx.appcompat.R.id.action_context_bar);
        ActionBarContainer actionBarContainer = (ActionBarContainer) view.findViewById(androidx.appcompat.R.id.action_bar_container);
        this.f6926d = actionBarContainer;
        k0 k0Var = this.f6927e;
        if (k0Var == null || this.f6928f == null || actionBarContainer == null) {
            throw new IllegalStateException(u.class.getSimpleName() + " can only be used with a compatible window decor layout");
        }
        this.f6923a = k0Var.getContext();
        if ((this.f6927e.n() & 4) != 0) {
            this.f6930h = true;
        }
        Context context = this.f6923a;
        int i10 = context.getApplicationInfo().targetSdkVersion;
        this.f6927e.j();
        t(context.getResources().getBoolean(androidx.appcompat.R.bool.abc_action_bar_embed_tabs));
        TypedArray typedArrayObtainStyledAttributes = this.f6923a.obtainStyledAttributes(null, androidx.appcompat.R.styleable.ActionBar, androidx.appcompat.R.attr.actionBarStyle, 0);
        if (typedArrayObtainStyledAttributes.getBoolean(androidx.appcompat.R.styleable.ActionBar_hideOnContentScroll, false)) {
            ActionBarOverlayLayout actionBarOverlayLayout2 = this.f6925c;
            if (!actionBarOverlayLayout2.f995o) {
                throw new IllegalStateException("Action bar must be in overlay mode (Window.FEATURE_OVERLAY_ACTION_BAR) to enable hide on content scroll");
            }
            this.f6944v = true;
            actionBarOverlayLayout2.setHideOnContentScrollEnabled(true);
        }
        int dimensionPixelSize = typedArrayObtainStyledAttributes.getDimensionPixelSize(androidx.appcompat.R.styleable.ActionBar_elevation, 0);
        if (dimensionPixelSize != 0) {
            ActionBarContainer actionBarContainer2 = this.f6926d;
            WeakHashMap<View, g0> weakHashMap = a0.f9147a;
            a0.i.s(actionBarContainer2, dimensionPixelSize);
        }
        typedArrayObtainStyledAttributes.recycle();
    }

    public final void t(boolean z10) {
        this.f6936n = z10;
        if (z10) {
            this.f6926d.setTabContainer(null);
            this.f6927e.m();
        } else {
            this.f6927e.m();
            this.f6926d.setTabContainer(null);
        }
        this.f6927e.p();
        k0 k0Var = this.f6927e;
        boolean z11 = this.f6936n;
        k0Var.t(false);
        ActionBarOverlayLayout actionBarOverlayLayout = this.f6925c;
        boolean z12 = this.f6936n;
        actionBarOverlayLayout.setHasNonEmbeddedTabs(false);
    }

    public final void u(boolean z10) {
        View view;
        View view2;
        View view3;
        if (!(this.f6940r || !this.f6939q)) {
            if (this.f6941s) {
                this.f6941s = false;
                j.g gVar = this.f6942t;
                if (gVar != null) {
                    gVar.a();
                }
                if (this.f6937o != 0 || (!this.f6943u && !z10)) {
                    this.f6945w.a();
                    return;
                }
                this.f6926d.setAlpha(1.0f);
                this.f6926d.setTransitioning(true);
                j.g gVar2 = new j.g();
                float f10 = -this.f6926d.getHeight();
                if (z10) {
                    int[] iArr = {0, 0};
                    this.f6926d.getLocationInWindow(iArr);
                    f10 -= iArr[1];
                }
                g0 g0VarB = a0.b(this.f6926d);
                g0VarB.g(f10);
                g0VarB.f(this.f6947y);
                gVar2.b(g0VarB);
                if (this.f6938p && (view = this.f6929g) != null) {
                    g0 g0VarB2 = a0.b(view);
                    g0VarB2.g(f10);
                    gVar2.b(g0VarB2);
                }
                AccelerateInterpolator accelerateInterpolator = f6922z;
                boolean z11 = gVar2.f9137e;
                if (!z11) {
                    gVar2.f9135c = accelerateInterpolator;
                }
                if (!z11) {
                    gVar2.f9134b = 250L;
                }
                a aVar = this.f6945w;
                if (!z11) {
                    gVar2.f9136d = aVar;
                }
                this.f6942t = gVar2;
                gVar2.c();
                return;
            }
            return;
        }
        if (this.f6941s) {
            return;
        }
        this.f6941s = true;
        j.g gVar3 = this.f6942t;
        if (gVar3 != null) {
            gVar3.a();
        }
        this.f6926d.setVisibility(0);
        if (this.f6937o == 0 && (this.f6943u || z10)) {
            this.f6926d.setTranslationY(0.0f);
            float f11 = -this.f6926d.getHeight();
            if (z10) {
                int[] iArr2 = {0, 0};
                this.f6926d.getLocationInWindow(iArr2);
                f11 -= iArr2[1];
            }
            this.f6926d.setTranslationY(f11);
            j.g gVar4 = new j.g();
            g0 g0VarB3 = a0.b(this.f6926d);
            g0VarB3.g(0.0f);
            g0VarB3.f(this.f6947y);
            gVar4.b(g0VarB3);
            if (this.f6938p && (view3 = this.f6929g) != null) {
                view3.setTranslationY(f11);
                g0 g0VarB4 = a0.b(this.f6929g);
                g0VarB4.g(0.0f);
                gVar4.b(g0VarB4);
            }
            DecelerateInterpolator decelerateInterpolator = A;
            boolean z12 = gVar4.f9137e;
            if (!z12) {
                gVar4.f9135c = decelerateInterpolator;
            }
            if (!z12) {
                gVar4.f9134b = 250L;
            }
            b bVar = this.f6946x;
            if (!z12) {
                gVar4.f9136d = bVar;
            }
            this.f6942t = gVar4;
            gVar4.c();
        } else {
            this.f6926d.setAlpha(1.0f);
            this.f6926d.setTranslationY(0.0f);
            if (this.f6938p && (view2 = this.f6929g) != null) {
                view2.setTranslationY(0.0f);
            }
            this.f6946x.a();
        }
        ActionBarOverlayLayout actionBarOverlayLayout = this.f6925c;
        if (actionBarOverlayLayout != null) {
            WeakHashMap<View, g0> weakHashMap = a0.f9147a;
            a0.h.c(actionBarOverlayLayout);
        }
    }

    public u(Dialog dialog) {
        new ArrayList();
        this.f6935m = new ArrayList<>();
        this.f6937o = 0;
        this.f6938p = true;
        this.f6941s = true;
        this.f6945w = new a();
        this.f6946x = new b();
        this.f6947y = new c();
        s(dialog.getWindow().getDecorView());
    }
}
