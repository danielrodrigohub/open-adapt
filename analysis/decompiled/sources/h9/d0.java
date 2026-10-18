package h9;

import android.content.Intent;
import com.nike.adapt.R;
import com.nike.adapt.ui.myshoes.SelectShoesActivity;

/* JADX INFO: compiled from: ActivityDoNavigate.kt */
/* JADX INFO: loaded from: classes.dex */
public final class d0 extends a<SelectShoesActivity> {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ea.m f8320c;

    public d0(ea.m mVar) {
        super(SelectShoesActivity.class, true, null);
        this.f8320c = mVar;
    }

    @Override // f8.b
    public final void a(Intent intent) {
        intent.putExtra("PARAM_SELECTED_PAIR", this.f8320c);
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
        return (obj instanceof d0) && p4.h.c(this.f8320c, ((d0) obj).f8320c);
    }

    public final int hashCode() {
        return this.f8320c.hashCode();
    }

    public final String toString() {
        return "SelectShoeDoNavigate(selectedPair=" + this.f8320c + ")";
    }
}
