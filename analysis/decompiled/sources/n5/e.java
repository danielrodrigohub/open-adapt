package n5;

import de.n0;
import java.util.Collections;
import java.util.List;
import m5.w;
import n3.i1;

/* JADX INFO: compiled from: HevcConfig.java */
/* JADX INFO: loaded from: classes.dex */
public final class e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final List<byte[]> f11883a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f11884b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final float f11885c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final String f11886d;

    public e(List list, int i10, float f10, String str) {
        this.f11883a = list;
        this.f11884b = i10;
        this.f11885c = f10;
        this.f11886d = str;
    }

    public static e a(w wVar) throws i1 {
        try {
            wVar.E(21);
            int iT = wVar.t() & 3;
            int iT2 = wVar.t();
            int i10 = wVar.f10476b;
            int i11 = 0;
            int i12 = 0;
            for (int i13 = 0; i13 < iT2; i13++) {
                wVar.E(1);
                int iY = wVar.y();
                for (int i14 = 0; i14 < iY; i14++) {
                    int iY2 = wVar.y();
                    i12 += iY2 + 4;
                    wVar.E(iY2);
                }
            }
            wVar.D(i10);
            byte[] bArr = new byte[i12];
            float f10 = 1.0f;
            String strD = null;
            int i15 = 0;
            int i16 = 0;
            while (i15 < iT2) {
                int iT3 = wVar.t() & 127;
                int iY3 = wVar.y();
                int i17 = i11;
                while (i17 < iY3) {
                    int iY4 = wVar.y();
                    System.arraycopy(m5.t.f10435a, i11, bArr, i16, 4);
                    int i18 = i16 + 4;
                    System.arraycopy(wVar.f10475a, wVar.f10476b, bArr, i18, iY4);
                    if (iT3 == 33 && i17 == 0) {
                        m5.t.a aVarC = m5.t.c(bArr, i18, i18 + iY4);
                        float f11 = aVarC.f10447i;
                        strD = n0.d(aVarC.f10439a, aVarC.f10440b, aVarC.f10441c, aVarC.f10442d, aVarC.f10443e, aVarC.f10444f);
                        f10 = f11;
                    }
                    i16 = i18 + iY4;
                    wVar.E(iY4);
                    i17++;
                    iT2 = iT2;
                    i11 = 0;
                }
                i15++;
                i11 = 0;
            }
            return new e(i12 == 0 ? Collections.emptyList() : Collections.singletonList(bArr), iT + 1, f10, strD);
        } catch (ArrayIndexOutOfBoundsException e10) {
            throw i1.a("Error parsing HEVC config", e10);
        }
    }
}
