package y6;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.security.GeneralSecurityException;

/* JADX INFO: compiled from: StreamingAead.java */
/* JADX INFO: loaded from: classes.dex */
public interface n {
    OutputStream a(OutputStream outputStream, byte[] bArr) throws GeneralSecurityException, IOException;

    InputStream b(InputStream inputStream, byte[] bArr) throws GeneralSecurityException, IOException;
}
