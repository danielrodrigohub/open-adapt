package s3;

import java.io.IOException;
import java.util.Arrays;

/* JADX INFO: compiled from: FlacMetadataReader.java */
/* JADX INFO: loaded from: classes.dex */
public final class n {
    public static f4.a a(i iVar, boolean z10) throws IOException {
        f4.a aVarA = new r().a(iVar, z10 ? null : k4.g.f9671i);
        if (aVarA == null || aVarA.f7052h.length == 0) {
            return null;
        }
        return aVarA;
    }

    public static p.a b(m5.w wVar) {
        wVar.E(1);
        int iV = wVar.v();
        long j10 = ((long) wVar.f10476b) + ((long) iV);
        int i10 = iV / 18;
        long[] jArrCopyOf = new long[i10];
        long[] jArrCopyOf2 = new long[i10];
        for (int i11 = 0; i11 < i10; i11++) {
            long jM = wVar.m();
            if (jM == -1) {
                jArrCopyOf = Arrays.copyOf(jArrCopyOf, i11);
                jArrCopyOf2 = Arrays.copyOf(jArrCopyOf2, i11);
                break;
            }
            jArrCopyOf[i11] = jM;
            jArrCopyOf2[i11] = wVar.m();
            wVar.E(2);
        }
        wVar.E((int) (j10 - ((long) wVar.f10476b)));
        return new p.a(jArrCopyOf, jArrCopyOf2);
    }
}
