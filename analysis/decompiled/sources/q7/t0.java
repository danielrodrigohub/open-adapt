package q7;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ProgressBar;
import android.widget.TextView;
import com.nike.adapt.R;

/* JADX INFO: compiled from: FragmentFirmwareRestartingYourShoesBinding.java */
/* JADX INFO: loaded from: classes.dex */
public final class t0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final FrameLayout f14008a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final TextView f14009b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final TextView f14010c;

    public t0(FrameLayout frameLayout, TextView textView, TextView textView2) {
        this.f14008a = frameLayout;
        this.f14009b = textView;
        this.f14010c = textView2;
    }

    public static t0 a(LayoutInflater layoutInflater, ViewGroup viewGroup) {
        View viewInflate = layoutInflater.inflate(R.layout.fragment_firmware_restarting_your_shoes, viewGroup, false);
        int i10 = R.id.connection_retry_desc;
        TextView textView = (TextView) g7.b.d(viewInflate, R.id.connection_retry_desc);
        if (textView != null) {
            FrameLayout frameLayout = (FrameLayout) viewInflate;
            int i11 = R.id.shoe_restart_progress;
            if (((ProgressBar) g7.b.d(viewInflate, R.id.shoe_restart_progress)) != null) {
                i11 = R.id.shoe_restarting_title;
                TextView textView2 = (TextView) g7.b.d(viewInflate, R.id.shoe_restarting_title);
                if (textView2 != null) {
                    return new t0(frameLayout, textView, textView2);
                }
            }
            i10 = i11;
        }
        throw new NullPointerException("Missing required view with ID: ".concat(viewInflate.getResources().getResourceName(i10)));
    }
}
