package androidx.preference;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.View;
import android.view.accessibility.AccessibilityManager;
import android.widget.Checkable;
import android.widget.CompoundButton;
import androidx.appcompat.widget.SwitchCompat;
import java.util.Objects;
import z.i;

/* JADX INFO: loaded from: classes.dex */
public class SwitchPreferenceCompat extends TwoStatePreference {
    public final a Y;
    public CharSequence Z;

    /* JADX INFO: renamed from: a0, reason: collision with root package name */
    public CharSequence f2308a0;

    public class a implements CompoundButton.OnCheckedChangeListener {
        public a() {
        }

        @Override // android.widget.CompoundButton.OnCheckedChangeListener
        public final void onCheckedChanged(CompoundButton compoundButton, boolean z10) {
            Objects.requireNonNull(SwitchPreferenceCompat.this);
            SwitchPreferenceCompat.this.L(z10);
        }
    }

    public SwitchPreferenceCompat(Context context, AttributeSet attributeSet, int i10, int i11) {
        super(context, attributeSet, i10, 0);
        this.Y = new a();
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.SwitchPreferenceCompat, i10, 0);
        N(i.d(typedArrayObtainStyledAttributes, R.styleable.SwitchPreferenceCompat_summaryOn, R.styleable.SwitchPreferenceCompat_android_summaryOn));
        M(i.d(typedArrayObtainStyledAttributes, R.styleable.SwitchPreferenceCompat_summaryOff, R.styleable.SwitchPreferenceCompat_android_summaryOff));
        this.Z = i.d(typedArrayObtainStyledAttributes, R.styleable.SwitchPreferenceCompat_switchTextOn, R.styleable.SwitchPreferenceCompat_android_switchTextOn);
        q();
        this.f2308a0 = i.d(typedArrayObtainStyledAttributes, R.styleable.SwitchPreferenceCompat_switchTextOff, R.styleable.SwitchPreferenceCompat_android_switchTextOff);
        q();
        this.X = typedArrayObtainStyledAttributes.getBoolean(R.styleable.SwitchPreferenceCompat_disableDependentsState, typedArrayObtainStyledAttributes.getBoolean(R.styleable.SwitchPreferenceCompat_android_disableDependentsState, false));
        typedArrayObtainStyledAttributes.recycle();
    }

    @Override // androidx.preference.Preference
    public final void E(View view) {
        super.E(view);
        if (((AccessibilityManager) this.f2272h.getSystemService("accessibility")).isEnabled()) {
            Q(view.findViewById(R.id.switchWidget));
            O(view.findViewById(android.R.id.summary));
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void Q(View view) {
        boolean z10 = view instanceof SwitchCompat;
        if (z10) {
            ((SwitchCompat) view).setOnCheckedChangeListener(null);
        }
        if (view instanceof Checkable) {
            ((Checkable) view).setChecked(this.T);
        }
        if (z10) {
            SwitchCompat switchCompat = (SwitchCompat) view;
            switchCompat.setTextOn(this.Z);
            switchCompat.setTextOff(this.f2308a0);
            switchCompat.setOnCheckedChangeListener(this.Y);
        }
    }

    @Override // androidx.preference.Preference
    public final void x(g gVar) {
        super.x(gVar);
        Q(gVar.A(R.id.switchWidget));
        P(gVar);
    }

    public SwitchPreferenceCompat(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.switchPreferenceCompatStyle, 0);
    }
}
