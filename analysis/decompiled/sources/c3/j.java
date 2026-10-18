package c3;

import android.util.Log;
import com.bumptech.glide.load.ImageHeaderParser;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.List;
import okhttp3.internal.http2.Http2;
import r2.w;

/* JADX INFO: compiled from: StreamGifDecoder.java */
/* JADX INFO: loaded from: classes.dex */
public final class j implements p2.j<InputStream, c> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final List<ImageHeaderParser> f3872a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final p2.j<ByteBuffer, c> f3873b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final s2.b f3874c;

    public j(List<ImageHeaderParser> list, p2.j<ByteBuffer, c> jVar, s2.b bVar) {
        this.f3872a = list;
        this.f3873b = jVar;
        this.f3874c = bVar;
    }

    @Override // p2.j
    public final boolean a(InputStream inputStream, p2.h hVar) throws IOException {
        return !((Boolean) hVar.c(i.f3871b)).booleanValue() && com.bumptech.glide.load.c.c(this.f3872a, inputStream, this.f3874c) == ImageHeaderParser.ImageType.GIF;
    }

    @Override // p2.j
    public final w<c> b(InputStream inputStream, int i10, int i11, p2.h hVar) throws IOException {
        byte[] byteArray;
        InputStream inputStream2 = inputStream;
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(Http2.INITIAL_MAX_FRAME_SIZE);
        try {
            byte[] bArr = new byte[Http2.INITIAL_MAX_FRAME_SIZE];
            while (true) {
                int i12 = inputStream2.read(bArr);
                if (i12 == -1) {
                    break;
                }
                byteArrayOutputStream.write(bArr, 0, i12);
            }
            byteArrayOutputStream.flush();
            byteArray = byteArrayOutputStream.toByteArray();
        } catch (IOException e10) {
            if (Log.isLoggable("StreamGifDecoder", 5)) {
                Log.w("StreamGifDecoder", "Error reading data from stream", e10);
            }
            byteArray = null;
        }
        if (byteArray == null) {
            return null;
        }
        return this.f3873b.b(ByteBuffer.wrap(byteArray), i10, i11, hVar);
    }
}
