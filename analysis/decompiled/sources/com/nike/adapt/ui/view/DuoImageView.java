package com.nike.adapt.ui.view;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import com.nike.adapt.R;
import p4.h;

/* JADX INFO: compiled from: DuoImageView.kt */
/* JADX INFO: loaded from: classes.dex */
public final class DuoImageView extends LinearLayout {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final ImageView f5917h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final ImageView f5918i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public boolean f5919j;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DuoImageView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        h.j(context, "context");
        h.j(attributeSet, "attrs");
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.DuoImageView, 0, 0);
        h.i(typedArrayObtainStyledAttributes, "context.obtainStyledAttr…eable.DuoImageView, 0, 0)");
        typedArrayObtainStyledAttributes.recycle();
        View.inflate(context, R.layout.view_duo_image_lighting, this);
        View viewFindViewById = findViewById(R.id.duo_image_left_color);
        h.i(viewFindViewById, "findViewById(R.id.duo_image_left_color)");
        this.f5917h = (ImageView) viewFindViewById;
        View viewFindViewById2 = findViewById(R.id.duo_image_right_color);
        h.i(viewFindViewById2, "findViewById(R.id.duo_image_right_color)");
        this.f5918i = (ImageView) viewFindViewById2;
    }

    public final void a(int i10, int i11) {
        this.f5917h.setImageResource(i10);
        this.f5918i.setImageResource(i11);
    }

    public final Drawable getLeftDrawable() {
        Drawable drawable = this.f5917h.getDrawable();
        h.i(drawable, "leftImage.drawable");
        return drawable;
    }

    public final Drawable getRightDrawable() {
        Drawable drawable = this.f5918i.getDrawable();
        h.i(drawable, "rightImage.drawable");
        return drawable;
    }

    public final void setSupported(boolean z10) {
        setAlpha(z10 ? 1.0f : 0.45f);
        this.f5919j = z10;
    }
}
