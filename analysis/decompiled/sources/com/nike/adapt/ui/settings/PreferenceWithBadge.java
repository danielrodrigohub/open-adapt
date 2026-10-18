package com.nike.adapt.ui.settings;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import androidx.lifecycle.o;
import androidx.preference.Preference;
import androidx.preference.g;
import com.nike.adapt.R;
import h8.c;
import p4.h;

/* JADX INFO: compiled from: PreferenceWithBadge.kt */
/* JADX INFO: loaded from: classes.dex */
public final class PreferenceWithBadge extends Preference {
    public final c T;
    public View U;

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public PreferenceWithBadge(Context context) {
        this(context, null, 0, 6, null);
        h.j(context, "context");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public PreferenceWithBadge(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0, 4, null);
        h.j(context, "context");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PreferenceWithBadge(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        h.j(context, "context");
        this.T = c.f8298b;
        this.K = R.layout.preference_with_badge;
    }

    public final void L() {
        String strR = o.r(R.string.adapt_settings_app_icon_pref_key);
        View view = this.U;
        if (view == null || !h.c(this.f2282r, strR)) {
            return;
        }
        view.setVisibility(this.T.m0().getBoolean("PREF_SHOULD_SHOW_JORDAN_APP_ICON_BADGE", true) ? 0 : 4);
    }

    @Override // androidx.preference.Preference
    public final void x(g gVar) {
        super.x(gVar);
        this.U = gVar.A(R.id.ic_soft_updates);
        L();
    }

    public /* synthetic */ PreferenceWithBadge(Context context, AttributeSet attributeSet, int i10, int i11, rd.h hVar) {
        this(context, (i11 & 2) != 0 ? null : attributeSet, (i11 & 4) != 0 ? 0 : i10);
    }
}
