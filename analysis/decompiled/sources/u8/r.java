package u8;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import com.nike.adapt.R;
import q7.c2;

/* JADX INFO: compiled from: NoInternetView.kt */
/* JADX INFO: loaded from: classes.dex */
public final class r extends LinearLayout {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final c2 f16077h;

    public r(Context context) {
        super(context, null, 0);
        View viewInflate = LayoutInflater.from(context).inflate(R.layout.view_no_internet, (ViewGroup) this, false);
        addView(viewInflate);
        int i10 = R.id.view_no_internet_progress_bar;
        if (((ProgressBar) g7.b.d(viewInflate, R.id.view_no_internet_progress_bar)) != null) {
            i10 = R.id.view_no_internet_try_again;
            Button button = (Button) g7.b.d(viewInflate, R.id.view_no_internet_try_again);
            if (button != null) {
                this.f16077h = new c2(button);
                return;
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(viewInflate.getResources().getResourceName(i10)));
    }

    @Override // android.view.View
    public void setOnClickListener(View.OnClickListener onClickListener) {
        this.f16077h.f13743a.setOnClickListener(onClickListener);
    }
}
