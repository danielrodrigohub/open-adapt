package s3;

import java.io.IOException;

/* JADX INFO: compiled from: ExtractorInput.java */
/* JADX INFO: loaded from: classes.dex */
public interface i extends l5.h {
    long a();

    @Override // l5.h
    int b(byte[] bArr, int i10, int i11) throws IOException;

    int d(int i10) throws IOException;

    boolean e(byte[] bArr, int i10, int i11, boolean z10) throws IOException;

    int g(byte[] bArr, int i10, int i11) throws IOException;

    void i();

    void k(int i10) throws IOException;

    boolean n(int i10, boolean z10) throws IOException;

    boolean p(byte[] bArr, int i10, int i11, boolean z10) throws IOException;

    long q();

    void readFully(byte[] bArr, int i10, int i11) throws IOException;

    void s(byte[] bArr, int i10, int i11) throws IOException;

    void t(int i10) throws IOException;

    long u();
}
