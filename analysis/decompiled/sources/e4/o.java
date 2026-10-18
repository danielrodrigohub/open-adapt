package e4;

import android.annotation.TargetApi;
import android.media.MediaCodec;
import android.media.MediaCrypto;
import android.media.MediaCryptoException;
import android.media.MediaFormat;
import android.media.metrics.LogSessionId;
import android.os.Bundle;
import android.os.SystemClock;
import androidx.fragment.app.r0;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;
import java.util.UUID;
import m5.c0;
import m5.g0;
import n3.s0;
import o3.v0;
import p3.b0;
import p4.m0;

/* JADX INFO: compiled from: MediaCodecRenderer.java */
/* JADX INFO: loaded from: classes.dex */
public abstract class o extends n3.f {
    public static final byte[] L0 = {0, 0, 1, 103, 66, -64, 11, -38, 37, -112, 0, 0, 1, 104, -50, 15, 19, 32, 0, 0, 1, 101, -120, -124, 13, -50, 113, 24, -96, 0, 47, -65, 28, 49, -61, 39, 93, 120};
    public final h A;
    public long A0;
    public final c0<s0> B;
    public long B0;
    public final ArrayList<Long> C;
    public boolean C0;
    public final MediaCodec.BufferInfo D;
    public boolean D0;
    public final long[] E;
    public boolean E0;
    public final long[] F;
    public boolean F0;
    public final long[] G;
    public n3.q G0;
    public s0 H;
    public q3.e H0;
    public s0 I;
    public long I0;
    public r3.e J;
    public long J0;
    public r3.e K;
    public int K0;
    public MediaCrypto L;
    public boolean M;
    public long N;
    public float O;
    public float P;
    public l Q;
    public s0 R;
    public MediaFormat S;
    public boolean T;
    public float U;
    public ArrayDeque<n> V;
    public b W;
    public n X;
    public int Y;
    public boolean Z;

    /* JADX INFO: renamed from: a0, reason: collision with root package name */
    public boolean f6423a0;

    /* JADX INFO: renamed from: b0, reason: collision with root package name */
    public boolean f6424b0;

    /* JADX INFO: renamed from: c0, reason: collision with root package name */
    public boolean f6425c0;
    public boolean d0;

    /* JADX INFO: renamed from: e0, reason: collision with root package name */
    public boolean f6426e0;

    /* JADX INFO: renamed from: f0, reason: collision with root package name */
    public boolean f6427f0;

    /* JADX INFO: renamed from: g0, reason: collision with root package name */
    public boolean f6428g0;

    /* JADX INFO: renamed from: h0, reason: collision with root package name */
    public boolean f6429h0;

    /* JADX INFO: renamed from: i0, reason: collision with root package name */
    public boolean f6430i0;

    /* JADX INFO: renamed from: j0, reason: collision with root package name */
    public i f6431j0;

    /* JADX INFO: renamed from: k0, reason: collision with root package name */
    public long f6432k0;

    /* JADX INFO: renamed from: l0, reason: collision with root package name */
    public int f6433l0;

    /* JADX INFO: renamed from: m0, reason: collision with root package name */
    public int f6434m0;

    /* JADX INFO: renamed from: n0, reason: collision with root package name */
    public ByteBuffer f6435n0;

    /* JADX INFO: renamed from: o0, reason: collision with root package name */
    public boolean f6436o0;

    /* JADX INFO: renamed from: p0, reason: collision with root package name */
    public boolean f6437p0;

    /* JADX INFO: renamed from: q0, reason: collision with root package name */
    public boolean f6438q0;

    /* JADX INFO: renamed from: r0, reason: collision with root package name */
    public boolean f6439r0;

    /* JADX INFO: renamed from: s0, reason: collision with root package name */
    public boolean f6440s0;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public final l.b f6441t;

    /* JADX INFO: renamed from: t0, reason: collision with root package name */
    public boolean f6442t0;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public final p f6443u;

    /* JADX INFO: renamed from: u0, reason: collision with root package name */
    public int f6444u0;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public final boolean f6445v;

    /* JADX INFO: renamed from: v0, reason: collision with root package name */
    public int f6446v0;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public final float f6447w;

    /* JADX INFO: renamed from: w0, reason: collision with root package name */
    public int f6448w0;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public final q3.g f6449x;

    /* JADX INFO: renamed from: x0, reason: collision with root package name */
    public boolean f6450x0;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public final q3.g f6451y;

    /* JADX INFO: renamed from: y0, reason: collision with root package name */
    public boolean f6452y0;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public final q3.g f6453z;

    /* JADX INFO: renamed from: z0, reason: collision with root package name */
    public boolean f6454z0;

    /* JADX INFO: compiled from: MediaCodecRenderer.java */
    public static final class a {
        public static void a(l.a aVar, v0 v0Var) {
            LogSessionId logSessionIdA = v0Var.a();
            if (logSessionIdA.equals(LogSessionId.LOG_SESSION_ID_NONE)) {
                return;
            }
            aVar.f6410b.setString("log-session-id", logSessionIdA.getStringId());
        }
    }

    public o(int i10, l.b bVar, p pVar, float f10) {
        super(i10);
        this.f6441t = bVar;
        Objects.requireNonNull(pVar);
        this.f6443u = pVar;
        this.f6445v = false;
        this.f6447w = f10;
        this.f6449x = new q3.g(0);
        this.f6451y = new q3.g(0);
        this.f6453z = new q3.g(2);
        h hVar = new h();
        this.A = hVar;
        this.B = new c0<>();
        this.C = new ArrayList<>();
        this.D = new MediaCodec.BufferInfo();
        this.O = 1.0f;
        this.P = 1.0f;
        this.N = -9223372036854775807L;
        this.E = new long[10];
        this.F = new long[10];
        this.G = new long[10];
        this.I0 = -9223372036854775807L;
        this.J0 = -9223372036854775807L;
        hVar.q(0);
        hVar.f13581j.order(ByteOrder.nativeOrder());
        this.U = -1.0f;
        this.Y = 0;
        this.f6444u0 = 0;
        this.f6433l0 = -1;
        this.f6434m0 = -1;
        this.f6432k0 = -9223372036854775807L;
        this.A0 = -9223372036854775807L;
        this.B0 = -9223372036854775807L;
        this.f6446v0 = 0;
        this.f6448w0 = 0;
    }

