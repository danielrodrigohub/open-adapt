package y2;

import com.bumptech.glide.load.ImageHeaderParser;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: compiled from: ExifInterfaceImageHeaderParser.java */
/* JADX INFO: loaded from: classes.dex */
public final class q implements ImageHeaderParser {
    @Override // com.bumptech.glide.load.ImageHeaderParser
    public final ImageHeaderParser.ImageType a(ByteBuffer byteBuffer) {
        return ImageHeaderParser.ImageType.UNKNOWN;
    }

    @Override // com.bumptech.glide.load.ImageHeaderParser
    public final int b(InputStream inputStream, s2.b bVar) throws Throwable {
        int iF;
        s0.a aVar = new s0.a(inputStream);
        s0.a.c cVarE = aVar.e("Orientation");
        if (cVarE == null) {
            iF = 1;
        } else {
            try {
                iF = cVarE.f(aVar.f14931f);
            } catch (NumberFormatException unused) {
                iF = 1;
            }
        }
        if (iF == 0) {
            return -1;
        }
        return iF;
    }

    @Override // com.bumptech.glide.load.ImageHeaderParser
    public final int c(ByteBuffer byteBuffer, s2.b bVar) throws IOException {
        AtomicReference<byte[]> atomicReference = l3.a.f9918a;
        return b(new l3.a.C0193a(byteBuffer), bVar);
    }

    @Override // com.bumptech.glide.load.ImageHeaderParser
    public final ImageHeaderParser.ImageType d(InputStream inputStream) {
        return ImageHeaderParser.ImageType.UNKNOWN;
    }
}
