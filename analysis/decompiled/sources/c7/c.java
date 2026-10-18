package c7;

import java.io.BufferedInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.security.GeneralSecurityException;
import java.util.Iterator;
import javax.annotation.concurrent.GuardedBy;
import y6.i;
import y6.n;

/* JADX INFO: compiled from: InputStreamDecrypter.java */
/* JADX INFO: loaded from: classes.dex */
public final class c extends InputStream {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @GuardedBy("this")
    public boolean f4245h = false;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @GuardedBy("this")
    public InputStream f4246i = null;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @GuardedBy("this")
    public InputStream f4247j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public i<n> f4248k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public byte[] f4249l;

    public c(i<n> iVar, InputStream inputStream, byte[] bArr) {
        this.f4248k = iVar;
        if (inputStream.markSupported()) {
            this.f4247j = inputStream;
        } else {
            this.f4247j = new BufferedInputStream(inputStream);
        }
        this.f4247j.mark(Integer.MAX_VALUE);
        this.f4249l = (byte[]) bArr.clone();
    }

    @Override // java.io.InputStream
    @GuardedBy("this")
    public final synchronized int available() throws IOException {
        InputStream inputStream = this.f4246i;
        if (inputStream == null) {
            return 0;
        }
        return inputStream.available();
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    @GuardedBy("this")
    public final synchronized void close() throws IOException {
        this.f4247j.close();
    }

    @Override // java.io.InputStream
    public final boolean markSupported() {
        return false;
    }

    @Override // java.io.InputStream
    @GuardedBy("this")
    public final synchronized int read() throws IOException {
        byte[] bArr = new byte[1];
        if (read(bArr) != 1) {
            return -1;
        }
        return bArr[0];
    }

    @Override // java.io.InputStream
    @GuardedBy("this")
    public final synchronized int read(byte[] bArr) throws IOException {
        return read(bArr, 0, bArr.length);
    }

    @Override // java.io.InputStream
    @GuardedBy("this")
    public final synchronized int read(byte[] bArr, int i10, int i11) throws IOException {
        if (i11 == 0) {
            return 0;
        }
        InputStream inputStream = this.f4246i;
        if (inputStream != null) {
            return inputStream.read(bArr, i10, i11);
        }
        if (!this.f4245h) {
            this.f4245h = true;
            Iterator<i.a<n>> it = this.f4248k.a(y6.b.f18658a).iterator();
            while (it.hasNext()) {
                try {
                    InputStream inputStreamB = it.next().f18671a.b(this.f4247j, this.f4249l);
                    int i12 = inputStreamB.read(bArr, i10, i11);
                    if (i12 != 0) {
                        this.f4246i = inputStreamB;
                        this.f4247j.mark(0);
                        return i12;
                    }
                    throw new IOException("Could not read bytes from the ciphertext stream");
                } catch (IOException unused) {
                    this.f4247j.reset();
                } catch (GeneralSecurityException unused2) {
                    this.f4247j.reset();
                }
            }
            throw new IOException("No matching key found for the ciphertext in the stream.");
        }
        throw new IOException("No matching key found for the ciphertext in the stream.");
    }
}
