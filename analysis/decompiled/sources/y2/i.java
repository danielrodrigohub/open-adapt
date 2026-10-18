package y2;

import android.graphics.Bitmap;
import android.graphics.Matrix;
import android.graphics.Paint;
import java.security.MessageDigest;

/* JADX INFO: compiled from: CenterCrop.java */
/* JADX INFO: loaded from: classes.dex */
public final class i extends f {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final byte[] f18450b = "com.bumptech.glide.load.resource.bitmap.CenterCrop".getBytes(p2.f.f12642a);

    @Override // p2.f
    public final void a(MessageDigest messageDigest) {
        messageDigest.update(f18450b);
    }

    @Override // y2.f
    public final Bitmap c(s2.d dVar, Bitmap bitmap, int i10, int i11) {
        float width;
        float height;
        Paint paint = a0.f18425a;
        if (bitmap.getWidth() == i10 && bitmap.getHeight() == i11) {
            return bitmap;
        }
        Matrix matrix = new Matrix();
        float width2 = 0.0f;
        if (bitmap.getWidth() * i11 > bitmap.getHeight() * i10) {
            width = i11 / bitmap.getHeight();
            width2 = (i10 - (bitmap.getWidth() * width)) * 0.5f;
            height = 0.0f;
        } else {
            width = i10 / bitmap.getWidth();
            height = (i11 - (bitmap.getHeight() * width)) * 0.5f;
        }
        matrix.setScale(width, width);
        matrix.postTranslate((int) (width2 + 0.5f), (int) (height + 0.5f));
        Bitmap bitmapD = dVar.d(i10, i11, a0.d(bitmap));
        bitmapD.setHasAlpha(bitmap.hasAlpha());
        a0.a(bitmap, bitmapD, matrix);
        return bitmapD;
    }

    @Override // p2.f
    public final boolean equals(Object obj) {
        return obj instanceof i;
    }

    @Override // p2.f
    public final int hashCode() {
        return -599754482;
    }
}
