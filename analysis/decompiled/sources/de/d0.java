package de;

import androidx.fragment.app.r0;
import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.nio.charset.Charset;

/* JADX INFO: compiled from: RealBufferedSource.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class d0 implements f {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final j0 f6212h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final c f6213i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public boolean f6214j;

    public d0(j0 j0Var) {
        p4.h.j(j0Var, "source");
        this.f6212h = j0Var;
        this.f6213i = new c();
    }

    @Override // de.f
    public final byte[] B(long j10) throws EOFException {
        T(j10);
        return this.f6213i.B(j10);
    }

    @Override // de.f
    public final long E(h0 h0Var) {
        long j10 = 0;
        while (this.f6212h.read(this.f6213i, 8192L) != -1) {
            long jF0 = this.f6213i.f0();
            if (jF0 > 0) {
                j10 += jF0;
                ((c) h0Var).write(this.f6213i, jF0);
            }
        }
        c cVar = this.f6213i;
        long j11 = cVar.f6199i;
        if (j11 <= 0) {
            return j10;
        }
        long j12 = j10 + j11;
        ((c) h0Var).write(cVar, j11);
        return j12;
    }

    @Override // de.f
    public final long G() throws EOFException {
        T(1L);
        long j10 = 0;
        while (true) {
            long j11 = j10 + 1;
            if (!o(j11)) {
                break;
            }
            byte bH0 = this.f6213i.h0(j10);
            if ((bH0 < ((byte) 48) || bH0 > ((byte) 57)) && !(j10 == 0 && bH0 == ((byte) 45))) {
                if (j10 != 0) {
                    break;
                }
                StringBuilder sb2 = new StringBuilder();
                sb2.append("Expected a digit or '-' but was 0x");
                d3.e.c(16);
                d3.e.c(16);
                String string = Integer.toString(bH0, 16);
                p4.h.i(string, "toString(this, checkRadix(radix))");
                sb2.append(string);
                throw new NumberFormatException(sb2.toString());
            }
            j10 = j11;
        }
        return this.f6213i.G();
    }

    @Override // de.f
    public final long I() throws EOFException {
        T(8L);
        return this.f6213i.I();
    }

    @Override // de.f
    public final String J(long j10) throws EOFException {
        if (!(j10 >= 0)) {
            throw new IllegalArgumentException(r0.f("limit < 0: ", j10).toString());
        }
        long j11 = j10 == Long.MAX_VALUE ? Long.MAX_VALUE : j10 + 1;
        byte b10 = (byte) 10;
        long jX = x(b10, 0L, j11);
        if (jX != -1) {
            return ee.h.b(this.f6213i, jX);
        }
        if (j11 < Long.MAX_VALUE && o(j11) && this.f6213i.h0(j11 - 1) == ((byte) 13) && o(1 + j11) && this.f6213i.h0(j11) == b10) {
            return ee.h.b(this.f6213i, j11);
        }
        c cVar = new c();
        c cVar2 = this.f6213i;
        cVar2.g0(cVar, 0L, Math.min(32, cVar2.f6199i));
        StringBuilder sbC = a0.b.c("\\n not found: limit=");
        sbC.append(Math.min(this.f6213i.f6199i, j10));
        sbC.append(" content=");
        sbC.append(cVar.i().k());
        sbC.append((char) 8230);
        throw new EOFException(sbC.toString());
    }

    @Override // de.f
    public final f Q() {
        return w.b(new b0(this));
    }

    @Override // de.f
    public final long S(g gVar) {
        p4.h.j(gVar, "targetBytes");
        if (!(!this.f6214j)) {
            throw new IllegalStateException("closed".toString());
        }
        long jMax = 0;
        while (true) {
            long jK0 = this.f6213i.k0(gVar, jMax);
            if (jK0 != -1) {
                return jK0;
            }
            c cVar = this.f6213i;
            long j10 = cVar.f6199i;
            if (this.f6212h.read(cVar, 8192L) == -1) {
                return -1L;
            }
            jMax = Math.max(jMax, j10);
        }
    }

    @Override // de.f
    public final void T(long j10) throws EOFException {
        if (!o(j10)) {
            throw new EOFException();
        }
    }

    @Override // de.f
    public final int V(y yVar) throws EOFException {
        p4.h.j(yVar, "options");
        if (!(!this.f6214j)) {
            throw new IllegalStateException("closed".toString());
        }
        do {
            int iC = ee.h.c(this.f6213i, yVar, true);
            if (iC != -2) {
                if (iC == -1) {
                    break;
                }
                this.f6213i.a(yVar.f6280h[iC].j());
                return iC;
            }
        } while (this.f6212h.read(this.f6213i, 8192L) != -1);
        return -1;
    }

    public final short Y() throws EOFException {
        T(2L);
        return this.f6213i.n0();
    }

    @Override // de.f
    public final void a(long j10) throws EOFException {
        if (!(!this.f6214j)) {
            throw new IllegalStateException("closed".toString());
        }
        while (j10 > 0) {
            c cVar = this.f6213i;
            if (cVar.f6199i == 0 && this.f6212h.read(cVar, 8192L) == -1) {
                throw new EOFException();
            }
            long jMin = Math.min(j10, this.f6213i.f6199i);
            this.f6213i.a(jMin);
            j10 -= jMin;
        }
    }

    @Override // de.f
    public final boolean a0(long j10, g gVar) {
        p4.h.j(gVar, "bytes");
        int iJ = gVar.j();
        if (!(!this.f6214j)) {
            throw new IllegalStateException("closed".toString());
        }
        if (iJ >= 0 && gVar.j() - 0 >= iJ) {
            for (int i10 = 0; i10 < iJ; i10++) {
                long j11 = ((long) i10) + 0;
                if (o(1 + j11) && this.f6213i.h0(j11) == gVar.o(0 + i10)) {
                }
            }
            return true;
        }
        return false;
    }

    @Override // de.f, de.e
    public final c b() {
        return this.f6213i;
    }

    @Override // de.f
    public final long c0() throws EOFException {
        T(1L);
        int i10 = 0;
        while (true) {
            int i11 = i10 + 1;
            if (!o(i11)) {
                break;
            }
            byte bH0 = this.f6213i.h0(i10);
            if ((bH0 < ((byte) 48) || bH0 > ((byte) 57)) && ((bH0 < ((byte) 97) || bH0 > ((byte) 102)) && (bH0 < ((byte) 65) || bH0 > ((byte) 70)))) {
                if (i10 != 0) {
                    break;
                }
                StringBuilder sb2 = new StringBuilder();
                sb2.append("Expected leading [0-9a-fA-F] character but was 0x");
                d3.e.c(16);
                d3.e.c(16);
                String string = Integer.toString(bH0, 16);
                p4.h.i(string, "toString(this, checkRadix(radix))");
                sb2.append(string);
                throw new NumberFormatException(sb2.toString());
            }
            i10 = i11;
        }
        return this.f6213i.c0();
    }

    @Override // de.j0, java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        if (this.f6214j) {
            return;
        }
        this.f6214j = true;
        this.f6212h.close();
        this.f6213i.x();
    }

    @Override // de.f
    public final String d0(Charset charset) throws IOException {
        p4.h.j(charset, "charset");
        this.f6213i.s(this.f6212h);
        return this.f6213i.d0(charset);
    }

    @Override // de.f
    public final InputStream e0() {
        return new a();
    }

    @Override // de.f
    public final void f(c cVar, long j10) throws IOException {
        p4.h.j(cVar, "sink");
        try {
            T(j10);
            this.f6213i.f(cVar, j10);
        } catch (EOFException e10) {
            cVar.s(this.f6213i);
            throw e10;
        }
    }

    public final String f0(long j10) throws EOFException {
        T(j10);
        return this.f6213i.q0(j10);
    }

    @Override // de.f
    public final c h() {
        return this.f6213i;
    }

    @Override // de.f
    public final g i() throws IOException {
        this.f6213i.s(this.f6212h);
        return this.f6213i.i();
    }

    @Override // java.nio.channels.Channel
    public final boolean isOpen() {
        return !this.f6214j;
    }

    @Override // de.f
    public final g j(long j10) throws EOFException {
        T(j10);
        return this.f6213i.j(j10);
    }

    @Override // de.f
    public final boolean o(long j10) {
        c cVar;
        if (!(j10 >= 0)) {
            throw new IllegalArgumentException(r0.f("byteCount < 0: ", j10).toString());
        }
        if (!(!this.f6214j)) {
            throw new IllegalStateException("closed".toString());
        }
        do {
            cVar = this.f6213i;
            if (cVar.f6199i >= j10) {
                return true;
            }
        } while (this.f6212h.read(cVar, 8192L) != -1);
        return false;
    }

    @Override // de.j0
    public final long read(c cVar, long j10) {
        p4.h.j(cVar, "sink");
        if (!(j10 >= 0)) {
            throw new IllegalArgumentException(r0.f("byteCount < 0: ", j10).toString());
        }
        if (!(!this.f6214j)) {
            throw new IllegalStateException("closed".toString());
        }
        c cVar2 = this.f6213i;
        if (cVar2.f6199i == 0 && this.f6212h.read(cVar2, 8192L) == -1) {
            return -1L;
        }
        return this.f6213i.read(cVar, Math.min(j10, this.f6213i.f6199i));
    }

    @Override // de.f
    public final byte readByte() throws EOFException {
        T(1L);
        return this.f6213i.readByte();
    }

    @Override // de.f
    public final void readFully(byte[] bArr) throws EOFException {
        try {
            T(bArr.length);
            this.f6213i.readFully(bArr);
        } catch (EOFException e10) {
            int i10 = 0;
            while (true) {
                c cVar = this.f6213i;
                long j10 = cVar.f6199i;
                if (j10 <= 0) {
                    throw e10;
                }
                int iL0 = cVar.l0(bArr, i10, (int) j10);
                if (iL0 == -1) {
                    throw new AssertionError();
                }
                i10 += iL0;
            }
        }
    }

    @Override // de.f
    public final int readInt() throws EOFException {
        T(4L);
        return this.f6213i.readInt();
    }

    @Override // de.f
    public final long readLong() throws EOFException {
        T(8L);
        return this.f6213i.readLong();
    }

    @Override // de.f
    public final short readShort() throws EOFException {
        T(2L);
        return this.f6213i.readShort();
    }

    @Override // de.j0
    public final k0 timeout() {
        return this.f6212h.timeout();
    }

    public final String toString() {
        StringBuilder sbC = a0.b.c("buffer(");
        sbC.append(this.f6212h);
        sbC.append(')');
        return sbC.toString();
    }

    @Override // de.f
    public final String u() {
        return J(Long.MAX_VALUE);
    }

    @Override // de.f
    public final byte[] w() throws IOException {
        this.f6213i.s(this.f6212h);
        return this.f6213i.w();
    }

    public final long x(byte b10, long j10, long j11) {
        if (!(!this.f6214j)) {
            throw new IllegalStateException("closed".toString());
        }
        long jMax = 0;
        if (!(0 <= j11)) {
            throw new IllegalArgumentException(("fromIndex=0 toIndex=" + j11).toString());
        }
        while (jMax < j11) {
            long jI0 = this.f6213i.i0(b10, jMax, j11);
            if (jI0 != -1) {
                return jI0;
            }
            c cVar = this.f6213i;
            long j12 = cVar.f6199i;
            if (j12 >= j11 || this.f6212h.read(cVar, 8192L) == -1) {
                return -1L;
            }
            jMax = Math.max(jMax, j12);
        }
        return -1L;
    }

    @Override // de.f
    public final int y() throws EOFException {
        T(4L);
        return this.f6213i.y();
    }

    @Override // de.f
    public final boolean z() {
        if (!this.f6214j) {
            return this.f6213i.z() && this.f6212h.read(this.f6213i, 8192L) == -1;
        }
        throw new IllegalStateException("closed".toString());
    }

    /* JADX INFO: compiled from: RealBufferedSource.kt */
    public static final class a extends InputStream {
        public a() {
        }

        @Override // java.io.InputStream
        public final int available() throws IOException {
            d0 d0Var = d0.this;
            if (d0Var.f6214j) {
                throw new IOException("closed");
            }
            return (int) Math.min(d0Var.f6213i.f6199i, Integer.MAX_VALUE);
        }

        @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
        public final void close() {
            d0.this.close();
        }

        @Override // java.io.InputStream
        public final int read() throws IOException {
            d0 d0Var = d0.this;
            if (d0Var.f6214j) {
                throw new IOException("closed");
            }
            c cVar = d0Var.f6213i;
            if (cVar.f6199i == 0 && d0Var.f6212h.read(cVar, 8192L) == -1) {
                return -1;
            }
            return d0.this.f6213i.readByte() & 255;
        }

        public final String toString() {
            return d0.this + ".inputStream()";
        }

        @Override // java.io.InputStream
        public final int read(byte[] bArr, int i10, int i11) throws IOException {
            p4.h.j(bArr, "data");
            if (!d0.this.f6214j) {
                n0.e(bArr.length, i10, i11);
                d0 d0Var = d0.this;
                c cVar = d0Var.f6213i;
                if (cVar.f6199i == 0 && d0Var.f6212h.read(cVar, 8192L) == -1) {
                    return -1;
                }
                return d0.this.f6213i.l0(bArr, i10, i11);
            }
            throw new IOException("closed");
        }
    }

    @Override // java.nio.channels.ReadableByteChannel
    public final int read(ByteBuffer byteBuffer) {
        p4.h.j(byteBuffer, "sink");
        c cVar = this.f6213i;
        if (cVar.f6199i == 0 && this.f6212h.read(cVar, 8192L) == -1) {
            return -1;
        }
        return this.f6213i.read(byteBuffer);
    }
}
