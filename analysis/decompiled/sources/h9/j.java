package h9;

import android.content.Intent;
import com.nike.adapt.R;
import com.nike.adapt.ui.settings.ColorWayActivity;

/* JADX INFO: compiled from: ActivityDoNavigate.kt */
/* JADX INFO: loaded from: classes.dex */
public final class j extends a<ColorWayActivity> {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f8336c;

    public j(String str) {
        super(ColorWayActivity.class, true, null);
        this.f8336c = str;
    }

    @Override // f8.b
    public final void a(Intent intent) {
        intent.putExtra("selected_color_way", this.f8336c);
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
        return (obj instanceof j) && p4.h.c(this.f8336c, ((j) obj).f8336c);
    }

    @Override // h9.a
    public final boolean h() {
        return true;
    }

    public final int hashCode() {
        String str = this.f8336c;
        if (str == null) {
            return 0;
        }
        return str.hashCode();
    }

    public final String toString() {
        return a0.d.c("ColorWayNavigate(index=", this.f8336c, ")");
    }
}
