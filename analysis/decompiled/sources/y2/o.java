package y2;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.drawable.Animatable;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.util.Log;
import java.util.concurrent.locks.Lock;

/* JADX INFO: compiled from: DrawableToBitmapConverter.java */
/* JADX INFO: loaded from: classes.dex */
public final class o {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final a f18476a = new a();

    /* JADX INFO: compiled from: DrawableToBitmapConverter.java */
    public class a extends s2.e {
        @Override // s2.e, s2.d
        public final void e(Bitmap bitmap) {
        }
    }

    public static r2.w<Bitmap> a(s2.d dVar, Drawable drawable, int i10, int i11) {
        Drawable current = drawable.getCurrent();
        boolean z10 = false;
        Bitmap bitmap = null;
        if (current instanceof BitmapDrawable) {
            bitmap = ((BitmapDrawable) current).getBitmap();
        } else if (!(current instanceof Animatable)) {
            if (i10 != Integer.MIN_VALUE || current.getIntrinsicWidth() > 0) {
                if (i11 != Integer.MIN_VALUE || current.getIntrinsicHeight() > 0) {
                    if (current.getIntrinsicWidth() > 0) {
                        i10 = current.getIntrinsicWidth();
                    }
                    if (current.getIntrinsicHeight() > 0) {
                        i11 = current.getIntrinsicHeight();
                    }
                    Lock lock = a0.f18429e;
                    lock.lock();
                    Bitmap bitmapD = dVar.d(i10, i11, Bitmap.Config.ARGB_8888);
                    try {
                        Canvas canvas = new Canvas(bitmapD);
                        current.setBounds(0, 0, i10, i11);
                        current.draw(canvas);
                        canvas.setBitmap(null);
                        lock.unlock();
                        bitmap = bitmapD;
                    } catch (Throwable th) {
                        lock.unlock();
                        throw th;
                    }
                } else if (Log.isLoggable("DrawableToBitmap", 5)) {
                    Log.w("DrawableToBitmap", "Unable to draw " + current + " to Bitmap with Target.SIZE_ORIGINAL because the Drawable has no intrinsic height");
                }
            } else if (Log.isLoggable("DrawableToBitmap", 5)) {
                Log.w("DrawableToBitmap", "Unable to draw " + current + " to Bitmap with Target.SIZE_ORIGINAL because the Drawable has no intrinsic width");
            }
            z10 = true;
        }
        if (!z10) {
            dVar = f18476a;
        }
        return e.d(bitmap, dVar);
    }
}
