package i3;

import android.graphics.drawable.Drawable;
import android.widget.ImageView;

/* JADX INFO: compiled from: DrawableImageViewTarget.java */
/* JADX INFO: loaded from: classes.dex */
public final class e extends f<Drawable> {
    public e(ImageView imageView) {
        super(imageView);
    }

    @Override // i3.f
    public final void m(Drawable drawable) {
        ((ImageView) this.f8743h).setImageDrawable(drawable);
    }
}
