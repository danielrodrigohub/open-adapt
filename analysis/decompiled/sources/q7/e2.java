package q7;

import android.view.View;
import androidx.appcompat.widget.Toolbar;
import com.nike.adapt.R;

/* JADX INFO: compiled from: ViewToolbarBinding.java */
/* JADX INFO: loaded from: classes.dex */
public final class e2 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Toolbar f13789a;

    public e2(Toolbar toolbar) {
        this.f13789a = toolbar;
    }

    public static e2 a(View view) {
        Toolbar toolbar = (Toolbar) g7.b.d(view, R.id.bgf_toolbar);
        if (toolbar == null) {
            throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(R.id.bgf_toolbar)));
        }
        return new e2(toolbar);
    }
}
