package g6;

import android.annotation.SuppressLint;
import android.content.Context;
import android.util.AttributeSet;
import android.widget.ImageButton;

/* JADX INFO: compiled from: VisibilityAwareImageButton.java */
/* JADX INFO: loaded from: classes.dex */
@SuppressLint({"AppCompatCustomView"})
public class t extends ImageButton {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f7781h;

    public t(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, 0);
        this.f7781h = getVisibility();
    }

    public final void b(int i10, boolean z10) {
        super.setVisibility(i10);
        if (z10) {
            this.f7781h = i10;
        }
    }

    public final int getUserSetVisibility() {
        return this.f7781h;
    }

    @Override // android.widget.ImageView, android.view.View
    public void setVisibility(int i10) {
        b(i10, true);
    }

    public t(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        this.f7781h = getVisibility();
    }
}
