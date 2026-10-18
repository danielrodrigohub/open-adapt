package androidx.preference;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.View;
import android.view.accessibility.AccessibilityManager;
import android.widget.Checkable;
import android.widget.CompoundButton;
import android.widget.Switch;
import java.util.Objects;
import z.i;

/* JADX INFO: loaded from: classes.dex */
public class SwitchPreference extends TwoStatePreference {
    public final a Y;
    public CharSequence Z;

    /* JADX INFO: renamed from: a0, reason: collision with root package name */
    public CharSequence f2306a0;

    public class a implements CompoundButton.OnCheckedChangeListener {
        public a() {
        }

        @Override // android.widget.CompoundButton.OnCheckedChangeListener
        public final void onCheckedChanged(CompoundButton compoundButton, boolean z10) {
            Objects.requireNonNull(SwitchPreference.this);
            SwitchPreference.this.L(z10);
        }
    }

    public SwitchPreference(Context context, AttributeSet attributeSet, int i10, int i11) {
        super(context, attributeSet, i10, 0);
        this.Y = new a();
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.SwitchPreference, i10, 0);
        N(i.d(typedArrayObtainStyledAttributes, R.styleable.SwitchPreference_summaryOn, R.styleable.SwitchPreference_android_summaryOn));
        M(i.d(typedArrayObtainStyledAttributes, R.styleable.SwitchPreference_summaryOff, R.styleable.SwitchPreference_android_summaryOff));
        this.Z = i.d(typedArrayObtainStyledAttributes, R.styleable.SwitchPreference_switchTextOn, R.styleable.SwitchPreference_android_switchTextOn);
        q();
        this.f2306a0 = i.d(typedArrayObtainStyledAttributes, R.styleable.SwitchPreference_switchTextOff, R.styleable.SwitchPreference_android_switchTextOff);
        q();
        this.X = typedArrayObtainStyledAttributes.getBoolean(R.styleable.SwitchPreference_disableDependentsState, typedArrayObtainStyledAttributes.getBoolean(R.styleable.SwitchPreference_android_disableDependentsState, false));
        typedArrayObtainStyledAttributes.recycle();
    }

    @Override // androidx.preference.Preference
    public final void E(View view) {
        super.E(view);
        if (((AccessibilityManager) this.f2272h.getSystemService("accessibility")).isEnabled()) {
            Q(view.findViewById(android.R.id.switch_widget));
            O(view.findViewById(android.R.id.summary));
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void Q(View view) {
        boolean z10 = view instanceof Switch;
        if (z10) {
            ((Switch) view).setOnCheckedChangeListener(null);
        }
        if (view instanceof Checkable) {
            ((Checkable) view).setChecked(this.T);
        }
        if (z10) {
            Switch r10 = (Switch) view;
            r10.setTextOn(this.Z);
            r10.setTextOff(this.f2306a0);
            r10.setOnCheckedChangeListener(this.Y);
        }
    }

    @Override // androidx.preference.Preference
    public final void x(g gVar) {
        super.x(gVar);
        Q(gVar.A(android.R.id.switch_widget));
        P(gVar);
    }

    public SwitchPreference(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, i.a(context, R.attr.switchPreferenceStyle, android.R.attr.switchPreferenceStyle), 0);
    }
}
