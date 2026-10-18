package h9;

import com.nike.adapt.R;
import com.nike.adapt.ui.gestures.GesturesActivity;

/* JADX INFO: compiled from: ActivityDoNavigate.kt */
/* JADX INFO: loaded from: classes.dex */
public final class o extends a<GesturesActivity> {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final o f8346c = new o();

    public o() {
        super(GesturesActivity.class);
    }

    @Override // f8.b
    public final int b() {
        return R.anim.enter_top_right_to_left;
    }

    @Override // f8.b
    public final int c() {
        return R.anim.exit_bottom_parallax_right_to_left;
    }
}
