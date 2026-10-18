package i2;

import android.graphics.Color;
import java.io.IOException;

/* JADX INFO: compiled from: ColorParser.java */
/* JADX INFO: loaded from: classes.dex */
public final class g implements l0<Integer> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final g f8679a = new g();

    @Override // i2.l0
    public final Integer a(j2.c cVar, float f10) throws IOException {
        boolean z10 = cVar.o0() == 1;
        if (z10) {
            cVar.x();
        }
        double dK0 = cVar.k0();
        double dK1 = cVar.k0();
        double dK2 = cVar.k0();
        double dK3 = cVar.o0() == 7 ? cVar.k0() : 1.0d;
        if (z10) {
            cVar.f0();
        }
        if (dK0 <= 1.0d && dK1 <= 1.0d && dK2 <= 1.0d) {
            dK0 *= 255.0d;
            dK1 *= 255.0d;
            dK2 *= 255.0d;
            if (dK3 <= 1.0d) {
                dK3 *= 255.0d;
            }
        }
        return Integer.valueOf(Color.argb((int) dK3, (int) dK0, (int) dK1, (int) dK2));
    }
}
