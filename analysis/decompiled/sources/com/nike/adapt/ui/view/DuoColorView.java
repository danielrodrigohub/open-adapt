package com.nike.adapt.ui.view;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import androidx.lifecycle.o;
import com.nike.adapt.R;
import com.nike.adapt.adk.model.LightColor;
import com.nike.adapt.adk.model.ShoeColor;
import p4.h;
import x8.i1;

/* JADX INFO: compiled from: DuoColorView.kt */
/* JADX INFO: loaded from: classes.dex */
public final class DuoColorView extends LinearLayout {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Code duplicated, block: B:16:0x0042  */
    public DuoColorView(Context context, AttributeSet attributeSet) {
        int i10;
        super(context, attributeSet, 0);
        h.j(context, "context");
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.DuoColorView, 0, 0);
        h.i(typedArrayObtainStyledAttributes, "context.obtainStyledAttr…eable.DuoColorView, 0, 0)");
        String string = typedArrayObtainStyledAttributes.getString(0);
        if (string == null) {
            i10 = R.layout.view_duo_color_modes;
        } else {
            int iHashCode = string.hashCode();
            if (iHashCode != 86093927) {
                if (iHashCode == 770836289 && string.equals("DUO_COLOR_TYPE_HOME_WITH_EFFECTS")) {
                    i10 = R.layout.view_duo_color_home_with_effects;
                } else {
                    i10 = R.layout.view_duo_color_modes;
                }
            } else if (string.equals("DUO_COLOR_TYPE_HOME")) {
                i10 = R.layout.view_duo_color_home;
            } else {
                i10 = R.layout.view_duo_color_modes;
            }
        }
        typedArrayObtainStyledAttributes.recycle();
        View.inflate(context, i10, this);
    }

    public static /* synthetic */ void c(DuoColorView duoColorView, ShoeColor shoeColor, boolean z10, int i10) {
        boolean z11 = (i10 & 2) == 0;
        if ((i10 & 4) != 0) {
            z10 = true;
        }
        duoColorView.b(shoeColor, z11, z10, false);
    }

    public final void a(boolean z10, LightColor lightColor, boolean z11, boolean z12, boolean z13) {
        int dynamicHex;
        if (z12 && lightColor == LightColor.WHITE) {
            dynamicHex = R.color.shoe_color_white_alternative;
        } else if (z13) {
            dynamicHex = R.color.black;
        } else {
            dynamicHex = z11 ? lightColor.getDynamicHex() : lightColor.getPaletteHex();
        }
        View viewFindViewById = findViewById(z10 ? R.id.duo_color_left : R.id.duo_color_right);
        h.i(viewFindViewById, "findViewById<ImageView>(duoColorViewId)");
        i1.c((ImageView) viewFindViewById, o.o(dynamicHex));
    }

    public final void b(ShoeColor shoeColor, boolean z10, boolean z11, boolean z12) {
        h.j(shoeColor, "shoeColor");
        a(true, shoeColor.getLeftLightColor(), z10, z11, z12);
        a(false, shoeColor.getRightLightColor(), z10, z11, z12);
    }
}
