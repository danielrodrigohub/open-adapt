package s3;

import m5.g0;

/* JADX INFO: compiled from: FlacFrameReader.java */
/* JADX INFO: loaded from: classes.dex */
public final class m {

    /* JADX INFO: compiled from: FlacFrameReader.java */
    public static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public long f15051a;
    }

    /* JADX WARN: Code duplicated, block: B:66:0x00b6  */
    /* JADX WARN: Code duplicated, block: B:67:0x00b8  */
    /* JADX WARN: Instruction removed from duplicated block: B:67:0x00b8, please report this as an issue */
    public static boolean a(m5.w wVar, p pVar, int i10, a aVar) {
        boolean z10;
        boolean z11;
        long jU = wVar.u();
        long j10 = jU >>> 16;
        if (j10 != i10) {
            return false;
        }
        boolean z12 = (j10 & 1) == 1;
        int i11 = (int) ((jU >> 12) & 15);
        int i12 = (int) ((jU >> 8) & 15);
        int i13 = (int) (15 & (jU >> 4));
        int i14 = (int) ((jU >> 1) & 7);
        boolean z13 = (jU & 1) == 1;
        if (i13 > 7 ? !(i13 > 10 || pVar.f15060g != 2) : i13 == pVar.f15060g - 1) {
            if ((i14 == 0 || i14 == pVar.f15062i) && !z13) {
                try {
                    long jZ = wVar.z();
                    if (!z12) {
                        jZ *= (long) pVar.f15055b;
                    }
                    aVar.f15051a = jZ;
                    z10 = true;
                } catch (NumberFormatException unused) {
                    z10 = false;
                }
                if (z10) {
                    int iB = b(wVar, i11);
                    if (iB != -1 && iB <= pVar.f15055b) {
                        int i15 = pVar.f15058e;
                        if (i12 != 0) {
                            if (i12 <= 11) {
                                if (i12 == pVar.f15059f) {
                                }
                            } else if (i12 != 12) {
                                if (i12 <= 14) {
                                    int iY = wVar.y();
                                    if (i12 == 14) {
                                        iY *= 10;
                                    }
                                    z11 = iY == i15;
                                }
                            } else if (wVar.t() * 1000 == i15) {
                            }
                        }
                        if (z11) {
                            int iT = wVar.t();
                            int i16 = wVar.f10476b;
                            byte[] bArr = wVar.f10475a;
                            int i17 = i16 - 1;
                            int i18 = g0.f10384a;
                            int i19 = 0;
                            for (int i20 = wVar.f10476b; i20 < i17; i20++) {
                                i19 = g0.f10397n[i19 ^ (bArr[i20] & 255)];
                            }
                            if (iT == i19) {
                                return true;
                            }
                        }
                    }
                }
            }
        }
        return false;
    }

    public static int b(m5.w wVar, int i10) {
        switch (i10) {
            case 1:
                return 192;
            case 2:
            case 3:
            case 4:
            case 5:
                return 576 << (i10 - 2);
            case 6:
                return wVar.t() + 1;
            case 7:
                return wVar.y() + 1;
            case 8:
            case 9:
            case 10:
            case 11:
            case 12:
            case 13:
            case 14:
            case 15:
                return 256 << (i10 - 8);
            default:
                return -1;
        }
    }
}
