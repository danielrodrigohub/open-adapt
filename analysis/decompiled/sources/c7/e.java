package c7;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.security.GeneralSecurityException;
import y6.i;
import y6.n;

/* JADX INFO: compiled from: StreamingAeadHelper.java */
/* JADX INFO: loaded from: classes.dex */
public final class e implements n {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public i<n> f4250a;

    public e(i<n> iVar) throws GeneralSecurityException {
        if (iVar.f18669b == null) {
            throw new GeneralSecurityException("Missing primary primitive.");
        }
        this.f4250a = iVar;
    }

    @Override // y6.n
    public final OutputStream a(OutputStream outputStream, byte[] bArr) throws GeneralSecurityException, IOException {
        return this.f4250a.f18669b.f18671a.a(outputStream, bArr);
    }

    @Override // y6.n
    public final InputStream b(InputStream inputStream, byte[] bArr) throws GeneralSecurityException, IOException {
        return new c(this.f4250a, inputStream, bArr);
    }
}
