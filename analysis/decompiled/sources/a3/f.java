package a3;

import android.graphics.drawable.Drawable;
import java.io.IOException;
import p2.h;
import p2.j;
import r2.w;

/* JADX INFO: compiled from: UnitDrawableDecoder.java */
/* JADX INFO: loaded from: classes.dex */
public final class f implements j<Drawable, Drawable> {
    @Override // p2.j
    public final /* bridge */ /* synthetic */ boolean a(Drawable drawable, h hVar) throws IOException {
        return true;
    }

    @Override // p2.j
    public final w<Drawable> b(Drawable drawable, int i10, int i11, h hVar) throws IOException {
        Drawable drawable2 = drawable;
        if (drawable2 != null) {
            return new d(drawable2);
        }
        return null;
    }
}