    public final void A0() throws n3.q {
        try {
            this.L.setMediaDrmSession(X(this.K).f14516b);
            t0(this.K);
            this.f6446v0 = 0;
            this.f6448w0 = 0;
        } catch (MediaCryptoException e10) {
            throw z(e10, this.H, false, 6006);
        }
    }

    @Override // n3.f
    public void B() {
        this.H = null;
        this.I0 = -9223372036854775807L;
        this.J0 = -9223372036854775807L;
        this.K0 = 0;
        S();
    }

    public final void B0(long j10) throws n3.q {
        boolean z10;
        s0 s0VarF;
        s0 s0VarE = this.B.e(j10);
        if (s0VarE == null && this.T) {
            c0<s0> c0Var = this.B;
            synchronized (c0Var) {
                s0VarF = c0Var.f10368d == 0 ? null : c0Var.f();
            }
            s0VarE = s0VarF;
        }
        if (s0VarE != null) {
            this.I = s0VarE;
            z10 = true;
        } else {
            z10 = false;
        }
        if (z10 || (this.T && this.I != null)) {
            h0(this.I, this.S);
            this.T = false;
        }
    }

    @Override // n3.f
    public void D(long j10, boolean z10) throws n3.q {
        int i10;
        this.C0 = false;
        this.D0 = false;
        this.F0 = false;
        if (this.f6438q0) {
            this.A.o();
            this.f6453z.o();
            this.f6439r0 = false;
        } else if (S()) {
            b0();
        }
        c0<s0> c0Var = this.B;
        synchronized (c0Var) {
            i10 = c0Var.f10368d;
        }
        if (i10 > 0) {
            this.E0 = true;
        }
        this.B.b();
        int i11 = this.K0;
        if (i11 != 0) {
            this.J0 = this.F[i11 - 1];
            this.I0 = this.E[i11 - 1];
            this.K0 = 0;
        }
    }

