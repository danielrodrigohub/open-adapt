package ee;

import de.e0;
import de.y;
import java.io.EOFException;

/* JADX INFO: compiled from: -Buffer.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class h {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final byte[] f6774a;

    static {
        byte[] bytes = "0123456789abcdef".getBytes(yd.a.f19171b);
        p4.h.i(bytes, "this as java.lang.String).getBytes(charset)");
        f6774a = bytes;
    }

    public static final boolean a(e0 e0Var, int i10, byte[] bArr, int i11) {
        int i12 = e0Var.f6218c;
        byte[] bArr2 = e0Var.f6216a;
        for (int i13 = 1; i13 < i11; i13++) {
            if (i10 == i12) {
                e0Var = e0Var.f6221f;
                p4.h.g(e0Var);
                bArr2 = e0Var.f6216a;
                i10 = e0Var.f6217b;
                i12 = e0Var.f6218c;
            }
            if (bArr2[i10] != bArr[i13]) {
                return false;
            }
            i10++;
        }
        return true;
    }

    public static final String b(de.c cVar, long j10) throws EOFException {
        p4.h.j(cVar, "<this>");
        if (j10 > 0) {
            long j11 = j10 - 1;
            if (cVar.h0(j11) == ((byte) 13)) {
                String strQ0 = cVar.q0(j11);
                cVar.a(2L);
                return strQ0;
            }
        }
        String strQ1 = cVar.q0(j10);
        cVar.a(1L);
        return strQ1;
    }

    public static final int c(de.c cVar, y yVar, boolean z10) {
        int i10;
        int i11;
        int i12;
        int i13;
        e0 e0Var;
        p4.h.j(cVar, "<this>");
        p4.h.j(yVar, "options");
        e0 e0Var2 = cVar.f6198h;
        if (e0Var2 == null) {
            return z10 ? -2 : -1;
        }
        byte[] bArr = e0Var2.f6216a;
        int i14 = e0Var2.f6217b;
        int i15 = e0Var2.f6218c;
        int[] iArr = yVar.f6281i;
        e0 e0Var3 = e0Var2;
        int i16 = -1;
        int i17 = 0;
        loop0: while (true) {
            int i18 = i17 + 1;
            int i19 = iArr[i17];
            int i20 = i18 + 1;
            int i21 = iArr[i18];
            if (i21 != -1) {
                i16 = i21;
            }
            if (e0Var3 == null) {
                break;
            }
            if (i19 >= 0) {
                i10 = i14 + 1;
                int i22 = bArr[i14] & 255;
                int i23 = i20 + i19;
                while (i20 != i23) {
                    if (i22 == iArr[i20]) {
                        i11 = iArr[i20 + i19];
                        if (i10 == i15) {
                            e0Var3 = e0Var3.f6221f;
                            p4.h.g(e0Var3);
                            i10 = e0Var3.f6217b;
                            bArr = e0Var3.f6216a;
                            i15 = e0Var3.f6218c;
                            if (e0Var3 == e0Var2) {
                                e0Var3 = null;
                            }
                        }
                    } else {
                        i20++;
                    }
                }
                return i16;
            }
            int i24 = (i19 * (-1)) + i20;
            while (true) {
                int i25 = i14 + 1;
                int i26 = i20 + 1;
                if ((bArr[i14] & 255) != iArr[i20]) {
                    return i16;
                }
                boolean z11 = i26 == i24;
                if (i25 == i15) {
                    p4.h.g(e0Var3);
                    e0 e0Var4 = e0Var3.f6221f;
                    p4.h.g(e0Var4);
                    i13 = e0Var4.f6217b;
                    byte[] bArr2 = e0Var4.f6216a;
                    i12 = e0Var4.f6218c;
                    if (e0Var4 != e0Var2) {
                        e0Var = e0Var4;
                        bArr = bArr2;
                    } else {
                        if (!z11) {
                            break loop0;
                        }
                        bArr = bArr2;
                        e0Var = null;
                    }
                } else {
                    e0 e0Var5 = e0Var3;
                    i12 = i15;
                    i13 = i25;
                    e0Var = e0Var5;
                }
                if (z11) {
                    i11 = iArr[i26];
                    i10 = i13;
                    i15 = i12;
                    e0Var3 = e0Var;
                    break;
                }
                i14 = i13;
                i15 = i12;
                i20 = i26;
                e0Var3 = e0Var;
            }
            if (i11 >= 0) {
                return i11;
            }
            i17 = -i11;
            i14 = i10;
        }
        if (z10) {
            return -2;
        }
        return i16;
    }
}
