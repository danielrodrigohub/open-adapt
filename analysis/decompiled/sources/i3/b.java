package i3;

import android.graphics.Bitmap;
import android.widget.ImageView;

/* JADX INFO: compiled from: BitmapImageViewTarget.java */
/* JADX INFO: loaded from: classes.dex */
public final class b extends f<Bitmap> {
    public b(ImageView imageView) {
        super(imageView);
    }

    @Override // i3.f
    public final void m(Bitmap bitmap) {
        ((ImageView) this.f8743h).setImageBitmap(bitmap);
    }
}
