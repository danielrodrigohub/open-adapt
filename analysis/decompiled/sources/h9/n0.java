package h9;

import android.content.Intent;
import android.os.Parcelable;
import com.nike.adapt.R;
import com.nike.adapt.ui.settings.SettingsVersionInfoActivity;

/* JADX INFO: compiled from: ActivityDoNavigate.kt */
/* JADX INFO: loaded from: classes.dex */
public final class n0 extends a<SettingsVersionInfoActivity> {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final v7.n f8345c;

    public n0(v7.n nVar) {
        super(SettingsVersionInfoActivity.class);
        this.f8345c = nVar;
    }

    @Override // f8.b
    public final void a(Intent intent) {
        v7.n nVar = this.f8345c;
        p4.h.h(nVar, "null cannot be cast to non-null type android.os.Parcelable");
        intent.putExtra("version_info_type", (Parcelable) nVar);
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
        return (obj instanceof n0) && this.f8345c == ((n0) obj).f8345c;
    }

    public final int hashCode() {
        return this.f8345c.hashCode();
    }

    public final String toString() {
        return "SettingsVersionInfoDoNavigate(state=" + this.f8345c + ")";
    }
}
