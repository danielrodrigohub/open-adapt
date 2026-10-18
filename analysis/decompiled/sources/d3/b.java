package d3;

import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import p2.h;
import r2.w;

/* JADX INFO: compiled from: DrawableBytesTranscoder.java */
/* JADX INFO: loaded from: classes.dex */
public final class b implements c<Drawable, byte[]> {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final s2.d f5992h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final c<Bitmap, byte[]> f5993i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final c<c3.c, byte[]> f5994j;

    public b(s2.d dVar, c<Bitmap, byte[]> cVar, c<c3.c, byte[]> cVar2) {
        this.f5992h = dVar;
        this.f5993i = cVar;
        this.f5994j = cVar2;
    }

    @Override // d3.c
    public final w<byte[]> b(w<Drawable> wVar, h hVar) {
        Drawable drawable = wVar.get();
        if (drawable instanceof BitmapDrawable) {
            return this.f5993i.b(y2.e.d(((BitmapDrawable) drawable).getBitmap(), this.f5992h), hVar);
        }
        if (drawable instanceof c3.c) {
            return this.f5994j.b(wVar, hVar);
        }
        return null;
    }
}
