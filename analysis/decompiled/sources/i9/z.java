package i9;

import android.content.Context;
import android.graphics.PointF;
import android.util.DisplayMetrics;
import android.view.View;

/* JADX INFO: compiled from: ChooseYourShoesFragment.kt */
/* JADX INFO: loaded from: classes.dex */
public final class z extends androidx.recyclerview.widget.x {

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public int f8973q;

    public z(Context context) {
        super(context);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.x
    public final PointF a(int i10) {
        return new PointF(0.0f, 1.0f);
    }

    @Override // androidx.recyclerview.widget.x
    public final int i(View view, int i10) {
        return super.i(view, i10) + this.f8973q;
    }

    @Override // androidx.recyclerview.widget.x
    public final float j(DisplayMetrics displayMetrics) {
        p4.h.j(displayMetrics, "displayMetrics");
        return 0.3f;
    }
}
