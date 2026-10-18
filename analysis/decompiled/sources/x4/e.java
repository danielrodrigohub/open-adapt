package x4;

import java.util.Objects;
import m5.g0;
import m5.p;
import m5.t;
import n3.i1;
import s3.w;

/* JADX INFO: compiled from: RtpH264Reader.java */
/* JADX INFO: loaded from: classes.dex */
public final class e implements i {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final w4.f f17794c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public w f17795d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f17796e;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f17799h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public long f17800i;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final m5.w f17793b = new m5.w(t.f10435a);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final m5.w f17792a = new m5.w();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public long f17797f = -9223372036854775807L;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int f17798g = -1;

    public e(w4.f fVar) {
        this.f17794c = fVar;
    }

    @Override // x4.i
    public final void a(m5.w wVar, long j10, int i10, boolean z10) throws i1 {
        try {
            int i11 = wVar.f10475a[0] & 31;
            m5.a.f(this.f17795d);
            if (i11 > 0 && i11 < 24) {
                int i12 = wVar.f10477c - wVar.f10476b;
                this.f17799h = e() + this.f17799h;
                this.f17795d.f(wVar, i12);
                this.f17799h += i12;
                this.f17796e = (wVar.f10475a[0] & 31) != 5 ? 0 : 1;
            } else if (i11 == 24) {
                wVar.t();
                while (wVar.f10477c - wVar.f10476b > 4) {
                    int iY = wVar.y();
                    this.f17799h = e() + this.f17799h;
                    this.f17795d.f(wVar, iY);
                    this.f17799h += iY;
                }
                this.f17796e = 0;
            } else {
                if (i11 != 28) {
                    throw i1.b(String.format("RTP H264 packetization mode [%d] not supported.", Integer.valueOf(i11)), null);
                }
                byte[] bArr = wVar.f10475a;
                byte b10 = bArr[0];
                byte b11 = bArr[1];
                int i13 = (b10 & 224) | (b11 & 31);
                boolean z11 = (b11 & 128) > 0;
                boolean z12 = (b11 & 64) > 0;
                if (z11) {
                    this.f17799h = e() + this.f17799h;
                    byte[] bArr2 = wVar.f10475a;
                    bArr2[1] = (byte) i13;
                    m5.w wVar2 = this.f17792a;
                    Objects.requireNonNull(wVar2);
                    wVar2.B(bArr2, bArr2.length);
                    this.f17792a.D(1);
                } else {
                    int iA = w4.c.a(this.f17798g);
                    if (i10 != iA) {
                        p.g("RtpH264Reader", g0.m("Received RTP packet with unexpected sequence number. Expected: %d; received: %d. Dropping packet.", Integer.valueOf(iA), Integer.valueOf(i10)));
                    } else {
                        m5.w wVar3 = this.f17792a;
                        byte[] bArr3 = wVar.f10475a;
                        Objects.requireNonNull(wVar3);
                        wVar3.B(bArr3, bArr3.length);
                        this.f17792a.D(2);
                    }
                }
                m5.w wVar4 = this.f17792a;
                int i14 = wVar4.f10477c - wVar4.f10476b;
                this.f17795d.f(wVar4, i14);
                this.f17799h += i14;
                if (z12) {
                    this.f17796e = (i13 & 31) != 5 ? 0 : 1;
                }
            }
            if (z10) {
                if (this.f17797f == -9223372036854775807L) {
                    this.f17797f = j10;
                }
                this.f17795d.c(g0.R(j10 - this.f17797f, 1000000L, 90000L) + this.f17800i, this.f17796e, this.f17799h, 0, null);
                this.f17799h = 0;
            }
            this.f17798g = i10;
        } catch (IndexOutOfBoundsException e10) {
            throw i1.b(null, e10);
        }
    }

    @Override // x4.i
    public final void b(long j10, long j11) {
        this.f17797f = j10;
        this.f17799h = 0;
        this.f17800i = j11;
    }

    @Override // x4.i
    public final void c(long j10) {
    }

    @Override // x4.i
    public final void d(s3.j jVar, int i10) {
        w wVarP = jVar.p(i10, 2);
        this.f17795d = wVarP;
        int i11 = g0.f10384a;
        wVarP.b(this.f17794c.f17176c);
    }

    public final int e() {
        this.f17793b.D(0);
        m5.w wVar = this.f17793b;
        int i10 = wVar.f10477c - wVar.f10476b;
        w wVar2 = this.f17795d;
        Objects.requireNonNull(wVar2);
        wVar2.f(this.f17793b, i10);
        return i10;
    }
}
