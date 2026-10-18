package androidx.appcompat.view.menu;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Rect;
import android.os.Build;
import android.os.Handler;
import android.os.SystemClock;
import android.util.Log;
import android.view.Gravity;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.widget.FrameLayout;
import android.widget.HeaderViewListAdapter;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.PopupWindow;
import android.widget.TextView;
import androidx.appcompat.R;
import androidx.appcompat.widget.m0;
import androidx.appcompat.widget.s0;
import androidx.appcompat.widget.t0;
import j0.a0;
import j0.g0;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.WeakHashMap;

/* JADX INFO: compiled from: CascadingMenuPopup.java */
/* JADX INFO: loaded from: classes.dex */
public final class b extends k.d implements View.OnKeyListener, PopupWindow.OnDismissListener {
    public static final int I = R.layout.abc_cascading_menu_item_layout;
    public int A;
    public int B;
    public boolean D;
    public i.a E;
    public ViewTreeObserver F;
    public PopupWindow.OnDismissListener G;
    public boolean H;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final Context f834i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final int f835j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final int f836k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final int f837l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final boolean f838m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final Handler f839n;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public View f847v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public View f848w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public int f849x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public boolean f850y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public boolean f851z;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public final List<e> f840o = new ArrayList();

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public final List<d> f841p = new ArrayList();

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public final a f842q = new a();

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public final ViewOnAttachStateChangeListenerC0016b f843r = new ViewOnAttachStateChangeListenerC0016b();

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public final c f844s = new c();

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public int f845t = 0;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public int f846u = 0;
    public boolean C = false;

    /* JADX INFO: compiled from: CascadingMenuPopup.java */
    public class a implements ViewTreeObserver.OnGlobalLayoutListener {
        public a() {
        }

        /* JADX WARN: Type inference failed for: r0v16, types: [java.util.ArrayList, java.util.List<androidx.appcompat.view.menu.b$d>] */
        /* JADX WARN: Type inference failed for: r0v3, types: [java.util.ArrayList, java.util.List<androidx.appcompat.view.menu.b$d>] */
        /* JADX WARN: Type inference failed for: r0v6, types: [java.util.ArrayList, java.util.List<androidx.appcompat.view.menu.b$d>] */
        @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
        public final void onGlobalLayout() {
            if (!b.this.c() || b.this.f841p.size() <= 0 || ((d) b.this.f841p.get(0)).f859a.E) {
                return;
            }
            View view = b.this.f848w;
            if (view == null || !view.isShown()) {
                b.this.dismiss();
                return;
            }
            Iterator it = b.this.f841p.iterator();
            while (it.hasNext()) {
                ((d) it.next()).f859a.a();
            }
        }
    }

