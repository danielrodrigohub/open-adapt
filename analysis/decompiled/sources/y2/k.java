package y2;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import java.security.MessageDigest;
import java.util.concurrent.locks.Lock;

/* JADX INFO: compiled from: CircleCrop.java */
/* JADX INFO: loaded from: classes.dex */
public final class k extends f {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final byte[] f18452b = "com.bumptech.glide.load.resource.bitmap.CircleCrop.1".getBytes(p2.f.f12642a);

    @Override // p2.f
    public final void a(MessageDigest messageDigest) {
        messageDigest.update(f18452b);
    }

    @Override // y2.f
    public final Bitmap c(s2.d dVar, Bitmap bitmap, int i10, int i11) {
        Bitmap bitmapD;
        Paint paint = a0.f18425a;
        int iMin = Math.min(i10, i11);
        float f10 = iMin;
        float f11 = f10 / 2.0f;
        float width = bitmap.getWidth();
        float height = bitmap.getHeight();
        float fMax = Math.max(f10 / width, f10 / height);
        float f12 = width * fMax;
        float f13 = fMax * height;
        float f14 = (f10 - f12) / 2.0f;
        float f15 = (f10 - f13) / 2.0f;
        RectF rectF = new RectF(f14, f15, f12 + f14, f13 + f15);
        Bitmap.Config configC = a0.c(bitmap);
        if (configC.equals(bitmap.getConfig())) {
            bitmapD = bitmap;
        } else {
            bitmapD = dVar.d(bitmap.getWidth(), bitmap.getHeight(), configC);
            new Canvas(bitmapD).drawBitmap(bitmap, 0.0f, 0.0f, (Paint) null);
        }
        Bitmap bitmapD2 = dVar.d(iMin, iMin, a0.c(bitmap));
        bitmapD2.setHasAlpha(true);
        Lock lock = a0.f18429e;
        lock.lock();
        try {
            Canvas canvas = new Canvas(bitmapD2);
            canvas.drawCircle(f11, f11, f11, a0.f18426b);
            canvas.drawBitmap(bitmapD, (Rect) null, rectF, a0.f18427c);
            canvas.setBitmap(null);
            lock.unlock();
            if (!bitmapD.equals(bitmap)) {
                dVar.e(bitmapD);
            }
            return bitmapD2;
        } catch (Throwable th) {
            a0.f18429e.unlock();
            throw th;
        }
    }

    @Override // p2.f
    public final boolean equals(Object obj) {
        return obj instanceof k;
    }

    @Override // p2.f
    public final int hashCode() {
        return 1101716364;
    }
}
