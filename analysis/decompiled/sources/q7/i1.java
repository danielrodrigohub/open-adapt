package q7;

import android.view.View;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.nike.adapt.R;

/* JADX INFO: compiled from: ItemMessagingHeadlineBinding.java */
/* JADX INFO: loaded from: classes.dex */
public final class i1 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final TextView f13856a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final TextView f13857b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final TextView f13858c;

    public i1(TextView textView, TextView textView2, TextView textView3) {
        this.f13856a = textView;
        this.f13857b = textView2;
        this.f13858c = textView3;
    }

    public static i1 a(View view) {
        int i10 = R.id.messaging_headline_message_1;
        TextView textView = (TextView) g7.b.d(view, R.id.messaging_headline_message_1);
        if (textView != null) {
            i10 = R.id.messaging_headline_message_2;
            TextView textView2 = (TextView) g7.b.d(view, R.id.messaging_headline_message_2);
            if (textView2 != null) {
                i10 = R.id.messaging_headline_message_2_frame;
                if (((LinearLayout) g7.b.d(view, R.id.messaging_headline_message_2_frame)) != null) {
                    i10 = R.id.messaging_headline_title;
                    TextView textView3 = (TextView) g7.b.d(view, R.id.messaging_headline_title);
                    if (textView3 != null) {
                        return new i1(textView, textView2, textView3);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
