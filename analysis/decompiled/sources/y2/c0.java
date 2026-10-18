package y2;

import android.content.res.AssetFileDescriptor;
import android.graphics.Bitmap;
import android.media.MediaMetadataRetriever;
import android.os.Build;
import android.os.ParcelFileDescriptor;
import android.util.Log;
import androidx.fragment.app.r0;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.security.MessageDigest;
import java.util.Objects;

/* JADX INFO: compiled from: VideoDecoder.java */
/* JADX INFO: loaded from: classes.dex */
public final class c0<T> implements p2.j<T, Bitmap> {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final p2.g<Long> f18436d = new p2.g<>("com.bumptech.glide.load.resource.bitmap.VideoBitmapDecode.TargetFrame", -1L, new a());

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final p2.g<Integer> f18437e = new p2.g<>("com.bumptech.glide.load.resource.bitmap.VideoBitmapDecode.FrameOption", 2, new b());

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final e f18438f = new e();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final f<T> f18439a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final s2.d f18440b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final e f18441c;

    /* JADX INFO: compiled from: VideoDecoder.java */
    public class a implements p2.g.b<Long> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final ByteBuffer f18442a = ByteBuffer.allocate(8);

        @Override // p2.g.b
        public final void a(byte[] bArr, Long l10, MessageDigest messageDigest) {
            Long l11 = l10;
            messageDigest.update(bArr);
            synchronized (this.f18442a) {
                this.f18442a.position(0);
                messageDigest.update(this.f18442a.putLong(l11.longValue()).array());
            }
        }
    }

    /* JADX INFO: compiled from: VideoDecoder.java */
    public class b implements p2.g.b<Integer> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final ByteBuffer f18443a = ByteBuffer.allocate(4);

        @Override // p2.g.b
        public final void a(byte[] bArr, Integer num, MessageDigest messageDigest) {
            Integer num2 = num;
            if (num2 == null) {
                return;
            }
            messageDigest.update(bArr);
            synchronized (this.f18443a) {
                this.f18443a.position(0);
                messageDigest.update(this.f18443a.putInt(num2.intValue()).array());
            }
        }
    }

    /* JADX INFO: compiled from: VideoDecoder.java */
    public static final class c implements f<AssetFileDescriptor> {
        @Override // y2.c0.f
        public final void a(MediaMetadataRetriever mediaMetadataRetriever, AssetFileDescriptor assetFileDescriptor) {
            AssetFileDescriptor assetFileDescriptor2 = assetFileDescriptor;
            mediaMetadataRetriever.setDataSource(assetFileDescriptor2.getFileDescriptor(), assetFileDescriptor2.getStartOffset(), assetFileDescriptor2.getLength());
        }
    }

    /* JADX INFO: compiled from: VideoDecoder.java */
    public static final class d implements f<ByteBuffer> {
        @Override // y2.c0.f
        public final void a(MediaMetadataRetriever mediaMetadataRetriever, ByteBuffer byteBuffer) {
            mediaMetadataRetriever.setDataSource(new d0(byteBuffer));
        }
    }

    /* JADX INFO: compiled from: VideoDecoder.java */
    public static class e {
    }

    /* JADX INFO: compiled from: VideoDecoder.java */
    public interface f<T> {
        void a(MediaMetadataRetriever mediaMetadataRetriever, T t10);
    }

    /* JADX INFO: compiled from: VideoDecoder.java */
    public static final class g implements f<ParcelFileDescriptor> {
        @Override // y2.c0.f
        public final void a(MediaMetadataRetriever mediaMetadataRetriever, ParcelFileDescriptor parcelFileDescriptor) {
            mediaMetadataRetriever.setDataSource(parcelFileDescriptor.getFileDescriptor());
        }
    }

    /* JADX INFO: compiled from: VideoDecoder.java */
    public static final class h extends RuntimeException {
        public h() {
            super("MediaMetadataRetriever failed to retrieve a frame without throwing, check the adb logs for .*MetadataRetriever.* prior to this exception for details");
        }
    }

    public c0(s2.d dVar, f<T> fVar) {
        e eVar = f18438f;
        this.f18440b = dVar;
        this.f18439a = fVar;
        this.f18441c = eVar;
    }

    public static Bitmap c(MediaMetadataRetriever mediaMetadataRetriever, long j10, int i10, int i11, int i12, m mVar) {
        Bitmap frameAtTime;
        if (Build.VERSION.SDK_INT < 27 || i11 == Integer.MIN_VALUE || i12 == Integer.MIN_VALUE || mVar == m.f18461d) {
            frameAtTime = null;
        } else {
            try {
                int i13 = Integer.parseInt(mediaMetadataRetriever.extractMetadata(18));
                int i14 = Integer.parseInt(mediaMetadataRetriever.extractMetadata(19));
                int i15 = Integer.parseInt(mediaMetadataRetriever.extractMetadata(24));
                if (i15 == 90 || i15 == 270) {
                    i14 = i13;
                    i13 = i14;
                }
                float fB = mVar.b(i13, i14, i11, i12);
                frameAtTime = mediaMetadataRetriever.getScaledFrameAtTime(j10, i10, Math.round(i13 * fB), Math.round(fB * i14));
            } catch (Throwable th) {
                if (Log.isLoggable("VideoDecoder", 3)) {
                    Log.d("VideoDecoder", "Exception trying to decode a scaled frame on oreo+, falling back to a fullsize frame", th);
                }
                frameAtTime = null;
            }
        }
        if (frameAtTime == null) {
            frameAtTime = mediaMetadataRetriever.getFrameAtTime(j10, i10);
        }
        if (frameAtTime != null) {
            return frameAtTime;
        }
        throw new h();
    }

    @Override // p2.j
    public final boolean a(T t10, p2.h hVar) {
        return true;
    }

    @Override // p2.j
    public final r2.w<Bitmap> b(T t10, int i10, int i11, p2.h hVar) throws IOException {
        long jLongValue = ((Long) hVar.c(f18436d)).longValue();
        if (jLongValue < 0 && jLongValue != -1) {
            throw new IllegalArgumentException(r0.f("Requested frame must be non-negative, or DEFAULT_FRAME, given: ", jLongValue));
        }
        Integer num = (Integer) hVar.c(f18437e);
        if (num == null) {
            num = 2;
        }
        m mVar = (m) hVar.c(m.f18463f);
        if (mVar == null) {
            mVar = m.f18462e;
        }
        m mVar2 = mVar;
        Objects.requireNonNull(this.f18441c);
        MediaMetadataRetriever mediaMetadataRetriever = new MediaMetadataRetriever();
        try {
            this.f18439a.a(mediaMetadataRetriever, t10);
            return y2.e.d(c(mediaMetadataRetriever, jLongValue, num.intValue(), i10, i11, mVar2), this.f18440b);
        } finally {
            if (Build.VERSION.SDK_INT >= 29) {
                mediaMetadataRetriever.close();
            } else {
                mediaMetadataRetriever.release();
            }
        }
    }
}
