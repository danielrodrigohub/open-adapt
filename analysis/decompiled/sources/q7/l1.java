package q7;

import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.Space;
import com.nike.adapt.R;

/* JADX INFO: compiled from: ItemShoeControllerContainerBinding.java */
/* JADX INFO: loaded from: classes.dex */
public final class l1 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ImageView f13918a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final LinearLayout f13919b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final LinearLayout f13920c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final Space f13921d;

    public l1(ImageView imageView, LinearLayout linearLayout, LinearLayout linearLayout2, Space space) {
        this.f13918a = imageView;
        this.f13919b = linearLayout;
        this.f13920c = linearLayout2;
        this.f13921d = space;
    }

    public static l1 a(View view) {
        int i10 = R.id.shoe_controller;
        ImageView imageView = (ImageView) g7.b.d(view, R.id.shoe_controller);
        if (imageView != null) {
            LinearLayout linearLayout = (LinearLayout) view;
            int i11 = R.id.shoe_controller_indicators;
            LinearLayout linearLayout2 = (LinearLayout) g7.b.d(view, R.id.shoe_controller_indicators);
            if (linearLayout2 != null) {
                i11 = R.id.shoe_controller_space;
                Space space = (Space) g7.b.d(view, R.id.shoe_controller_space);
                if (space != null) {
                    return new l1(imageView, linearLayout, linearLayout2, space);
                }
            }
            i10 = i11;
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
