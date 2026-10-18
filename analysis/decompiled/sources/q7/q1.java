package q7;

import android.R;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TextView;

/* JADX INFO: compiled from: PreferenceLayoutBinding.java */
/* JADX INFO: loaded from: classes.dex */
public final class q1 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final FrameLayout f13980a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final TextView f13981b;

    public q1(FrameLayout frameLayout, TextView textView) {
        this.f13980a = frameLayout;
        this.f13981b = textView;
    }

    public static q1 a(View view) {
        int i10 = R.id.title;
        TextView textView = (TextView) g7.b.d(view, R.id.title);
        if (textView != null) {
            i10 = R.id.widget_frame;
            if (((LinearLayout) g7.b.d(view, R.id.widget_frame)) != null) {
                return new q1((FrameLayout) view, textView);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
