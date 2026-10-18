package p3;

import java.nio.ByteBuffer;

/* JADX INFO: compiled from: TrimmingAudioProcessor.java */
/* JADX INFO: loaded from: classes.dex */
public final class g0 extends u {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f12758i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int f12759j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public boolean f12760k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public int f12761l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public byte[] f12762m = m5.g0.f10389f;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public int f12763n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public long f12764o;

    @Override // p3.u, p3.f
    public final ByteBuffer a() {
        int i10;
        if (super.b() && (i10 = this.f12763n) > 0) {
            k(i10).put(this.f12762m, 0, this.f12763n).flip();
            this.f12763n = 0;
        }
        return super.a();
    }

    @Override // p3.u, p3.f
    public final boolean b() {
        return super.b() && this.f12763n == 0;
    }

    @Override // p3.f
    public final void f(ByteBuffer byteBuffer) {
        int iPosition = byteBuffer.position();
        int iLimit = byteBuffer.limit();
        int i10 = iLimit - iPosition;
        if (i10 == 0) {
            return;
        }
        int iMin = Math.min(i10, this.f12761l);
        this.f12764o += (long) (iMin / this.f12837b.f12739d);
        this.f12761l -= iMin;
        byteBuffer.position(iPosition + iMin);
        if (this.f12761l > 0) {
            return;
        }
        int i11 = i10 - iMin;
        int length = (this.f12763n + i11) - this.f12762m.length;
        ByteBuffer byteBufferK = k(length);
        int i12 = m5.g0.i(length, 0, this.f12763n);
        byteBufferK.put(this.f12762m, 0, i12);
        int i13 = m5.g0.i(length - i12, 0, i11);
        byteBuffer.limit(byteBuffer.position() + i13);
        byteBufferK.put(byteBuffer);
        byteBuffer.limit(iLimit);
        int i14 = i11 - i13;
        int i15 = this.f12763n - i12;
        this.f12763n = i15;
        byte[] bArr = this.f12762m;
        System.arraycopy(bArr, i12, bArr, 0, i15);
        byteBuffer.get(this.f12762m, this.f12763n, i14);
        this.f12763n += i14;
        byteBufferK.flip();
    }

    @Override // p3.u
    public final f.a g(f.a aVar) throws f.b {
        if (aVar.f12738c != 2) {
            throw new f.b(aVar);
        }
        this.f12760k = true;
        return (this.f12758i == 0 && this.f12759j == 0) ? f.a.f12735e : aVar;
    }

    @Override // p3.u
    public final void h() {
        if (this.f12760k) {
            this.f12760k = false;
            int i10 = this.f12759j;
            int i11 = this.f12837b.f12739d;
            this.f12762m = new byte[i10 * i11];
            this.f12761l = this.f12758i * i11;
        }
        this.f12763n = 0;
    }

    @Override // p3.u
    public final void i() {
        if (this.f12760k) {
            int i10 = this.f12763n;
            if (i10 > 0) {
                this.f12764o += (long) (i10 / this.f12837b.f12739d);
            }
            this.f12763n = 0;
        }
    }

    @Override // p3.u
    public final void j() {
        this.f12762m = m5.g0.f10389f;
    }
}
