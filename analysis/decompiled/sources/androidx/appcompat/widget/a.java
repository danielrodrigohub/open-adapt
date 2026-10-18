package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.ContextThemeWrapper;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.R;

/* JADX INFO: compiled from: AbsActionBarView.java */
/* JADX INFO: loaded from: classes.dex */
public abstract class a extends ViewGroup {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final C0017a f1148h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final Context f1149i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public ActionMenuView f1150j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public c f1151k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public int f1152l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public j0.g0 f1153m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public boolean f1154n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public boolean f1155o;

    /* JADX INFO: renamed from: androidx.appcompat.widget.a$a, reason: collision with other inner class name */
    /* JADX INFO: compiled from: AbsActionBarView.java */
    public class C0017a implements j0.h0 {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public boolean f1156a = false;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f1157b;

        public C0017a() {
        }

        @Override // j0.h0
        public final void a() {
            if (this.f1156a) {
                return;
            }
            a aVar = a.this;
            aVar.f1153m = null;
            a.super.setVisibility(this.f1157b);
        }

        @Override // j0.h0
        public final void b(View view) {
            this.f1156a = true;
        }

        @Override // j0.h0
        public final void c() {
            a.super.setVisibility(0);
            this.f1156a = false;
        }
    }

    public a(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public final int c(View view, int i10, int i11) {
        view.measure(View.MeasureSpec.makeMeasureSpec(i10, Integer.MIN_VALUE), i11);
        return Math.max(0, (i10 - view.getMeasuredWidth()) - 0);
    }

    public final int d(View view, int i10, int i11, int i12, boolean z10) {
        int measuredWidth = view.getMeasuredWidth();
        int measuredHeight = view.getMeasuredHeight();
        int i13 = ((i12 - measuredHeight) / 2) + i11;
        if (z10) {
            view.layout(i10 - measuredWidth, i13, i10, measuredHeight + i13);
        } else {
            view.layout(i10, i13, i10 + measuredWidth, measuredHeight + i13);
        }
        return z10 ? -measuredWidth : measuredWidth;
    }

    public final j0.g0 e(int i10, long j10) {
        j0.g0 g0Var = this.f1153m;
        if (g0Var != null) {
            g0Var.b();
        }
        if (i10 != 0) {
            j0.g0 g0VarB = j0.a0.b(this);
            g0VarB.a(0.0f);
            g0VarB.c(j10);
            C0017a c0017a = this.f1148h;
            a.this.f1153m = g0VarB;
            c0017a.f1157b = i10;
            g0VarB.d(c0017a);
            return g0VarB;
        }
        if (getVisibility() != 0) {
            setAlpha(0.0f);
        }
        j0.g0 g0VarB2 = j0.a0.b(this);
        g0VarB2.a(1.0f);
        g0VarB2.c(j10);
        C0017a c0017a2 = this.f1148h;
        a.this.f1153m = g0VarB2;
        c0017a2.f1157b = i10;
        g0VarB2.d(c0017a2);
        return g0VarB2;
    }

    public int getAnimatedVisibility() {
        return this.f1153m != null ? this.f1148h.f1157b : getVisibility();
    }

    public int getContentHeight() {
        return this.f1152l;
    }

    @Override // android.view.View
    public final void onConfigurationChanged(Configuration configuration) {
        int i10;
        super.onConfigurationChanged(configuration);
        TypedArray typedArrayObtainStyledAttributes = getContext().obtainStyledAttributes(null, R.styleable.ActionBar, R.attr.actionBarStyle, 0);
        setContentHeight(typedArrayObtainStyledAttributes.getLayoutDimension(R.styleable.ActionBar_height, 0));
        typedArrayObtainStyledAttributes.recycle();
        c cVar = this.f1151k;
        if (cVar != null) {
            Configuration configuration2 = cVar.f827i.getResources().getConfiguration();
            int i11 = configuration2.screenWidthDp;
            int i12 = configuration2.screenHeightDp;
            if (configuration2.smallestScreenWidthDp > 600 || i11 > 600 || ((i11 > 960 && i12 > 720) || (i11 > 720 && i12 > 960))) {
                i10 = 5;
            } else if (i11 >= 500 || ((i11 > 640 && i12 > 480) || (i11 > 480 && i12 > 640))) {
                i10 = 4;
            } else {
                i10 = i11 >= 360 ? 3 : 2;
            }
            cVar.f1182w = i10;
            androidx.appcompat.view.menu.e eVar = cVar.f828j;
            if (eVar != null) {
                eVar.r(true);
            }
        }
    }

    @Override // android.view.View
    public final boolean onHoverEvent(MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 9) {
            this.f1155o = false;
        }
        if (!this.f1155o) {
            boolean zOnHoverEvent = super.onHoverEvent(motionEvent);
            if (actionMasked == 9 && !zOnHoverEvent) {
                this.f1155o = true;
            }
        }
        if (actionMasked == 10 || actionMasked == 3) {
            this.f1155o = false;
        }
        return true;
    }

    @Override // android.view.View
    public final boolean onTouchEvent(MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            this.f1154n = false;
        }
        if (!this.f1154n) {
            boolean zOnTouchEvent = super.onTouchEvent(motionEvent);
            if (actionMasked == 0 && !zOnTouchEvent) {
                this.f1154n = true;
            }
        }
        if (actionMasked == 1 || actionMasked == 3) {
            this.f1154n = false;
        }
        return true;
    }

    public void setContentHeight(int i10) {
        this.f1152l = i10;
        requestLayout();
    }

    @Override // android.view.View
    public void setVisibility(int i10) {
        if (i10 != getVisibility()) {
            j0.g0 g0Var = this.f1153m;
            if (g0Var != null) {
                g0Var.b();
            }
            super.setVisibility(i10);
        }
    }

    public a(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        this.f1148h = new C0017a();
        TypedValue typedValue = new TypedValue();
        if (!context.getTheme().resolveAttribute(R.attr.actionBarPopupTheme, typedValue, true) || typedValue.resourceId == 0) {
            this.f1149i = context;
        } else {
            this.f1149i = new ContextThemeWrapper(context, typedValue.resourceId);
        }
    }
}
