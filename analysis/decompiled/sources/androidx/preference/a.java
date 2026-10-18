package androidx.preference;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: compiled from: ExpandButton.java */
/* JADX INFO: loaded from: classes.dex */
public final class a extends Preference {
    public long T;

    public a(Context context, List<Preference> list, long j10) {
        super(context);
        this.K = R.layout.expand_button;
        int i10 = R.drawable.ic_arrow_down_24dp;
        Drawable drawableB = g.a.b(this.f2272h, i10);
        if (this.f2281q != drawableB) {
            this.f2281q = drawableB;
            this.f2280p = 0;
            q();
        }
        this.f2280p = i10;
        String string = this.f2272h.getString(R.string.expand_button_title);
        if (!TextUtils.equals(string, this.f2278n)) {
            this.f2278n = string;
            q();
        }
        if (999 != this.f2277m) {
            this.f2277m = 999;
            t();
        }
        ArrayList arrayList = new ArrayList();
        CharSequence string2 = null;
        for (Preference preference : list) {
            CharSequence charSequence = preference.f2278n;
            boolean z10 = preference instanceof PreferenceGroup;
            if (z10 && !TextUtils.isEmpty(charSequence)) {
                arrayList.add((PreferenceGroup) preference);
            }
            if (arrayList.contains(preference.O)) {
                if (z10) {
                    arrayList.add((PreferenceGroup) preference);
                }
            } else if (!TextUtils.isEmpty(charSequence)) {
                string2 = string2 == null ? charSequence : this.f2272h.getString(R.string.summary_collapsed_preference_list, string2, charSequence);
            }
        }
        if (this.R != null) {
            throw new IllegalStateException("Preference already has a SummaryProvider set.");
        }
        if (!TextUtils.equals(this.f2279o, string2)) {
            this.f2279o = string2;
            q();
        }
        this.T = j10 + 1000000;
    }

    @Override // androidx.preference.Preference
    public final long i() {
        return this.T;
    }

    @Override // androidx.preference.Preference
    public final void x(g gVar) {
        super.x(gVar);
        gVar.f2358x = false;
    }
}
