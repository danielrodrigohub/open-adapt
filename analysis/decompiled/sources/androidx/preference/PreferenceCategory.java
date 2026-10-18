package androidx.preference;

import android.content.Context;
import android.os.Build;
import android.util.AttributeSet;
import z.i;

/* JADX INFO: loaded from: classes.dex */
public class PreferenceCategory extends PreferenceGroup {
    public PreferenceCategory(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, i.a(context, R.attr.preferenceCategoryStyle, android.R.attr.preferenceCategoryStyle), 0);
    }

    @Override // androidx.preference.Preference
    public final boolean H() {
        return !super.p();
    }

    @Override // androidx.preference.Preference
    public final boolean p() {
        return false;
    }

    @Override // androidx.preference.Preference
    public final void x(g gVar) {
        super.x(gVar);
        if (Build.VERSION.SDK_INT >= 28) {
            gVar.f2453a.setAccessibilityHeading(true);
        }
    }
}
