package e4;

import android.media.MediaCodec;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import java.util.ArrayDeque;
import java.util.Objects;

/* JADX INFO: compiled from: AsynchronousMediaCodecBufferEnqueuer.java */
/* JADX INFO: loaded from: classes.dex */
public final class e extends Handler {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ f f6370a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public e(f fVar, Looper looper) {
        super(looper);
        this.f6370a = fVar;
    }

    /* JADX WARN: Code duplicated, block: B:28:0x0066  */
    /* JADX WARN: Code duplicated, block: B:36:0x0071 A[ORIG_RETURN, RETURN] */
    /* JADX WARN: Code duplicated, block: B:40:0x0069 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    @Override // android.os.Handler
    public final void handleMessage(Message message) {
        f.a aVar;
        ArrayDeque<f.a> arrayDeque;
        f fVar = this.f6370a;
        Objects.requireNonNull(fVar);
        int i10 = message.what;
        f.a aVar2 = null;
        if (i10 != 0) {
            if (i10 == 1) {
                aVar = (f.a) message.obj;
                int i11 = aVar.f6379a;
                int i12 = aVar.f6380b;
                MediaCodec.CryptoInfo cryptoInfo = aVar.f6382d;
                long j10 = aVar.f6383e;
                int i13 = aVar.f6384f;
                try {
                    synchronized (f.f6372h) {
                        fVar.f6373a.queueSecureInputBuffer(i11, i12, cryptoInfo, j10, i13);
                    }
                } catch (RuntimeException e10) {
                    fVar.f6376d.compareAndSet(null, e10);
                }
            } else if (i10 != 2) {
                fVar.f6376d.compareAndSet(null, new IllegalStateException(String.valueOf(message.what)));
            } else {
                fVar.f6377e.c();
            }
            if (aVar2 != null) {
                arrayDeque = f.f6371g;
                synchronized (arrayDeque) {
                    arrayDeque.add(aVar2);
                }
            }
        }
        aVar = (f.a) message.obj;
        try {
            fVar.f6373a.queueInputBuffer(aVar.f6379a, aVar.f6380b, aVar.f6381c, aVar.f6383e, aVar.f6384f);
        } catch (RuntimeException e11) {
            fVar.f6376d.compareAndSet(null, e11);
        }
        aVar2 = aVar;
        if (aVar2 != null) {
            arrayDeque = f.f6371g;
            synchronized (arrayDeque) {
                arrayDeque.add(aVar2);
            }
        }
    }
}
