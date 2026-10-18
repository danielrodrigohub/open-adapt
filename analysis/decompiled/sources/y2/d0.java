package y2;

import android.media.MediaDataSource;
import java.nio.ByteBuffer;

/* JADX INFO: compiled from: VideoDecoder.java */
/* JADX INFO: loaded from: classes.dex */
public final class d0 extends MediaDataSource {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ ByteBuffer f18445h;

    public d0(ByteBuffer byteBuffer) {
        this.f18445h = byteBuffer;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
    }

    @Override // android.media.MediaDataSource
    public final long getSize() {
        return this.f18445h.limit();
    }

    @Override // android.media.MediaDataSource
    public final int readAt(long j10, byte[] bArr, int i10, int i11) {
        if (j10 >= this.f18445h.limit()) {
            return -1;
        }
        this.f18445h.position((int) j10);
        int iMin = Math.min(i11, this.f18445h.remaining());
        this.f18445h.get(bArr, i10, iMin);
        return iMin;
    }
}
