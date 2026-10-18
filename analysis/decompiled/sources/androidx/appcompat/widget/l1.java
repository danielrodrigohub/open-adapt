package androidx.appcompat.widget;

import android.app.Activity;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.res.Resources;
import android.graphics.Rect;
import android.os.Build;
import android.util.DisplayMetrics;
import android.util.Log;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.view.accessibility.AccessibilityManager;
import androidx.appcompat.R;
import java.lang.reflect.Method;
import java.util.WeakHashMap;

/* JADX INFO: compiled from: TooltipCompatHandler.java */
/* JADX INFO: loaded from: classes.dex */
public final class l1 implements View.OnLongClickListener, View.OnHoverListener, View.OnAttachStateChangeListener {

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public static l1 f1343r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public static l1 f1344s;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final View f1345h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final CharSequence f1346i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final int f1347j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final androidx.activity.g f1348k = new androidx.activity.g(this, 1);

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final k1 f1349l = new k1(this, 0);

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public int f1350m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public int f1351n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public m1 f1352o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public boolean f1353p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public boolean f1354q;

    public l1(View view, CharSequence charSequence) {
        this.f1345h = view;
        this.f1346i = charSequence;
        ViewConfiguration viewConfiguration = ViewConfiguration.get(view.getContext());
        Method method = j0.c0.f9181a;
        this.f1347j = Build.VERSION.SDK_INT >= 28 ? j0.c0.b.a(viewConfiguration) : viewConfiguration.getScaledTouchSlop() / 2;
        this.f1354q = true;
        view.setOnLongClickListener(this);
        view.setOnHoverListener(this);
    }

    public static void b(l1 l1Var) {
        l1 l1Var2 = f1343r;
        if (l1Var2 != null) {
            l1Var2.f1345h.removeCallbacks(l1Var2.f1348k);
        }
        f1343r = l1Var;
        if (l1Var != null) {
            l1Var.f1345h.postDelayed(l1Var.f1348k, ViewConfiguration.getLongPressTimeout());
        }
    }

    public final void a() {
        if (f1344s == this) {
            f1344s = null;
            m1 m1Var = this.f1352o;
            if (m1Var != null) {
                m1Var.a();
                this.f1352o = null;
                this.f1354q = true;
                this.f1345h.removeOnAttachStateChangeListener(this);
            } else {
                Log.e("TooltipCompatHandler", "sActiveHandler.mPopup == null");
            }
        }
        if (f1343r == this) {
            b(null);
        }
        this.f1345h.removeCallbacks(this.f1349l);
    }

