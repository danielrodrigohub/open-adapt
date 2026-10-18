package androidx.appcompat.widget;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AbsListView;
import android.widget.AdapterView;
import android.widget.ListAdapter;
import android.widget.ListView;
import androidx.appcompat.R;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

/* JADX INFO: compiled from: DropDownListView.java */
/* JADX INFO: loaded from: classes.dex */
public class m0 extends ListView {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final Rect f1357h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f1358i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int f1359j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public int f1360k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public int f1361l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public int f1362m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public Field f1363n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public c f1364o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public boolean f1365p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public boolean f1366q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public boolean f1367r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public n0.g f1368s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public d f1369t;

    /* JADX INFO: compiled from: DropDownListView.java */
    public static class a {
        public static void a(View view, float f10, float f11) {
            view.drawableHotspotChanged(f10, f11);
        }
    }

    /* JADX INFO: compiled from: DropDownListView.java */
    public static class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static Method f1370a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static Method f1371b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public static Method f1372c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public static boolean f1373d;

        static {
            try {
                Class cls = Integer.TYPE;
                Class cls2 = Float.TYPE;
                Method declaredMethod = AbsListView.class.getDeclaredMethod("positionSelector", cls, View.class, Boolean.TYPE, cls2, cls2);
                f1370a = declaredMethod;
                declaredMethod.setAccessible(true);
                Method declaredMethod2 = AdapterView.class.getDeclaredMethod("setSelectedPositionInt", cls);
                f1371b = declaredMethod2;
                declaredMethod2.setAccessible(true);
                Method declaredMethod3 = AdapterView.class.getDeclaredMethod("setNextSelectedPositionInt", cls);
                f1372c = declaredMethod3;
                declaredMethod3.setAccessible(true);
                f1373d = true;
            } catch (NoSuchMethodException e10) {
                e10.printStackTrace();
            }
        }
    }

    /* JADX INFO: compiled from: DropDownListView.java */
    public static class c extends h.a {

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public boolean f1374i;

        public c(Drawable drawable) {
            super(drawable);
            this.f1374i = true;
        }

        @Override // h.a, android.graphics.drawable.Drawable
        public final void draw(Canvas canvas) {
            if (this.f1374i) {
                super.draw(canvas);
            }
        }

        @Override // h.a, android.graphics.drawable.Drawable
        public final void setHotspot(float f10, float f11) {
            if (this.f1374i) {
                super.setHotspot(f10, f11);
            }
        }

        @Override // h.a, android.graphics.drawable.Drawable
        public final void setHotspotBounds(int i10, int i11, int i12, int i13) {
            if (this.f1374i) {
                super.setHotspotBounds(i10, i11, i12, i13);
            }
        }

        @Override // h.a, android.graphics.drawable.Drawable
        public final boolean setState(int[] iArr) {
            if (this.f1374i) {
                return super.setState(iArr);
            }
            return false;
        }

        @Override // h.a, android.graphics.drawable.Drawable
        public final boolean setVisible(boolean z10, boolean z11) {
            if (this.f1374i) {
                return super.setVisible(z10, z11);
            }
            return false;
        }
    }

    /* JADX INFO: compiled from: DropDownListView.java */
    public class d implements Runnable {
        public d() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            m0 m0Var = m0.this;
            m0Var.f1369t = null;
            m0Var.drawableStateChanged();
        }
    }

    public m0(Context context, boolean z10) {
        super(context, null, R.attr.dropDownListViewStyle);
        this.f1357h = new Rect();
        this.f1358i = 0;
        this.f1359j = 0;
        this.f1360k = 0;
        this.f1361l = 0;
        this.f1366q = z10;
        setCacheColorHint(0);
        try {
            Field declaredField = AbsListView.class.getDeclaredField("mIsChildViewEnabled");
            this.f1363n = declaredField;
            declaredField.setAccessible(true);
        } catch (NoSuchFieldException e10) {
            e10.printStackTrace();
        }
    }

    private void setSelectorEnabled(boolean z10) {
        c cVar = this.f1364o;
        if (cVar != null) {
            cVar.f1374i = z10;
        }
    }

    public final int a(int i10, int i11) {
        int listPaddingTop = getListPaddingTop();
        int listPaddingBottom = getListPaddingBottom();
        int dividerHeight = getDividerHeight();
        Drawable divider = getDivider();
        ListAdapter adapter = getAdapter();
        int measuredHeight = listPaddingTop + listPaddingBottom;
        if (adapter == null) {
            return measuredHeight;
        }
        if (dividerHeight <= 0 || divider == null) {
            dividerHeight = 0;
        }
        int count = adapter.getCount();
        int i12 = 0;
        View view = null;
        for (int i13 = 0; i13 < count; i13++) {
            int itemViewType = adapter.getItemViewType(i13);
            if (itemViewType != i12) {
                view = null;
                i12 = itemViewType;
            }
            view = adapter.getView(i13, view, this);
            ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
            if (layoutParams == null) {
                layoutParams = generateDefaultLayoutParams();
                view.setLayoutParams(layoutParams);
            }
            int i14 = layoutParams.height;
            view.measure(i10, i14 > 0 ? View.MeasureSpec.makeMeasureSpec(i14, 1073741824) : View.MeasureSpec.makeMeasureSpec(0, 0));
            view.forceLayout();
            if (i13 > 0) {
                measuredHeight += dividerHeight;
            }
            measuredHeight += view.getMeasuredHeight();
            if (measuredHeight >= i11) {
                return i11;
            }
        }
        return measuredHeight;
    }

    /* JADX WARN: Code duplicated, block: B:13:0x001f  */
    /* JADX WARN: Code duplicated, block: B:67:0x012a  */
    /* JADX WARN: Code duplicated, block: B:69:0x013f  */
    /* JADX WARN: Code duplicated, block: B:71:0x0144  */
    /* JADX WARN: Code duplicated, block: B:73:0x0148  */
    /* JADX WARN: Code duplicated, block: B:75:0x015a  */
    /* JADX WARN: Code duplicated, block: B:77:0x015e  */
    /* JADX WARN: Code duplicated, block: B:79:0x0162  */
    public final boolean b(MotionEvent motionEvent, int i10) {
        boolean z10;
        View childAt;
        View childAt2;
        n0.g gVar;
        int actionMasked = motionEvent.getActionMasked();
        boolean z11 = true;
        if (actionMasked != 1) {
            if (actionMasked == 2) {
                z10 = true;
            } else if (actionMasked != 3) {
                z10 = true;
                z11 = false;
            } else {
                z10 = false;
                z11 = false;
            }
            if (z10 || z11) {
                this.f1367r = false;
                setPressed(false);
                drawableStateChanged();
                childAt2 = getChildAt(this.f1362m - getFirstVisiblePosition());
                if (childAt2 != null) {
                    childAt2.setPressed(false);
                }
            }
            if (z10) {
                if (this.f1368s == null) {
                    this.f1368s = new n0.g(this);
                }
                n0.g gVar2 = this.f1368s;
                boolean z12 = gVar2.f11152w;
                gVar2.f11152w = true;
                gVar2.onTouch(this, motionEvent);
            } else {
                gVar = this.f1368s;
                if (gVar != null) {
                    if (gVar.f11152w) {
                        gVar.d();
                    }
                    gVar.f11152w = false;
                }
            }
            return z10;
        }
        z10 = false;
        int iFindPointerIndex = motionEvent.findPointerIndex(i10);
        if (iFindPointerIndex < 0) {
            z10 = false;
            z11 = false;
        } else {
            int x10 = (int) motionEvent.getX(iFindPointerIndex);
            int y7 = (int) motionEvent.getY(iFindPointerIndex);
            int iPointToPosition = pointToPosition(x10, y7);
            if (iPointToPosition != -1) {
                View childAt3 = getChildAt(iPointToPosition - getFirstVisiblePosition());
                float f10 = x10;
                float f11 = y7;
                this.f1367r = true;
                a.a(this, f10, f11);
                if (!isPressed()) {
                    setPressed(true);
                }
                layoutChildren();
                int i11 = this.f1362m;
                if (i11 != -1 && (childAt = getChildAt(i11 - getFirstVisiblePosition())) != null && childAt != childAt3 && childAt.isPressed()) {
                    childAt.setPressed(false);
                }
                this.f1362m = iPointToPosition;
                a.a(childAt3, f10 - childAt3.getLeft(), f11 - childAt3.getTop());
                if (!childAt3.isPressed()) {
                    childAt3.setPressed(true);
                }
                Drawable selector = getSelector();
                boolean z13 = (selector == null || iPointToPosition == -1) ? false : true;
                if (z13) {
                    selector.setVisible(false, false);
                }
                Rect rect = this.f1357h;
                rect.set(childAt3.getLeft(), childAt3.getTop(), childAt3.getRight(), childAt3.getBottom());
                rect.left -= this.f1358i;
                rect.top -= this.f1359j;
                rect.right += this.f1360k;
                rect.bottom += this.f1361l;
                try {
                    boolean z14 = this.f1363n.getBoolean(this);
                    if (childAt3.isEnabled() != z14) {
                        this.f1363n.set(this, Boolean.valueOf(!z14));
                        if (iPointToPosition != -1) {
                            refreshDrawableState();
                        }
                    }
                } catch (IllegalAccessException e10) {
                    e10.printStackTrace();
                }
                if (z13) {
                    Rect rect2 = this.f1357h;
                    float fExactCenterX = rect2.exactCenterX();
                    float fExactCenterY = rect2.exactCenterY();
                    selector.setVisible(getVisibility() == 0, false);
                    b0.a.b.e(selector, fExactCenterX, fExactCenterY);
                }
                Drawable selector2 = getSelector();
                if (selector2 != null && iPointToPosition != -1) {
                    b0.a.b.e(selector2, f10, f11);
                }
                setSelectorEnabled(false);
                refreshDrawableState();
                if (actionMasked == 1) {
                    performItemClick(childAt3, iPointToPosition, getItemIdAtPosition(iPointToPosition));
                }
                z11 = false;
                z10 = true;
            }
        }
        if (z10) {
            this.f1367r = false;
            setPressed(false);
            drawableStateChanged();
            childAt2 = getChildAt(this.f1362m - getFirstVisiblePosition());
            if (childAt2 != null) {
                childAt2.setPressed(false);
            }
        } else {
            this.f1367r = false;
            setPressed(false);
            drawableStateChanged();
            childAt2 = getChildAt(this.f1362m - getFirstVisiblePosition());
            if (childAt2 != null) {
                childAt2.setPressed(false);
            }
        }
        if (z10) {
            if (this.f1368s == null) {
                this.f1368s = new n0.g(this);
            }
            n0.g gVar3 = this.f1368s;
            boolean z15 = gVar3.f11152w;
            gVar3.f11152w = true;
            gVar3.onTouch(this, motionEvent);
        } else {
            gVar = this.f1368s;
            if (gVar != null) {
                if (gVar.f11152w) {
                    gVar.d();
                }
                gVar.f11152w = false;
            }
        }
        return z10;
    }

    public final void c() {
        Drawable selector = getSelector();
        if (selector != null && this.f1367r && isPressed()) {
            selector.setState(getDrawableState());
        }
    }

    @Override // android.widget.ListView, android.widget.AbsListView, android.view.ViewGroup, android.view.View
    public final void dispatchDraw(Canvas canvas) {
        Drawable selector;
        if (!this.f1357h.isEmpty() && (selector = getSelector()) != null) {
            selector.setBounds(this.f1357h);
            selector.draw(canvas);
        }
        super.dispatchDraw(canvas);
    }

    @Override // android.widget.AbsListView, android.view.ViewGroup, android.view.View
    public final void drawableStateChanged() {
        if (this.f1369t != null) {
            return;
        }
        super.drawableStateChanged();
        setSelectorEnabled(true);
        c();
    }

    @Override // android.view.ViewGroup, android.view.View
    public final boolean hasFocus() {
        return this.f1366q || super.hasFocus();
    }

    @Override // android.view.View
    public final boolean hasWindowFocus() {
        return this.f1366q || super.hasWindowFocus();
    }

    @Override // android.view.View
    public final boolean isFocused() {
        return this.f1366q || super.isFocused();
    }

    @Override // android.view.View
    public final boolean isInTouchMode() {
        return (this.f1366q && this.f1365p) || super.isInTouchMode();
    }

    @Override // android.widget.ListView, android.widget.AbsListView, android.widget.AdapterView, android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        this.f1369t = null;
        super.onDetachedFromWindow();
    }

    @Override // android.view.View
    public boolean onHoverEvent(MotionEvent motionEvent) {
        int i10 = Build.VERSION.SDK_INT;
        if (i10 < 26) {
            return super.onHoverEvent(motionEvent);
        }
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 10 && this.f1369t == null) {
            d dVar = new d();
            this.f1369t = dVar;
            post(dVar);
        }
        boolean zOnHoverEvent = super.onHoverEvent(motionEvent);
        if (actionMasked == 9 || actionMasked == 7) {
            int iPointToPosition = pointToPosition((int) motionEvent.getX(), (int) motionEvent.getY());
            if (iPointToPosition != -1 && iPointToPosition != getSelectedItemPosition()) {
                View childAt = getChildAt(iPointToPosition - getFirstVisiblePosition());
                if (childAt.isEnabled()) {
                    requestFocus();
                    if (i10 < 30 || !b.f1373d) {
                        setSelectionFromTop(iPointToPosition, childAt.getTop() - getTop());
                    } else {
                        try {
                            b.f1370a.invoke(this, Integer.valueOf(iPointToPosition), childAt, Boolean.FALSE, -1, -1);
                            b.f1371b.invoke(this, Integer.valueOf(iPointToPosition));
                            b.f1372c.invoke(this, Integer.valueOf(iPointToPosition));
                        } catch (IllegalAccessException e10) {
                            e10.printStackTrace();
                        } catch (InvocationTargetException e11) {
                            e11.printStackTrace();
                        }
                    }
                }
                c();
            }
        } else {
            setSelection(-1);
        }
        return zOnHoverEvent;
    }

    @Override // android.widget.AbsListView, android.view.View
    public final boolean onTouchEvent(MotionEvent motionEvent) {
        if (motionEvent.getAction() == 0) {
            this.f1362m = pointToPosition((int) motionEvent.getX(), (int) motionEvent.getY());
        }
        d dVar = this.f1369t;
        if (dVar != null) {
            m0 m0Var = m0.this;
            m0Var.f1369t = null;
            m0Var.removeCallbacks(dVar);
        }
        return super.onTouchEvent(motionEvent);
    }

    public void setListSelectionHidden(boolean z10) {
        this.f1365p = z10;
    }

    @Override // android.widget.AbsListView
    public void setSelector(Drawable drawable) {
        c cVar = drawable != null ? new c(drawable) : null;
        this.f1364o = cVar;
        super.setSelector(cVar);
        Rect rect = new Rect();
        if (drawable != null) {
            drawable.getPadding(rect);
        }
        this.f1358i = rect.left;
        this.f1359j = rect.top;
        this.f1360k = rect.right;
        this.f1361l = rect.bottom;
    }
}
