package s3;

import java.io.EOFException;
import java.io.IOException;
import n3.i1;
import org.checkerframework.dataflow.qual.Pure;

/* JADX INFO: compiled from: ExtractorUtil.java */
/* JADX INFO: loaded from: classes.dex */
public final class k {
    @Pure
    public static void a(boolean z10, String str) throws i1 {
        if (!z10) {
            throw i1.a(str, null);
        }
    }

    public static boolean b(i iVar, byte[] bArr, int i10, boolean z10) throws IOException {
        try {
            return iVar.p(bArr, 0, i10, z10);
        } catch (EOFException e10) {
            if (z10) {
                return false;
            }
            throw e10;
        }
    }
}
