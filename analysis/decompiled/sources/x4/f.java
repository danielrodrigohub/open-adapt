package x4;

import java.util.Objects;
import m5.g0;
import m5.p;
import m5.t;
import n3.i1;
import okhttp3.internal.http2.Settings;
import s3.w;

/* JADX INFO: compiled from: RtpH265Reader.java */
/* JADX INFO: loaded from: classes.dex */
public final class f implements i {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final w4.f f17803c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public w f17804d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f17805e;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f17808h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public long f17809i;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final m5.w f17801a = new m5.w();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final m5.w f17802b = new m5.w(t.f10435a);

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public long f17806f = -9223372036854775807L;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int f17807g = -1;

    public f(w4.f fVar) {
        this.f17803c = fVar;
    }

    @Override // x4.i
    public final void a(m5.w wVar, long j10, int i10, boolean z10) throws i1 {
        byte[] bArr = wVar.f10475a;
        if (bArr.length == 0) {
            throw i1.b("Empty RTP data packet.", null);
        }
        int i11 = 1;
        int i12 = (bArr[0] >> 1) & 63;
        m5.a.f(this.f17804d);
        if (i12 >= 0 && i12 < 48) {
            int i13 = wVar.f10477c - wVar.f10476b;
            this.f17808h = e() + this.f17808h;
            this.f17804d.f(wVar, i13);
            this.f17808h += i13;
            int i14 = (wVar.f10475a[0] >> 1) & 63;
            if (i14 != 19 && i14 != 20) {
                i11 = 0;
            }
            this.f17805e = i11;
        } else {
            if (i12 == 48) {
                throw new UnsupportedOperationException("need to implement processAggregationPacket");
            }
            if (i12 != 49) {
                throw i1.b(String.format("RTP H265 payload type [%d] not supported.", Integer.valueOf(i12)), null);
            }
            byte[] bArr2 = wVar.f10475a;
            if (bArr2.length < 3) {
                throw i1.b("Malformed FU header.", null);
            }
            int i15 = bArr2[1] & 7;
            byte b10 = bArr2[2];
            int i16 = b10 & 63;
            boolean z11 = (b10 & 128) > 0;
            boolean z12 = (b10 & 64) > 0;
            if (z11) {
                this.f17808h = e() + this.f17808h;
                byte[] bArr3 = wVar.f10475a;
                bArr3[1] = (byte) ((i16 << 1) & 127);
                bArr3[2] = (byte) i15;
                m5.w wVar2 = this.f17801a;
                Objects.requireNonNull(wVar2);
                wVar2.B(bArr3, bArr3.length);
                this.f17801a.D(1);
            } else {
                int i17 = (this.f17807g + 1) % Settings.DEFAULT_INITIAL_WINDOW_SIZE;
                if (i10 != i17) {
                    p.g("RtpH265Reader", g0.m("Received RTP packet with unexpected sequence number. Expected: %d; received: %d. Dropping packet.", Integer.valueOf(i17), Integer.valueOf(i10)));
                } else {
                    m5.w wVar3 = this.f17801a;
                    Objects.requireNonNull(wVar3);
                    wVar3.B(bArr2, bArr2.length);
                    this.f17801a.D(3);
                }
            }
            m5.w wVar4 = this.f17801a;
            int i18 = wVar4.f10477c - wVar4.f10476b;
            this.f17804d.f(wVar4, i18);
            this.f17808h += i18;
            if (z12) {
                if (i16 != 19 && i16 != 20) {
                    i11 = 0;
                }
                this.f17805e = i11;
            }
        }
        if (z10) {
            if (this.f17806f == -9223372036854775807L) {
                this.f17806f = j10;
            }
            this.f17804d.c(g0.R(j10 - this.f17806f, 1000000L, 90000L) + this.f17809i, this.f17805e, this.f17808h, 0, null);
            this.f17808h = 0;
        }
        this.f17807g = i10;
    }

    @Override // x4.i
    public final void b(long j10, long j11) {
        this.f17806f = j10;
        this.f17808h = 0;
        this.f17809i = j11;
    }

    @Override // x4.i
    public final void c(long j10) {
    }

    @Override // x4.i
    public final void d(s3.j jVar, int i10) {
        w wVarP = jVar.p(i10, 2);
        this.f17804d = wVarP;
        wVarP.b(this.f17803c.f17176c);
    }

    public final int e() {
        this.f17802b.D(0);
        m5.w wVar = this.f17802b;
        int i10 = wVar.f10477c - wVar.f10476b;
        w wVar2 = this.f17804d;
        Objects.requireNonNull(wVar2);
        wVar2.f(this.f17802b, i10);
        return i10;
    }
}
