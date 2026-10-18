package e4;

import android.media.MediaCodec;
import android.media.MediaFormat;
import android.os.Bundle;
import android.os.Handler;
import android.view.Surface;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.util.Objects;
import m5.g0;

/* JADX INFO: compiled from: SynchronousMediaCodecAdapter.java */
/* JADX INFO: loaded from: classes.dex */
public final class t implements l {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final MediaCodec f6470a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public ByteBuffer[] f6471b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public ByteBuffer[] f6472c;

    /* JADX INFO: compiled from: SynchronousMediaCodecAdapter.java */
    public static class a implements l.b {
        @Override // e4.l.b
        public final l a(l.a aVar) throws IOException {
            MediaCodec mediaCodecB = null;
            try {
                mediaCodecB = b(aVar);
                i0.b.d("configureCodec");
                mediaCodecB.configure(aVar.f6410b, aVar.f6412d, aVar.f6413e, 0);
                i0.b.g();
                i0.b.d("startCodec");
                mediaCodecB.start();
                i0.b.g();
                return new t(mediaCodecB);
            } catch (IOException | RuntimeException e10) {
                if (mediaCodecB != null) {
                    mediaCodecB.release();
                }
                throw e10;
            }
        }

        public final MediaCodec b(l.a aVar) throws IOException {
            Objects.requireNonNull(aVar.f6409a);
            String str = aVar.f6409a.f6415a;
            i0.b.d("createCodec:" + str);
            MediaCodec mediaCodecCreateByCodecName = MediaCodec.createByCodecName(str);
            i0.b.g();
            return mediaCodecCreateByCodecName;
        }
    }

    public t(MediaCodec mediaCodec) {
        this.f6470a = mediaCodec;
        if (g0.f10384a < 21) {
            this.f6471b = mediaCodec.getInputBuffers();
            this.f6472c = mediaCodec.getOutputBuffers();
        }
    }

    @Override // e4.l
    public final void a() {
        this.f6471b = null;
        this.f6472c = null;
        this.f6470a.release();
    }

    @Override // e4.l
    public final int b(MediaCodec.BufferInfo bufferInfo) {
        int iDequeueOutputBuffer;
        do {
            iDequeueOutputBuffer = this.f6470a.dequeueOutputBuffer(bufferInfo, 0L);
            if (iDequeueOutputBuffer == -3 && g0.f10384a < 21) {
                this.f6472c = this.f6470a.getOutputBuffers();
            }
        } while (iDequeueOutputBuffer == -3);
        return iDequeueOutputBuffer;
    }

    @Override // e4.l
    public final void c() {
    }

    @Override // e4.l
    public final void d(int i10, boolean z10) {
        this.f6470a.releaseOutputBuffer(i10, z10);
    }

    @Override // e4.l
    public final void e(int i10) {
        this.f6470a.setVideoScalingMode(i10);
    }

    @Override // e4.l
    public final MediaFormat f() {
        return this.f6470a.getOutputFormat();
    }

    @Override // e4.l
    public final void flush() {
        this.f6470a.flush();
    }

    @Override // e4.l
    public final ByteBuffer g(int i10) {
        return g0.f10384a >= 21 ? this.f6470a.getInputBuffer(i10) : this.f6471b[i10];
    }

    @Override // e4.l
    public final void h(Surface surface) {
        this.f6470a.setOutputSurface(surface);
    }

    @Override // e4.l
    public final void i(Bundle bundle) {
        this.f6470a.setParameters(bundle);
    }

    @Override // e4.l
    public final ByteBuffer j(int i10) {
        return g0.f10384a >= 21 ? this.f6470a.getOutputBuffer(i10) : this.f6472c[i10];
    }

    @Override // e4.l
    public final void k(int i10, long j10) {
        this.f6470a.releaseOutputBuffer(i10, j10);
    }

    @Override // e4.l
    public final int l() {
        return this.f6470a.dequeueInputBuffer(0L);
    }

    @Override // e4.l
    public final void m(final l.c cVar, Handler handler) {
        this.f6470a.setOnFrameRenderedListener(new MediaCodec.OnFrameRenderedListener() { // from class: e4.s
            @Override // android.media.MediaCodec.OnFrameRenderedListener
            public final void onFrameRendered(MediaCodec mediaCodec, long j10, long j11) {
                t tVar = this.f6468a;
                l.c cVar2 = cVar;
                Objects.requireNonNull(tVar);
                ((n5.g.b) cVar2).b(j10);
            }
        }, handler);
    }

    @Override // e4.l
    public final void n(int i10, q3.c cVar, long j10) {
        this.f6470a.queueSecureInputBuffer(i10, 0, cVar.f13564i, j10, 0);
    }

    @Override // e4.l
    public final void o(int i10, int i11, long j10, int i12) {
        this.f6470a.queueInputBuffer(i10, 0, i11, j10, i12);
    }
}
