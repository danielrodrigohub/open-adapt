package e4;

import android.media.MediaCodec;
import android.os.HandlerThread;
import java.util.ArrayDeque;
import java.util.Arrays;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: compiled from: AsynchronousMediaCodecBufferEnqueuer.java */
/* JADX INFO: loaded from: classes.dex */
public final class f {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final ArrayDeque<a> f6371g = new ArrayDeque<>();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final Object f6372h = new Object();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final MediaCodec f6373a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final HandlerThread f6374b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public e f6375c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final AtomicReference<RuntimeException> f6376d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final m5.e f6377e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public boolean f6378f;

    /* JADX INFO: compiled from: AsynchronousMediaCodecBufferEnqueuer.java */
    public static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public int f6379a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f6380b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public int f6381c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public final MediaCodec.CryptoInfo f6382d = new MediaCodec.CryptoInfo();

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public long f6383e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public int f6384f;
    }

    public f(MediaCodec mediaCodec, HandlerThread handlerThread) {
        m5.e eVar = new m5.e();
        this.f6373a = mediaCodec;
        this.f6374b = handlerThread;
        this.f6377e = eVar;
        this.f6376d = new AtomicReference<>();
    }

    public static byte[] b(byte[] bArr, byte[] bArr2) {
        if (bArr == null) {
            return bArr2;
        }
        if (bArr2 == null || bArr2.length < bArr.length) {
            return Arrays.copyOf(bArr, bArr.length);
        }
        System.arraycopy(bArr, 0, bArr2, 0, bArr.length);
        return bArr2;
    }

    public static int[] c(int[] iArr, int[] iArr2) {
        if (iArr == null) {
            return iArr2;
        }
        if (iArr2 == null || iArr2.length < iArr.length) {
            return Arrays.copyOf(iArr, iArr.length);
        }
        System.arraycopy(iArr, 0, iArr2, 0, iArr.length);
        return iArr2;
    }

    public static a e() {
        ArrayDeque<a> arrayDeque = f6371g;
        synchronized (arrayDeque) {
            if (arrayDeque.isEmpty()) {
                return new a();
            }
            return arrayDeque.removeFirst();
        }
    }

    public final void a() throws InterruptedException {
        this.f6377e.b();
        e eVar = this.f6375c;
        Objects.requireNonNull(eVar);
        eVar.obtainMessage(2).sendToTarget();
        m5.e eVar2 = this.f6377e;
        synchronized (eVar2) {
            while (!eVar2.f10377a) {
                eVar2.wait();
            }
        }
    }

    public final void d() {
        if (this.f6378f) {
            try {
                e eVar = this.f6375c;
                Objects.requireNonNull(eVar);
                eVar.removeCallbacksAndMessages(null);
                a();
            } catch (InterruptedException e10) {
                Thread.currentThread().interrupt();
                throw new IllegalStateException(e10);
            }
        }
    }
}
