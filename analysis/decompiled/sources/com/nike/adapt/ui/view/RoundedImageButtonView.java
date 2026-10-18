package com.nike.adapt.ui.view;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import com.nike.adapt.R;
import g7.b;
import p4.h;
import q7.d2;
import y.a;

/* JADX INFO: compiled from: RoundedImageButtonView.kt */
/* JADX INFO: loaded from: classes.dex */
public final class RoundedImageButtonView extends FrameLayout {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final d2 f5920h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public RoundedImageButtonView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, 0);
        h.j(context, "context");
        View viewInflate = LayoutInflater.from(context).inflate(R.layout.view_rounded_image_button, (ViewGroup) this, false);
        addView(viewInflate);
        int i10 = R.id.image_container;
        FrameLayout frameLayout = (FrameLayout) b.d(viewInflate, R.id.image_container);
        if (frameLayout != null) {
            i10 = R.id.image_view;
            ImageView imageView = (ImageView) b.d(viewInflate, R.id.image_view);
            if (imageView != null) {
                i10 = R.id.text_view;
                TextView textView = (TextView) b.d(viewInflate, R.id.text_view);
                if (textView != null) {
                    this.f5920h = new d2((FrameLayout) viewInflate, frameLayout, imageView, textView);
                    TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.RoundedImageButtonView, 0, 0);
                    h.i(typedArrayObtainStyledAttributes, "context.obtainStyledAttr…dedImageButtonView, 0, 0)");
                    try {
                        int resourceId = typedArrayObtainStyledAttributes.getResourceId(0, 0);
                        if (resourceId > 0) {
                            Object obj = a.f18143a;
                            imageView.setImageDrawable(a.b.b(context, resourceId));
                        } else {
                            frameLayout.setVisibility(8);
                        }
                        textView.setText(typedArrayObtainStyledAttributes.getString(3));
                        textView.setPadding(typedArrayObtainStyledAttributes.getInteger(1, 0), 0, typedArrayObtainStyledAttributes.getInteger(2, 0), 0);
                        return;
                    } finally {
                        typedArrayObtainStyledAttributes.recycle();
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(viewInflate.getResources().getResourceName(i10)));
    }

    public final void setCustomView(View view) {
        h.j(view, "view");
        this.f5920h.f13756b.addView(view);
        this.f5920h.f13756b.setVisibility(0);
    }

    public final void setImageResource(int i10) {
        this.f5920h.f13757c.setImageResource(i10);
        this.f5920h.f13757c.setVisibility(0);
        this.f5920h.f13756b.setVisibility(0);
    }
}
