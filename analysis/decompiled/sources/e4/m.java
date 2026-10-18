package e4;

import android.media.MediaCodec;
import m5.g0;

/* JADX INFO: compiled from: MediaCodecDecoderException.java */
/* JADX INFO: loaded from: classes.dex */
public class m extends q3.f {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final String f6414h;

    /* JADX WARN: Illegal instructions before constructor call */
    public m(Throwable th, n nVar) {
        StringBuilder sbC = a0.b.c("Decoder failed: ");
        String diagnosticInfo = null;
        sbC.append(nVar == null ? null : nVar.f6415a);
        super(sbC.toString(), th);
        if (g0.f10384a >= 21 && (th instanceof MediaCodec.CodecException)) {
            diagnosticInfo = ((MediaCodec.CodecException) th).getDiagnosticInfo();
        }
        this.f6414h = diagnosticInfo;
    }
}
