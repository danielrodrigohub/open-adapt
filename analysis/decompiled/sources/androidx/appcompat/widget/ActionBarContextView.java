package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.appcompat.R;
import java.util.WeakHashMap;

/* JADX INFO: loaded from: classes.dex */
public class ActionBarContextView extends androidx.appcompat.widget.a {
    public int A;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public CharSequence f976p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public CharSequence f977q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public View f978r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public View f979s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public View f980t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public LinearLayout f981u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public TextView f982v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public TextView f983w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public int f984x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public int f985y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public boolean f986z;

    public class a implements View.OnClickListener {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public final /* synthetic */ j.a f987h;

        public a(j.a aVar) {
            this.f987h = aVar;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            this.f987h.c();
        }
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public ActionBarContextView(Context context, AttributeSet attributeSet) {
        int resourceId;
        int i10 = R.attr.actionModeStyle;
        super(context, attributeSet, i10);
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.ActionMode, i10, 0);
        int i11 = R.styleable.ActionMode_background;
        Drawable drawable = (!typedArrayObtainStyledAttributes.hasValue(i11) || (resourceId = typedArrayObtainStyledAttributes.getResourceId(i11, 0)) == 0) ? typedArrayObtainStyledAttributes.getDrawable(i11) : g.a.b(context, resourceId);
        WeakHashMap<View, j0.g0> weakHashMap = j0.a0.f9147a;
        j0.a0.d.q(this, drawable);
        this.f984x = typedArrayObtainStyledAttributes.getResourceId(R.styleable.ActionMode_titleTextStyle, 0);
        this.f985y = typedArrayObtainStyledAttributes.getResourceId(R.styleable.ActionMode_subtitleTextStyle, 0);
        this.f1152l = typedArrayObtainStyledAttributes.getLayoutDimension(R.styleable.ActionMode_height, 0);
        this.A = typedArrayObtainStyledAttributes.getResourceId(R.styleable.ActionMode_closeItemLayout, R.layout.abc_action_mode_close_item_material);
        typedArrayObtainStyledAttributes.recycle();
    }

    public final void f(j.a aVar) {
        View view = this.f978r;
        if (view == null) {
            View viewInflate = LayoutInflater.from(getContext()).inflate(this.A, (ViewGroup) this, false);
            this.f978r = viewInflate;
            addView(viewInflate);
        } else if (view.getParent() == null) {
            addView(this.f978r);
        }
        View viewFindViewById = this.f978r.findViewById(R.id.action_mode_close_button);
        this.f979s = viewFindViewById;
        viewFindViewById.setOnClickListener(new a(aVar));
        androidx.appcompat.view.menu.e eVar = (androidx.appcompat.view.menu.e) aVar.e();
        c cVar = this.f1151k;
        if (cVar != null) {
            cVar.a();
        }
        c cVar2 = new c(getContext());
        this.f1151k = cVar2;
        cVar2.f1178s = true;
        cVar2.f1179t = true;
        ViewGroup.LayoutParams layoutParams = new ViewGroup.LayoutParams(-2, -1);
        eVar.c(this.f1151k, this.f1149i);
        c cVar3 = this.f1151k;
        androidx.appcompat.view.menu.j jVar = cVar3.f833o;
        if (jVar == null) {
            androidx.appcompat.view.menu.j jVar2 = (androidx.appcompat.view.menu.j) cVar3.f829k.inflate(cVar3.f831m, (ViewGroup) this, false);
            cVar3.f833o = jVar2;
            jVar2.b(cVar3.f828j);
            cVar3.f();
        }
        androidx.appcompat.view.menu.j jVar3 = cVar3.f833o;
        if (jVar != jVar3) {
            ((ActionMenuView) jVar3).setPresenter(cVar3);
        }
        ActionMenuView actionMenuView = (ActionMenuView) jVar3;
        this.f1150j = actionMenuView;
        WeakHashMap<View, j0.g0> weakHashMap = j0.a0.f9147a;
        j0.a0.d.q(actionMenuView, null);
        addView(this.f1150j, layoutParams);
    }

