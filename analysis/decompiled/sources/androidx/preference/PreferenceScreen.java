package androidx.preference;

import android.content.Context;
import android.util.AttributeSet;
import androidx.fragment.app.m;
import z.i;

/* JADX INFO: loaded from: classes.dex */
public final class PreferenceScreen extends PreferenceGroup {

    /* JADX INFO: renamed from: b0, reason: collision with root package name */
    public boolean f2296b0;

    public PreferenceScreen(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, i.a(context, R.attr.preferenceScreenStyle, android.R.attr.preferenceScreenStyle));
        this.f2296b0 = true;
    }

    @Override // androidx.preference.Preference
    public final void y() {
        f.b bVar;
        if (this.f2283s != null || this.f2284t != null || N() == 0 || (bVar = this.f2273i.f2354k) == null) {
            return;
        }
        c cVar = (c) bVar;
        boolean z10 = false;
        for (m mVar = cVar; !z10 && mVar != null; mVar = mVar.C) {
            if (mVar instanceof c.f) {
                ((c.f) mVar).q(cVar, this);
                z10 = true;
            }
        }
        if (!z10 && (cVar.l() instanceof c.f)) {
            ((c.f) cVar.l()).q(cVar, this);
            z10 = true;
        }
        if (z10 || !(cVar.i() instanceof c.f)) {
            return;
        }
        ((c.f) cVar.i()).q(cVar, this);
    }
}
