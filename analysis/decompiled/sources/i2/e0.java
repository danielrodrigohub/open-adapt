package i2;

import java.io.IOException;

/* JADX INFO: compiled from: ScaleXYParser.java */
/* JADX INFO: loaded from: classes.dex */
public final class e0 implements l0<l2.d> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final e0 f8675a = new e0();

    @Override // i2.l0
    public final l2.d a(j2.c cVar, float f10) throws IOException {
        boolean z10 = cVar.o0() == 1;
        if (z10) {
            cVar.x();
        }
        float fK0 = (float) cVar.k0();
        float fK1 = (float) cVar.k0();
        while (cVar.i0()) {
            cVar.s0();
        }
        if (z10) {
            cVar.f0();
        }
        return new l2.d((fK0 / 100.0f) * f10, (fK1 / 100.0f) * f10);
    }
}
