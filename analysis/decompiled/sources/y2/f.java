package y2;

import android.content.Context;
import android.graphics.Bitmap;

/* JADX INFO: compiled from: BitmapTransformation.java */
/* JADX INFO: loaded from: classes.dex */
public abstract class f implements p2.l<Bitmap> {
    @Override // p2.l
    public final r2.w<Bitmap> b(Context context, r2.w<Bitmap> wVar, int i10, int i11) {
        if (!l3.l.j(i10, i11)) {
            throw new IllegalArgumentException("Cannot apply transformation on width: " + i10 + " or height: " + i11 + " less than or equal to zero and not Target.SIZE_ORIGINAL");
        }
        s2.d dVar = com.bumptech.glide.c.b(context).f4420h;
        Bitmap bitmap = wVar.get();
        if (i10 == Integer.MIN_VALUE) {
            i10 = bitmap.getWidth();
        }
        if (i11 == Integer.MIN_VALUE) {
            i11 = bitmap.getHeight();
        }
        Bitmap bitmapC = c(dVar, bitmap, i10, i11);
        return bitmap.equals(bitmapC) ? wVar : e.d(bitmapC, dVar);
    }

    public abstract Bitmap c(s2.d dVar, Bitmap bitmap, int i10, int i11);
}
