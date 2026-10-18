package s3;

import java.io.EOFException;
import java.io.IOException;

/* JADX INFO: compiled from: Id3Peeker.java */
/* JADX INFO: loaded from: classes.dex */
public final class r {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final m5.w f15071a = new m5.w(10);

    public final f4.a a(i iVar, k4.g.a aVar) throws IOException {
        f4.a aVarL = null;
        int i10 = 0;
        while (true) {
            try {
                iVar.s(this.f15071a.f10475a, 0, 10);
                this.f15071a.D(0);
                if (this.f15071a.v() != 4801587) {
                    break;
                }
                this.f15071a.E(3);
                int iS = this.f15071a.s();
                int i11 = iS + 10;
                if (aVarL == null) {
                    byte[] bArr = new byte[i11];
                    System.arraycopy(this.f15071a.f10475a, 0, bArr, 0, 10);
                    iVar.s(bArr, 10, iS);
                    aVarL = new k4.g(aVar).l(bArr, i11);
                } else {
                    iVar.t(iS);
                }
                i10 += i11;
            } catch (EOFException unused) {
            }
        }
        iVar.i();
        iVar.t(i10);
        return aVarL;
    }
}