    public final void c(boolean z10) {
        int height;
        int i10;
        long j10;
        int longPressTimeout;
        long j11;
        View view = this.f1345h;
        WeakHashMap<View, j0.g0> weakHashMap = j0.a0.f9147a;
        if (j0.a0.g.b(view)) {
            b(null);
            l1 l1Var = f1344s;
            if (l1Var != null) {
                l1Var.a();
            }
            f1344s = this;
            this.f1353p = z10;
            m1 m1Var = new m1(this.f1345h.getContext());
            this.f1352o = m1Var;
            View view2 = this.f1345h;
            int width = this.f1350m;
            int i11 = this.f1351n;
            boolean z11 = this.f1353p;
            CharSequence charSequence = this.f1346i;
            if (m1Var.f1377b.getParent() != null) {
                m1Var.a();
            }
            m1Var.f1378c.setText(charSequence);
            WindowManager.LayoutParams layoutParams = m1Var.f1379d;
            layoutParams.token = view2.getApplicationWindowToken();
            int dimensionPixelOffset = m1Var.f1376a.getResources().getDimensionPixelOffset(R.dimen.tooltip_precise_anchor_threshold);
            if (view2.getWidth() < dimensionPixelOffset) {
                width = view2.getWidth() / 2;
            }
            if (view2.getHeight() >= dimensionPixelOffset) {
                int dimensionPixelOffset2 = m1Var.f1376a.getResources().getDimensionPixelOffset(R.dimen.tooltip_precise_anchor_extra_offset);
                height = i11 + dimensionPixelOffset2;
                i10 = i11 - dimensionPixelOffset2;
            } else {
                height = view2.getHeight();
                i10 = 0;
            }
            layoutParams.gravity = 49;
            int dimensionPixelOffset3 = m1Var.f1376a.getResources().getDimensionPixelOffset(z11 ? R.dimen.tooltip_y_offset_touch : R.dimen.tooltip_y_offset_non_touch);
            View rootView = view2.getRootView();
            ViewGroup.LayoutParams layoutParams2 = rootView.getLayoutParams();
            if (!(layoutParams2 instanceof WindowManager.LayoutParams) || ((WindowManager.LayoutParams) layoutParams2).type != 2) {
                for (Context context = view2.getContext(); context instanceof ContextWrapper; context = ((ContextWrapper) context).getBaseContext()) {
                    if (context instanceof Activity) {
                        rootView = ((Activity) context).getWindow().getDecorView();
                        break;
                    }
                }
            }
            if (rootView == null) {
                Log.e("TooltipPopup", "Cannot find app view");
            } else {
                rootView.getWindowVisibleDisplayFrame(m1Var.f1380e);
                Rect rect = m1Var.f1380e;
                if (rect.left < 0 && rect.top < 0) {
                    Resources resources = m1Var.f1376a.getResources();
                    int identifier = resources.getIdentifier("status_bar_height", "dimen", "android");
                    int dimensionPixelSize = identifier != 0 ? resources.getDimensionPixelSize(identifier) : 0;
                    DisplayMetrics displayMetrics = resources.getDisplayMetrics();
                    m1Var.f1380e.set(0, dimensionPixelSize, displayMetrics.widthPixels, displayMetrics.heightPixels);
                }
                rootView.getLocationOnScreen(m1Var.f1382g);
                view2.getLocationOnScreen(m1Var.f1381f);
                int[] iArr = m1Var.f1381f;
                int i12 = iArr[0];
                int[] iArr2 = m1Var.f1382g;
                iArr[0] = i12 - iArr2[0];
                iArr[1] = iArr[1] - iArr2[1];
                layoutParams.x = (iArr[0] + width) - (rootView.getWidth() / 2);
                int iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(0, 0);
                m1Var.f1377b.measure(iMakeMeasureSpec, iMakeMeasureSpec);
                int measuredHeight = m1Var.f1377b.getMeasuredHeight();
                int[] iArr3 = m1Var.f1381f;
                int i13 = ((iArr3[1] + i10) - dimensionPixelOffset3) - measuredHeight;
                int i14 = iArr3[1] + height + dimensionPixelOffset3;
                if (z11) {
                    if (i13 >= 0) {
                        layoutParams.y = i13;
                    } else {
                        layoutParams.y = i14;
                    }
                } else if (measuredHeight + i14 <= m1Var.f1380e.height()) {
                    layoutParams.y = i14;
                } else {
                    layoutParams.y = i13;
                }
            }
            ((WindowManager) m1Var.f1376a.getSystemService("window")).addView(m1Var.f1377b, m1Var.f1379d);
            this.f1345h.addOnAttachStateChangeListener(this);
            if (this.f1353p) {
                j11 = 2500;
            } else {
                if ((j0.a0.d.g(this.f1345h) & 1) == 1) {
                    j10 = 3000;
                    longPressTimeout = ViewConfiguration.getLongPressTimeout();
                } else {
                    j10 = 15000;
                    longPressTimeout = ViewConfiguration.getLongPressTimeout();
                }
                j11 = j10 - ((long) longPressTimeout);
            }
            this.f1345h.removeCallbacks(this.f1349l);
            this.f1345h.postDelayed(this.f1349l, j11);
        }
    }

    @Override // android.view.View.OnHoverListener
    public final boolean onHover(View view, MotionEvent motionEvent) {
        if (this.f1352o != null && this.f1353p) {
            return false;
        }
        AccessibilityManager accessibilityManager = (AccessibilityManager) this.f1345h.getContext().getSystemService("accessibility");
        if (accessibilityManager.isEnabled() && accessibilityManager.isTouchExplorationEnabled()) {
            return false;
        }
        int action = motionEvent.getAction();
        boolean z10 = true;
        if (action != 7) {
            if (action == 10) {
                this.f1354q = true;
                a();
            }
        } else if (this.f1345h.isEnabled() && this.f1352o == null) {
            int x10 = (int) motionEvent.getX();
            int y7 = (int) motionEvent.getY();
            if (this.f1354q || Math.abs(x10 - this.f1350m) > this.f1347j || Math.abs(y7 - this.f1351n) > this.f1347j) {
                this.f1350m = x10;
                this.f1351n = y7;
                this.f1354q = false;
            } else {
                z10 = false;
            }
            if (z10) {
                b(this);
            }
        }
        return false;
    }

    @Override // android.view.View.OnLongClickListener
    public final boolean onLongClick(View view) {
        this.f1350m = view.getWidth() / 2;
        this.f1351n = view.getHeight() / 2;
        c(true);
        return true;
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewAttachedToWindow(View view) {
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewDetachedFromWindow(View view) {
        a();
    }
}
