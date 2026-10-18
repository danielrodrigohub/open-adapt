package g4;

import androidx.fragment.app.r;
import f4.d;
import java.nio.ByteBuffer;
import java.nio.charset.Charset;
import java.util.ArrayList;
import m5.v;
import t6.c;

/* JADX INFO: compiled from: AppInfoTableDecoder.java */
/* JADX INFO: loaded from: classes.dex */
public final class b extends r {
    @Override // androidx.fragment.app.r
    public final f4.a g(d dVar, ByteBuffer byteBuffer) {
        if (byteBuffer.get() != 116) {
            return null;
        }
        v vVar = new v(byteBuffer.array(), byteBuffer.limit());
        vVar.m(12);
        int iD = (vVar.d() + vVar.g(12)) - 4;
        vVar.m(44);
        vVar.n(vVar.g(12));
        vVar.m(16);
        ArrayList arrayList = new ArrayList();
        while (vVar.d() < iD) {
            vVar.m(48);
            int iG = vVar.g(8);
            vVar.m(4);
            int iD2 = vVar.d() + vVar.g(12);
            String str = null;
            String str2 = null;
            while (vVar.d() < iD2) {
                int iG2 = vVar.g(8);
                int iG3 = vVar.g(8);
                int iD3 = vVar.d() + iG3;
                if (iG2 == 2) {
                    int iG4 = vVar.g(16);
                    vVar.m(8);
                    if (iG4 == 3) {
                        while (vVar.d() < iD3) {
                            int iG5 = vVar.g(8);
                            Charset charset = c.f15536a;
                            byte[] bArr = new byte[iG5];
                            vVar.i(bArr, iG5);
                            str = new String(bArr, charset);
                            int iG6 = vVar.g(8);
                            for (int i10 = 0; i10 < iG6; i10++) {
                                vVar.n(vVar.g(8));
                            }
                        }
                    }
                } else if (iG2 == 21) {
                    Charset charset2 = c.f15536a;
                    byte[] bArr2 = new byte[iG3];
                    vVar.i(bArr2, iG3);
                    str2 = new String(bArr2, charset2);
                }
                vVar.k(iD3 * 8);
            }
            vVar.k(iD2 * 8);
            if (str != null && str2 != null) {
                arrayList.add(new a(iG, androidx.recyclerview.widget.d.c(str, str2)));
            }
        }
        if (arrayList.isEmpty()) {
            return null;
        }
        return new f4.a(arrayList);
    }
}
