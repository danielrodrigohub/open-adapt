package h9;

import android.content.Intent;
import android.os.Parcelable;
import com.nike.adapt.R;
import com.nike.adapt.ui.settings.SettingsWebViewActivity;

/* JADX INFO: compiled from: ActivityDoNavigate.kt */
/* JADX INFO: loaded from: classes.dex */
public final class p0 extends a<SettingsWebViewActivity> {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final v7.m f8349c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public p0(v7.m mVar) {
        super(SettingsWebViewActivity.class);
        p4.h.j(mVar, "state");
        this.f8349c = mVar;
    }

    @Override // f8.b
    public final void a(Intent intent) {
        v7.m mVar = this.f8349c;
        p4.h.h(mVar, "null cannot be cast to non-null type android.os.Parcelable");
        intent.putExtra("web_view_state", (Parcelable) mVar);
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
        return (obj instanceof p0) && this.f8349c == ((p0) obj).f8349c;
    }

    public final int hashCode() {
        return this.f8349c.hashCode();
    }

    public final String toString() {
        return "SettingsWebViewDoNavigate(state=" + this.f8349c + ")";
    }
}
