package com.nike.adapt.ui.view;

import android.R;
import android.content.Context;
import android.util.AttributeSet;
import android.widget.TextView;
import androidx.appcompat.widget.f;
import p4.h;
import yd.o;

/* JADX INFO: compiled from: SecondaryButton.kt */
/* JADX INFO: loaded from: classes.dex */
public final class SecondaryButton extends f {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SecondaryButton(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, R.attr.borderlessButtonStyle);
        h.j(context, "context");
        setVisibility(8);
        setBackground(context.getDrawable(com.nike.adapt.R.drawable.text_selector_pill_button));
    }

    @Override // android.widget.TextView
    public final void setText(CharSequence charSequence, TextView.BufferType bufferType) {
        super.setText(charSequence, bufferType);
        setVisibility(charSequence == null || o.b0(charSequence) ? 8 : 0);
    }
}
