package de;

import androidx.fragment.app.r0;
import java.io.EOFException;
import java.io.IOException;
import java.util.Arrays;
import java.util.zip.CRC32;
import java.util.zip.Inflater;

/* JADX INFO: compiled from: GzipSource.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class q implements j0 {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public byte f6266h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final d0 f6267i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final Inflater f6268j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final r f6269k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final CRC32 f6270l;

    public q(j0 j0Var) {
        p4.h.j(j0Var, "source");
        d0 d0Var = new d0(j0Var);
        this.f6267i = d0Var;
        Inflater inflater = new Inflater(true);
        this.f6268j = inflater;
        this.f6269k = new r((f) d0Var, inflater);
        this.f6270l = new CRC32();
    }

    public final void Y(c cVar, long j10, long j11) {
        e0 e0Var = cVar.f6198h;
        p4.h.g(e0Var);
        while (true) {
            int i10 = e0Var.f6218c;
            int i11 = e0Var.f6217b;
            if (j10 < i10 - i11) {
                break;
            }
            j10 -= (long) (i10 - i11);
            e0Var = e0Var.f6221f;
            p4.h.g(e0Var);
        }
        while (j11 > 0) {
            int i12 = (int) (((long) e0Var.f6217b) + j10);
            int iMin = (int) Math.min(e0Var.f6218c - i12, j11);
            this.f6270l.update(e0Var.f6216a, i12, iMin);
            j11 -= (long) iMin;
            e0Var = e0Var.f6221f;
            p4.h.g(e0Var);
            j10 = 0;
        }
    }

    @Override // de.j0, java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws IOException {
        this.f6269k.close();
    }

    @Override // de.j0
    public final long read(c cVar, long j10) throws IOException {
        p4.h.j(cVar, "sink");
        if (!(j10 >= 0)) {
            throw new IllegalArgumentException(r0.f("byteCount < 0: ", j10).toString());
        }
        if (j10 == 0) {
            return 0L;
        }
        if (this.f6266h == 0) {
            this.f6267i.T(10L);
            byte bH0 = this.f6267i.f6213i.h0(3L);
            boolean z10 = ((bH0 >> 1) & 1) == 1;
            if (z10) {
                Y(this.f6267i.f6213i, 0L, 10L);
            }
            x("ID1ID2", 8075, this.f6267i.readShort());
            this.f6267i.a(8L);
            if (((bH0 >> 2) & 1) == 1) {
                this.f6267i.T(2L);
                if (z10) {
                    Y(this.f6267i.f6213i, 0L, 2L);
                }
                long jN0 = this.f6267i.f6213i.n0();
                this.f6267i.T(jN0);
                if (z10) {
                    Y(this.f6267i.f6213i, 0L, jN0);
                }
                this.f6267i.a(jN0);
            }
            if (((bH0 >> 3) & 1) == 1) {
                long jX = this.f6267i.x((byte) 0, 0L, Long.MAX_VALUE);
                if (jX == -1) {
                    throw new EOFException();
                }
                if (z10) {
                    Y(this.f6267i.f6213i, 0L, jX + 1);
                }
                this.f6267i.a(jX + 1);
            }
            if (((bH0 >> 4) & 1) == 1) {
                long jX2 = this.f6267i.x((byte) 0, 0L, Long.MAX_VALUE);
                if (jX2 == -1) {
                    throw new EOFException();
                }
                if (z10) {
                    Y(this.f6267i.f6213i, 0L, jX2 + 1);
                }
                this.f6267i.a(jX2 + 1);
            }
            if (z10) {
                x("FHCRC", this.f6267i.Y(), (short) this.f6270l.getValue());
                this.f6270l.reset();
            }
            this.f6266h = (byte) 1;
        }
        if (this.f6266h == 1) {
            long j11 = cVar.f6199i;
            long j12 = this.f6269k.read(cVar, j10);
            if (j12 != -1) {
                Y(cVar, j11, j12);
                return j12;
            }
            this.f6266h = (byte) 2;
        }
        if (this.f6266h == 2) {
            x("CRC", this.f6267i.y(), (int) this.f6270l.getValue());
            x("ISIZE", this.f6267i.y(), (int) this.f6268j.getBytesWritten());
            this.f6266h = (byte) 3;
            if (!this.f6267i.z()) {
                throw new IOException("gzip finished without exhausting source");
            }
        }
        return -1L;
    }

    @Override // de.j0
    public final k0 timeout() {
        return this.f6267i.timeout();
    }

    public final void x(String str, int i10, int i11) throws IOException {
        if (i11 == i10) {
            return;
        }
        String str2 = String.format("%s: actual 0x%08x != expected 0x%08x", Arrays.copyOf(new Object[]{str, Integer.valueOf(i11), Integer.valueOf(i10)}, 3));
        p4.h.i(str2, "format(this, *args)");
        throw new IOException(str2);
    }
}
