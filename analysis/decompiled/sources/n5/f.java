package n5;

import android.view.Surface;

/* JADX INFO: compiled from: MediaCodecVideoDecoderException.java */
/* JADX INFO: loaded from: classes.dex */
public final class f extends e4.m {
    public f(Throwable th, e4.n nVar, Surface surface) {
        super(th, nVar);
        System.identityHashCode(surface);
        if (surface != null) {
            surface.isValid();
        }
    }
}
