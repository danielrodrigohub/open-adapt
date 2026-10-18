package h9;

import android.content.Intent;
import com.nike.adapt.R;
import com.nike.adapt.ui.FindYourFitActivity;

/* JADX INFO: compiled from: ActivityDoNavigate.kt */
/* JADX INFO: loaded from: classes.dex */
public final class m extends a<FindYourFitActivity> {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final boolean f8341c;

    public m() {
        this(false, 1, null);
    }

    public m(boolean z10) {
        super(FindYourFitActivity.class);
        this.f8341c = z10;
    }

    @Override // f8.b
    public final void a(Intent intent) {
        intent.putExtra("extra_is_deep_link", this.f8341c);
        if (this.f8341c) {
            intent.addFlags(33554432);
        }
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
        return (obj instanceof m) && this.f8341c == ((m) obj).f8341c;
    }

    public final int hashCode() {
        boolean z10 = this.f8341c;
        if (z10) {
            return 1;
        }
        return z10 ? 1 : 0;
    }

    public final String toString() {
        return "FindYourFitActivityDoNavigate(isDeepLink=" + this.f8341c + ")";
    }

    public m(boolean z10, int i10, rd.h hVar) {
        super(FindYourFitActivity.class);
        this.f8341c = false;
    }
}
