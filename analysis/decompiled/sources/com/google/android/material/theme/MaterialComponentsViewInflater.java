package com.google.android.material.theme;

import android.content.Context;
import android.util.AttributeSet;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.appcompat.widget.d;
import androidx.appcompat.widget.f;
import androidx.appcompat.widget.g;
import androidx.appcompat.widget.w;
import com.google.android.material.button.MaterialButton;
import com.google.android.material.textview.MaterialTextView;
import f.o;
import q6.n;
import w5.a;

/* JADX INFO: loaded from: classes.dex */
public class MaterialComponentsViewInflater extends o {
    @Override // f.o
    public final d a(Context context, AttributeSet attributeSet) {
        return new n(context, attributeSet);
    }

    @Override // f.o
    public final f b(Context context, AttributeSet attributeSet) {
        return new MaterialButton(context, attributeSet);
    }

    @Override // f.o
    public final g c(Context context, AttributeSet attributeSet) {
        return new a(context, attributeSet);
    }

    @Override // f.o
    public final w d(Context context, AttributeSet attributeSet) {
        return new i6.a(context, attributeSet);
    }

    @Override // f.o
    public final AppCompatTextView e(Context context, AttributeSet attributeSet) {
        return new MaterialTextView(context, attributeSet);
    }
}
