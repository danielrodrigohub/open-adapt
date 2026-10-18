package q7;

import android.view.View;
import android.widget.Button;
import com.nike.adapt.R;
import com.nike.adapt.ui.view.SecondaryButton;

/* JADX INFO: compiled from: ItemMessagingCtaBinding.java */
/* JADX INFO: loaded from: classes.dex */
public final class g1 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Button f13825a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final SecondaryButton f13826b;

    public g1(Button button, SecondaryButton secondaryButton) {
        this.f13825a = button;
        this.f13826b = secondaryButton;
    }

    public static g1 a(View view) {
        int i10 = R.id.messaging_cta_primary;
        Button button = (Button) g7.b.d(view, R.id.messaging_cta_primary);
        if (button != null) {
            i10 = R.id.messaging_cta_secondary;
            SecondaryButton secondaryButton = (SecondaryButton) g7.b.d(view, R.id.messaging_cta_secondary);
            if (secondaryButton != null) {
                return new g1(button, secondaryButton);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
