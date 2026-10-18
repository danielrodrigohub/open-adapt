package de;

import androidx.fragment.app.r0;
import java.io.Closeable;
import java.io.IOException;
import java.util.Objects;

/* JADX INFO: compiled from: FileHandle.kt */
/* JADX INFO: loaded from: classes2.dex */
public abstract class i implements Closeable {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public boolean f6237h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f6238i;

    /* JADX INFO: compiled from: FileHandle.kt */
    public static final class a implements j0 {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public final i f6239h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public long f6240i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public boolean f6241j;

        public a(i iVar, long j10) {
            p4.h.j(iVar, "fileHandle");
            this.f6239h = iVar;
            this.f6240i = j10;
        }

        @Override // de.j0, java.io.Closeable, java.lang.AutoCloseable
        public final void close() throws IOException {
            if (this.f6241j) {
                return;
            }
            this.f6241j = true;
            synchronized (this.f6239h) {
                i iVar = this.f6239h;
                int i10 = iVar.f6238i - 1;
                iVar.f6238i = i10;
                if (i10 == 0 && iVar.f6237h) {
                    iVar.x();
                }
            }
        }

        @Override // de.j0
        public final long read(c cVar, long j10) throws IOException {
            long j11;
            p4.h.j(cVar, "sink");
            if (!(!this.f6241j)) {
                throw new IllegalStateException("closed".toString());
            }
            i iVar = this.f6239h;
            long j12 = this.f6240i;
            Objects.requireNonNull(iVar);
            if (!(j10 >= 0)) {
                throw new IllegalArgumentException(r0.f("byteCount < 0: ", j10).toString());
            }
            long j13 = j10 + j12;
            long j14 = j12;
            while (true) {
                if (j14 < j13) {
                    e0 e0VarT0 = cVar.t0(1);
                    byte[] bArr = e0VarT0.f6216a;
                    int i10 = e0VarT0.f6218c;
                    long j15 = j13;
                    int iY = iVar.Y(j14, bArr, i10, (int) Math.min(j13 - j14, 8192 - i10));
                    if (iY == -1) {
                        if (e0VarT0.f6217b == e0VarT0.f6218c) {
                            cVar.f6198h = e0VarT0.a();
                            f0.b(e0VarT0);
                        }
                        if (j12 == j14) {
                            j11 = -1;
                            break;
                        }
                    } else {
                        e0VarT0.f6218c += iY;
                        long j16 = iY;
                        j14 += j16;
                        cVar.f6199i += j16;
                        j13 = j15;
                    }
                }
                j11 = j14 - j12;
                break;
            }
            if (j11 != -1) {
                this.f6240i += j11;
            }
            return j11;
        }

        @Override // de.j0
        public final k0 timeout() {
            return k0.NONE;
        }
    }

    public abstract int Y(long j10, byte[] bArr, int i10, int i11) throws IOException;

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws IOException {
        synchronized (this) {
            if (this.f6237h) {
                return;
            }
            this.f6237h = true;
            if (this.f6238i != 0) {
                return;
            }
            x();
        }
    }

    public abstract long f0() throws IOException;

    public final long g0() throws IOException {
        synchronized (this) {
            if (!(!this.f6237h)) {
                throw new IllegalStateException("closed".toString());
            }
        }
        return f0();
    }

    public final j0 h0(long j10) throws IOException {
        synchronized (this) {
            if (!(!this.f6237h)) {
                throw new IllegalStateException("closed".toString());
            }
            this.f6238i++;
        }
        return new a(this, j10);
    }

    public abstract void x() throws IOException;
}
