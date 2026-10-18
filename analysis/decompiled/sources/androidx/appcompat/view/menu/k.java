package androidx.appcompat.view.menu;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Rect;
import android.view.Gravity;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.widget.FrameLayout;
import android.widget.ListView;
import android.widget.PopupWindow;
import android.widget.TextView;
import androidx.appcompat.R;
import androidx.appcompat.widget.m0;
import androidx.appcompat.widget.t0;
import j0.a0;
import j0.g0;
import java.util.Objects;
import java.util.WeakHashMap;

/* JADX INFO: compiled from: StandardMenuPopup.java */
/* JADX INFO: loaded from: classes.dex */
public final class k extends k.d implements PopupWindow.OnDismissListener, View.OnKeyListener {
    public static final int C = R.layout.abc_popup_menu_item_layout;
    public boolean B;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final Context f945i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final e f946j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final d f947k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final boolean f948l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final int f949m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final int f950n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public final int f951o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public final t0 f952p;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public PopupWindow.OnDismissListener f955s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public View f956t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public View f957u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public i.a f958v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public ViewTreeObserver f959w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public boolean f960x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public boolean f961y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public int f962z;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public final a f953q = new a();

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public final b f954r = new b();
    public int A = 0;

    /* JADX INFO: compiled from: StandardMenuPopup.java */
    public class a implements ViewTreeObserver.OnGlobalLayoutListener {
        public a() {
        }

        @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
        public final void onGlobalLayout() {
            if (k.this.c()) {
                k kVar = k.this;
                if (kVar.f952p.E) {
                    return;
                }
                View view = kVar.f957u;
                if (view == null || !view.isShown()) {
                    k.this.dismiss();
                } else {
                    k.this.f952p.a();
                }
            }
        }
    }

