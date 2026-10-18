package y2;

import android.graphics.Bitmap;
import java.util.Objects;

/* JADX INFO: compiled from: BitmapResource.java */
/* JADX INFO: loaded from: classes.dex */
public final class e implements r2.w<Bitmap>, r2.s {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final Bitmap f18446h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final s2.d f18447i;

    public e(Bitmap bitmap, s2.d dVar) {
        Objects.requireNonNull(bitmap, "Bitmap must not be null");
        this.f18446h = bitmap;
        Objects.requireNonNull(dVar, "BitmapPool must not be null");
        this.f18447i = dVar;
    }

    public static e d(Bitmap bitmap, s2.d dVar) {
        if (bitmap == null) {
            return null;
        }
        return new e(bitmap, dVar);
    }

    @Override // r2.w
    public final int a() {
        return l3.l.c(this.f18446h);
    }

    @Override // r2.w
    public final Class<Bitmap> b() {
        return Bitmap.class;
    }

    @Override // r2.w
    public final void c() {
        this.f18447i.e(this.f18446h);
    }

    @Override // r2.w
    public final Bitmap get() {
        return this.f18446h;
    }

    @Override // r2.s
    public final void initialize() {
        this.f18446h.prepareToDraw();
    }
}
