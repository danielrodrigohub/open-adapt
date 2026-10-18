package x3;

import java.io.IOException;
import s3.i;

/* JADX INFO: compiled from: StartOffsetExtractorInput.java */
/* JADX INFO: loaded from: classes.dex */
public final class c implements i {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final i f17748a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final long f17749b;

    public c(i iVar, long j10) {
        this.f17748a = iVar;
        m5.a.a(iVar.u() >= j10);
        this.f17749b = j10;
    }

    @Override // s3.i
    public final long a() {
        return this.f17748a.a() - this.f17749b;
    }

    @Override // s3.i, l5.h
    public final int b(byte[] bArr, int i10, int i11) {
        return this.f17748a.b(bArr, i10, i11);
    }

    @Override // s3.i
    public final int d(int i10) {
        return this.f17748a.d(i10);
    }

    @Override // s3.i
    public final boolean e(byte[] bArr, int i10, int i11, boolean z10) {
        return this.f17748a.e(bArr, 0, i11, z10);
    }

    @Override // s3.i
    public final int g(byte[] bArr, int i10, int i11) {
        return this.f17748a.g(bArr, i10, i11);
    }

    @Override // s3.i
    public final void i() {
        this.f17748a.i();
    }

    @Override // s3.i
    public final void k(int i10) throws IOException {
        this.f17748a.k(i10);
    }

    @Override // s3.i
    public final boolean n(int i10, boolean z10) {
        return this.f17748a.n(i10, true);
    }

    @Override // s3.i
    public final boolean p(byte[] bArr, int i10, int i11, boolean z10) {
        return this.f17748a.p(bArr, i10, i11, z10);
    }

    @Override // s3.i
    public final long q() {
        return this.f17748a.q() - this.f17749b;
    }

    @Override // s3.i
    public final void readFully(byte[] bArr, int i10, int i11) throws IOException {
        this.f17748a.readFully(bArr, i10, i11);
    }

    @Override // s3.i
    public final void s(byte[] bArr, int i10, int i11) throws IOException {
        this.f17748a.s(bArr, i10, i11);
    }

    @Override // s3.i
    public final void t(int i10) throws IOException {
        this.f17748a.t(i10);
    }

    @Override // s3.i
    public final long u() {
        return this.f17748a.u() - this.f17749b;
    }
}
