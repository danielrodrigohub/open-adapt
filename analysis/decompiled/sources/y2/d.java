package y2;

import android.graphics.Bitmap;
import android.graphics.ImageDecoder;
import android.util.Log;
import java.io.IOException;

/* JADX INFO: compiled from: BitmapImageDecoderResourceDecoder.java */
/* JADX INFO: loaded from: classes.dex */
public final class d implements p2.j<ImageDecoder.Source, Bitmap> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final s2.e f18444a = new s2.e();

    @Override // p2.j
    public final /* bridge */ /* synthetic */ boolean a(ImageDecoder.Source source, p2.h hVar) throws IOException {
        return true;
    }

    @Override // p2.j
    /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
    public final r2.w<Bitmap> b(ImageDecoder.Source source, int i10, int i11, p2.h hVar) throws IOException {
        Bitmap bitmapDecodeBitmap = ImageDecoder.decodeBitmap(source, new x2.a(i10, i11, hVar));
        if (Log.isLoggable("BitmapImageDecoder", 2)) {
            StringBuilder sbC = a0.b.c("Decoded [");
            sbC.append(bitmapDecodeBitmap.getWidth());
            sbC.append("x");
            sbC.append(bitmapDecodeBitmap.getHeight());
            sbC.append("] for [");
            sbC.append(i10);
            sbC.append("x");
            sbC.append(i11);
            sbC.append("]");
            Log.v("BitmapImageDecoder", sbC.toString());
        }
        return new e(bitmapDecodeBitmap, this.f18444a);
    }
}
