package e4;

import android.media.MediaCodec;
import android.media.MediaCrypto;
import android.media.MediaFormat;
import android.os.Bundle;
import android.os.Handler;
import android.view.Surface;
import java.io.IOException;
import java.nio.ByteBuffer;
import n3.s0;

/* JADX INFO: compiled from: MediaCodecAdapter.java */
/* JADX INFO: loaded from: classes.dex */
public interface l {

    /* JADX INFO: compiled from: MediaCodecAdapter.java */
    public static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final n f6409a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final MediaFormat f6410b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final s0 f6411c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public final Surface f6412d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final MediaCrypto f6413e;

        public a(n nVar, MediaFormat mediaFormat, s0 s0Var, Surface surface, MediaCrypto mediaCrypto) {
            this.f6409a = nVar;
            this.f6410b = mediaFormat;
            this.f6411c = s0Var;
            this.f6412d = surface;
            this.f6413e = mediaCrypto;
        }
    }

    /* JADX INFO: compiled from: MediaCodecAdapter.java */
    public interface b {
        l a(a aVar) throws IOException;
    }

    /* JADX INFO: compiled from: MediaCodecAdapter.java */
    public interface c {
    }

    void a();

    int b(MediaCodec.BufferInfo bufferInfo);

    void c();

    void d(int i10, boolean z10);

    void e(int i10);

    MediaFormat f();

    void flush();

    ByteBuffer g(int i10);

    void h(Surface surface);

    void i(Bundle bundle);

    ByteBuffer j(int i10);

    void k(int i10, long j10);

    int l();

    void m(c cVar, Handler handler);

    void n(int i10, q3.c cVar, long j10);

    void o(int i10, int i11, long j10, int i12);
}
