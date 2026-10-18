package androidx.appcompat.view.menu;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.widget.Button;
import androidx.appcompat.R;
import androidx.appcompat.widget.ActionMenuView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.appcompat.widget.j1;
import androidx.appcompat.widget.o0;

/* JADX INFO: loaded from: classes.dex */
public class ActionMenuItemView extends AppCompatTextView implements j.a, View.OnClickListener, ActionMenuView.a {

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public g f795n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public CharSequence f796o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public Drawable f797p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public e.b f798q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public a f799r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public b f800s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public boolean f801t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public boolean f802u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public int f803v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public int f804w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public int f805x;

    public class a extends o0 {
        public a() {
            super(ActionMenuItemView.this);
        }

        @Override // androidx.appcompat.widget.o0
        public final k.f b() {
            androidx.appcompat.widget.c.a aVar;
            b bVar = ActionMenuItemView.this.f800s;
            if (bVar == null || (aVar = androidx.appcompat.widget.c.this.A) == null) {
                return null;
            }
            return aVar.a();
        }

        @Override // androidx.appcompat.widget.o0
        public final boolean c() {
            k.f fVarB;
            ActionMenuItemView actionMenuItemView = ActionMenuItemView.this;
            e.b bVar = actionMenuItemView.f798q;
            return bVar != null && bVar.a(actionMenuItemView.f795n) && (fVarB = b()) != null && fVarB.c();
        }
    }

    public static abstract class b {
    }

    public ActionMenuItemView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, 0);
        Resources resources = context.getResources();
        this.f801t = e();
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.ActionMenuItemView, 0, 0);
        this.f803v = typedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.ActionMenuItemView_android_minWidth, 0);
        typedArrayObtainStyledAttributes.recycle();
        this.f805x = (int) ((resources.getDisplayMetrics().density * 32.0f) + 0.5f);
        setOnClickListener(this);
        this.f804w = -1;
        setSaveEnabled(false);
    }

    @Override // androidx.appcompat.widget.ActionMenuView.a
    public final boolean a() {
        return c();
    }

    @Override // androidx.appcompat.widget.ActionMenuView.a
    public final boolean b() {
        return c() && this.f795n.getIcon() == null;
    }

    public final boolean c() {
        return !TextUtils.isEmpty(getText());
    }

    @Override // androidx.appcompat.view.menu.j.a
    public final void d(g gVar) {
        this.f795n = gVar;
        setIcon(gVar.getIcon());
        setTitle(gVar.getTitleCondensed());
        setId(gVar.f905a);
        setVisibility(gVar.isVisible() ? 0 : 8);
        setEnabled(gVar.isEnabled());
        if (gVar.hasSubMenu() && this.f799r == null) {
            this.f799r = new a();
        }
    }

    public final boolean e() {
        Configuration configuration = getContext().getResources().getConfiguration();
        int i10 = configuration.screenWidthDp;
        return i10 >= 480 || (i10 >= 640 && configuration.screenHeightDp >= 480) || configuration.orientation == 2;
    }

    public final void f() {
        boolean z10 = true;
        boolean z11 = !TextUtils.isEmpty(this.f796o);
        if (this.f797p != null) {
            if (!((this.f795n.f929y & 4) == 4) || (!this.f801t && !this.f802u)) {
                z10 = false;
            }
        }
        boolean z12 = z11 & z10;
        setText(z12 ? this.f796o : null);
        CharSequence charSequence = this.f795n.f921q;
        if (TextUtils.isEmpty(charSequence)) {
            setContentDescription(z12 ? null : this.f795n.f909e);
        } else {
            setContentDescription(charSequence);
        }
        CharSequence charSequence2 = this.f795n.f922r;
        if (TextUtils.isEmpty(charSequence2)) {
            j1.a(this, z12 ? null : this.f795n.f909e);
        } else {
            j1.a(this, charSequence2);
        }
    }

    @Override // android.widget.TextView, android.view.View
    public CharSequence getAccessibilityClassName() {
        return Button.class.getName();
    }

    @Override // androidx.appcompat.view.menu.j.a
    public g getItemData() {
        return this.f795n;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        e.b bVar = this.f798q;
        if (bVar != null) {
            bVar.a(this.f795n);
        }
    }

    @Override // android.widget.TextView, android.view.View
    public final void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        this.f801t = e();
        f();
    }

    @Override // androidx.appcompat.widget.AppCompatTextView, android.widget.TextView, android.view.View
    public final void onMeasure(int i10, int i11) {
        int i12;
        boolean zC = c();
        if (zC && (i12 = this.f804w) >= 0) {
            super.setPadding(i12, getPaddingTop(), getPaddingRight(), getPaddingBottom());
        }
        super.onMeasure(i10, i11);
        int mode = View.MeasureSpec.getMode(i10);
        int size = View.MeasureSpec.getSize(i10);
        int measuredWidth = getMeasuredWidth();
        int iMin = mode == Integer.MIN_VALUE ? Math.min(size, this.f803v) : this.f803v;
        if (mode != 1073741824 && this.f803v > 0 && measuredWidth < iMin) {
            super.onMeasure(View.MeasureSpec.makeMeasureSpec(iMin, 1073741824), i11);
        }
        if (zC || this.f797p == null) {
            return;
        }
        super.setPadding((getMeasuredWidth() - this.f797p.getBounds().width()) / 2, getPaddingTop(), getPaddingRight(), getPaddingBottom());
    }

    @Override // android.widget.TextView, android.view.View
    public final void onRestoreInstanceState(Parcelable parcelable) {
        super.onRestoreInstanceState(null);
    }

    @Override // android.widget.TextView, android.view.View
    public final boolean onTouchEvent(MotionEvent motionEvent) {
        a aVar;
        if (this.f795n.hasSubMenu() && (aVar = this.f799r) != null && aVar.onTouch(this, motionEvent)) {
            return true;
        }
        return super.onTouchEvent(motionEvent);
    }

    public void setCheckable(boolean z10) {
    }

    public void setChecked(boolean z10) {
    }

    public void setExpandedFormat(boolean z10) {
        if (this.f802u != z10) {
            this.f802u = z10;
            g gVar = this.f795n;
            if (gVar != null) {
                gVar.f918n.q();
            }
        }
    }

    public void setIcon(Drawable drawable) {
        this.f797p = drawable;
        if (drawable != null) {
            int intrinsicWidth = drawable.getIntrinsicWidth();
            int intrinsicHeight = drawable.getIntrinsicHeight();
            int i10 = this.f805x;
            if (intrinsicWidth > i10) {
                intrinsicHeight = (int) (intrinsicHeight * (i10 / intrinsicWidth));
                intrinsicWidth = i10;
            }
            if (intrinsicHeight > i10) {
                intrinsicWidth = (int) (intrinsicWidth * (i10 / intrinsicHeight));
            } else {
                i10 = intrinsicHeight;
            }
            drawable.setBounds(0, 0, intrinsicWidth, i10);
        }
        setCompoundDrawables(drawable, null, null, null);
        f();
    }

    public void setItemInvoker(e.b bVar) {
        this.f798q = bVar;
    }

    @Override // android.widget.TextView, android.view.View
    public final void setPadding(int i10, int i11, int i12, int i13) {
        this.f804w = i10;
        super.setPadding(i10, i11, i12, i13);
    }

    public void setPopupCallback(b bVar) {
        this.f800s = bVar;
    }

    public void setTitle(CharSequence charSequence) {
        this.f796o = charSequence;
        f();
    }
}
