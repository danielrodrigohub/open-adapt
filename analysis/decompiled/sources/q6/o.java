package q6;

import android.graphics.drawable.Drawable;
import com.google.android.material.textfield.TextInputLayout;

/* JADX INFO: compiled from: NoEndIconDelegate.java */
/* JADX INFO: loaded from: classes.dex */
public final class o extends i {
    public o(TextInputLayout textInputLayout) {
        super(textInputLayout, 0);
    }

    @Override // q6.i
    public final void a() {
        this.f13654a.setEndIconOnClickListener(null);
        this.f13654a.setEndIconDrawable((Drawable) null);
        this.f13654a.setEndIconContentDescription((CharSequence) null);
    }
}
