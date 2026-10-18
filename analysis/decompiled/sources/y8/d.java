package y8;

import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import com.nike.adapt.R;
import com.nike.adapt.adk.model.ShoeColor;
import com.nike.adapt.ui.view.DuoImageView;
import okhttp3.internal.http.HttpStatusCodesKt;

/* JADX INFO: compiled from: LightNavigationFragment.kt */
/* JADX INFO: loaded from: classes.dex */
public final class d extends p8.h implements View.OnClickListener {

    /* JADX INFO: renamed from: e0, reason: collision with root package name */
    public static final a f18689e0 = new a();

    /* JADX INFO: renamed from: b0, reason: collision with root package name */
    public final String f18690b0 = "LightNavigationFragment";

    /* JADX INFO: renamed from: c0, reason: collision with root package name */
    public b f18691c0;
    public boolean d0;

    /* JADX INFO: compiled from: LightNavigationFragment.kt */
    public static final class a {
    }

    /* JADX INFO: compiled from: LightNavigationFragment.kt */
    public interface b {
        void onLightIconClicked(View view);
    }

    @Override // androidx.fragment.app.m
    public final View I(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        p4.h.j(layoutInflater, "inflater");
        Bundle bundle2 = this.f1971n;
        boolean z10 = (bundle2 != null ? bundle2.getInt("param_position") : 0) == 1;
        this.d0 = z10;
        return z10 ? layoutInflater.inflate(R.layout.fragment_duo_light_icons, viewGroup, false) : layoutInflater.inflate(R.layout.fragment_single_light_icons, viewGroup, false);
    }

    @Override // androidx.fragment.app.m
    public final void U(View view, Bundle bundle) {
        p4.h.j(view, "view");
        q0(s9.g.f15195a.d());
        for (ShoeColor shoeColor : ShoeColor.values()) {
            if (shoeColor.isDuo() == this.d0) {
                View viewFindViewById = d0().findViewById(k.f18716a.a(shoeColor));
                viewFindViewById.setContentDescription(shoeColor.getTitle());
                viewFindViewById.setOnClickListener(new r9.a(this, HttpStatusCodesKt.HTTP_INTERNAL_SERVER_ERROR));
                if (shoeColor.isDuo()) {
                    ((DuoImageView) viewFindViewById).a(shoeColor.getLeftLightColor().getLedLightIcon(), shoeColor.getRightLightColor().getLedLightIcon());
                } else {
                    ((ImageView) viewFindViewById).setImageResource(shoeColor.getLightColor().getLedLightIcon());
                }
            }
        }
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        p4.h.j(view, "view");
        if (!(view instanceof DuoImageView) || ((DuoImageView) view).f5919j) {
            r0(view);
        }
        b bVar = this.f18691c0;
        if (bVar != null) {
            bVar.onLightIconClicked(view);
        } else {
            p4.h.C("callback");
            throw null;
        }
    }

    @Override // p8.h
    public final String p0() {
        return this.f18690b0;
    }

    public final void q0(boolean z10) {
        View viewFindViewById;
        for (ShoeColor shoeColor : ShoeColor.values()) {
            if (shoeColor.isDuo() && (viewFindViewById = d0().findViewById(k.f18716a.a(shoeColor))) != null && (viewFindViewById instanceof DuoImageView)) {
                ((DuoImageView) viewFindViewById).setSupported(z10);
            }
        }
    }

    public final void r0(View view) {
        p4.h.j(view, "view");
        for (ShoeColor shoeColor : ShoeColor.values()) {
            View viewFindViewById = d0().findViewById(k.f18716a.a(shoeColor));
            if (shoeColor.isDuo()) {
                p4.h.h(viewFindViewById, "null cannot be cast to non-null type com.nike.adapt.ui.view.DuoImageView");
                ((DuoImageView) viewFindViewById).a(shoeColor.getLeftLightColor().getLedLightIcon(), shoeColor.getRightLightColor().getLedLightIcon());
            } else {
                p4.h.h(viewFindViewById, "null cannot be cast to non-null type android.widget.ImageView");
                ((ImageView) viewFindViewById).setImageResource(shoeColor.getLightColor().getLedLightIcon());
            }
        }
        ShoeColor shoeColorB = k.f18716a.b(view.getId());
        if (view instanceof DuoImageView) {
            DuoImageView duoImageView = (DuoImageView) view;
            duoImageView.a(shoeColorB.getLeftLightColor().getLedLightIconAnimated(), shoeColorB.getRightLightColor().getLedLightIconAnimated());
            f1.b.b(duoImageView.getLeftDrawable(), view, false);
            f1.b.b(duoImageView.getRightDrawable(), view, false);
            view.performHapticFeedback(3);
            return;
        }
        if (view instanceof ImageView) {
            ImageView imageView = (ImageView) view;
            imageView.setImageResource(shoeColorB.getLightColor().getLedLightIconAnimated());
            Drawable drawable = imageView.getDrawable();
            p4.h.i(drawable, "view.drawable");
            f1.b.b(drawable, view, true);
        }
    }
}
