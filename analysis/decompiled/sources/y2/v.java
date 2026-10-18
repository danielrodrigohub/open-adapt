package y2;

import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import java.util.Objects;

/* JADX INFO: compiled from: LazyBitmapDrawableResource.java */
/* JADX INFO: loaded from: classes.dex */
public final class v implements r2.w<BitmapDrawable>, r2.s {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final Resources f18501h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final r2.w<Bitmap> f18502i;

    public v(Resources resources, r2.w<Bitmap> wVar) {
        Objects.requireNonNull(resources, "Argument must not be null");
        this.f18501h = resources;
        Objects.requireNonNull(wVar, "Argument must not be null");
        this.f18502i = wVar;
    }

    public static r2.w<BitmapDrawable> d(Resources resources, r2.w<Bitmap> wVar) {
        if (wVar == null) {
            return null;
        }
        return new v(resources, wVar);
    }

    @Override // r2.w
    public final int a() {
        return this.f18502i.a();
    }

    @Override // r2.w
    public final Class<BitmapDrawable> b() {
        return BitmapDrawable.class;
    }

    @Override // r2.w
    public final void c() {
        this.f18502i.c();
    }

    @Override // r2.w
    public final BitmapDrawable get() {
        return new BitmapDrawable(this.f18501h, this.f18502i.get());
    }

    @Override // r2.s
    public final void initialize() {
        r2.w<Bitmap> wVar = this.f18502i;
        if (wVar instanceof r2.s) {
            ((r2.s) wVar).initialize();
        }
    }
}
