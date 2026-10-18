package a3;

import android.graphics.drawable.Drawable;

/* JADX INFO: compiled from: NonOwnedDrawableResource.java */
/* JADX INFO: loaded from: classes.dex */
public final class d extends c<Drawable> {
    public d(Drawable drawable) {
        super(drawable);
    }

    @Override // r2.w
    public final int a() {
        return Math.max(1, this.f209h.getIntrinsicHeight() * this.f209h.getIntrinsicWidth() * 4);
    }

    @Override // r2.w
    public final Class<Drawable> b() {
        return this.f209h.getClass();
    }

    @Override // r2.w
    public final void c() {
    }
}
