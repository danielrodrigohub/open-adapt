package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.database.DataSetObserver;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Handler;
import android.util.AttributeSet;
import android.util.Log;
import android.view.MotionEvent;
import android.view.View;
import android.widget.AbsListView;
import android.widget.AdapterView;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.PopupWindow;
import androidx.appcompat.R;
import java.lang.reflect.Method;
import java.util.WeakHashMap;

/* JADX INFO: compiled from: ListPopupWindow.java */
/* JADX INFO: loaded from: classes.dex */
public class r0 implements k.f {
    public static Method G;
    public static Method H;
    public final Handler B;
    public Rect D;
    public boolean E;
    public u F;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public Context f1420h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public ListAdapter f1421i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public m0 f1422j;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public int f1425m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public int f1426n;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public boolean f1428p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public boolean f1429q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public boolean f1430r;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public d f1433u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public View f1434v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public AdapterView.OnItemClickListener f1435w;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public int f1423k = -2;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public int f1424l = -2;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public int f1427o = 1002;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public int f1431s = 0;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public int f1432t = Integer.MAX_VALUE;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public final g f1436x = new g();

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public final f f1437y = new f();

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public final e f1438z = new e();
    public final c A = new c();
    public final Rect C = new Rect();

    /* JADX INFO: compiled from: ListPopupWindow.java */
    public static class a {
        public static int a(PopupWindow popupWindow, View view, int i10, boolean z10) {
            return popupWindow.getMaxAvailableHeight(view, i10, z10);
        }
    }

    /* JADX INFO: compiled from: ListPopupWindow.java */
    public static class b {
        public static void a(PopupWindow popupWindow, Rect rect) {
            popupWindow.setEpicenterBounds(rect);
        }

        public static void b(PopupWindow popupWindow, boolean z10) {
            popupWindow.setIsClippedToScreen(z10);
        }
    }

