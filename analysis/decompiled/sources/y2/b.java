package y2;

import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import java.io.File;

/* JADX INFO: compiled from: BitmapDrawableEncoder.java */
/* JADX INFO: loaded from: classes.dex */
public final class b implements p2.k<BitmapDrawable> {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final s2.d f18430h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final p2.k<Bitmap> f18431i;

    public b(s2.d dVar, p2.k<Bitmap> kVar) {
        this.f18430h = dVar;
        this.f18431i = kVar;
    }

    @Override // p2.d
    public final boolean c(Object obj, File file, p2.h hVar) {
        return this.f18431i.c((Bitmap) new e(((BitmapDrawable) ((r2.w) obj).get()).getBitmap(), this.f18430h), file, hVar);
    }

    @Override // p2.k
    public final p2.c d(p2.h hVar) {
        return this.f18431i.d(hVar);
    }
}