    public final void g() {
        if (this.f981u == null) {
            LayoutInflater.from(getContext()).inflate(R.layout.abc_action_bar_title_item, this);
            LinearLayout linearLayout = (LinearLayout) getChildAt(getChildCount() - 1);
            this.f981u = linearLayout;
            this.f982v = (TextView) linearLayout.findViewById(R.id.action_bar_title);
            this.f983w = (TextView) this.f981u.findViewById(R.id.action_bar_subtitle);
            if (this.f984x != 0) {
                this.f982v.setTextAppearance(getContext(), this.f984x);
            }
            if (this.f985y != 0) {
                this.f983w.setTextAppearance(getContext(), this.f985y);
            }
        }
        this.f982v.setText(this.f976p);
        this.f983w.setText(this.f977q);
        boolean z10 = !TextUtils.isEmpty(this.f976p);
        boolean z11 = !TextUtils.isEmpty(this.f977q);
        int i10 = 0;
        this.f983w.setVisibility(z11 ? 0 : 8);
        LinearLayout linearLayout2 = this.f981u;
        if (!z10 && !z11) {
            i10 = 8;
        }
        linearLayout2.setVisibility(i10);
        if (this.f981u.getParent() == null) {
            addView(this.f981u);
        }
    }

    @Override // android.view.ViewGroup
    public final ViewGroup.LayoutParams generateDefaultLayoutParams() {
        return new ViewGroup.MarginLayoutParams(-1, -2);
    }

