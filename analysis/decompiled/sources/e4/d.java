package e4;

import android.media.MediaCodec;
import android.media.MediaCrypto;
import android.media.MediaFormat;
import android.os.Bundle;
import android.os.Handler;
import android.os.HandlerThread;
import android.view.Surface;
import androidx.appcompat.widget.k1;
import java.nio.ByteBuffer;
import java.util.Objects;
import m5.g0;

/* JADX INFO: compiled from: AsynchronousMediaCodecAdapter.java */
/* JADX INFO: loaded from: classes.dex */
public final class d implements l {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final MediaCodec f6362a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final g f6363b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final f f6364c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final boolean f6365d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public boolean f6366e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f6367f = 0;

    /* JADX INFO: compiled from: AsynchronousMediaCodecAdapter.java */
    public static final class a implements l.b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final t6.o<HandlerThread> f6368a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final t6.o<HandlerThread> f6369b;

        public a(final int i10) {
            t6.o<HandlerThread> oVar = new t6.o() { // from class: e4.b
                @Override // t6.o
                public final Object get() {
                    return new HandlerThread(d.q(i10, "ExoPlayer:MediaCodecAsyncAdapter:"));
                }
            };
            t6.o<HandlerThread> oVar2 = new t6.o() { // from class: e4.c
                @Override // t6.o
                public final Object get() {
                    return new HandlerThread(d.q(i10, "ExoPlayer:MediaCodecQueueingThread:"));
                }
            };
            this.f6368a = oVar;
            this.f6369b = oVar2;
        }

