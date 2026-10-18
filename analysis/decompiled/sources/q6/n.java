package q6;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityManager;
import android.widget.ArrayAdapter;
import android.widget.Filterable;
import android.widget.ListAdapter;
import androidx.appcompat.widget.r0;
import com.google.android.material.R;
import com.google.android.material.textfield.TextInputLayout;
import java.util.Locale;

/* JADX INFO: compiled from: MaterialAutoCompleteTextView.java */
/* JADX INFO: loaded from: classes.dex */
public final class n extends androidx.appcompat.widget.d {

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final r0 f13686l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final AccessibilityManager f13687m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final Rect f13688n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public final int f13689o;

    /* JADX WARN: Illegal instructions before constructor call */
    public n(Context context, AttributeSet attributeSet) {
        int i10 = R.attr.autoCompleteTextViewStyle;
        super(r6.a.a(context, attributeSet, i10, 0), attributeSet, i10);
        this.f13688n = new Rect();
        Context context2 = getContext();
        TypedArray typedArrayD = g6.n.d(context2, attributeSet, R.styleable.MaterialAutoCompleteTextView, i10, R.style.Widget_AppCompat_AutoCompleteTextView, new int[0]);
        int i11 = R.styleable.MaterialAutoCompleteTextView_android_inputType;
        if (typedArrayD.hasValue(i11) && typedArrayD.getInt(i11, 0) == 0) {
            setKeyListener(null);
        }
        this.f13689o = typedArrayD.getResourceId(R.styleable.MaterialAutoCompleteTextView_simpleItemLayout, R.layout.mtrl_auto_complete_simple_item);
        this.f13687m = (AccessibilityManager) context2.getSystemService("accessibility");
        r0 r0Var = new r0(context2, null, androidx.appcompat.R.attr.listPopupWindowStyle, 0);
        this.f13686l = r0Var;
        r0Var.t();
        r0Var.f1434v = this;
        r0Var.s();
        r0Var.p(getAdapter());
        r0Var.f1435w = new m(this);
        int i12 = R.styleable.MaterialAutoCompleteTextView_simpleItems;
        if (typedArrayD.hasValue(i12)) {
            setSimpleItems(typedArrayD.getResourceId(i12, 0));
        }
        typedArrayD.recycle();
    }

    public static void a(n nVar, Object obj) {
        nVar.setText(nVar.convertSelectionToString(obj), false);
    }

    public final TextInputLayout b() {
        for (ViewParent parent = getParent(); parent != null; parent = parent.getParent()) {
            if (parent instanceof TextInputLayout) {
                return (TextInputLayout) parent;
            }
        }
        return null;
    }

    @Override // android.widget.TextView
    public CharSequence getHint() {
        TextInputLayout textInputLayoutB = b();
        return (textInputLayoutB == null || !textInputLayoutB.L) ? super.getHint() : textInputLayoutB.getHint();
    }

    @Override // android.widget.AutoCompleteTextView, android.widget.TextView, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        TextInputLayout textInputLayoutB = b();
        if (textInputLayoutB != null && textInputLayoutB.L && super.getHint() == null && Build.MANUFACTURER.toLowerCase(Locale.ENGLISH).equals("meizu")) {
            setHint("");
        }
    }

    @Override // android.widget.TextView, android.view.View
    public final void onMeasure(int i10, int i11) {
        super.onMeasure(i10, i11);
        if (View.MeasureSpec.getMode(i10) == Integer.MIN_VALUE) {
            int measuredWidth = getMeasuredWidth();
            ListAdapter adapter = getAdapter();
            TextInputLayout textInputLayoutB = b();
            int measuredWidth2 = 0;
            if (adapter != null && textInputLayoutB != null) {
                int iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(getMeasuredWidth(), 0);
                int iMakeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(getMeasuredHeight(), 0);
                r0 r0Var = this.f13686l;
                int iMin = Math.min(adapter.getCount(), Math.max(0, !r0Var.c() ? -1 : r0Var.f1422j.getSelectedItemPosition()) + 15);
                View view = null;
                int iMax = 0;
                for (int iMax2 = Math.max(0, iMin - 15); iMax2 < iMin; iMax2++) {
                    int itemViewType = adapter.getItemViewType(iMax2);
                    if (itemViewType != measuredWidth2) {
                        view = null;
                        measuredWidth2 = itemViewType;
                    }
                    view = adapter.getView(iMax2, view, textInputLayoutB);
                    if (view.getLayoutParams() == null) {
                        view.setLayoutParams(new ViewGroup.LayoutParams(-2, -2));
                    }
                    view.measure(iMakeMeasureSpec, iMakeMeasureSpec2);
                    iMax = Math.max(iMax, view.getMeasuredWidth());
                }
                Drawable drawableF = this.f13686l.f();
                if (drawableF != null) {
                    drawableF.getPadding(this.f13688n);
                    Rect rect = this.f13688n;
                    iMax += rect.left + rect.right;
                }
                measuredWidth2 = textInputLayoutB.getEndIconView().getMeasuredWidth() + iMax;
            }
            setMeasuredDimension(Math.min(Math.max(measuredWidth, measuredWidth2), View.MeasureSpec.getSize(i10)), getMeasuredHeight());
        }
    }

    @Override // android.widget.AutoCompleteTextView
    public <T extends ListAdapter & Filterable> void setAdapter(T t10) {
        super.setAdapter(t10);
        this.f13686l.p(getAdapter());
    }

    public void setSimpleItems(int i10) {
        setSimpleItems(getResources().getStringArray(i10));
    }

    @Override // android.widget.AutoCompleteTextView
    public final void showDropDown() {
        AccessibilityManager accessibilityManager = this.f13687m;
        if (accessibilityManager == null || !accessibilityManager.isTouchExplorationEnabled()) {
            super.showDropDown();
        } else {
            this.f13686l.a();
        }
    }

    public void setSimpleItems(String[] strArr) {
        setAdapter(new ArrayAdapter(getContext(), this.f13689o, strArr));
    }
}
