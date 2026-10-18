package y2;

import android.graphics.Bitmap;
import android.graphics.Paint;
import android.util.Log;
import java.security.MessageDigest;

/* JADX INFO: compiled from: CenterInside.java */
/* JADX INFO: loaded from: classes.dex */
public final class j extends f {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final byte[] f18451b = "com.bumptech.glide.load.resource.bitmap.CenterInside".getBytes(p2.f.f12642a);

    @Override // p2.f
    public final void a(MessageDigest messageDigest) {
        messageDigest.update(f18451b);
    }

    @Override // y2.f
    public final Bitmap c(s2.d dVar, Bitmap bitmap, int i10, int i11) {
        Paint paint = a0.f18425a;
        if (bitmap.getWidth() > i10 || bitmap.getHeight() > i11) {
            if (Log.isLoggable("TransformationUtils", 2)) {
                Log.v("TransformationUtils", "requested target size too big for input, fit centering instead");
            }
            return a0.b(dVar, bitmap, i10, i11);
        }
        if (!Log.isLoggable("TransformationUtils", 2)) {
            return bitmap;
        }
        Log.v("TransformationUtils", "requested target size larger or equal to input, returning input");
        return bitmap;
    }

    @Override // p2.f
    public final boolean equals(Object obj) {
        return obj instanceof j;
    }

    @Override // p2.f
    public final int hashCode() {
        return -670243078;
    }
}
