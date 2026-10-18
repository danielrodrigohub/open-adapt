package s3;

/* JADX INFO: compiled from: CeaUtil.java */
/* JADX INFO: loaded from: classes.dex */
public final class b {
    public static void a(long j10, m5.w wVar, w[] wVarArr) {
        int i10;
        int iT;
        while (true) {
            if (wVar.f10477c - wVar.f10476b <= 1) {
                return;
            }
            int i11 = 0;
            while (true) {
                if (wVar.f10477c - wVar.f10476b == 0) {
                    i10 = -1;
                    break;
                }
                int iT2 = wVar.t();
                i11 += iT2;
                if (iT2 != 255) {
                    i10 = i11;
                    break;
                }
            }
            int i12 = 0;
            do {
                if (wVar.f10477c - wVar.f10476b == 0) {
                    i12 = -1;
                    break;
                } else {
                    iT = wVar.t();
                    i12 += iT;
                }
            } while (iT == 255);
            int i13 = wVar.f10476b;
            int i14 = i13 + i12;
            if (i12 == -1 || i12 > wVar.f10477c - i13) {
                m5.p.g("CeaUtil", "Skipping remainder of malformed SEI NAL unit.");
                i14 = wVar.f10477c;
            } else if (i10 == 4 && i12 >= 8) {
                int iT3 = wVar.t();
                int iY = wVar.y();
                int iE = iY == 49 ? wVar.e() : 0;
                int iT4 = wVar.t();
                if (iY == 47) {
                    wVar.E(1);
                }
                boolean z10 = iT3 == 181 && (iY == 49 || iY == 47) && iT4 == 3;
                if (iY == 49) {
                    z10 &= iE == 1195456820;
                }
                if (z10) {
                    b(j10, wVar, wVarArr);
                }
            }
            wVar.D(i14);
        }
    }

    public static void b(long j10, m5.w wVar, w[] wVarArr) {
        int iT = wVar.t();
        if ((iT & 64) != 0) {
            wVar.E(1);
            int i10 = (iT & 31) * 3;
            int i11 = wVar.f10476b;
            for (w wVar2 : wVarArr) {
                wVar.D(i11);
                wVar2.f(wVar, i10);
                if (j10 != -9223372036854775807L) {
                    wVar2.c(j10, 1, i10, 0, null);
                }
            }
        }
    }
}
