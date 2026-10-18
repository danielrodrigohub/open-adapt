package p4;

import android.net.Uri;
import java.io.IOException;
import java.util.List;
import java.util.Map;
import java.util.Objects;

/* JADX INFO: compiled from: IcyDataSource.java */
/* JADX INFO: loaded from: classes.dex */
public final class q implements l5.j {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final l5.j f13158a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f13159b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final a f13160c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final byte[] f13161d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f13162e;

    /* JADX INFO: compiled from: IcyDataSource.java */
    public interface a {
    }

    public q(l5.j jVar, int i10, a aVar) {
        m5.a.a(i10 > 0);
        this.f13158a = jVar;
        this.f13159b = i10;
        this.f13160c = aVar;
        this.f13161d = new byte[1];
        this.f13162e = i10;
    }

    @Override // l5.h
    public final int b(byte[] bArr, int i10, int i11) throws IOException {
        long jMax;
        if (this.f13162e == 0) {
            boolean z10 = false;
            if (this.f13158a.b(this.f13161d, 0, 1) != -1) {
                int i12 = (this.f13161d[0] & 255) << 4;
                if (i12 == 0) {
                    z10 = true;
                    break;
                }
                byte[] bArr2 = new byte[i12];
                int i13 = i12;
                int i14 = 0;
                while (true) {
                    if (i13 <= 0) {
                        while (i12 > 0) {
                            int i15 = i12 - 1;
                            if (bArr2[i15] != 0) {
                                break;
                            }
                            i12 = i15;
                        }
                        if (i12 > 0) {
                            a aVar = this.f13160c;
                            m5.w wVar = new m5.w(bArr2, i12);
                            i0.a aVar2 = (i0.a) aVar;
                            if (aVar2.f13048m) {
                                i0 i0Var = i0.this;
                                Map<String, String> map = i0.T;
                                jMax = Math.max(i0Var.x(true), aVar2.f13045j);
                            } else {
                                jMax = aVar2.f13045j;
                            }
                            int i16 = wVar.f10477c - wVar.f10476b;
                            s3.w wVar2 = aVar2.f13047l;
                            Objects.requireNonNull(wVar2);
                            wVar2.f(wVar, i16);
                            wVar2.c(jMax, 1, i16, 0, null);
                            aVar2.f13048m = true;
                        }
                        z10 = true;
                        break;
                    }
                    int iB = this.f13158a.b(bArr2, i14, i13);
                    if (iB == -1) {
                        break;
                    }
                    i14 += iB;
                    i13 -= iB;
                }
            }
            if (!z10) {
                return -1;
            }
            this.f13162e = this.f13159b;
        }
        int iB2 = this.f13158a.b(bArr, i10, Math.min(this.f13162e, i11));
        if (iB2 != -1) {
            this.f13162e -= iB2;
        }
        return iB2;
    }

    @Override // l5.j
    public final void close() {
        throw new UnsupportedOperationException();
    }

    @Override // l5.j
    public final Map<String, List<String>> h() {
        return this.f13158a.h();
    }

    @Override // l5.j
    public final void j(l5.j0 j0Var) {
        Objects.requireNonNull(j0Var);
        this.f13158a.j(j0Var);
    }

    @Override // l5.j
    public final long l(l5.m mVar) {
        throw new UnsupportedOperationException();
    }

    @Override // l5.j
    public final Uri o() {
        return this.f13158a.o();
    }
}
