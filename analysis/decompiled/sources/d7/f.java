package d7;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.security.GeneralSecurityException;
import y6.n;

/* JADX INFO: compiled from: NonceBasedStreamingAead.java */
/* JADX INFO: loaded from: classes.dex */
public abstract class f implements n {
    @Override // y6.n
    public final OutputStream a(OutputStream outputStream, byte[] bArr) throws GeneralSecurityException, IOException {
        return new k(this, outputStream, bArr);
    }

    @Override // y6.n
    public final InputStream b(InputStream inputStream, byte[] bArr) throws GeneralSecurityException, IOException {
        return new j(this, inputStream, bArr);
    }

    public abstract int c();

    public abstract int d();

    public abstract int e();

    public abstract int f();

    public abstract h g() throws GeneralSecurityException;

    public abstract i h(byte[] bArr) throws GeneralSecurityException;
}
