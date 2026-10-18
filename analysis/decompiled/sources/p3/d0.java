package p3;

import java.nio.ByteBuffer;

/* JADX INFO: compiled from: SilenceSkippingAudioProcessor.java */
/* JADX INFO: loaded from: classes.dex */
public final class d0 extends u {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final long f12694i = 150000;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final long f12695j = 20000;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final short f12696k = 1024;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public int f12697l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public boolean f12698m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public byte[] f12699n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public byte[] f12700o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public int f12701p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public int f12702q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public int f12703r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public boolean f12704s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public long f12705t;

    public d0() {
        byte[] bArr = m5.g0.f10389f;
        this.f12699n = bArr;
        this.f12700o = bArr;
    }

    @Override // p3.f
    public final void f(ByteBuffer byteBuffer) {
        int iPosition;
        while (byteBuffer.hasRemaining() && !this.f12842g.hasRemaining()) {
            int i10 = this.f12701p;
            if (i10 == 0) {
                int iLimit = byteBuffer.limit();
                byteBuffer.limit(Math.min(iLimit, byteBuffer.position() + this.f12699n.length));
                int iLimit2 = byteBuffer.limit();
                while (true) {
                    iLimit2 -= 2;
                    if (iLimit2 < byteBuffer.position()) {
                        iPosition = byteBuffer.position();
                        break;
                    } else if (Math.abs((int) byteBuffer.getShort(iLimit2)) > this.f12696k) {
                        int i11 = this.f12697l;
                        iPosition = ((iLimit2 / i11) * i11) + i11;
                        break;
                    }
                }
                if (iPosition == byteBuffer.position()) {
                    this.f12701p = 1;
                } else {
                    byteBuffer.limit(iPosition);
                    int iRemaining = byteBuffer.remaining();
                    k(iRemaining).put(byteBuffer).flip();
                    if (iRemaining > 0) {
                        this.f12704s = true;
                    }
                }
                byteBuffer.limit(iLimit);
            } else if (i10 == 1) {
                int iLimit3 = byteBuffer.limit();
                int iL = l(byteBuffer);
                int iPosition2 = iL - byteBuffer.position();
                byte[] bArr = this.f12699n;
                int length = bArr.length;
                int i12 = this.f12702q;
                int i13 = length - i12;
                if (iL >= iLimit3 || iPosition2 >= i13) {
                    int iMin = Math.min(iPosition2, i13);
                    byteBuffer.limit(byteBuffer.position() + iMin);
                    byteBuffer.get(this.f12699n, this.f12702q, iMin);
                    int i14 = this.f12702q + iMin;
                    this.f12702q = i14;
                    byte[] bArr2 = this.f12699n;
                    if (i14 == bArr2.length) {
                        if (this.f12704s) {
                            m(bArr2, this.f12703r);
                            this.f12705t += (long) ((this.f12702q - (this.f12703r * 2)) / this.f12697l);
                        } else {
                            this.f12705t += (long) ((i14 - this.f12703r) / this.f12697l);
                        }
                        n(byteBuffer, this.f12699n, this.f12702q);
                        this.f12702q = 0;
                        this.f12701p = 2;
                    }
                    byteBuffer.limit(iLimit3);
                } else {
                    m(bArr, i12);
                    this.f12702q = 0;
                    this.f12701p = 0;
                }
            } else {
                if (i10 != 2) {
                    throw new IllegalStateException();
                }
                int iLimit4 = byteBuffer.limit();
                int iL2 = l(byteBuffer);
                byteBuffer.limit(iL2);
                this.f12705t += (long) (byteBuffer.remaining() / this.f12697l);
                n(byteBuffer, this.f12700o, this.f12703r);
                if (iL2 < iLimit4) {
                    m(this.f12700o, this.f12703r);
                    this.f12701p = 0;
                    byteBuffer.limit(iLimit4);
                }
            }
        }
    }

    @Override // p3.u
    public final f.a g(f.a aVar) throws f.b {
        if (aVar.f12738c == 2) {
            return this.f12698m ? aVar : f.a.f12735e;
        }
        throw new f.b(aVar);
    }

    @Override // p3.u
    public final void h() {
        if (this.f12698m) {
            f.a aVar = this.f12837b;
            int i10 = aVar.f12739d;
            this.f12697l = i10;
            long j10 = this.f12694i;
            int i11 = aVar.f12736a;
            int i12 = ((int) ((j10 * ((long) i11)) / 1000000)) * i10;
            if (this.f12699n.length != i12) {
                this.f12699n = new byte[i12];
            }
            int i13 = ((int) ((this.f12695j * ((long) i11)) / 1000000)) * i10;
            this.f12703r = i13;
            if (this.f12700o.length != i13) {
                this.f12700o = new byte[i13];
            }
        }
        this.f12701p = 0;
        this.f12705t = 0L;
        this.f12702q = 0;
        this.f12704s = false;
    }

    @Override // p3.u
    public final void i() {
        int i10 = this.f12702q;
        if (i10 > 0) {
            m(this.f12699n, i10);
        }
        if (this.f12704s) {
            return;
        }
        this.f12705t += (long) (this.f12703r / this.f12697l);
    }

    @Override // p3.u, p3.f
    public final boolean isActive() {
        return this.f12698m;
    }

    @Override // p3.u
    public final void j() {
        this.f12698m = false;
        this.f12703r = 0;
        byte[] bArr = m5.g0.f10389f;
        this.f12699n = bArr;
        this.f12700o = bArr;
    }

    public final int l(ByteBuffer byteBuffer) {
        for (int iPosition = byteBuffer.position(); iPosition < byteBuffer.limit(); iPosition += 2) {
            if (Math.abs((int) byteBuffer.getShort(iPosition)) > this.f12696k) {
                int i10 = this.f12697l;
                return (iPosition / i10) * i10;
            }
        }
        return byteBuffer.limit();
    }

    public final void m(byte[] bArr, int i10) {
        k(i10).put(bArr, 0, i10).flip();
        if (i10 > 0) {
            this.f12704s = true;
        }
    }

    public final void n(ByteBuffer byteBuffer, byte[] bArr, int i10) {
        int iMin = Math.min(byteBuffer.remaining(), this.f12703r);
        int i11 = this.f12703r - iMin;
        System.arraycopy(bArr, i10 - i11, this.f12700o, 0, i11);
        byteBuffer.position(byteBuffer.limit() - iMin);
        byteBuffer.get(this.f12700o, i11, iMin);
    }
}
