package y2;

import android.graphics.Bitmap;
import android.graphics.ImageDecoder;
import java.io.IOException;
import java.nio.ByteBuffer;

/* JADX INFO: compiled from: ByteBufferBitmapImageDecoderResourceDecoder.java */
/* JADX INFO: loaded from: classes.dex */
public final class h implements p2.j<ByteBuffer, Bitmap> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final d f18449a = new d();

    @Override // p2.j
    public final /* bridge */ /* synthetic */ boolean a(ByteBuffer byteBuffer, p2.h hVar) throws IOException {
        return true;
    }

    @Override // p2.j
    public final r2.w<Bitmap> b(ByteBuffer byteBuffer, int i10, int i11, p2.h hVar) throws IOException {
        return this.f18449a.b(ImageDecoder.createSource(byteBuffer), i10, i11, hVar);
    }
}
