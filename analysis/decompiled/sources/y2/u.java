package y2;

import android.graphics.Bitmap;
import android.graphics.ImageDecoder;
import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: compiled from: InputStreamBitmapImageDecoderResourceDecoder.java */
/* JADX INFO: loaded from: classes.dex */
public final class u implements p2.j<InputStream, Bitmap> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final d f18500a = new d();

    @Override // p2.j
    public final /* bridge */ /* synthetic */ boolean a(InputStream inputStream, p2.h hVar) throws IOException {
        return true;
    }

    @Override // p2.j
    public final r2.w<Bitmap> b(InputStream inputStream, int i10, int i11, p2.h hVar) throws IOException {
        return this.f18500a.b(ImageDecoder.createSource(l3.a.b(inputStream)), i10, i11, hVar);
    }
}
