package n5;

import de.n0;
import java.util.ArrayList;
import java.util.List;
import m5.w;
import n3.i1;

/* JADX INFO: compiled from: AvcConfig.java */
/* JADX INFO: loaded from: classes.dex */
public final class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final List<byte[]> f11857a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f11858b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f11859c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final int f11860d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final float f11861e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final String f11862f;

    public a(List<byte[]> list, int i10, int i11, int i12, float f10, String str) {
        this.f11857a = list;
        this.f11858b = i10;
        this.f11859c = i11;
        this.f11860d = i12;
        this.f11861e = f10;
        this.f11862f = str;
    }

    public static byte[] a(w wVar) {
        int iY = wVar.y();
        int i10 = wVar.f10476b;
        wVar.E(iY);
        byte[] bArr = wVar.f10475a;
        byte[] bArr2 = new byte[iY + 4];
        System.arraycopy(n0.f6258b, 0, bArr2, 0, 4);
        System.arraycopy(bArr, i10, bArr2, 4, iY);
        return bArr2;
    }

    public static a b(w wVar) throws i1 {
        float f10;
        String strC;
        int i10;
        try {
            wVar.E(4);
            int iT = (wVar.t() & 3) + 1;
            if (iT == 3) {
                throw new IllegalStateException();
            }
            ArrayList arrayList = new ArrayList();
            int iT2 = wVar.t() & 31;
            for (int i11 = 0; i11 < iT2; i11++) {
                arrayList.add(a(wVar));
            }
            int iT3 = wVar.t();
            for (int i12 = 0; i12 < iT3; i12++) {
                arrayList.add(a(wVar));
            }
            int i13 = -1;
            if (iT2 > 0) {
                m5.t.c cVarE = m5.t.e((byte[]) arrayList.get(0), iT, ((byte[]) arrayList.get(0)).length);
                int i14 = cVarE.f10455e;
                int i15 = cVarE.f10456f;
                float f11 = cVarE.f10457g;
                strC = n0.c(cVarE.f10451a, cVarE.f10452b, cVarE.f10453c);
                i13 = i14;
                i10 = i15;
                f10 = f11;
            } else {
                f10 = 1.0f;
                strC = null;
                i10 = -1;
            }
            return new a(arrayList, iT, i13, i10, f10, strC);
        } catch (ArrayIndexOutOfBoundsException e10) {
            throw i1.a("Error parsing AVC config", e10);
        }
    }
}