    /* JADX INFO: compiled from: ListPopupWindow.java */
    public class c implements Runnable {
        public c() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            m0 m0Var = r0.this.f1422j;
            if (m0Var != null) {
                m0Var.setListSelectionHidden(true);
                m0Var.requestLayout();
            }
        }
    }

    /* JADX INFO: compiled from: ListPopupWindow.java */
    public class d extends DataSetObserver {
        public d() {
        }

        @Override // android.database.DataSetObserver
        public final void onChanged() {
            if (r0.this.c()) {
                r0.this.a();
            }
        }

        @Override // android.database.DataSetObserver
        public final void onInvalidated() {
            r0.this.dismiss();
        }
    }

    /* JADX INFO: compiled from: ListPopupWindow.java */
    public class e implements AbsListView.OnScrollListener {
        public e() {
        }

        @Override // android.widget.AbsListView.OnScrollListener
        public final void onScroll(AbsListView absListView, int i10, int i11, int i12) {
        }

        @Override // android.widget.AbsListView.OnScrollListener
        public final void onScrollStateChanged(AbsListView absListView, int i10) {
            if (i10 == 1) {
                if ((r0.this.F.getInputMethodMode() == 2) || r0.this.F.getContentView() == null) {
                    return;
                }
                r0 r0Var = r0.this;
                r0Var.B.removeCallbacks(r0Var.f1436x);
                r0.this.f1436x.run();
            }
        }
    }

    /* JADX INFO: compiled from: ListPopupWindow.java */
    public class f implements View.OnTouchListener {
        public f() {
        }

        @Override // android.view.View.OnTouchListener
        public final boolean onTouch(View view, MotionEvent motionEvent) {
            u uVar;
            int action = motionEvent.getAction();
            int x10 = (int) motionEvent.getX();
            int y7 = (int) motionEvent.getY();
            if (action == 0 && (uVar = r0.this.F) != null && uVar.isShowing() && x10 >= 0 && x10 < r0.this.F.getWidth() && y7 >= 0 && y7 < r0.this.F.getHeight()) {
                r0 r0Var = r0.this;
                r0Var.B.postDelayed(r0Var.f1436x, 250L);
                return false;
            }
            if (action != 1) {
                return false;
            }
            r0 r0Var2 = r0.this;
            r0Var2.B.removeCallbacks(r0Var2.f1436x);
            return false;
        }
    }

    /* JADX INFO: compiled from: ListPopupWindow.java */
    public class g implements Runnable {
        public g() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            m0 m0Var = r0.this.f1422j;
            if (m0Var != null) {
                WeakHashMap<View, j0.g0> weakHashMap = j0.a0.f9147a;
                if (!j0.a0.g.b(m0Var) || r0.this.f1422j.getCount() <= r0.this.f1422j.getChildCount()) {
                    return;
                }
                int childCount = r0.this.f1422j.getChildCount();
                r0 r0Var = r0.this;
                if (childCount <= r0Var.f1432t) {
                    r0Var.F.setInputMethodMode(2);
                    r0.this.a();
                }
            }
        }
    }

    static {
        if (Build.VERSION.SDK_INT <= 28) {
            try {
                G = PopupWindow.class.getDeclaredMethod("setClipToScreenEnabled", Boolean.TYPE);
            } catch (NoSuchMethodException unused) {
                Log.i("ListPopupWindow", "Could not find method setClipToScreenEnabled() on PopupWindow. Oh well.");
            }
            try {
                H = PopupWindow.class.getDeclaredMethod("setEpicenterBounds", Rect.class);
            } catch (NoSuchMethodException unused2) {
                Log.i("ListPopupWindow", "Could not find method setEpicenterBounds(Rect) on PopupWindow. Oh well.");
            }
        }
    }

    public r0(Context context, AttributeSet attributeSet, int i10, int i11) {
        this.f1420h = context;
        this.B = new Handler(context.getMainLooper());
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.ListPopupWindow, i10, i11);
        this.f1425m = typedArrayObtainStyledAttributes.getDimensionPixelOffset(R.styleable.ListPopupWindow_android_dropDownHorizontalOffset, 0);
        int dimensionPixelOffset = typedArrayObtainStyledAttributes.getDimensionPixelOffset(R.styleable.ListPopupWindow_android_dropDownVerticalOffset, 0);
        this.f1426n = dimensionPixelOffset;
        if (dimensionPixelOffset != 0) {
            this.f1428p = true;
        }
        typedArrayObtainStyledAttributes.recycle();
        u uVar = new u(context, attributeSet, i10, i11);
        this.F = uVar;
        uVar.setInputMethodMode(1);
    }

    @Override // k.f
    public final void a() {
        int i10;
        int iMakeMeasureSpec;
        int paddingBottom;
        m0 m0Var;
        if (this.f1422j == null) {
            m0 m0VarQ = q(this.f1420h, !this.E);
            this.f1422j = m0VarQ;
            m0VarQ.setAdapter(this.f1421i);
            this.f1422j.setOnItemClickListener(this.f1435w);
            this.f1422j.setFocusable(true);
            this.f1422j.setFocusableInTouchMode(true);
            this.f1422j.setOnItemSelectedListener(new q0(this));
            this.f1422j.setOnScrollListener(this.f1438z);
            this.F.setContentView(this.f1422j);
        }
        Drawable background = this.F.getBackground();
        if (background != null) {
            background.getPadding(this.C);
            Rect rect = this.C;
            int i11 = rect.top;
            i10 = rect.bottom + i11;
            if (!this.f1428p) {
                this.f1426n = -i11;
            }
        } else {
            this.C.setEmpty();
            i10 = 0;
        }
        int iA = a.a(this.F, this.f1434v, this.f1426n, this.F.getInputMethodMode() == 2);
        if (this.f1423k == -1) {
            paddingBottom = iA + i10;
        } else {
            int i12 = this.f1424l;
            if (i12 == -2) {
                int i13 = this.f1420h.getResources().getDisplayMetrics().widthPixels;
                Rect rect2 = this.C;
                iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(i13 - (rect2.left + rect2.right), Integer.MIN_VALUE);
            } else if (i12 != -1) {
                iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(i12, 1073741824);
            } else {
                int i14 = this.f1420h.getResources().getDisplayMetrics().widthPixels;
                Rect rect3 = this.C;
                iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(i14 - (rect3.left + rect3.right), 1073741824);
            }
            int iA2 = this.f1422j.a(iMakeMeasureSpec, iA + 0);
            paddingBottom = iA2 + (iA2 > 0 ? this.f1422j.getPaddingBottom() + this.f1422j.getPaddingTop() + i10 + 0 : 0);
        }
        boolean z10 = this.F.getInputMethodMode() == 2;
        n0.j.d(this.F, this.f1427o);
        if (this.F.isShowing()) {
            View view = this.f1434v;
            WeakHashMap<View, j0.g0> weakHashMap = j0.a0.f9147a;
            if (j0.a0.g.b(view)) {
                int width = this.f1424l;
                if (width == -1) {
                    width = -1;
                } else if (width == -2) {
                    width = this.f1434v.getWidth();
                }
                int i15 = this.f1423k;
                if (i15 == -1) {
                    if (!z10) {
                        paddingBottom = -1;
                    }
                    if (z10) {
                        this.F.setWidth(this.f1424l == -1 ? -1 : 0);
                        this.F.setHeight(0);
                    } else {
                        this.F.setWidth(this.f1424l == -1 ? -1 : 0);
                        this.F.setHeight(-1);
                    }
                } else if (i15 != -2) {
                    paddingBottom = i15;
                }
                this.F.setOutsideTouchable(true);
                this.F.update(this.f1434v, this.f1425m, this.f1426n, width < 0 ? -1 : width, paddingBottom < 0 ? -1 : paddingBottom);
                return;
            }
            return;
        }
        int width2 = this.f1424l;
        if (width2 == -1) {
            width2 = -1;
        } else if (width2 == -2) {
            width2 = this.f1434v.getWidth();
        }
        int i16 = this.f1423k;
        if (i16 == -1) {
            paddingBottom = -1;
        } else if (i16 != -2) {
            paddingBottom = i16;
        }
        this.F.setWidth(width2);
        this.F.setHeight(paddingBottom);
        if (Build.VERSION.SDK_INT <= 28) {
            Method method = G;
            if (method != null) {
                try {
                    method.invoke(this.F, Boolean.TRUE);
                } catch (Exception unused) {
                    Log.i("ListPopupWindow", "Could not call setClipToScreenEnabled() on PopupWindow. Oh well.");
                }
            }
        } else {
            b.b(this.F, true);
        }
        this.F.setOutsideTouchable(true);
        this.F.setTouchInterceptor(this.f1437y);
        if (this.f1430r) {
            n0.j.c(this.F, this.f1429q);
        }
        if (Build.VERSION.SDK_INT <= 28) {
            Method method2 = H;
            if (method2 != null) {
                try {
                    method2.invoke(this.F, this.D);
                } catch (Exception e10) {
                    Log.e("ListPopupWindow", "Could not invoke setEpicenterBounds on PopupWindow", e10);
                }
            }
        } else {
            b.a(this.F, this.D);
        }
        n0.i.a(this.F, this.f1434v, this.f1425m, this.f1426n, this.f1431s);
        this.f1422j.setSelection(-1);
        if ((!this.E || this.f1422j.isInTouchMode()) && (m0Var = this.f1422j) != null) {
            m0Var.setListSelectionHidden(true);
            m0Var.requestLayout();
        }
        if (this.E) {
            return;
        }
        this.B.post(this.A);
    }

    @Override // k.f
    public final boolean c() {
        return this.F.isShowing();
    }

    public final int d() {
        return this.f1425m;
    }

    @Override // k.f
    public final void dismiss() {
        this.F.dismiss();
        this.F.setContentView(null);
        this.f1422j = null;
        this.B.removeCallbacks(this.f1436x);
    }

    public final Drawable f() {
        return this.F.getBackground();
    }

    @Override // k.f
    public final ListView g() {
        return this.f1422j;
    }

    public final void i(Drawable drawable) {
        this.F.setBackgroundDrawable(drawable);
    }

    public final void j(int i10) {
        this.f1426n = i10;
        this.f1428p = true;
    }

    public final void l(int i10) {
        this.f1425m = i10;
    }

    public final int n() {
        if (this.f1428p) {
            return this.f1426n;
        }
        return 0;
    }

    public void p(ListAdapter listAdapter) {
        d dVar = this.f1433u;
        if (dVar == null) {
            this.f1433u = new d();
        } else {
            ListAdapter listAdapter2 = this.f1421i;
            if (listAdapter2 != null) {
                listAdapter2.unregisterDataSetObserver(dVar);
            }
        }
        this.f1421i = listAdapter;
        if (listAdapter != null) {
            listAdapter.registerDataSetObserver(this.f1433u);
        }
        m0 m0Var = this.f1422j;
        if (m0Var != null) {
            m0Var.setAdapter(this.f1421i);
        }
    }

    public m0 q(Context context, boolean z10) {
        return new m0(context, z10);
    }

    public final void r(int i10) {
        Drawable background = this.F.getBackground();
        if (background == null) {
            this.f1424l = i10;
            return;
        }
        background.getPadding(this.C);
        Rect rect = this.C;
        this.f1424l = rect.left + rect.right + i10;
    }

    public final void s() {
        this.F.setInputMethodMode(2);
    }

    public final void t() {
        this.E = true;
        this.F.setFocusable(true);
    }

    public final void u(PopupWindow.OnDismissListener onDismissListener) {
        this.F.setOnDismissListener(onDismissListener);
    }
}
