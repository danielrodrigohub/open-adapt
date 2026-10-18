package q7;

import android.view.View;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import com.nike.adapt.R;

/* JADX INFO: compiled from: ContentMessagingHeadlineWithCtaBinding.java */
/* JADX INFO: loaded from: classes.dex */
public final class l0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final LinearLayout f13915a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final FrameLayout f13916b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final LinearLayout f13917c;

    public l0(LinearLayout linearLayout, FrameLayout frameLayout, LinearLayout linearLayout2) {
        this.f13915a = linearLayout;
        this.f13916b = frameLayout;
        this.f13917c = linearLayout2;
    }

    public static l0 a(View view) {
        FrameLayout frameLayout = (FrameLayout) g7.b.d(view, R.id.item_messaging_center_container);
        if (frameLayout == null) {
            throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(R.id.item_messaging_center_container)));
        }
        LinearLayout linearLayout = (LinearLayout) view;
        return new l0(linearLayout, frameLayout, linearLayout);
    }
}
