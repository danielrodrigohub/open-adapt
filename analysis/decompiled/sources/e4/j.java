package e4;

import java.io.IOException;
import m5.g0;

/* JADX INFO: compiled from: DefaultMediaCodecAdapterFactory.java */
/* JADX INFO: loaded from: classes.dex */
public final class j implements l.b {
    @Override // e4.l.b
    public final l a(l.a aVar) throws IOException {
        int i10 = g0.f10384a;
        if (i10 < 23 || i10 < 31) {
            return new t.a().a(aVar);
        }
        int i11 = m5.s.i(aVar.f6411c.f11687s);
        StringBuilder sbC = a0.b.c("Creating an asynchronous MediaCodec adapter for track type ");
        sbC.append(g0.E(i11));
        m5.p.e("DMCodecAdapterFactory", sbC.toString());
        return new d.a(i11).a(aVar);
    }
}
