package e4;

import android.media.MediaCodec;
import android.media.MediaFormat;
import android.os.Handler;
import android.os.HandlerThread;
import java.util.ArrayDeque;

/* JADX INFO: compiled from: AsynchronousMediaCodecCallback.java */
/* JADX INFO: loaded from: classes.dex */
public final class g extends MediaCodec.Callback {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final HandlerThread f6386b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Handler f6387c;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public MediaFormat f6392h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public MediaFormat f6393i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public MediaCodec.CodecException f6394j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public long f6395k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public boolean f6396l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public IllegalStateException f6397m;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Object f6385a = new Object();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final k f6388d = new k();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final k f6389e = new k();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final ArrayDeque<MediaCodec.BufferInfo> f6390f = new ArrayDeque<>();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final ArrayDeque<MediaFormat> f6391g = new ArrayDeque<>();

    public g(HandlerThread handlerThread) {
        this.f6386b = handlerThread;
    }

    public final void a() {
        if (!this.f6391g.isEmpty()) {
            this.f6393i = this.f6391g.getLast();
        }
        k kVar = this.f6388d;
        kVar.f6404a = 0;
        kVar.f6405b = -1;
        kVar.f6406c = 0;
        k kVar2 = this.f6389e;
        kVar2.f6404a = 0;
        kVar2.f6405b = -1;
        kVar2.f6406c = 0;
        this.f6390f.clear();
        this.f6391g.clear();
        this.f6394j = null;
    }

    @Override // android.media.MediaCodec.Callback
    public final void onError(MediaCodec mediaCodec, MediaCodec.CodecException codecException) {
        synchronized (this.f6385a) {
            this.f6394j = codecException;
        }
    }

    @Override // android.media.MediaCodec.Callback
    public final void onInputBufferAvailable(MediaCodec mediaCodec, int i10) {
        synchronized (this.f6385a) {
            this.f6388d.a(i10);
        }
    }

    @Override // android.media.MediaCodec.Callback
    public final void onOutputBufferAvailable(MediaCodec mediaCodec, int i10, MediaCodec.BufferInfo bufferInfo) {
        synchronized (this.f6385a) {
            MediaFormat mediaFormat = this.f6393i;
            if (mediaFormat != null) {
                this.f6389e.a(-2);
                this.f6391g.add(mediaFormat);
                this.f6393i = null;
            }
            this.f6389e.a(i10);
            this.f6390f.add(bufferInfo);
        }
    }

    @Override // android.media.MediaCodec.Callback
    public final void onOutputFormatChanged(MediaCodec mediaCodec, MediaFormat mediaFormat) {
        synchronized (this.f6385a) {
            this.f6389e.a(-2);
            this.f6391g.add(mediaFormat);
            this.f6393i = null;
        }
    }
}
