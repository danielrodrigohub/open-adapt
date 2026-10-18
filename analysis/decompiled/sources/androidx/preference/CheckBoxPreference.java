package androidx.preference;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.View;
import android.view.accessibility.AccessibilityManager;
import android.widget.Checkable;
import android.widget.CompoundButton;
import java.util.Objects;
import z.i;

/* JADX INFO: loaded from: classes.dex */
public class CheckBoxPreference extends TwoStatePreference {
    public final a Y;

    public class a implements CompoundButton.OnCheckedChangeListener {
        public a() {
        }

        @Override // android.widget.CompoundButton.OnCheckedChangeListener
        public final void onCheckedChanged(CompoundButton compoundButton, boolean z10) {
            Objects.requireNonNull(CheckBoxPreference.this);
            CheckBoxPreference.this.L(z10);
        }
    }

    public CheckBoxPreference(Context context, AttributeSet attributeSet, int i10, int i11) {
        super(context, attributeSet, i10, 0);
        this.Y = new a();
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.CheckBoxPreference, i10, 0);
        N(i.d(typedArrayObtainStyledAttributes, R.styleable.CheckBoxPreference_summaryOn, R.styleable.CheckBoxPreference_android_summaryOn));
        M(i.d(typedArrayObtainStyledAttributes, R.styleable.CheckBoxPreference_summaryOff, R.styleable.CheckBoxPreference_android_summaryOff));
        this.X = typedArrayObtainStyledAttributes.getBoolean(R.styleable.CheckBoxPreference_disableDependentsState, typedArrayObtainStyledAttributes.getBoolean(R.styleable.CheckBoxPreference_android_disableDependentsState, false));
        typedArrayObtainStyledAttributes.recycle();
    }

    @Override // androidx.preference.Preference
    public final void E(View view) {
        super.E(view);
        if (((AccessibilityManager) this.f2272h.getSystemService("accessibility")).isEnabled()) {
            Q(view.findViewById(android.R.id.checkbox));
            O(view.findViewById(android.R.id.summary));
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void Q(View view) {
        boolean z10 = view instanceof CompoundButton;
        if (z10) {
            ((CompoundButton) view).setOnCheckedChangeListener(null);
        }
        if (view instanceof Checkable) {
            ((Checkable) view).setChecked(this.T);
        }
        if (z10) {
            ((CompoundButton) view).setOnCheckedChangeListener(this.Y);
        }
    }

    @Override // androidx.preference.Preference
    public final void x(g gVar) {
        super.x(gVar);
        Q(gVar.A(android.R.id.checkbox));
        P(gVar);
    }

    public CheckBoxPreference(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, i.a(context, R.attr.checkBoxPreferenceStyle, android.R.attr.checkBoxPreferenceStyle), 0);
    }
}
