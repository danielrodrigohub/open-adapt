package q7;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.cardview.widget.CardView;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.nike.adapt.R;

/* JADX INFO: compiled from: ShoeSelectionRowBinding.java */
/* JADX INFO: loaded from: classes.dex */
public final class t1 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ConstraintLayout f14011a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final CardView f14012b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ImageView f14013c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final TextView f14014d;

    public t1(ConstraintLayout constraintLayout, CardView cardView, ImageView imageView, TextView textView) {
        this.f14011a = constraintLayout;
        this.f14012b = cardView;
        this.f14013c = imageView;
        this.f14014d = textView;
    }

    public static t1 a(LayoutInflater layoutInflater, ViewGroup viewGroup) {
        View viewInflate = layoutInflater.inflate(R.layout.shoe_selection_row, viewGroup, false);
        int i10 = R.id.shoe_row_card_view;
        CardView cardView = (CardView) g7.b.d(viewInflate, R.id.shoe_row_card_view);
        if (cardView != null) {
            ConstraintLayout constraintLayout = (ConstraintLayout) viewInflate;
            int i11 = R.id.shoe_row_image;
            ImageView imageView = (ImageView) g7.b.d(viewInflate, R.id.shoe_row_image);
            if (imageView != null) {
                i11 = R.id.shoe_row_name;
                TextView textView = (TextView) g7.b.d(viewInflate, R.id.shoe_row_name);
                if (textView != null) {
                    return new t1(constraintLayout, cardView, imageView, textView);
                }
            }
            i10 = i11;
        }
        throw new NullPointerException("Missing required view with ID: ".concat(viewInflate.getResources().getResourceName(i10)));
    }
}
