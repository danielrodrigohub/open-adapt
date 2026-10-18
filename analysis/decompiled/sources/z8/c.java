package z8;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.nike.adapt.R;
import com.nike.adapt.adk.model.ShoeColor;
import com.nike.adapt.ui.view.DuoColorView;
import q7.a2;

/* JADX INFO: compiled from: LightPackColorChipView.kt */
/* JADX INFO: loaded from: classes.dex */
public final class c extends ConstraintLayout {

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public final a2 f19400z;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public c(Context context) {
        super(context, null, 0);
        p4.h.j(context, "context");
        View viewInflate = LayoutInflater.from(context).inflate(R.layout.view_light_pack_color_chip, (ViewGroup) this, false);
        addView(viewInflate);
        int i10 = R.id.duo_color_view;
        DuoColorView duoColorView = (DuoColorView) g7.b.d(viewInflate, R.id.duo_color_view);
        if (duoColorView != null) {
            i10 = R.id.ring_view;
            if (((ImageView) g7.b.d(viewInflate, R.id.ring_view)) != null) {
                this.f19400z = new a2(duoColorView);
                return;
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(viewInflate.getResources().getResourceName(i10)));
    }

    public final void setColors(ShoeColor shoeColor) {
        p4.h.j(shoeColor, "shoeColor");
        DuoColorView duoColorView = this.f19400z.f13711a;
        p4.h.i(duoColorView, "binding.duoColorView");
        DuoColorView.c(duoColorView, shoeColor, true, 8);
    }
}
