package s3;

import com.newrelic.agent.android.analytics.AnalyticsAttribute;
import java.io.EOFException;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.util.Arrays;
import m5.g0;
import n3.p0;

/* JADX INFO: compiled from: DefaultExtractorInput.java */
/* JADX INFO: loaded from: classes.dex */
public final class e implements i {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final l5.h f15038b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final long f15039c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public long f15040d;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f15042f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int f15043g;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public byte[] f15041e = new byte[65536];

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final byte[] f15037a = new byte[AnalyticsAttribute.ATTRIBUTE_VALUE_MAX_LENGTH];

    static {
        p0.a("goog.exo.extractor");
    }

    public e(l5.h hVar, long j10, long j11) {
        this.f15038b = hVar;
        this.f15040d = j10;
        this.f15039c = j11;
    }

    @Override // s3.i
    public final long a() {
        return this.f15039c;
    }

    @Override // s3.i, l5.h
    public final int b(byte[] bArr, int i10, int i11) throws IOException {
        int i12 = this.f15043g;
        int iW = 0;
        if (i12 != 0) {
            int iMin = Math.min(i12, i11);
            System.arraycopy(this.f15041e, 0, bArr, i10, iMin);
            x(iMin);
            iW = iMin;
        }
        if (iW == 0) {
            iW = w(bArr, i10, i11, 0, true);
        }
        m(iW);
        return iW;
    }

    @Override // s3.i
    public final int d(int i10) throws IOException {
        int iMin = Math.min(this.f15043g, i10);
        x(iMin);
        if (iMin == 0) {
            byte[] bArr = this.f15037a;
            iMin = w(bArr, 0, Math.min(i10, bArr.length), 0, true);
        }
        m(iMin);
        return iMin;
    }

    @Override // s3.i
    public final boolean e(byte[] bArr, int i10, int i11, boolean z10) throws IOException {
        int iMin;
        int i12 = this.f15043g;
        if (i12 == 0) {
            iMin = 0;
        } else {
            iMin = Math.min(i12, i11);
            System.arraycopy(this.f15041e, 0, bArr, i10, iMin);
            x(iMin);
        }
        int iW = iMin;
        while (iW < i11 && iW != -1) {
            iW = w(bArr, i10, i11, iW, z10);
        }
        m(iW);
        return iW != -1;
    }

    @Override // s3.i
    public final int g(byte[] bArr, int i10, int i11) throws IOException {
        int iMin;
        v(i11);
        int i12 = this.f15043g;
        int i13 = this.f15042f;
        int i14 = i12 - i13;
        if (i14 == 0) {
            iMin = w(this.f15041e, i13, i11, 0, true);
            if (iMin == -1) {
                return -1;
            }
            this.f15043g += iMin;
        } else {
            iMin = Math.min(i11, i14);
        }
        System.arraycopy(this.f15041e, this.f15042f, bArr, i10, iMin);
        this.f15042f += iMin;
        return iMin;
    }

    @Override // s3.i
    public final void i() {
        this.f15042f = 0;
    }

    @Override // s3.i
    public final void k(int i10) throws IOException {
        int iMin = Math.min(this.f15043g, i10);
        x(iMin);
        int iW = iMin;
        while (iW < i10 && iW != -1) {
            iW = w(this.f15037a, -iW, Math.min(i10, this.f15037a.length + iW), iW, false);
        }
        m(iW);
    }

    public final void m(int i10) {
        if (i10 != -1) {
            this.f15040d += (long) i10;
        }
    }

    @Override // s3.i
    public final boolean n(int i10, boolean z10) throws IOException {
        v(i10);
        int iW = this.f15043g - this.f15042f;
        while (iW < i10) {
            iW = w(this.f15041e, this.f15042f, i10, iW, z10);
            if (iW == -1) {
                return false;
            }
            this.f15043g = this.f15042f + iW;
        }
        this.f15042f += i10;
        return true;
    }

    @Override // s3.i
    public final boolean p(byte[] bArr, int i10, int i11, boolean z10) throws IOException {
        if (!n(i11, z10)) {
            return false;
        }
        System.arraycopy(this.f15041e, this.f15042f - i11, bArr, i10, i11);
        return true;
    }

    @Override // s3.i
    public final long q() {
        return this.f15040d + ((long) this.f15042f);
    }

    @Override // s3.i
    public final void readFully(byte[] bArr, int i10, int i11) throws IOException {
        e(bArr, i10, i11, false);
    }

    @Override // s3.i
    public final void s(byte[] bArr, int i10, int i11) throws IOException {
        p(bArr, i10, i11, false);
    }

    @Override // s3.i
    public final void t(int i10) throws IOException {
        n(i10, false);
    }

    @Override // s3.i
    public final long u() {
        return this.f15040d;
    }

    public final void v(int i10) {
        int i11 = this.f15042f + i10;
        byte[] bArr = this.f15041e;
        if (i11 > bArr.length) {
            this.f15041e = Arrays.copyOf(this.f15041e, g0.i(bArr.length * 2, 65536 + i11, i11 + 524288));
        }
    }

    public final int w(byte[] bArr, int i10, int i11, int i12, boolean z10) throws IOException {
        if (Thread.interrupted()) {
            throw new InterruptedIOException();
        }
        int iB = this.f15038b.b(bArr, i10 + i12, i11 - i12);
        if (iB != -1) {
            return i12 + iB;
        }
        if (i12 == 0 && z10) {
            return -1;
        }
        throw new EOFException();
    }

    public final void x(int i10) {
        int i11 = this.f15043g - i10;
        this.f15043g = i11;
        this.f15042f = 0;
        byte[] bArr = this.f15041e;
        byte[] bArr2 = i11 < bArr.length - 524288 ? new byte[65536 + i11] : bArr;
        System.arraycopy(bArr, i10, bArr2, 0, i11);
        this.f15041e = bArr2;
    }
}
