package pd;

import java.io.ByteArrayOutputStream;
import p4.h;

/* JADX INFO: compiled from: FileReadWrite.kt */
/* JADX INFO: loaded from: classes.dex */
public final class a extends ByteArrayOutputStream {
    public a() {
        super(8193);
    }

    public final byte[] x() {
        byte[] bArr = ((ByteArrayOutputStream) this).buf;
        h.i(bArr, "buf");
        return bArr;
    }
}
