package s2;

import android.graphics.Bitmap;

/* JADX INFO: compiled from: BitmapPoolAdapter.java */
/* JADX INFO: loaded from: classes.dex */
public class e implements d {
    @Override // s2.d
    public final void a(int i10) {
    }

    @Override // s2.d
    public final void b() {
    }

    @Override // s2.d
    public final Bitmap c(int i10, int i11, Bitmap.Config config) {
        return Bitmap.createBitmap(i10, i11, config);
    }

    @Override // s2.d
    public final Bitmap d(int i10, int i11, Bitmap.Config config) {
        return Bitmap.createBitmap(i10, i11, config);
    }

    @Override // s2.d
    public void e(Bitmap bitmap) {
        bitmap.recycle();
    }
}
