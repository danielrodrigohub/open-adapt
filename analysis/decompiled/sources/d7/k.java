package d7;

import java.io.FilterOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.nio.ByteBuffer;
import java.security.GeneralSecurityException;

/* JADX INFO: compiled from: StreamingAeadEncryptingStream.java */
/* JADX INFO: loaded from: classes.dex */
public final class k extends FilterOutputStream {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public i f6108h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f6109i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public ByteBuffer f6110j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public ByteBuffer f6111k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public boolean f6112l;

    public k(f fVar, OutputStream outputStream, byte[] bArr) throws GeneralSecurityException, IOException {
        super(outputStream);
        this.f6108h = fVar.h(bArr);
        int iF = fVar.f();
        this.f6109i = iF;
        this.f6110j = ByteBuffer.allocate(iF);
        this.f6111k = ByteBuffer.allocate(fVar.d());
        this.f6110j.limit(this.f6109i - fVar.c());
        ByteBuffer byteBufferB = this.f6108h.b();
        byte[] bArr2 = new byte[byteBufferB.remaining()];
        byteBufferB.get(bArr2);
        ((FilterOutputStream) this).out.write(bArr2);
        this.f6112l = true;
    }

    @Override // java.io.FilterOutputStream, java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public final synchronized void close() throws IOException {
        if (this.f6112l) {
            try {
                this.f6110j.flip();
                this.f6111k.clear();
                this.f6108h.c(this.f6110j, this.f6111k);
                this.f6111k.flip();
                ((FilterOutputStream) this).out.write(this.f6111k.array(), this.f6111k.position(), this.f6111k.remaining());
                this.f6112l = false;
                super.close();
            } catch (GeneralSecurityException e10) {
                throw new IOException("ptBuffer.remaining():" + this.f6110j.remaining() + " ctBuffer.remaining():" + this.f6111k.remaining(), e10);
            }
        }
    }

    @Override // java.io.FilterOutputStream, java.io.OutputStream
    public final void write(int i10) throws IOException {
        write(new byte[]{(byte) i10}, 0, 1);
    }

    @Override // java.io.FilterOutputStream, java.io.OutputStream
    public final void write(byte[] bArr) throws IOException {
        write(bArr, 0, bArr.length);
    }

    @Override // java.io.FilterOutputStream, java.io.OutputStream
    public final synchronized void write(byte[] bArr, int i10, int i11) throws IOException {
        if (this.f6112l) {
            while (i11 > this.f6110j.remaining()) {
                int iRemaining = this.f6110j.remaining();
                ByteBuffer byteBufferWrap = ByteBuffer.wrap(bArr, i10, iRemaining);
                i10 += iRemaining;
                i11 -= iRemaining;
                try {
                    this.f6110j.flip();
                    this.f6111k.clear();
                    this.f6108h.a(this.f6110j, byteBufferWrap, this.f6111k);
                    this.f6111k.flip();
                    ((FilterOutputStream) this).out.write(this.f6111k.array(), this.f6111k.position(), this.f6111k.remaining());
                    this.f6110j.clear();
                    this.f6110j.limit(this.f6109i);
                } catch (GeneralSecurityException e10) {
                    throw new IOException(e10);
                }
            }
            this.f6110j.put(bArr, i10, i11);
        } else {
            throw new IOException("Trying to write to closed stream");
        }
    }
}