    @Override // n3.f
    public final void H(s0[] s0VarArr, long j10, long j11) throws n3.q {
        if (this.J0 == -9223372036854775807L) {
            m5.a.e(this.I0 == -9223372036854775807L);
            this.I0 = j10;
            this.J0 = j11;
            return;
        }
        int i10 = this.K0;
        if (i10 == this.F.length) {
            StringBuilder sbC = a0.b.c("Too many stream changes, so dropping offset: ");
            sbC.append(this.F[this.K0 - 1]);
            m5.p.g("MediaCodecRenderer", sbC.toString());
        } else {
            this.K0 = i10 + 1;
        }
        long[] jArr = this.E;
        int i11 = this.K0;
        int i12 = i11 - 1;
        jArr[i12] = j10;
        this.F[i12] = j11;
        this.G[i11 - 1] = this.A0;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v15 */
    /* JADX WARN: Type inference failed for: r0v4 */
    /* JADX WARN: Type inference failed for: r0v5, types: [boolean, int] */
    public final boolean J(long j10, long j11) throws n3.q {
        boolean z10;
        m5.a.e(!this.D0);
        if (this.A.w()) {
            h hVar = this.A;
            if (!m0(j10, j11, null, hVar.f13581j, this.f6434m0, 0, hVar.f6399q, hVar.f13583l, hVar.n(), this.A.l(4), this.I)) {
                return false;
            }
            i0(this.A.f6398p);
            this.A.o();
            z10 = 0;
        } else {
            z10 = 0;
        }
        if (this.C0) {
            this.D0 = true;
            return z10;
        }
        if (this.f6439r0) {
            m5.a.e(this.A.u(this.f6453z));
            this.f6439r0 = z10;
        }
        if (this.f6440s0) {
            if (this.A.w()) {
                return true;
            }
            M();
            this.f6440s0 = z10;
            b0();
            if (!this.f6438q0) {
                return z10;
            }
        }
        m5.a.e(!this.C0);
        y0.r rVarA = A();
        this.f6453z.o();
        while (true) {
            this.f6453z.o();
            int I = I(rVarA, this.f6453z, z10);
            if (I == -5) {
                g0(rVarA);
                break;
            }
            if (I != -4) {
                if (I == -3) {
                    break;
                }
                throw new IllegalStateException();
            }
            if (this.f6453z.l(4)) {
                this.C0 = true;
                break;
            }
            if (this.E0) {
                s0 s0Var = this.H;
                Objects.requireNonNull(s0Var);
                this.I = s0Var;
                h0(s0Var, null);
                this.E0 = z10;
            }
            this.f6453z.s();
            if (!this.A.u(this.f6453z)) {
                this.f6439r0 = true;
                break;
            }
        }
        if (this.A.w()) {
            this.A.s();
        }
        if (this.A.w() || this.C0 || this.f6440s0) {
            return true;
        }
        return z10;
    }

    public abstract q3.i K(n nVar, s0 s0Var, s0 s0Var2);

    public m L(Throwable th, n nVar) {
        return new m(th, nVar);
    }

    public final void M() {
        this.f6440s0 = false;
        this.A.o();
        this.f6453z.o();
        this.f6439r0 = false;
        this.f6438q0 = false;
    }

    public final void N() throws n3.q {
        if (this.f6450x0) {
            this.f6446v0 = 1;
            this.f6448w0 = 3;
        } else {
            o0();
            b0();
        }
    }

    @TargetApi(23)
    public final boolean O() throws n3.q {
        if (this.f6450x0) {
            this.f6446v0 = 1;
            if (this.f6423a0 || this.f6425c0) {
                this.f6448w0 = 3;
                return false;
            }
            this.f6448w0 = 2;
        } else {
            A0();
        }
        return true;
    }

    public final boolean P(long j10, long j11) throws n3.q {
        boolean z10;
        boolean zM0;
        int iB;
        boolean z11;
        if (!(this.f6434m0 >= 0)) {
            if (this.d0 && this.f6452y0) {
                try {
                    iB = this.Q.b(this.D);
                } catch (IllegalStateException unused) {
                    l0();
                    if (this.D0) {
                        o0();
                    }
                    return false;
                }
            } else {
                iB = this.Q.b(this.D);
            }
            if (iB < 0) {
                if (iB != -2) {
                    if (this.f6430i0 && (this.C0 || this.f6446v0 == 2)) {
                        l0();
                    }
                    return false;
                }
                this.f6454z0 = true;
                MediaFormat mediaFormatF = this.Q.f();
                if (this.Y != 0 && mediaFormatF.getInteger("width") == 32 && mediaFormatF.getInteger("height") == 32) {
                    this.f6429h0 = true;
                } else {
                    if (this.f6427f0) {
                        mediaFormatF.setInteger("channel-count", 1);
                    }
                    this.S = mediaFormatF;
                    this.T = true;
                }
                return true;
            }
            if (this.f6429h0) {
                this.f6429h0 = false;
                this.Q.d(iB, false);
                return true;
            }
            MediaCodec.BufferInfo bufferInfo = this.D;
            if (bufferInfo.size == 0 && (bufferInfo.flags & 4) != 0) {
                l0();
                return false;
            }
            this.f6434m0 = iB;
            ByteBuffer byteBufferJ = this.Q.j(iB);
            this.f6435n0 = byteBufferJ;
            if (byteBufferJ != null) {
                byteBufferJ.position(this.D.offset);
                ByteBuffer byteBuffer = this.f6435n0;
                MediaCodec.BufferInfo bufferInfo2 = this.D;
                byteBuffer.limit(bufferInfo2.offset + bufferInfo2.size);
            }
            if (this.f6426e0) {
                MediaCodec.BufferInfo bufferInfo3 = this.D;
                if (bufferInfo3.presentationTimeUs == 0 && (bufferInfo3.flags & 4) != 0) {
                    long j12 = this.A0;
                    if (j12 != -9223372036854775807L) {
                        bufferInfo3.presentationTimeUs = j12;
                    }
                }
            }
            long j13 = this.D.presentationTimeUs;
            int size = this.C.size();
            int i10 = 0;
            while (true) {
                if (i10 >= size) {
                    z11 = false;
                    break;
                }
                if (this.C.get(i10).longValue() == j13) {
                    this.C.remove(i10);
                    z11 = true;
                    break;
                }
                i10++;
            }
            this.f6436o0 = z11;
            long j14 = this.B0;
            long j15 = this.D.presentationTimeUs;
            this.f6437p0 = j14 == j15;
            B0(j15);
        }
        if (this.d0 && this.f6452y0) {
            try {
                l lVar = this.Q;
                ByteBuffer byteBuffer2 = this.f6435n0;
                int i11 = this.f6434m0;
                MediaCodec.BufferInfo bufferInfo4 = this.D;
                z10 = false;
                try {
                    zM0 = m0(j10, j11, lVar, byteBuffer2, i11, bufferInfo4.flags, 1, bufferInfo4.presentationTimeUs, this.f6436o0, this.f6437p0, this.I);
                } catch (IllegalStateException unused2) {
                    l0();
                    if (this.D0) {
                        o0();
                    }
                    return z10;
                }
            } catch (IllegalStateException unused3) {
                z10 = false;
            }
        } else {
            z10 = false;
            l lVar2 = this.Q;
            ByteBuffer byteBuffer3 = this.f6435n0;
            int i12 = this.f6434m0;
            MediaCodec.BufferInfo bufferInfo5 = this.D;
            zM0 = m0(j10, j11, lVar2, byteBuffer3, i12, bufferInfo5.flags, 1, bufferInfo5.presentationTimeUs, this.f6436o0, this.f6437p0, this.I);
        }
        if (zM0) {
            i0(this.D.presentationTimeUs);
            boolean z12 = (this.D.flags & 4) != 0 ? true : z10;
            this.f6434m0 = -1;
            this.f6435n0 = null;
            if (!z12) {
                return r14;
            }
            l0();
        }
        return z10;
    }

    public final boolean Q() throws n3.q {
        l lVar = this.Q;
        if (lVar == null || this.f6446v0 == 2 || this.C0) {
            return false;
        }
        if (this.f6433l0 < 0) {
            int iL = lVar.l();
            this.f6433l0 = iL;
            if (iL < 0) {
                return false;
            }
            this.f6451y.f13581j = this.Q.g(iL);
            this.f6451y.o();
        }
        if (this.f6446v0 == 1) {
            if (!this.f6430i0) {
                this.f6452y0 = true;
                this.Q.o(this.f6433l0, 0, 0L, 4);
                s0();
            }
            this.f6446v0 = 2;
            return false;
        }
        if (this.f6428g0) {
            this.f6428g0 = false;
            this.f6451y.f13581j.put(L0);
            this.Q.o(this.f6433l0, 38, 0L, 0);
            s0();
            this.f6450x0 = true;
            return true;
        }
        if (this.f6444u0 == 1) {
            for (int i10 = 0; i10 < this.R.f11689u.size(); i10++) {
                this.f6451y.f13581j.put(this.R.f11689u.get(i10));
            }
            this.f6444u0 = 2;
        }
        int iPosition = this.f6451y.f13581j.position();
        y0.r rVarA = A();
        try {
            int I = I(rVarA, this.f6451y, 0);
            if (h()) {
                this.B0 = this.A0;
            }
            if (I == -3) {
                return false;
            }
            if (I == -5) {
                if (this.f6444u0 == 2) {
                    this.f6451y.o();
                    this.f6444u0 = 1;
                }
                g0(rVarA);
                return true;
            }
            if (this.f6451y.l(4)) {
                if (this.f6444u0 == 2) {
                    this.f6451y.o();
                    this.f6444u0 = 1;
                }
                this.C0 = true;
                if (!this.f6450x0) {
                    l0();
                    return false;
                }
                try {
                    if (!this.f6430i0) {
                        this.f6452y0 = true;
                        this.Q.o(this.f6433l0, 0, 0L, 4);
                        s0();
                    }
                    return false;
                } catch (MediaCodec.CryptoException e10) {
                    throw z(e10, this.H, false, g0.u(e10.getErrorCode()));
                }
            }
            if (!this.f6450x0 && !this.f6451y.l(1)) {
                this.f6451y.o();
                if (this.f6444u0 == 2) {
                    this.f6444u0 = 1;
                }
                return true;
            }
            boolean zT = this.f6451y.t();
            if (zT) {
                q3.c cVar = this.f6451y.f13580i;
                Objects.requireNonNull(cVar);
                if (iPosition != 0) {
                    if (cVar.f13559d == null) {
                        int[] iArr = new int[1];
                        cVar.f13559d = iArr;
                        cVar.f13564i.numBytesOfClearData = iArr;
                    }
                    int[] iArr2 = cVar.f13559d;
                    iArr2[0] = iArr2[0] + iPosition;
                }
            }
            if (this.Z && !zT) {
                ByteBuffer byteBuffer = this.f6451y.f13581j;
                byte[] bArr = m5.t.f10435a;
                int iPosition2 = byteBuffer.position();
                int i11 = 0;
                int i12 = 0;
                while (true) {
                    int i13 = i11 + 1;
                    if (i13 >= iPosition2) {
                        byteBuffer.clear();
                        break;
                    }
                    int i14 = byteBuffer.get(i11) & 255;
                    if (i12 == 3) {
                        if (i14 == 1 && (byteBuffer.get(i13) & 31) == 7) {
                            ByteBuffer byteBufferDuplicate = byteBuffer.duplicate();
                            byteBufferDuplicate.position(i11 - 3);
                            byteBufferDuplicate.limit(iPosition2);
                            byteBuffer.position(0);
                            byteBuffer.put(byteBufferDuplicate);
                            break;
                        }
                    } else if (i14 == 0) {
                        i12++;
                    }
                    if (i14 != 0) {
                        i12 = 0;
                    }
                    i11 = i13;
                }
                if (this.f6451y.f13581j.position() == 0) {
                    return true;
                }
                this.Z = false;
            }
            q3.g gVar = this.f6451y;
            long j10 = gVar.f13583l;
            i iVar = this.f6431j0;
            if (iVar != null) {
                s0 s0Var = this.H;
                if (iVar.f6402b == 0) {
                    iVar.f6401a = j10;
                }
                if (!iVar.f6403c) {
                    ByteBuffer byteBuffer2 = gVar.f13581j;
                    Objects.requireNonNull(byteBuffer2);
                    int i15 = 0;
                    for (int i16 = 0; i16 < 4; i16++) {
                        i15 = (i15 << 8) | (byteBuffer2.get(i16) & 255);
                    }
                    int iD = b0.d(i15);
                    if (iD == -1) {
                        iVar.f6403c = true;
                        iVar.f6402b = 0L;
                        iVar.f6401a = gVar.f13583l;
                        m5.p.g("C2Mp3TimestampTracker", "MPEG audio header is invalid.");
                        j10 = gVar.f13583l;
                    } else {
                        long jMax = Math.max(0L, ((iVar.f6402b - 529) * 1000000) / s0Var.G) + iVar.f6401a;
                        iVar.f6402b += (long) iD;
                        j10 = jMax;
                    }
                }
                long j11 = this.A0;
                i iVar2 = this.f6431j0;
                s0 s0Var2 = this.H;
                Objects.requireNonNull(iVar2);
                this.A0 = Math.max(j11, Math.max(0L, ((iVar2.f6402b - 529) * 1000000) / s0Var2.G) + iVar2.f6401a);
            } else {
                zT = zT;
            }
            if (this.f6451y.n()) {
                this.C.add(Long.valueOf(j10));
            }
            if (this.E0) {
                this.B.a(j10, this.H);
                this.E0 = false;
            }
            this.A0 = Math.max(this.A0, j10);
            this.f6451y.s();
            if (this.f6451y.m()) {
                Z(this.f6451y);
            }
            k0(this.f6451y);
            try {
                if (zT) {
                    this.Q.n(this.f6433l0, this.f6451y.f13580i, j10);
                } else {
                    this.Q.o(this.f6433l0, this.f6451y.f13581j.limit(), j10, 0);
                }
                s0();
                this.f6450x0 = true;
                this.f6444u0 = 0;
                this.H0.f13570c++;
                return true;
            } catch (MediaCodec.CryptoException e11) {
                throw z(e11, this.H, false, g0.u(e11.getErrorCode()));
            }
        } catch (q3.g.a e12) {
            d0(e12);
            n0(0);
            R();
            return true;
        }
    }

    public final void R() {
        try {
            this.Q.flush();
        } finally {
            q0();
        }
    }

    public final boolean S() {
        if (this.Q == null) {
            return false;
        }
        int i10 = this.f6448w0;
        if (i10 == 3 || this.f6423a0 || ((this.f6424b0 && !this.f6454z0) || (this.f6425c0 && this.f6452y0))) {
            o0();
            return true;
        }
        if (i10 == 2) {
            int i11 = g0.f10384a;
            m5.a.e(i11 >= 23);
            if (i11 >= 23) {
                try {
                    A0();
                } catch (n3.q e10) {
                    m5.p.h("MediaCodecRenderer", "Failed to update the DRM session, releasing the codec instead.", e10);
                    o0();
                    return true;
                }
            }
        }
        R();
        return false;
    }

    public final List<n> T(boolean z10) throws r.b {
        List<n> listW = W(this.f6443u, this.H, z10);
        if (listW.isEmpty() && z10) {
            listW = W(this.f6443u, this.H, false);
            if (!listW.isEmpty()) {
                StringBuilder sbC = a0.b.c("Drm session requires secure decoder for ");
                sbC.append(this.H.f11687s);
                sbC.append(", but no secure decoder available. Trying to proceed with ");
                sbC.append(listW);
                sbC.append(".");
                m5.p.g("MediaCodecRenderer", sbC.toString());
            }
        }
        return listW;
    }

    public boolean U() {
        return false;
    }

    public abstract float V(float f10, s0[] s0VarArr);

    public abstract List<n> W(p pVar, s0 s0Var, boolean z10) throws r.b;

    public final r3.t X(r3.e eVar) throws n3.q {
        q3.b bVarG = eVar.g();
        if (bVarG == null || (bVarG instanceof r3.t)) {
            return (r3.t) bVarG;
        }
        throw z(new IllegalArgumentException("Expecting FrameworkCryptoConfig but found: " + bVarG), this.H, false, 6001);
    }

    public abstract l.a Y(n nVar, s0 s0Var, MediaCrypto mediaCrypto, float f10);

    public void Z(q3.g gVar) throws n3.q {
    }

    @Override // n3.t1
    public final int a(s0 s0Var) throws n3.q {
        try {
            return y0(this.f6443u, s0Var);
        } catch (r.b e10) {
            throw y(e10, s0Var);
        }
    }

    /* JADX WARN: Code duplicated, block: B:114:0x01c0  */
    /* JADX WARN: Code duplicated, block: B:27:0x0097  */
    /* JADX WARN: Code duplicated, block: B:42:0x00cf  */
    /* JADX WARN: Code duplicated, block: B:87:0x0164  */
    public final void a0(n nVar, MediaCrypto mediaCrypto) throws Exception {
        float fV;
        int i10;
        boolean z10;
        boolean z11;
        String str = nVar.f6415a;
        int i11 = g0.f10384a;
        if (i11 < 23) {
            fV = -1.0f;
        } else {
            float f10 = this.P;
            s0[] s0VarArr = this.f11388o;
            Objects.requireNonNull(s0VarArr);
            fV = V(f10, s0VarArr);
        }
        float f11 = fV > this.f6447w ? fV : -1.0f;
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        l.a aVarY = Y(nVar, this.H, mediaCrypto, f11);
        if (i11 >= 31) {
            v0 v0Var = this.f11385l;
            Objects.requireNonNull(v0Var);
            a.a(aVarY, v0Var);
        }
        try {
            i0.b.d("createCodec:" + str);
            this.Q = this.f6441t.a(aVarY);
            i0.b.g();
            long jElapsedRealtime2 = SystemClock.elapsedRealtime();
            this.X = nVar;
            this.U = f11;
            this.R = this.H;
            if (i11 <= 25 && "OMX.Exynos.avc.dec.secure".equals(str)) {
                String str2 = g0.f10387d;
                if (str2.startsWith("SM-T585") || str2.startsWith("SM-A510") || str2.startsWith("SM-A520") || str2.startsWith("SM-J700")) {
                    i10 = 2;
                } else if (i11 < 24) {
                    i10 = 0;
                } else {
                    i10 = 0;
                }
            } else if (i11 < 24 || !("OMX.Nvidia.h264.decode".equals(str) || "OMX.Nvidia.h264.decode.secure".equals(str))) {
                i10 = 0;
            } else {
                String str3 = g0.f10385b;
                if ("flounder".equals(str3) || "flounder_lte".equals(str3) || "grouper".equals(str3) || "tilapia".equals(str3)) {
                    i10 = 1;
                } else {
                    i10 = 0;
                }
            }
            this.Y = i10;
            this.Z = i11 < 21 && this.R.f11689u.isEmpty() && "OMX.MTK.VIDEO.DECODER.AVC".equals(str);
            this.f6423a0 = i11 < 18 || (i11 == 18 && ("OMX.SEC.avc.dec".equals(str) || "OMX.SEC.avc.dec.secure".equals(str))) || (i11 == 19 && g0.f10387d.startsWith("SM-G800") && ("OMX.Exynos.avc.dec".equals(str) || "OMX.Exynos.avc.dec.secure".equals(str)));
            this.f6424b0 = i11 == 29 && "c2.android.aac.decoder".equals(str);
            if (i11 > 23 || !"OMX.google.vorbis.decoder".equals(str)) {
                if (i11 <= 19) {
                    String str4 = g0.f10385b;
                    z10 = ("hb2000".equals(str4) || "stvm8".equals(str4)) && ("OMX.amlogic.avc.decoder.awesome".equals(str) || "OMX.amlogic.avc.decoder.awesome.secure".equals(str));
                }
            }
            this.f6425c0 = z10;
            this.d0 = i11 == 21 && "OMX.google.aac.decoder".equals(str);
            if (i11 < 21 && "OMX.SEC.mp3.dec".equals(str) && "samsung".equals(g0.f10386c)) {
                String str5 = g0.f10385b;
                if (str5.startsWith("baffin") || str5.startsWith("grand") || str5.startsWith("fortuna") || str5.startsWith("gprimelte") || str5.startsWith("j2y18lte") || str5.startsWith("ms01")) {
                    z11 = true;
                } else {
                    z11 = false;
                }
            } else {
                z11 = false;
            }
            this.f6426e0 = z11;
            this.f6427f0 = i11 <= 18 && this.R.F == 1 && "OMX.MTK.AUDIO.DECODER.MP3".equals(str);
            String str6 = nVar.f6415a;
            this.f6430i0 = ((i11 <= 25 && "OMX.rk.video_decoder.avc".equals(str6)) || ((i11 <= 17 && "OMX.allwinner.video.decoder.avc".equals(str6)) || ((i11 <= 29 && ("OMX.broadcom.video_decoder.tunnel".equals(str6) || "OMX.broadcom.video_decoder.tunnel.secure".equals(str6))) || ("Amazon".equals(g0.f10386c) && "AFTS".equals(g0.f10387d) && nVar.f6420f)))) || U();
            this.Q.c();
            if ("c2.android.mp3.decoder".equals(nVar.f6415a)) {
                this.f6431j0 = new i();
            }
            if (this.f11386m == 2) {
                this.f6432k0 = SystemClock.elapsedRealtime() + 1000;
            }
            this.H0.f13568a++;
            e0(str, jElapsedRealtime2, jElapsedRealtime2 - jElapsedRealtime);
        } catch (Throwable th) {
            i0.b.g();
            throw th;
        }
    }

    @Override // n3.s1
    public boolean b() {
        return this.D0;
    }

    public final void b0() throws n3.q {
        s0 s0Var;
        if (this.Q != null || this.f6438q0 || (s0Var = this.H) == null) {
            return;
        }
        if (this.K == null && x0(s0Var)) {
            s0 s0Var2 = this.H;
            M();
            String str = s0Var2.f11687s;
            if ("audio/mp4a-latm".equals(str) || "audio/mpeg".equals(str) || "audio/opus".equals(str)) {
                h hVar = this.A;
                Objects.requireNonNull(hVar);
                hVar.f6400r = 32;
            } else {
                h hVar2 = this.A;
                Objects.requireNonNull(hVar2);
                hVar2.f6400r = 1;
            }
            this.f6438q0 = true;
            return;
        }
        t0(this.K);
        String str2 = this.H.f11687s;
        r3.e eVar = this.J;
        if (eVar != null) {
            if (this.L == null) {
                r3.t tVarX = X(eVar);
                if (tVarX != null) {
                    try {
                        MediaCrypto mediaCrypto = new MediaCrypto(tVarX.f14515a, tVarX.f14516b);
                        this.L = mediaCrypto;
                        this.M = !tVarX.f14517c && mediaCrypto.requiresSecureDecoderComponent(str2);
                    } catch (MediaCryptoException e10) {
                        throw z(e10, this.H, false, 6006);
                    }
                } else if (this.J.f() == null) {
                    return;
                }
            }
            if (r3.t.f14514d) {
                int state = this.J.getState();
                if (state == 1) {
                    r3.e.a aVarF = this.J.f();
                    Objects.requireNonNull(aVarF);
                    throw z(aVarF, this.H, false, aVarF.f14488h);
                }
                if (state != 4) {
                    return;
                }
            }
        }
        try {
            c0(this.L, this.M);
        } catch (b e11) {
            throw z(e11, this.H, false, 4001);
        }
    }

    /* JADX WARN: Code duplicated, block: B:36:0x00c0  */
    /* JADX WARN: Code duplicated, block: B:39:0x00cd  */
    /* JADX WARN: Code duplicated, block: B:40:0x00d0  */
    /* JADX WARN: Code duplicated, block: B:59:0x00f2 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:64:0x0049 A[SYNTHETIC] */
    public final void c0(MediaCrypto mediaCrypto, boolean z10) throws b {
        b bVar;
        String diagnosticInfo;
        b bVar2;
        if (this.V == null) {
            try {
                List<n> listT = T(z10);
                ArrayDeque<n> arrayDeque = new ArrayDeque<>();
                this.V = arrayDeque;
                if (this.f6445v) {
                    arrayDeque.addAll(listT);
                } else if (!listT.isEmpty()) {
                    this.V.add(listT.get(0));
                }
                this.W = null;
            } catch (r.b e10) {
                throw new b(this.H, e10, z10, -49998);
            }
        }
        if (this.V.isEmpty()) {
            throw new b(this.H, null, z10, -49999);
        }
        n nVarPeekFirst = this.V.peekFirst();
        while (this.Q == null) {
            n nVarPeekFirst2 = this.V.peekFirst();
            if (!w0(nVarPeekFirst2)) {
                return;
            }
            try {
                a0(nVarPeekFirst2, mediaCrypto);
            } catch (Exception e11) {
                if (nVarPeekFirst2 != nVarPeekFirst) {
                    throw e11;
                }
                try {
                    m5.p.g("MediaCodecRenderer", "Preferred decoder instantiation failed. Sleeping for 50ms then retrying.");
                    Thread.sleep(50L);
                    a0(nVarPeekFirst2, mediaCrypto);
                } catch (Exception e12) {
                    m5.p.h("MediaCodecRenderer", "Failed to initialize decoder: " + nVarPeekFirst2, e12);
                    this.V.removeFirst();
                    s0 s0Var = this.H;
                    StringBuilder sbC = a0.b.c("Decoder init failed: ");
                    sbC.append(nVarPeekFirst2.f6415a);
                    sbC.append(", ");
                    sbC.append(s0Var);
                    String string = sbC.toString();
                    String str = s0Var.f11687s;
                    if (g0.f10384a >= 21 || !(e12 instanceof MediaCodec.CodecException)) {
                        diagnosticInfo = null;
                    } else {
                        diagnosticInfo = ((MediaCodec.CodecException) e12).getDiagnosticInfo();
                    }
                    bVar = new b(string, e12, str, z10, nVarPeekFirst2, diagnosticInfo);
                    d0(bVar);
                    bVar2 = this.W;
                    if (bVar2 == null) {
                        this.W = bVar;
                    } else {
                        this.W = new b(bVar2.getMessage(), bVar2.getCause(), bVar2.f6455h, bVar2.f6456i, bVar2.f6457j, bVar2.f6458k);
                    }
                    if (!this.V.isEmpty()) {
                        throw this.W;
                    }
                }
                m5.p.h("MediaCodecRenderer", "Failed to initialize decoder: " + nVarPeekFirst2, e12);
                this.V.removeFirst();
                s0 s0Var2 = this.H;
                StringBuilder sbC2 = a0.b.c("Decoder init failed: ");
                sbC2.append(nVarPeekFirst2.f6415a);
                sbC2.append(", ");
                sbC2.append(s0Var2);
                String string2 = sbC2.toString();
                String str2 = s0Var2.f11687s;
                if (g0.f10384a >= 21) {
                    diagnosticInfo = null;
                } else {
                    diagnosticInfo = null;
                }
                bVar = new b(string2, e12, str2, z10, nVarPeekFirst2, diagnosticInfo);
                d0(bVar);
                bVar2 = this.W;
                if (bVar2 == null) {
                    this.W = bVar;
                } else {
                    this.W = new b(bVar2.getMessage(), bVar2.getCause(), bVar2.f6455h, bVar2.f6456i, bVar2.f6457j, bVar2.f6458k);
                }
                if (!this.V.isEmpty()) {
                    throw this.W;
                }
            }
        }
        this.V = null;
    }

    public abstract void d0(Exception exc);

    public abstract void e0(String str, long j10, long j11);

    public abstract void f0(String str);

    /* JADX WARN: Code duplicated, block: B:100:0x011c  */
    /* JADX WARN: Code duplicated, block: B:14:0x0037  */
    /* JADX WARN: Code duplicated, block: B:84:0x00f8  */
    public q3.i g0(y0.r rVar) throws n3.q {
        boolean z10;
        r3.t tVarX;
        int i10;
        boolean z11 = true;
        this.E0 = true;
        s0 s0Var = (s0) rVar.f18272c;
        Objects.requireNonNull(s0Var);
        if (s0Var.f11687s == null) {
            throw z(new IllegalArgumentException(), s0Var, false, 4005);
        }
        u0((r3.e) rVar.f18271b);
        this.H = s0Var;
        if (this.f6438q0) {
            this.f6440s0 = true;
            return null;
        }
        l lVar = this.Q;
        if (lVar == null) {
            this.V = null;
            b0();
            return null;
        }
        n nVar = this.X;
        s0 s0Var2 = this.R;
        r3.e eVar = this.J;
        r3.e eVar2 = this.K;
        if (eVar != eVar2) {
            if (eVar2 != null && eVar != null && g0.f10384a >= 23) {
                UUID uuid = n3.i.f11429e;
                if (!uuid.equals(eVar.b()) && !uuid.equals(eVar2.b()) && (tVarX = X(eVar2)) != null) {
                    boolean zE = tVarX.f14517c ? false : eVar2.e(s0Var.f11687s);
                    if (nVar.f6420f || !zE) {
                        z10 = false;
                    }
                }
            }
            z10 = true;
        } else {
            z10 = false;
        }
        if (z10) {
            N();
            return new q3.i(nVar.f6415a, s0Var2, s0Var, 0, 128);
        }
        boolean z12 = this.K != this.J;
        m5.a.e(!z12 || g0.f10384a >= 23);
        q3.i iVarK = K(nVar, s0Var2, s0Var);
        int i11 = iVarK.f13591d;
        if (i11 != 0) {
            if (i11 != 1) {
                if (i11 != 2) {
                    if (i11 != 3) {
                        throw new IllegalStateException();
                    }
                    if (z0(s0Var)) {
                        this.R = s0Var;
                        if (z12 && !O()) {
                            i10 = 2;
                        }
                    } else {
                        i10 = 16;
                    }
                } else if (z0(s0Var)) {
                    this.f6442t0 = true;
                    this.f6444u0 = 1;
                    int i12 = this.Y;
                    if (i12 != 2 && (i12 != 1 || s0Var.f11692x != s0Var2.f11692x || s0Var.f11693y != s0Var2.f11693y)) {
                        z11 = false;
                    }
                    this.f6428g0 = z11;
                    this.R = s0Var;
                    if (z12 && !O()) {
                        i10 = 2;
                    }
                } else {
                    i10 = 16;
                }
            } else if (z0(s0Var)) {
                this.R = s0Var;
                if (!z12) {
                    if (this.f6450x0) {
                        this.f6446v0 = 1;
                        if (this.f6423a0 || this.f6425c0) {
                            this.f6448w0 = 3;
                            z11 = false;
                        } else {
                            this.f6448w0 = 1;
                        }
                    }
                    if (!z11) {
                        i10 = 2;
                    }
                } else if (!O()) {
                    i10 = 2;
                }
            } else {
                i10 = 16;
            }
            return (iVarK.f13591d != 0 || (this.Q == lVar && this.f6448w0 != 3)) ? iVarK : new q3.i(nVar.f6415a, s0Var2, s0Var, 0, i10);
        }
        N();
        i10 = 0;
        if (iVarK.f13591d != 0) {
        }
    }

    public abstract void h0(s0 s0Var, MediaFormat mediaFormat) throws n3.q;

    public void i0(long j10) {
        while (true) {
            int i10 = this.K0;
            if (i10 == 0 || j10 < this.G[0]) {
                return;
            }
            long[] jArr = this.E;
            this.I0 = jArr[0];
            this.J0 = this.F[0];
            int i11 = i10 - 1;
            this.K0 = i11;
            System.arraycopy(jArr, 1, jArr, 0, i11);
            long[] jArr2 = this.F;
            System.arraycopy(jArr2, 1, jArr2, 0, this.K0);
            long[] jArr3 = this.G;
            System.arraycopy(jArr3, 1, jArr3, 0, this.K0);
            j0();
        }
    }

    @Override // n3.s1
    public boolean isReady() {
        boolean zIsReady;
        if (this.H != null) {
            if (h()) {
                zIsReady = this.f11391r;
            } else {
                m0 m0Var = this.f11387n;
                Objects.requireNonNull(m0Var);
                zIsReady = m0Var.isReady();
            }
            if (zIsReady) {
                return true;
            }
            if (this.f6434m0 >= 0) {
                return true;
            }
            if (this.f6432k0 != -9223372036854775807L && SystemClock.elapsedRealtime() < this.f6432k0) {
                return true;
            }
        }
        return false;
    }

    @Override // n3.f, n3.t1
    public final int j() {
        return 8;
    }

    public abstract void j0();

    /* JADX WARN: Code duplicated, block: B:53:0x00a1  */
    @Override // n3.s1
    public final void k(long j10, long j11) throws n3.q {
        boolean z10;
        boolean z11 = false;
        if (this.F0) {
            this.F0 = false;
            l0();
        }
        n3.q qVar = this.G0;
        if (qVar != null) {
            this.G0 = null;
            throw qVar;
        }
        try {
            if (this.D0) {
                p0();
                return;
            }
            if (this.H != null || n0(2)) {
                b0();
                if (this.f6438q0) {
                    i0.b.d("bypassRender");
                    while (J(j10, j11)) {
                    }
                    i0.b.g();
                } else if (this.Q != null) {
                    long jElapsedRealtime = SystemClock.elapsedRealtime();
                    i0.b.d("drainAndFeed");
                    while (P(j10, j11) && v0(jElapsedRealtime)) {
                    }
                    while (Q() && v0(jElapsedRealtime)) {
                    }
                    i0.b.g();
                } else {
                    q3.e eVar = this.H0;
                    int i10 = eVar.f13571d;
                    m0 m0Var = this.f11387n;
                    Objects.requireNonNull(m0Var);
                    eVar.f13571d = i10 + m0Var.p(j10 - this.f11389p);
                    n0(1);
                }
                synchronized (this.H0) {
                }
            }
        } catch (IllegalStateException e10) {
            int i11 = g0.f10384a;
            if (i11 < 21 || !(e10 instanceof MediaCodec.CodecException)) {
                StackTraceElement[] stackTrace = e10.getStackTrace();
                if (stackTrace.length <= 0 || !stackTrace[0].getClassName().equals("android.media.MediaCodec")) {
                    z10 = false;
                } else {
                    z10 = true;
                }
            } else {
                z10 = true;
            }
            if (!z10) {
                throw e10;
            }
            d0(e10);
            if (i11 >= 21) {
                if (e10 instanceof MediaCodec.CodecException ? ((MediaCodec.CodecException) e10).isRecoverable() : false) {
                    z11 = true;
                }
            }
            if (z11) {
                o0();
            }
            throw z(L(e10, this.X), this.H, z11, 4003);
        }
    }

    public abstract void k0(q3.g gVar) throws n3.q;

    @TargetApi(23)
    public final void l0() throws n3.q {
        int i10 = this.f6448w0;
        if (i10 == 1) {
            R();
            return;
        }
        if (i10 == 2) {
            R();
            A0();
        } else if (i10 != 3) {
            this.D0 = true;
            p0();
        } else {
            o0();
            b0();
        }
    }

    public abstract boolean m0(long j10, long j11, l lVar, ByteBuffer byteBuffer, int i10, int i11, int i12, long j12, boolean z10, boolean z11, s0 s0Var) throws n3.q;

    public final boolean n0(int i10) throws n3.q {
        y0.r rVarA = A();
        this.f6449x.o();
        int I = I(rVarA, this.f6449x, i10 | 4);
        if (I == -5) {
            g0(rVarA);
            return true;
        }
        if (I != -4 || !this.f6449x.l(4)) {
            return false;
        }
        this.C0 = true;
        l0();
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void o0() {
        try {
            l lVar = this.Q;
            if (lVar != null) {
                lVar.a();
                this.H0.f13569b++;
                f0(this.X.f6415a);
            }
            this.Q = null;
            try {
                MediaCrypto mediaCrypto = this.L;
                if (mediaCrypto != null) {
                    mediaCrypto.release();
                }
            } finally {
                this.L = null;
                t0(null);
                r0();
            }
        } catch (Throwable th) {
            this.Q = null;
            try {
                MediaCrypto mediaCrypto2 = this.L;
                if (mediaCrypto2 != null) {
                    mediaCrypto2.release();
                }
                throw th;
            } finally {
                this.L = null;
                t0(null);
                r0();
            }
        }
    }

    public void p0() throws n3.q {
    }

    public void q0() {
        s0();
        this.f6434m0 = -1;
        this.f6435n0 = null;
        this.f6432k0 = -9223372036854775807L;
        this.f6452y0 = false;
        this.f6450x0 = false;
        this.f6428g0 = false;
        this.f6429h0 = false;
        this.f6436o0 = false;
        this.f6437p0 = false;
        this.C.clear();
        this.A0 = -9223372036854775807L;
        this.B0 = -9223372036854775807L;
        i iVar = this.f6431j0;
        if (iVar != null) {
            iVar.f6401a = 0L;
            iVar.f6402b = 0L;
            iVar.f6403c = false;
        }
        this.f6446v0 = 0;
        this.f6448w0 = 0;
        this.f6444u0 = this.f6442t0 ? 1 : 0;
    }

    public final void r0() {
        q0();
        this.G0 = null;
        this.f6431j0 = null;
        this.V = null;
        this.X = null;
        this.R = null;
        this.S = null;
        this.T = false;
        this.f6454z0 = false;
        this.U = -1.0f;
        this.Y = 0;
        this.Z = false;
        this.f6423a0 = false;
        this.f6424b0 = false;
        this.f6425c0 = false;
        this.d0 = false;
        this.f6426e0 = false;
        this.f6427f0 = false;
        this.f6430i0 = false;
        this.f6442t0 = false;
        this.f6444u0 = 0;
        this.M = false;
    }

    public final void s0() {
        this.f6433l0 = -1;
        this.f6451y.f13581j = null;
    }

    public final void t0(r3.e eVar) {
        r3.e eVar2 = this.J;
        if (eVar2 != eVar) {
            if (eVar != null) {
                eVar.c(null);
            }
            if (eVar2 != null) {
                eVar2.d(null);
            }
        }
        this.J = eVar;
    }

    public final void u0(r3.e eVar) {
        r3.e eVar2 = this.K;
        if (eVar2 != eVar) {
            if (eVar != null) {
                eVar.c(null);
            }
            if (eVar2 != null) {
                eVar2.d(null);
            }
        }
        this.K = eVar;
    }

    public final boolean v0(long j10) {
        return this.N == -9223372036854775807L || SystemClock.elapsedRealtime() - j10 < this.N;
    }

    public boolean w0(n nVar) {
        return true;
    }

    @Override // n3.s1
    public void x(float f10, float f11) throws n3.q {
        this.O = f10;
        this.P = f11;
        z0(this.R);
    }

    public boolean x0(s0 s0Var) {
        return false;
    }

    public abstract int y0(p pVar, s0 s0Var) throws r.b;

    public final boolean z0(s0 s0Var) throws n3.q {
        if (g0.f10384a >= 23 && this.Q != null && this.f6448w0 != 3 && this.f11386m != 0) {
            float f10 = this.P;
            s0[] s0VarArr = this.f11388o;
            Objects.requireNonNull(s0VarArr);
            float fV = V(f10, s0VarArr);
            float f11 = this.U;
            if (f11 == fV) {
                return true;
            }
            if (fV == -1.0f) {
                N();
                return false;
            }
            if (f11 == -1.0f && fV <= this.f6447w) {
                return true;
            }
            Bundle bundle = new Bundle();
            bundle.putFloat("operating-rate", fV);
            this.Q.i(bundle);
            this.U = fV;
        }
        return true;
    }

    /* JADX INFO: compiled from: MediaCodecRenderer.java */
    public static class b extends Exception {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public final String f6455h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public final boolean f6456i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public final n f6457j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public final String f6458k;

        /* JADX WARN: Illegal instructions before constructor call */
        public b(s0 s0Var, Throwable th, boolean z10, int i10) {
            String str = "Decoder init failed: [" + i10 + "], " + s0Var;
            String str2 = s0Var.f11687s;
            StringBuilder sbH = r0.h("com.google.android.exoplayer2.mediacodec.MediaCodecRenderer_", i10 < 0 ? "neg_" : "");
            sbH.append(Math.abs(i10));
            this(str, th, str2, z10, null, sbH.toString());
        }

        public b(String str, Throwable th, String str2, boolean z10, n nVar, String str3) {
            super(str, th);
            this.f6455h = str2;
            this.f6456i = z10;
            this.f6457j = nVar;
            this.f6458k = str3;
        }
    }
}