    /* JADX INFO: renamed from: androidx.appcompat.view.menu.b$b, reason: collision with other inner class name */
    /* JADX INFO: compiled from: CascadingMenuPopup.java */
    public class ViewOnAttachStateChangeListenerC0016b implements View.OnAttachStateChangeListener {
        public ViewOnAttachStateChangeListenerC0016b() {
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public final void onViewAttachedToWindow(View view) {
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public final void onViewDetachedFromWindow(View view) {
            ViewTreeObserver viewTreeObserver = b.this.F;
            if (viewTreeObserver != null) {
                if (!viewTreeObserver.isAlive()) {
                    b.this.F = view.getViewTreeObserver();
                }
                b bVar = b.this;
                bVar.F.removeGlobalOnLayoutListener(bVar.f842q);
            }
            view.removeOnAttachStateChangeListener(this);
        }
    }

    /* JADX INFO: compiled from: CascadingMenuPopup.java */
    public class c implements s0 {

        /* JADX INFO: compiled from: CascadingMenuPopup.java */
        public class a implements Runnable {

            /* JADX INFO: renamed from: h, reason: collision with root package name */
            public final /* synthetic */ d f855h;

            /* JADX INFO: renamed from: i, reason: collision with root package name */
            public final /* synthetic */ MenuItem f856i;

            /* JADX INFO: renamed from: j, reason: collision with root package name */
            public final /* synthetic */ e f857j;

            public a(d dVar, MenuItem menuItem, e eVar) {
                this.f855h = dVar;
                this.f856i = menuItem;
                this.f857j = eVar;
            }

            @Override // java.lang.Runnable
            public final void run() {
                d dVar = this.f855h;
                if (dVar != null) {
                    b.this.H = true;
                    dVar.f860b.d(false);
                    b.this.H = false;
                }
                if (this.f856i.isEnabled() && this.f856i.hasSubMenu()) {
                    this.f857j.s(this.f856i, 4);
                }
            }
        }

        public c() {
        }

        /* JADX WARN: Type inference failed for: r0v10, types: [java.util.ArrayList, java.util.List<androidx.appcompat.view.menu.b$d>] */
        /* JADX WARN: Type inference failed for: r0v3, types: [java.util.ArrayList, java.util.List<androidx.appcompat.view.menu.b$d>] */
        /* JADX WARN: Type inference failed for: r0v6, types: [java.util.ArrayList, java.util.List<androidx.appcompat.view.menu.b$d>] */
        /* JADX WARN: Type inference failed for: r4v1, types: [java.util.ArrayList, java.util.List<androidx.appcompat.view.menu.b$d>] */
        @Override // androidx.appcompat.widget.s0
        public final void b(e eVar, MenuItem menuItem) {
            b.this.f839n.removeCallbacksAndMessages(null);
            int size = b.this.f841p.size();
            int i10 = 0;
            while (true) {
                if (i10 >= size) {
                    i10 = -1;
                    break;
                } else if (eVar == ((d) b.this.f841p.get(i10)).f860b) {
                    break;
                } else {
                    i10++;
                }
            }
            if (i10 == -1) {
                return;
            }
            int i11 = i10 + 1;
            b.this.f839n.postAtTime(new a(i11 < b.this.f841p.size() ? (d) b.this.f841p.get(i11) : null, menuItem, eVar), eVar, SystemClock.uptimeMillis() + 200);
        }

        @Override // androidx.appcompat.widget.s0
        public final void e(e eVar, MenuItem menuItem) {
            b.this.f839n.removeCallbacksAndMessages(eVar);
        }
    }

    /* JADX INFO: compiled from: CascadingMenuPopup.java */
    public static class d {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final t0 f859a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final e f860b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final int f861c;

        public d(t0 t0Var, e eVar, int i10) {
            this.f859a = t0Var;
            this.f860b = eVar;
            this.f861c = i10;
        }
    }

    public b(Context context, View view, int i10, int i11, boolean z10) {
        this.f834i = context;
        this.f847v = view;
        this.f836k = i10;
        this.f837l = i11;
        this.f838m = z10;
        WeakHashMap<View, g0> weakHashMap = a0.f9147a;
        this.f849x = a0.e.d(view) != 1 ? 1 : 0;
        Resources resources = context.getResources();
        this.f835j = Math.max(resources.getDisplayMetrics().widthPixels / 2, resources.getDimensionPixelSize(R.dimen.abc_config_prefDialogWidth));
        this.f839n = new Handler();
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [java.util.ArrayList, java.util.List<androidx.appcompat.view.menu.e>] */
    /* JADX WARN: Type inference failed for: r0v3, types: [java.util.ArrayList, java.util.List<androidx.appcompat.view.menu.e>] */
    @Override // k.f
    public final void a() {
        if (c()) {
            return;
        }
        Iterator it = this.f840o.iterator();
        while (it.hasNext()) {
            v((e) it.next());
        }
        this.f840o.clear();
        View view = this.f847v;
        this.f848w = view;
        if (view != null) {
            boolean z10 = this.F == null;
            ViewTreeObserver viewTreeObserver = view.getViewTreeObserver();
            this.F = viewTreeObserver;
            if (z10) {
                viewTreeObserver.addOnGlobalLayoutListener(this.f842q);
            }
            this.f848w.addOnAttachStateChangeListener(this.f843r);
        }
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [java.util.ArrayList, java.util.List<androidx.appcompat.view.menu.b$d>] */
    /* JADX WARN: Type inference failed for: r0v3, types: [java.util.ArrayList, java.util.List<androidx.appcompat.view.menu.b$d>] */
    /* JADX WARN: Type inference failed for: r0v7, types: [java.util.ArrayList, java.util.List<androidx.appcompat.view.menu.b$d>] */
    /* JADX WARN: Type inference failed for: r3v0, types: [java.util.ArrayList, java.util.List<androidx.appcompat.view.menu.b$d>] */
    /* JADX WARN: Type inference failed for: r3v3, types: [java.util.ArrayList, java.util.List<androidx.appcompat.view.menu.b$d>] */
    /* JADX WARN: Type inference failed for: r3v4, types: [java.util.ArrayList, java.util.List<androidx.appcompat.view.menu.b$d>] */
    /* JADX WARN: Type inference failed for: r4v5, types: [java.util.ArrayList, java.util.List<androidx.appcompat.view.menu.b$d>] */
    /* JADX WARN: Type inference failed for: r7v1, types: [java.util.ArrayList, java.util.List<androidx.appcompat.view.menu.b$d>] */
    @Override // androidx.appcompat.view.menu.i
    public final void b(e eVar, boolean z10) {
        int size = this.f841p.size();
        int i10 = 0;
        while (true) {
            if (i10 >= size) {
                i10 = -1;
                break;
            } else if (eVar == ((d) this.f841p.get(i10)).f860b) {
                break;
            } else {
                i10++;
            }
        }
        if (i10 < 0) {
            return;
        }
        int i11 = i10 + 1;
        if (i11 < this.f841p.size()) {
            ((d) this.f841p.get(i11)).f860b.d(false);
        }
        d dVar = (d) this.f841p.remove(i10);
        dVar.f860b.v(this);
        if (this.H) {
            t0.a.b(dVar.f859a.F, null);
            dVar.f859a.F.setAnimationStyle(0);
        }
        dVar.f859a.dismiss();
        int size2 = this.f841p.size();
        if (size2 > 0) {
            this.f849x = ((d) this.f841p.get(size2 - 1)).f861c;
        } else {
            View view = this.f847v;
            WeakHashMap<View, g0> weakHashMap = a0.f9147a;
            this.f849x = a0.e.d(view) == 1 ? 0 : 1;
        }
        if (size2 != 0) {
            if (z10) {
                ((d) this.f841p.get(0)).f860b.d(false);
                return;
            }
            return;
        }
        dismiss();
        i.a aVar = this.E;
        if (aVar != null) {
            aVar.b(eVar, true);
        }
        ViewTreeObserver viewTreeObserver = this.F;
        if (viewTreeObserver != null) {
            if (viewTreeObserver.isAlive()) {
                this.F.removeGlobalOnLayoutListener(this.f842q);
            }
            this.F = null;
        }
        this.f848w.removeOnAttachStateChangeListener(this.f843r);
        this.G.onDismiss();
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [java.util.ArrayList, java.util.List<androidx.appcompat.view.menu.b$d>] */
    /* JADX WARN: Type inference failed for: r0v2, types: [java.util.ArrayList, java.util.List<androidx.appcompat.view.menu.b$d>] */
    @Override // k.f
    public final boolean c() {
        return this.f841p.size() > 0 && ((d) this.f841p.get(0)).f859a.c();
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [java.util.ArrayList, java.util.List<androidx.appcompat.view.menu.b$d>] */
    /* JADX WARN: Type inference failed for: r1v0, types: [java.util.ArrayList, java.util.List<androidx.appcompat.view.menu.b$d>] */
    @Override // k.f
    public final void dismiss() {
        int size = this.f841p.size();
        if (size <= 0) {
            return;
        }
        d[] dVarArr = (d[]) this.f841p.toArray(new d[size]);
        while (true) {
            size--;
            if (size < 0) {
                return;
            }
            d dVar = dVarArr[size];
            if (dVar.f859a.c()) {
                dVar.f859a.dismiss();
            }
        }
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [java.util.ArrayList, java.util.List<androidx.appcompat.view.menu.b$d>] */
    @Override // androidx.appcompat.view.menu.i
    public final void f() {
        Iterator it = this.f841p.iterator();
        while (it.hasNext()) {
            ListAdapter adapter = ((d) it.next()).f859a.f1422j.getAdapter();
            if (adapter instanceof HeaderViewListAdapter) {
                adapter = ((HeaderViewListAdapter) adapter).getWrappedAdapter();
            }
            ((androidx.appcompat.view.menu.d) adapter).notifyDataSetChanged();
        }
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [java.util.ArrayList, java.util.List<androidx.appcompat.view.menu.b$d>] */
    /* JADX WARN: Type inference failed for: r0v2, types: [java.util.ArrayList, java.util.List<androidx.appcompat.view.menu.b$d>] */
    @Override // k.f
    public final ListView g() {
        if (this.f841p.isEmpty()) {
            return null;
        }
        ?? r10 = this.f841p;
        return ((d) r10.get(r10.size() - 1)).f859a.f1422j;
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [java.util.ArrayList, java.util.List<androidx.appcompat.view.menu.b$d>] */
    @Override // androidx.appcompat.view.menu.i
    public final boolean h(l lVar) {
        for (d dVar : this.f841p) {
            if (lVar == dVar.f860b) {
                dVar.f859a.f1422j.requestFocus();
                return true;
            }
        }
        if (!lVar.hasVisibleItems()) {
            return false;
        }
        l(lVar);
        i.a aVar = this.E;
        if (aVar != null) {
            aVar.c(lVar);
        }
        return true;
    }

    @Override // androidx.appcompat.view.menu.i
    public final boolean i() {
        return false;
    }

    @Override // androidx.appcompat.view.menu.i
    public final void j(i.a aVar) {
        this.E = aVar;
    }

    /* JADX WARN: Type inference failed for: r0v2, types: [java.util.ArrayList, java.util.List<androidx.appcompat.view.menu.e>] */
    @Override // k.d
    public final void l(e eVar) {
        eVar.c(this, this.f834i);
        if (c()) {
            v(eVar);
        } else {
            this.f840o.add(eVar);
        }
    }

    @Override // k.d
    public final void n(View view) {
        if (this.f847v != view) {
            this.f847v = view;
            int i10 = this.f845t;
            WeakHashMap<View, g0> weakHashMap = a0.f9147a;
            this.f846u = Gravity.getAbsoluteGravity(i10, a0.e.d(view));
        }
    }

    @Override // k.d
    public final void o(boolean z10) {
        this.C = z10;
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [java.util.ArrayList, java.util.List<androidx.appcompat.view.menu.b$d>] */
    /* JADX WARN: Type inference failed for: r3v2, types: [java.util.ArrayList, java.util.List<androidx.appcompat.view.menu.b$d>] */
    @Override // android.widget.PopupWindow.OnDismissListener
    public final void onDismiss() {
        d dVar;
        int size = this.f841p.size();
        int i10 = 0;
        while (true) {
            if (i10 >= size) {
                dVar = null;
                break;
            }
            dVar = (d) this.f841p.get(i10);
            if (!dVar.f859a.c()) {
                break;
            } else {
                i10++;
            }
        }
        if (dVar != null) {
            dVar.f860b.d(false);
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
        if (this.f845t != i10) {
            this.f845t = i10;
            View view = this.f847v;
            WeakHashMap<View, g0> weakHashMap = a0.f9147a;
            this.f846u = Gravity.getAbsoluteGravity(i10, a0.e.d(view));
        }
    }

    @Override // k.d
    public final void q(int i10) {
        this.f850y = true;
        this.A = i10;
    }

    @Override // k.d
    public final void r(PopupWindow.OnDismissListener onDismissListener) {
        this.G = onDismissListener;
    }

    @Override // k.d
    public final void s(boolean z10) {
        this.D = z10;
    }

    @Override // k.d
    public final void t(int i10) {
        this.f851z = true;
        this.B = i10;
    }

    /* JADX WARN: Code duplicated, block: B:101:0x00ec A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:46:0x00e2  */
    /* JADX WARN: Code duplicated, block: B:48:0x00e8  */
    /* JADX WARN: Code duplicated, block: B:53:0x0100  */
    /* JADX WARN: Code duplicated, block: B:64:0x0147  */
    /* JADX WARN: Code duplicated, block: B:65:0x0149  */
    /* JADX WARN: Code duplicated, block: B:68:0x0153  */
    /* JADX WARN: Code duplicated, block: B:69:0x0158  */
    /* JADX WARN: Code duplicated, block: B:71:0x016a  */
    /* JADX WARN: Code duplicated, block: B:75:0x018d A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:76:0x018f  */
    /* JADX WARN: Code duplicated, block: B:77:0x0191  */
    /* JADX WARN: Code duplicated, block: B:78:0x0196 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:79:0x0198  */
    /* JADX WARN: Code duplicated, block: B:80:0x019e A[PHI: r4
      0x019e: PHI (r4v14 int) = (r4v5 int), (r4v15 int) binds: [B:78:0x0196, B:77:0x0191] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:82:0x01a9  */
    /* JADX WARN: Code duplicated, block: B:84:0x01ad  */
    /* JADX WARN: Code duplicated, block: B:87:0x01b5  */
    /* JADX WARN: Code duplicated, block: B:90:0x01be  */
    /* JADX WARN: Code duplicated, block: B:91:0x01c4  */
    /* JADX WARN: Type inference failed for: r3v13, types: [java.util.ArrayList, java.util.List<androidx.appcompat.view.menu.b$d>] */
    /* JADX WARN: Type inference failed for: r3v2, types: [java.util.ArrayList, java.util.List<androidx.appcompat.view.menu.b$d>] */
    /* JADX WARN: Type inference failed for: r5v3, types: [java.util.ArrayList, java.util.List<androidx.appcompat.view.menu.b$d>] */
    /* JADX WARN: Type inference failed for: r9v4, types: [java.util.ArrayList, java.util.List<androidx.appcompat.view.menu.b$d>] */
    public final void v(e eVar) {
        d dVar;
        View childAt;
        Rect rect;
        Rect rect2;
        int i10;
        boolean z10;
        int[] iArr;
        int[] iArr2;
        int i11;
        int i12;
        int width;
        Method method;
        MenuItem item;
        androidx.appcompat.view.menu.d dVar2;
        int headersCount;
        int firstVisiblePosition;
        LayoutInflater layoutInflaterFrom = LayoutInflater.from(this.f834i);
        androidx.appcompat.view.menu.d dVar3 = new androidx.appcompat.view.menu.d(eVar, layoutInflaterFrom, this.f838m, I);
        if (!c() && this.C) {
            dVar3.f873j = true;
        } else if (c()) {
            dVar3.f873j = k.d.u(eVar);
        }
        int iM = k.d.m(dVar3, this.f834i, this.f835j);
        t0 t0Var = new t0(this.f834i, this.f836k, this.f837l);
        t0Var.I = this.f844s;
        t0Var.f1435w = this;
        t0Var.u(this);
        t0Var.f1434v = this.f847v;
        t0Var.f1431s = this.f846u;
        t0Var.t();
        t0Var.s();
        t0Var.p(dVar3);
        t0Var.r(iM);
        t0Var.f1431s = this.f846u;
        if (this.f841p.size() > 0) {
            ?? r10 = this.f841p;
            dVar = (d) r10.get(r10.size() - 1);
            e eVar2 = dVar.f860b;
            int size = eVar2.size();
            int i13 = 0;
            while (true) {
                if (i13 >= size) {
                    item = null;
                    break;
                }
                item = eVar2.getItem(i13);
                if (item.hasSubMenu() && eVar == item.getSubMenu()) {
                    break;
                } else {
                    i13++;
                }
            }
            if (item != null) {
                m0 m0Var = dVar.f859a.f1422j;
                ListAdapter adapter = m0Var.getAdapter();
                if (adapter instanceof HeaderViewListAdapter) {
                    HeaderViewListAdapter headerViewListAdapter = (HeaderViewListAdapter) adapter;
                    headersCount = headerViewListAdapter.getHeadersCount();
                    dVar2 = (androidx.appcompat.view.menu.d) headerViewListAdapter.getWrappedAdapter();
                } else {
                    dVar2 = (androidx.appcompat.view.menu.d) adapter;
                    headersCount = 0;
                }
                int count = dVar2.getCount();
                int i14 = 0;
                while (true) {
                    if (i14 >= count) {
                        i14 = -1;
                        break;
                    } else if (item == dVar2.getItem(i14)) {
                        break;
                    } else {
                        i14++;
                    }
                }
                childAt = (i14 != -1 && (firstVisiblePosition = (i14 + headersCount) - m0Var.getFirstVisiblePosition()) >= 0 && firstVisiblePosition < m0Var.getChildCount()) ? m0Var.getChildAt(firstVisiblePosition) : null;
            }
            if (childAt != null) {
                if (Build.VERSION.SDK_INT <= 28) {
                    method = t0.J;
                    if (method != null) {
                        try {
                            method.invoke(t0Var.F, Boolean.FALSE);
                        } catch (Exception unused) {
                            Log.i("MenuPopupWindow", "Could not invoke setTouchModal() on PopupWindow. Oh well.");
                        }
                    }
                } else {
                    t0.b.a(t0Var.F, false);
                }
                t0.a.a(t0Var.F, null);
                ?? r11 = this.f841p;
                m0 m0Var2 = ((d) r11.get(r11.size() - 1)).f859a.f1422j;
                int[] iArr3 = new int[2];
                m0Var2.getLocationOnScreen(iArr3);
                Rect rect3 = new Rect();
                this.f848w.getWindowVisibleDisplayFrame(rect3);
                i10 = (this.f849x == 1 ? iArr3[0] - iM >= 0 : (m0Var2.getWidth() + iArr3[0]) + iM > rect3.right) ? 0 : 1;
                if (i10 == 1) {
                    z10 = true;
                } else {
                    z10 = false;
                }
                this.f849x = i10;
                if (Build.VERSION.SDK_INT >= 26) {
                    t0Var.f1434v = childAt;
                    i12 = 0;
                    i11 = 0;
                } else {
                    iArr = new int[2];
                    this.f847v.getLocationOnScreen(iArr);
                    iArr2 = new int[2];
                    childAt.getLocationOnScreen(iArr2);
                    if ((this.f846u & 7) == 5) {
                        iArr[0] = this.f847v.getWidth() + iArr[0];
                        iArr2[0] = childAt.getWidth() + iArr2[0];
                    }
                    i11 = iArr2[0] - iArr[0];
                    i12 = iArr2[1] - iArr[1];
                }
                if ((this.f846u & 5) == 5) {
                    if (z10) {
                        width = i11 + iM;
                    } else {
                        iM = childAt.getWidth();
                        width = i11 - iM;
                    }
                } else if (z10) {
                    width = i11 + childAt.getWidth();
                } else {
                    width = i11 - iM;
                }
                t0Var.f1425m = width;
                t0Var.f1430r = true;
                t0Var.f1429q = true;
                t0Var.j(i12);
            } else {
                if (this.f850y) {
                    t0Var.f1425m = this.A;
                }
                if (this.f851z) {
                    t0Var.j(this.B);
                }
                rect = this.f9544h;
                if (rect != null) {
                    rect2 = new Rect(rect);
                } else {
                    rect2 = null;
                }
                t0Var.D = rect2;
            }
            this.f841p.add(new d(t0Var, eVar, this.f849x));
            t0Var.a();
            m0 m0Var3 = t0Var.f1422j;
            m0Var3.setOnKeyListener(this);
            if (dVar == null || !this.D || eVar.f890m == null) {
                return;
            }
            FrameLayout frameLayout = (FrameLayout) layoutInflaterFrom.inflate(R.layout.abc_popup_menu_header_item_layout, (ViewGroup) m0Var3, false);
            TextView textView = (TextView) frameLayout.findViewById(android.R.id.title);
            frameLayout.setEnabled(false);
            textView.setText(eVar.f890m);
            m0Var3.addHeaderView(frameLayout, null, false);
            t0Var.a();
            return;
        }
        dVar = null;
        if (childAt != null) {
            if (Build.VERSION.SDK_INT <= 28) {
                method = t0.J;
                if (method != null) {
                    method.invoke(t0Var.F, Boolean.FALSE);
                }
            } else {
                t0.b.a(t0Var.F, false);
            }
            t0.a.a(t0Var.F, null);
            ?? r12 = this.f841p;
            m0 m0Var4 = ((d) r12.get(r12.size() - 1)).f859a.f1422j;
            int[] iArr4 = new int[2];
            m0Var4.getLocationOnScreen(iArr4);
            Rect rect4 = new Rect();
            this.f848w.getWindowVisibleDisplayFrame(rect4);
            if (this.f849x == 1) {
            }
            if (i10 == 1) {
                z10 = true;
            } else {
                z10 = false;
            }
            this.f849x = i10;
            if (Build.VERSION.SDK_INT >= 26) {
                t0Var.f1434v = childAt;
                i12 = 0;
                i11 = 0;
            } else {
                iArr = new int[2];
                this.f847v.getLocationOnScreen(iArr);
                iArr2 = new int[2];
                childAt.getLocationOnScreen(iArr2);
                if ((this.f846u & 7) == 5) {
                    iArr[0] = this.f847v.getWidth() + iArr[0];
                    iArr2[0] = childAt.getWidth() + iArr2[0];
                }
                i11 = iArr2[0] - iArr[0];
                i12 = iArr2[1] - iArr[1];
            }
            if ((this.f846u & 5) == 5) {
                if (z10) {
                    width = i11 + iM;
                } else {
                    iM = childAt.getWidth();
                    width = i11 - iM;
                }
            } else if (z10) {
                width = i11 + childAt.getWidth();
            } else {
                width = i11 - iM;
            }
            t0Var.f1425m = width;
            t0Var.f1430r = true;
            t0Var.f1429q = true;
            t0Var.j(i12);
        } else {
            if (this.f850y) {
                t0Var.f1425m = this.A;
            }
            if (this.f851z) {
                t0Var.j(this.B);
            }
            rect = this.f9544h;
            if (rect != null) {
                rect2 = new Rect(rect);
            } else {
                rect2 = null;
            }
            t0Var.D = rect2;
        }
        this.f841p.add(new d(t0Var, eVar, this.f849x));
        t0Var.a();
        m0 m0Var5 = t0Var.f1422j;
        m0Var5.setOnKeyListener(this);
        if (dVar == null) {
        }
    }
}
