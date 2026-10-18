package y2;

import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import java.io.IOException;

/* JADX INFO: compiled from: ResourceBitmapDecoder.java */
/* JADX INFO: loaded from: classes.dex */
public final class y implements p2.j<Uri, Bitmap> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final a3.e f18510a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final s2.d f18511b;

    public y(a3.e eVar, s2.d dVar) {
        this.f18510a = eVar;
        this.f18511b = dVar;
    }

    @Override // p2.j
    public final boolean a(Uri uri, p2.h hVar) throws IOException {
        return "android.resource".equals(uri.getScheme());
    }

    @Override // p2.j
    public final r2.w<Bitmap> b(Uri uri, int i10, int i11, p2.h hVar) throws IOException {
        r2.w<Drawable> wVarB = this.f18510a.b(uri, i10, i11, hVar);
        if (wVarB == null) {
            return null;
        }
        return o.a(this.f18511b, (Drawable) ((a3.c) wVarB).get(), i10, i11);
    }
}