    /* JADX INFO: compiled from: StandardMenuPopup.java */
    public class b implements View.OnAttachStateChangeListener {
        public b() {
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public final void onViewAttachedToWindow(View view) {
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public final void onViewDetachedFromWindow(View view) {
            ViewTreeObserver viewTreeObserver = k.this.f959w;
            if (viewTreeObserver != null) {
                if (!viewTreeObserver.isAlive()) {
                    k.this.f959w = view.getViewTreeObserver();
                }
                k kVar = k.this;
                kVar.f959w.removeGlobalOnLayoutListener(kVar.f953q);
            }
            view.removeOnAttachStateChangeListener(this);
        }
    }

    public k(Context context, e eVar, View view, int i10, int i11, boolean z10) {
        this.f945i = context;
        this.f946j = eVar;
        this.f948l = z10;
        this.f947k = new d(eVar, LayoutInflater.from(context), z10, C);
        this.f950n = i10;
        this.f951o = i11;
        Resources resources = context.getResources();
        this.f949m = Math.max(resources.getDisplayMetrics().widthPixels / 2, resources.getDimensionPixelSize(R.dimen.abc_config_prefDialogWidth));
        this.f956t = view;
        this.f952p = new t0(context, i10, i11);
        eVar.c(this, context);
    }

    @Override // k.f
    public final void a() {
        View view;
        boolean z10 = true;
        if (!c()) {
            if (this.f960x || (view = this.f956t) == null) {
                z10 = false;
            } else {
                this.f957u = view;
                this.f952p.u(this);
                t0 t0Var = this.f952p;
                t0Var.f1435w = this;
                t0Var.t();
                View view2 = this.f957u;
                boolean z11 = this.f959w == null;
                ViewTreeObserver viewTreeObserver = view2.getViewTreeObserver();
                this.f959w = viewTreeObserver;
                if (z11) {
                    viewTreeObserver.addOnGlobalLayoutListener(this.f953q);
                }
                view2.addOnAttachStateChangeListener(this.f954r);
                t0 t0Var2 = this.f952p;
                t0Var2.f1434v = view2;
                t0Var2.f1431s = this.A;
                if (!this.f961y) {
                    this.f962z = k.d.m(this.f947k, this.f945i, this.f949m);
                    this.f961y = true;
                }
                this.f952p.r(this.f962z);
                this.f952p.s();
                t0 t0Var3 = this.f952p;
                Rect rect = this.f9544h;
                Objects.requireNonNull(t0Var3);
                t0Var3.D = rect != null ? new Rect(rect) : null;
                this.f952p.a();
                m0 m0Var = this.f952p.f1422j;
                m0Var.setOnKeyListener(this);
                if (this.B && this.f946j.f890m != null) {
                    FrameLayout frameLayout = (FrameLayout) LayoutInflater.from(this.f945i).inflate(R.layout.abc_popup_menu_header_item_layout, (ViewGroup) m0Var, false);
                    TextView textView = (TextView) frameLayout.findViewById(android.R.id.title);
                    if (textView != null) {
                        textView.setText(this.f946j.f890m);
                    }
                    frameLayout.setEnabled(false);
                    m0Var.addHeaderView(frameLayout, null, false);
                }
                this.f952p.p(this.f947k);
                this.f952p.a();
            }
        }
        if (!z10) {
            throw new IllegalStateException("StandardMenuPopup cannot be used without an anchor");
        }
    }

    @Override // androidx.appcompat.view.menu.i
    public final void b(e eVar, boolean z10) {
        if (eVar != this.f946j) {
            return;
        }
        dismiss();
        i.a aVar = this.f958v;
        if (aVar != null) {
            aVar.b(eVar, z10);
        }
    }

    @Override // k.f
    public final boolean c() {
        return !this.f960x && this.f952p.c();
    }

    @Override // k.f
    public final void dismiss() {
        if (c()) {
            this.f952p.dismiss();
        }
    }

    @Override // androidx.appcompat.view.menu.i
    public final void f() {
        this.f961y = false;
        d dVar = this.f947k;
        if (dVar != null) {
            dVar.notifyDataSetChanged();
        }
    }

    @Override // k.f
    public final ListView g() {
        return this.f952p.f1422j;
    }

    @Override // androidx.appcompat.view.menu.i
    public final boolean h(l lVar) {
        boolean z10;
        if (lVar.hasVisibleItems()) {
            h hVar = new h(this.f945i, lVar, this.f957u, this.f948l, this.f950n, this.f951o);
            hVar.d(this.f958v);
            boolean zU = k.d.u(lVar);
            hVar.f939h = zU;
            k.d dVar = hVar.f941j;
            if (dVar != null) {
                dVar.o(zU);
            }
            hVar.f942k = this.f955s;
            this.f955s = null;
            this.f946j.d(false);
            t0 t0Var = this.f952p;
            int width = t0Var.f1425m;
            int i10 = !t0Var.f1428p ? 0 : t0Var.f1426n;
            int i11 = this.A;
            View view = this.f956t;
            WeakHashMap<View, g0> weakHashMap = a0.f9147a;
            if ((Gravity.getAbsoluteGravity(i11, a0.e.d(view)) & 7) == 5) {
                width += this.f956t.getWidth();
            }
            if (hVar.b()) {
                z10 = true;
            } else if (hVar.f937f == null) {
                z10 = false;
            } else {
                hVar.e(width, i10, true, true);
                z10 = true;
            }
            if (z10) {
                i.a aVar = this.f958v;
                if (aVar != null) {
                    aVar.c(lVar);
                }
                return true;
            }
        }
        return false;
    }

    @Override // androidx.appcompat.view.menu.i
    public final boolean i() {
        return false;
    }

    @Override // androidx.appcompat.view.menu.i
    public final void j(i.a aVar) {
        this.f958v = aVar;
    }

    @Override // k.d
    public final void l(e eVar) {
    }

    @Override // k.d
    public final void n(View view) {
        this.f956t = view;
    }

    @Override // k.d
    public final void o(boolean z10) {
        this.f947k.f873j = z10;
    }

    @Override // android.widget.PopupWindow.OnDismissListener
    public final void onDismiss() {
        this.f960x = true;
        this.f946j.d(true);
        ViewTreeObserver viewTreeObserver = this.f959w;
        if (viewTreeObserver != null) {
            if (!viewTreeObserver.isAlive()) {
                this.f959w = this.f957u.getViewTreeObserver();
            }
            this.f959w.removeGlobalOnLayoutListener(this.f953q);
            this.f959w = null;
        }
        this.f957u.removeOnAttachStateChangeListener(this.f954r);
        PopupWindow.OnDismissListener onDismissListener = this.f955s;
        if (onDismissListener != null) {
            onDismissListener.onDismiss();
        }
    }

    @Override // android.view.View.OnKeyListener
    public final boolean onKey(View view, int i10, KeyEvent keyEvent) {
        if (keyEvent.getAction() != 1 || i10 != 82) {
            return false;
        }
        dismiss();
        return true;
    }

    @Override // k.d
    public final void p(int i10) {
        this.A = i10;
    }

    @Override // k.d
    public final void q(int i10) {
        this.f952p.f1425m = i10;
    }

    @Override // k.d
    public final void r(PopupWindow.OnDismissListener onDismissListener) {
        this.f955s = onDismissListener;
    }

    @Override // k.d
    public final void s(boolean z10) {
        this.B = z10;
    }

    @Override // k.d
    public final void t(int i10) {
        this.f952p.j(i10);
    }
}