        @Override // e4.l.b
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public final d a(l.a aVar) throws Exception {
            MediaCodec mediaCodecCreateByCodecName;
            String str = aVar.f6409a.f6415a;
            d dVar = null;
            try {
                i0.b.d("createCodec:" + str);
                mediaCodecCreateByCodecName = MediaCodec.createByCodecName(str);
                try {
                    d dVar2 = new d(mediaCodecCreateByCodecName, this.f6368a.get(), this.f6369b.get(), false);
                    try {
                        i0.b.g();
                        d.p(dVar2, aVar.f6410b, aVar.f6412d, aVar.f6413e);
                        return dVar2;
                    } catch (Exception e10) {
                        e = e10;
                        dVar = dVar2;
                        if (dVar != null) {
                            dVar.a();
                        } else if (mediaCodecCreateByCodecName != null) {
                            mediaCodecCreateByCodecName.release();
                        }
                        throw e;
                    }
                } catch (Exception e11) {
                    e = e11;
                }
            } catch (Exception e12) {
                e = e12;
                mediaCodecCreateByCodecName = null;
            }
        }
    }

    public d(MediaCodec mediaCodec, HandlerThread handlerThread, HandlerThread handlerThread2, boolean z10) {
        this.f6362a = mediaCodec;
        this.f6363b = new g(handlerThread);
        this.f6364c = new f(mediaCodec, handlerThread2);
        this.f6365d = z10;
    }

    public static void p(d dVar, MediaFormat mediaFormat, Surface surface, MediaCrypto mediaCrypto) {
        g gVar = dVar.f6363b;
        MediaCodec mediaCodec = dVar.f6362a;
        m5.a.e(gVar.f6387c == null);
        gVar.f6386b.start();
        Handler handler = new Handler(gVar.f6386b.getLooper());
        mediaCodec.setCallback(gVar, handler);
        gVar.f6387c = handler;
        i0.b.d("configureCodec");
        dVar.f6362a.configure(mediaFormat, surface, mediaCrypto, 0);
        i0.b.g();
        f fVar = dVar.f6364c;
        if (!fVar.f6378f) {
            fVar.f6374b.start();
            fVar.f6375c = new e(fVar, fVar.f6374b.getLooper());
            fVar.f6378f = true;
        }
        i0.b.d("startCodec");
        dVar.f6362a.start();
        i0.b.g();
        dVar.f6367f = 1;
    }

    public static String q(int i10, String str) {
        StringBuilder sb2 = new StringBuilder(str);
        if (i10 == 1) {
            sb2.append("Audio");
        } else if (i10 == 2) {
            sb2.append("Video");
        } else {
            sb2.append("Unknown(");
            sb2.append(i10);
            sb2.append(")");
        }
        return sb2.toString();
    }

    @Override // e4.l
    public final void a() {
        try {
            if (this.f6367f == 1) {
                f fVar = this.f6364c;
                if (fVar.f6378f) {
                    fVar.d();
                    fVar.f6374b.quit();
                }
                fVar.f6378f = false;
                g gVar = this.f6363b;
                synchronized (gVar.f6385a) {
                    gVar.f6396l = true;
                    gVar.f6386b.quit();
                    gVar.a();
                }
            }
            this.f6367f = 2;
            if (this.f6366e) {
                return;
            }
            this.f6362a.release();
            this.f6366e = true;
        } catch (Throwable th) {
            if (!this.f6366e) {
                this.f6362a.release();
                this.f6366e = true;
            }
            throw th;
        }
    }

    @Override // e4.l
    public final int b(MediaCodec.BufferInfo bufferInfo) {
        int iB;
        g gVar = this.f6363b;
        synchronized (gVar.f6385a) {
            iB = -1;
            if (!(gVar.f6395k > 0 || gVar.f6396l)) {
                IllegalStateException illegalStateException = gVar.f6397m;
                if (illegalStateException != null) {
                    gVar.f6397m = null;
                    throw illegalStateException;
                }
                MediaCodec.CodecException codecException = gVar.f6394j;
                if (codecException != null) {
                    gVar.f6394j = null;
                    throw codecException;
                }
                k kVar = gVar.f6389e;
                if (!(kVar.f6406c == 0)) {
                    iB = kVar.b();
                    if (iB >= 0) {
                        m5.a.f(gVar.f6392h);
                        MediaCodec.BufferInfo bufferInfoRemove = gVar.f6390f.remove();
                        bufferInfo.set(bufferInfoRemove.offset, bufferInfoRemove.size, bufferInfoRemove.presentationTimeUs, bufferInfoRemove.flags);
                    } else if (iB == -2) {
                        gVar.f6392h = gVar.f6391g.remove();
                    }
                }
            }
        }
        return iB;
    }

    @Override // e4.l
    public final void c() {
    }

    @Override // e4.l
    public final void d(int i10, boolean z10) {
        this.f6362a.releaseOutputBuffer(i10, z10);
    }

    @Override // e4.l
    public final void e(int i10) {
        r();
        this.f6362a.setVideoScalingMode(i10);
    }

    @Override // e4.l
    public final MediaFormat f() {
        MediaFormat mediaFormat;
        g gVar = this.f6363b;
        synchronized (gVar.f6385a) {
            mediaFormat = gVar.f6392h;
            if (mediaFormat == null) {
                throw new IllegalStateException();
            }
        }
        return mediaFormat;
    }

    @Override // e4.l
    public final void flush() {
        this.f6364c.d();
        this.f6362a.flush();
        g gVar = this.f6363b;
        synchronized (gVar.f6385a) {
            gVar.f6395k++;
            Handler handler = gVar.f6387c;
            int i10 = g0.f10384a;
            handler.post(new k1(gVar, 3));
        }
        this.f6362a.start();
    }

    @Override // e4.l
    public final ByteBuffer g(int i10) {
        return this.f6362a.getInputBuffer(i10);
    }

    @Override // e4.l
    public final void h(Surface surface) {
        r();
        this.f6362a.setOutputSurface(surface);
    }

    @Override // e4.l
    public final void i(Bundle bundle) {
        r();
        this.f6362a.setParameters(bundle);
    }

    @Override // e4.l
    public final ByteBuffer j(int i10) {
        return this.f6362a.getOutputBuffer(i10);
    }

    @Override // e4.l
    public final void k(int i10, long j10) {
        this.f6362a.releaseOutputBuffer(i10, j10);
    }

    @Override // e4.l
    public final int l() {
        int iB;
        g gVar = this.f6363b;
        synchronized (gVar.f6385a) {
            iB = -1;
            if (!(gVar.f6395k > 0 || gVar.f6396l)) {
                IllegalStateException illegalStateException = gVar.f6397m;
                if (illegalStateException != null) {
                    gVar.f6397m = null;
                    throw illegalStateException;
                }
                MediaCodec.CodecException codecException = gVar.f6394j;
                if (codecException != null) {
                    gVar.f6394j = null;
                    throw codecException;
                }
                k kVar = gVar.f6388d;
                if (!(kVar.f6406c == 0)) {
                    iB = kVar.b();
                }
            }
        }
        return iB;
    }

    @Override // e4.l
    public final void m(final l.c cVar, Handler handler) {
        r();
        this.f6362a.setOnFrameRenderedListener(new MediaCodec.OnFrameRenderedListener() { // from class: e4.a
            @Override // android.media.MediaCodec.OnFrameRenderedListener
            public final void onFrameRendered(MediaCodec mediaCodec, long j10, long j11) {
                d dVar = this.f6358a;
                l.c cVar2 = cVar;
                Objects.requireNonNull(dVar);
                ((n5.g.b) cVar2).b(j10);
            }
        }, handler);
    }

    @Override // e4.l
    public final void n(int i10, q3.c cVar, long j10) {
        f fVar = this.f6364c;
        RuntimeException andSet = fVar.f6376d.getAndSet(null);
        if (andSet != null) {
            throw andSet;
        }
        f.a aVarE = f.e();
        aVarE.f6379a = i10;
        aVarE.f6380b = 0;
        aVarE.f6381c = 0;
        aVarE.f6383e = j10;
        aVarE.f6384f = 0;
        MediaCodec.CryptoInfo cryptoInfo = aVarE.f6382d;
        cryptoInfo.numSubSamples = cVar.f13561f;
        cryptoInfo.numBytesOfClearData = f.c(cVar.f13559d, cryptoInfo.numBytesOfClearData);
        cryptoInfo.numBytesOfEncryptedData = f.c(cVar.f13560e, cryptoInfo.numBytesOfEncryptedData);
        byte[] bArrB = f.b(cVar.f13557b, cryptoInfo.key);
        Objects.requireNonNull(bArrB);
        cryptoInfo.key = bArrB;
        byte[] bArrB2 = f.b(cVar.f13556a, cryptoInfo.iv);
        Objects.requireNonNull(bArrB2);
        cryptoInfo.iv = bArrB2;
        cryptoInfo.mode = cVar.f13558c;
        if (g0.f10384a >= 24) {
            cryptoInfo.setPattern(new MediaCodec.CryptoInfo.Pattern(cVar.f13562g, cVar.f13563h));
        }
        fVar.f6375c.obtainMessage(1, aVarE).sendToTarget();
    }

    @Override // e4.l
    public final void o(int i10, int i11, long j10, int i12) {
        f fVar = this.f6364c;
        RuntimeException andSet = fVar.f6376d.getAndSet(null);
        if (andSet != null) {
            throw andSet;
        }
        f.a aVarE = f.e();
        aVarE.f6379a = i10;
        aVarE.f6380b = 0;
        aVarE.f6381c = i11;
        aVarE.f6383e = j10;
        aVarE.f6384f = i12;
        e eVar = fVar.f6375c;
        int i13 = g0.f10384a;
        eVar.obtainMessage(0, aVarE).sendToTarget();
    }

    public final void r() {
        if (this.f6365d) {
            try {
                this.f6364c.a();
            } catch (InterruptedException e10) {
                Thread.currentThread().interrupt();
                throw new IllegalStateException(e10);
            }
        }
    }
}
