package c3;

import android.graphics.Bitmap;
import java.io.IOException;
import r2.w;

/* JADX INFO: compiled from: GifFrameResourceDecoder.java */
/* JADX INFO: loaded from: classes.dex */
public final class h implements p2.j<n2.a, Bitmap> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final s2.d f3869a;

    public h(s2.d dVar) {
        this.f3869a = dVar;
    }

    @Override // p2.j
    public final /* bridge */ /* synthetic */ boolean a(n2.a aVar, p2.h hVar) throws IOException {
        return true;
    }

    @Override // p2.j
    public final w<Bitmap> b(n2.a aVar, int i10, int i11, p2.h hVar) throws IOException {
        return y2.e.d(aVar.b(), this.f3869a);
    }
}
