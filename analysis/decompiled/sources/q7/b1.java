package q7;

import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import com.nike.adapt.R;

/* JADX INFO: compiled from: ItemBatteryDetailsBinding.java */
/* JADX INFO: loaded from: classes.dex */
public final class b1 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ImageView f13723a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ImageView f13724b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final TextView f13725c;

    public b1(ImageView imageView, ImageView imageView2, TextView textView) {
        this.f13723a = imageView;
        this.f13724b = imageView2;
        this.f13725c = textView;
    }

    public static b1 a(View view) {
        int i10 = R.id.battery_details_bolt;
        ImageView imageView = (ImageView) g7.b.d(view, R.id.battery_details_bolt);
        if (imageView != null) {
            i10 = R.id.battery_details_icon;
            ImageView imageView2 = (ImageView) g7.b.d(view, R.id.battery_details_icon);
            if (imageView2 != null) {
                i10 = R.id.battery_details_percent;
                TextView textView = (TextView) g7.b.d(view, R.id.battery_details_percent);
                if (textView != null) {
                    return new b1(imageView, imageView2, textView);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