    @Override // android.view.ViewGroup
    public final ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new ViewGroup.MarginLayoutParams(getContext(), attributeSet);
    }

    @Override // androidx.appcompat.widget.a
    public /* bridge */ /* synthetic */ int getAnimatedVisibility() {
        return super.getAnimatedVisibility();
    }

    @Override // androidx.appcompat.widget.a
    public /* bridge */ /* synthetic */ int getContentHeight() {
        return super.getContentHeight();
    }

    public CharSequence getSubtitle() {
        return this.f977q;
    }

    public CharSequence getTitle() {
        return this.f976p;
    }

    public final void h() {
        removeAllViews();
        this.f980t = null;
        this.f1150j = null;
        this.f1151k = null;
        View view = this.f979s;
        if (view != null) {
            view.setOnClickListener(null);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        c cVar = this.f1151k;
        if (cVar != null) {
            cVar.g();
            c.a aVar = this.f1151k.A;
            if (aVar == null || !aVar.b()) {
                return;
            }
            aVar.f941j.dismiss();
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z10, int i10, int i11, int i12, int i13) {
        boolean zB = o1.b(this);
        int paddingRight = zB ? (i12 - i10) - getPaddingRight() : getPaddingLeft();
        int paddingTop = getPaddingTop();
        int paddingTop2 = ((i13 - i11) - getPaddingTop()) - getPaddingBottom();
        View view = this.f978r;
        if (view != null && view.getVisibility() != 8) {
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) this.f978r.getLayoutParams();
            int i14 = zB ? marginLayoutParams.rightMargin : marginLayoutParams.leftMargin;
            int i15 = zB ? marginLayoutParams.leftMargin : marginLayoutParams.rightMargin;
            int i16 = zB ? paddingRight - i14 : paddingRight + i14;
            int iD = i16 + d(this.f978r, i16, paddingTop, paddingTop2, zB);
            paddingRight = zB ? iD - i15 : iD + i15;
        }
        int iD2 = paddingRight;
        LinearLayout linearLayout = this.f981u;
        if (linearLayout != null && this.f980t == null && linearLayout.getVisibility() != 8) {
            iD2 += d(this.f981u, iD2, paddingTop, paddingTop2, zB);
        }
        int i17 = iD2;
        View view2 = this.f980t;
        if (view2 != null) {
            d(view2, i17, paddingTop, paddingTop2, zB);
        }
        int paddingLeft = zB ? getPaddingLeft() : (i12 - i10) - getPaddingRight();
        ActionMenuView actionMenuView = this.f1150j;
        if (actionMenuView != null) {
            d(actionMenuView, paddingLeft, paddingTop, paddingTop2, !zB);
        }
    }

    @Override // android.view.View
    public final void onMeasure(int i10, int i11) {
        if (View.MeasureSpec.getMode(i10) != 1073741824) {
            throw new IllegalStateException(getClass().getSimpleName() + " can only be used with android:layout_width=\"match_parent\" (or fill_parent)");
        }
        if (View.MeasureSpec.getMode(i11) == 0) {
            throw new IllegalStateException(getClass().getSimpleName() + " can only be used with android:layout_height=\"wrap_content\"");
        }
        int size = View.MeasureSpec.getSize(i10);
        int size2 = this.f1152l;
        if (size2 <= 0) {
            size2 = View.MeasureSpec.getSize(i11);
        }
        int paddingBottom = getPaddingBottom() + getPaddingTop();
        int paddingLeft = (size - getPaddingLeft()) - getPaddingRight();
        int iMin = size2 - paddingBottom;
        int iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(iMin, Integer.MIN_VALUE);
        View view = this.f978r;
        if (view != null) {
            int iC = c(view, paddingLeft, iMakeMeasureSpec);
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) this.f978r.getLayoutParams();
            paddingLeft = iC - (marginLayoutParams.leftMargin + marginLayoutParams.rightMargin);
        }
        ActionMenuView actionMenuView = this.f1150j;
        if (actionMenuView != null && actionMenuView.getParent() == this) {
            paddingLeft = c(this.f1150j, paddingLeft, iMakeMeasureSpec);
        }
        LinearLayout linearLayout = this.f981u;
        if (linearLayout != null && this.f980t == null) {
            if (this.f986z) {
                this.f981u.measure(View.MeasureSpec.makeMeasureSpec(0, 0), iMakeMeasureSpec);
                int measuredWidth = this.f981u.getMeasuredWidth();
                boolean z10 = measuredWidth <= paddingLeft;
                if (z10) {
                    paddingLeft -= measuredWidth;
                }
                this.f981u.setVisibility(z10 ? 0 : 8);
            } else {
                paddingLeft = c(linearLayout, paddingLeft, iMakeMeasureSpec);
            }
        }
        View view2 = this.f980t;
        if (view2 != null) {
            ViewGroup.LayoutParams layoutParams = view2.getLayoutParams();
            int i12 = layoutParams.width;
            int i13 = i12 != -2 ? 1073741824 : Integer.MIN_VALUE;
            if (i12 >= 0) {
                paddingLeft = Math.min(i12, paddingLeft);
            }
            int i14 = layoutParams.height;
            int i15 = i14 == -2 ? Integer.MIN_VALUE : 1073741824;
            if (i14 >= 0) {
                iMin = Math.min(i14, iMin);
            }
            this.f980t.measure(View.MeasureSpec.makeMeasureSpec(paddingLeft, i13), View.MeasureSpec.makeMeasureSpec(iMin, i15));
        }
        if (this.f1152l > 0) {
            setMeasuredDimension(size, size2);
            return;
        }
        int childCount = getChildCount();
        int i16 = 0;
        for (int i17 = 0; i17 < childCount; i17++) {
            int measuredHeight = getChildAt(i17).getMeasuredHeight() + paddingBottom;
            if (measuredHeight > i16) {
                i16 = measuredHeight;
            }
        }
        setMeasuredDimension(size, i16);
    }

    @Override // androidx.appcompat.widget.a
    public void setContentHeight(int i10) {
        this.f1152l = i10;
    }

    public void setCustomView(View view) {
        LinearLayout linearLayout;
        View view2 = this.f980t;
        if (view2 != null) {
            removeView(view2);
        }
        this.f980t = view;
        if (view != null && (linearLayout = this.f981u) != null) {
            removeView(linearLayout);
            this.f981u = null;
        }
        if (view != null) {
            addView(view);
        }
        requestLayout();
    }

    public void setSubtitle(CharSequence charSequence) {
        this.f977q = charSequence;
        g();
    }

    public void setTitle(CharSequence charSequence) {
        this.f976p = charSequence;
        g();
        j0.a0.r(this, charSequence);
    }

    public void setTitleOptional(boolean z10) {
        if (z10 != this.f986z) {
            requestLayout();
        }
        this.f986z = z10;
    }

    @Override // androidx.appcompat.widget.a, android.view.View
    public /* bridge */ /* synthetic */ void setVisibility(int i10) {
        super.setVisibility(i10);
    }

    @Override // android.view.ViewGroup
    public final boolean shouldDelayChildPressedState() {
        return false;
    }
}
