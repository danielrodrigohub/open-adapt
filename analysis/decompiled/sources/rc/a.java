package rc;

import androidx.lifecycle.o;
import hc.g0;

/* JADX INFO: compiled from: FirmwareArchiveUtil.java */
/* JADX INFO: loaded from: classes.dex */
public final class a {
    public static int a(byte[] bArr, int i10, int i11) {
        o.q().c(d1.c.a("from getLocalSegmentChecksum: offset:=", i10, " segmentSize: = ", i11), null, false, "FirmwareArchiveUtil");
        long j10 = 0;
        for (int i12 = i10; i12 < i10 + i11; i12++) {
            j10 += (long) (bArr[i12] & 255);
        }
        g0 g0VarQ = o.q();
        StringBuilder sbC = a0.b.c("from getLocalSegmentChecksum: checksum:=");
        int i13 = (int) (j10 & 16777215);
        sbC.append(i13);
        g0VarQ.c(sbC.toString(), null, false, "FirmwareArchiveUtil");
        return i13;
    }

    public static boolean b(byte[] bArr) {
        if (bArr == null) {
            o.q().c("null fileData", null, false, "FirmwareArchiveUtil");
            return false;
        }
        if (bArr.length == 0) {
            o.q().c("zero length fileData", null, false, "FirmwareArchiveUtil");
            return false;
        }
        if (bArr[0] == -66 || bArr[1] == -17) {
            return true;
        }
        o.q().c("invalid signature in fileData", null, false, "FirmwareArchiveUtil");
        return false;
    }
}
