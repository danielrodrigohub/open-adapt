package okhttp3.logging.internal;

import de.c;
import java.io.EOFException;
import p4.h;

/* JADX INFO: compiled from: utf8.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class Utf8Kt {
    public static final boolean isProbablyUtf8(c cVar) {
        h.j(cVar, "<this>");
        try {
            c cVar2 = new c();
            long j10 = cVar.f6199i;
            cVar.g0(cVar2, 0L, j10 > 64 ? 64L : j10);
            for (int i10 = 0; i10 < 16 && !cVar2.z(); i10++) {
                int iR0 = cVar2.r0();
                if (Character.isISOControl(iR0) && !Character.isWhitespace(iR0)) {
                    return false;
                }
            }
            return true;
        } catch (EOFException unused) {
            return false;
        }
    }
}
