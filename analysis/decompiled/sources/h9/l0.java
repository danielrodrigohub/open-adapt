package h9;

import android.content.Intent;
import com.nike.adapt.R;
import com.nike.adapt.ui.settings.SettingsRegulatoryFccDetailsActivity;

/* JADX INFO: compiled from: ActivityDoNavigate.kt */
/* JADX INFO: loaded from: classes.dex */
public final class l0 extends a<SettingsRegulatoryFccDetailsActivity> {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final n9.b f8340c;

    public l0(n9.b bVar) {
        super(SettingsRegulatoryFccDetailsActivity.class);
        this.f8340c = bVar;
    }

    @Override // f8.b
    public final void a(Intent intent) {
        intent.putExtra("REGULATORY_COUNTRY", this.f8340c);
    }

    @Override // f8.b
    public final int b() {
        return R.anim.enter_top_right_to_left;
    }

    @Override // f8.b
    public final int c() {
        return R.anim.exit_bottom_parallax_right_to_left;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof l0) && p4.h.c(this.f8340c, ((l0) obj).f8340c);
    }

    public final int hashCode() {
        return this.f8340c.hashCode();
    }

    public final String toString() {
        return "SettingsRegulatoryFccDetailsDoNavigate(regulatoryCountry=" + this.f8340c + ")";
    }
}
