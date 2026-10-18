package z8;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.lifecycle.o;
import com.nike.adapt.R;
import com.nike.adapt.adk.model.ShoeColor;
import o7.x;
import q7.z1;

/* JADX INFO: compiled from: LightPackView.kt */
/* JADX INFO: loaded from: classes.dex */
public final class d extends ConstraintLayout {
    public Float A;
    public a B;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public final z1 f19401z;

    public d(Context context) {
        super(context, null, 0);
        View viewInflate = LayoutInflater.from(context).inflate(R.layout.view_light_pack, (ViewGroup) this, false);
        addView(viewInflate);
        int i10 = R.id.light_pack_image;
        ImageView imageView = (ImageView) g7.b.d(viewInflate, R.id.light_pack_image);
        if (imageView != null) {
            i10 = R.id.light_pack_title;
            TextView textView = (TextView) g7.b.d(viewInflate, R.id.light_pack_title);
            if (textView != null) {
                this.f19401z = new z1(imageView, textView);
                return;
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(viewInflate.getResources().getResourceName(i10)));
    }

    public final a getLightPack() {
        return this.B;
    }

    public final int getTitleHeight() {
        return this.f19401z.f14076b.getHeight();
    }

    public final void setLightPack(a aVar) {
        Integer numValueOf;
        int i10;
        this.B = aVar;
        if (aVar != null) {
            this.f19401z.f14076b.setText(o.r(aVar.f19393j));
            if (aVar == a.MY_LIGHTS) {
                a.C0335a c0335a = a.f19384l;
                ShoeColor.Companion companion = ShoeColor.Companion;
                int i11 = h8.a.f8296a;
                ShoeColor shoeColorValueOf = companion.valueOf(h8.c.f8298b.c());
                p4.h.j(shoeColorValueOf, "shoeColor");
                switch (a.C0335a.C0336a.f19395a[shoeColorValueOf.ordinal()]) {
                    case 1:
                        i10 = R.drawable.single_auroragreen;
                        break;
                    case 2:
                        i10 = R.drawable.single_heroblue;
                        break;
                    case 3:
                        i10 = R.drawable.single_racerblue;
                        break;
                    case 4:
                        i10 = R.drawable.single_vividpurple;
                        break;
                    case 5:
                        i10 = R.drawable.single_pinkblast;
                        break;
                    case 6:
                        i10 = R.drawable.single_redorbit;
                        break;
                    case 7:
                        i10 = R.drawable.single_brightcrimson;
                        break;
                    case 8:
                        i10 = R.drawable.single_totalorange;
                        break;
                    case 9:
                        i10 = R.drawable.single_optiyellow;
                        break;
                    case 10:
                        i10 = R.drawable.single_electricgreen;
                        break;
                    case 11:
                        i10 = R.drawable.single_greenspark;
                        break;
                    case 12:
                        i10 = R.drawable.single_white;
                        break;
                    case 13:
                        i10 = R.drawable.dual_racerblue_optiyellow;
                        break;
                    case 14:
                        i10 = R.drawable.dual_racerblue_electricgreen;
                        break;
                    case 15:
                        i10 = R.drawable.dual_racerblue_auroragreen;
                        break;
                    case 16:
                        i10 = R.drawable.dual_vividpurple_optiyellow;
                        break;
                    case 17:
                        i10 = R.drawable.dual_vividpurple_white;
                        break;
                    case 18:
                        i10 = R.drawable.dual_vividpurple_auroragreen;
                        break;
                    case 19:
                        i10 = R.drawable.dual_redorbit_racerblue;
                        break;
                    case 20:
                        i10 = R.drawable.dual_redorbit_optiyellow;
                        break;
                    case 21:
                        i10 = R.drawable.dual_redorbit_white;
                        break;
                    case 22:
                        i10 = R.drawable.dual_greenspark_optiyellow;
                        break;
                    case 23:
                        i10 = R.drawable.dual_greenspark_white;
                        break;
                    case 24:
                        i10 = R.drawable.dual_heroblue_pinkblast;
                        break;
                    default:
                        throw new j2.a();
                }
                numValueOf = Integer.valueOf(i10);
            } else {
                numValueOf = aVar.f19392i;
            }
            try {
                com.bumptech.glide.c.e(getContext()).p(numValueOf).k().r(getResources().getDimensionPixelSize(R.dimen.light_pack_image_width), getResources().getDimensionPixelSize(R.dimen.light_pack_image_height)).I(this.f19401z.f14075a);
            } catch (Throwable unused) {
                x.f12420a.a("Glide exception");
            }
        }
    }

    public final void setTitleAlpha(float f10) {
        this.f19401z.f14076b.setAlpha(f10);
    }

    public final void setTitleXAdjust(float f10) {
        if (this.A == null) {
            this.A = Float.valueOf(this.f19401z.f14076b.getX());
        }
        Float f11 = this.A;
        if (f11 != null) {
            this.f19401z.f14076b.setX(f11.floatValue() + f10);
        }
    }
}
