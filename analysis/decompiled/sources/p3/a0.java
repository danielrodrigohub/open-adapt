package p3;

import android.content.Context;
import android.media.MediaCrypto;
import android.media.MediaFormat;
import android.os.Handler;
import androidx.fragment.app.r0;
import java.nio.ByteBuffer;
import java.util.List;
import java.util.Objects;
import n3.m1;
import n3.s0;
import n3.s1;
import n3.t1;
import n3.u1;
import o3.v0;
import u6.p0;

/* JADX INFO: compiled from: MediaCodecAudioRenderer.java */
/* JADX INFO: loaded from: classes.dex */
public final class a0 extends e4.o implements m5.r {
    public final Context M0;
    public final p.a N0;
    public final q O0;
    public int P0;
    public boolean Q0;
    public s0 R0;
    public long S0;
    public boolean T0;
    public boolean U0;
    public boolean V0;
    public s1.a W0;

    /* JADX INFO: compiled from: MediaCodecAudioRenderer.java */
    public final class a implements q.c {
        public a() {
        }

        public final void a(Exception exc) {
            m5.p.d("MediaCodecAudioRenderer", "Audio sink error", exc);
            p.a aVar = a0.this.N0;
            Handler handler = aVar.f12789a;
            if (handler != null) {
                handler.post(new g(aVar, exc, 0));
            }
        }
    }

    public a0(Context context, e4.l.b bVar, e4.p pVar, Handler handler, p pVar2, q qVar) {
        super(1, bVar, pVar, 44100.0f);
        this.M0 = context.getApplicationContext();
        this.O0 = qVar;
        this.N0 = new p.a(handler, pVar2);
        ((w) qVar).f12865r = new a();
    }

    public static List<e4.n> D0(e4.p pVar, s0 s0Var, boolean z10, q qVar) throws e4.r.b {
        e4.n nVarH;
        String str = s0Var.f11687s;
        if (str == null) {
            u6.a aVar = u6.v.f16002i;
            return p0.f15967l;
        }
        if (qVar.a(s0Var) && (nVarH = e4.r.h()) != null) {
            return u6.v.v(nVarH);
        }
        List<e4.n> listA = pVar.a(str, z10, false);
        String strB = e4.r.b(s0Var);
        if (strB == null) {
            return u6.v.s(listA);
        }
        List<e4.n> listA2 = pVar.a(strB, z10, false);
        u6.a aVar2 = u6.v.f16002i;
        u6.v.a aVar3 = new u6.v.a();
        aVar3.d(listA);
        aVar3.d(listA2);
        return aVar3.e();
    }

    @Override // e4.o, n3.f
    public final void B() {
        this.V0 = true;
        try {
            this.O0.flush();
            try {
                super.B();
            } finally {
                this.N0.a(this.H0);
            }
        } catch (Throwable th) {
            try {
                super.B();
                throw th;
            } finally {
                this.N0.a(this.H0);
            }
        }
    }

    @Override // n3.f
    public final void C(boolean z10) throws n3.q {
        q3.e eVar = new q3.e();
        this.H0 = eVar;
        p.a aVar = this.N0;
        Handler handler = aVar.f12789a;
        if (handler != null) {
            handler.post(new j(aVar, eVar, 0));
        }
        u1 u1Var = this.f11383j;
        Objects.requireNonNull(u1Var);
        if (u1Var.f11733a) {
            this.O0.i();
        } else {
            this.O0.p();
        }
        q qVar = this.O0;
        v0 v0Var = this.f11385l;
        Objects.requireNonNull(v0Var);
        qVar.m(v0Var);
    }

    public final int C0(e4.n nVar, s0 s0Var) {
        int i10;
        if (!"OMX.google.raw.decoder".equals(nVar.f6415a) || (i10 = m5.g0.f10384a) >= 24 || (i10 == 23 && m5.g0.K(this.M0))) {
            return s0Var.f11688t;
        }
        return -1;
    }

    @Override // e4.o, n3.f
    public final void D(long j10, boolean z10) throws n3.q {
        super.D(j10, z10);
        this.O0.flush();
        this.S0 = j10;
        this.T0 = true;
        this.U0 = true;
    }

    @Override // n3.f
    public final void E() {
        try {
            try {
                M();
                o0();
                u0(null);
                if (this.V0) {
                    this.V0 = false;
                    this.O0.e();
                }
            } catch (Throwable th) {
                u0(null);
                throw th;
            }
        } catch (Throwable th2) {
            if (this.V0) {
                this.V0 = false;
                this.O0.e();
            }
            throw th2;
        }
    }

    public final void E0() {
        long jO = this.O0.o(b());
        if (jO != Long.MIN_VALUE) {
            if (!this.U0) {
                jO = Math.max(this.S0, jO);
            }
            this.S0 = jO;
            this.U0 = false;
        }
    }

    @Override // n3.f
    public final void F() {
        this.O0.g();
    }

    @Override // n3.f
    public final void G() {
        E0();
        this.O0.c();
    }

    @Override // e4.o
    public final q3.i K(e4.n nVar, s0 s0Var, s0 s0Var2) {
        q3.i iVarC = nVar.c(s0Var, s0Var2);
        int i10 = iVarC.f13592e;
        if (C0(nVar, s0Var2) > this.P0) {
            i10 |= 64;
        }
        int i11 = i10;
        return new q3.i(nVar.f6415a, s0Var, s0Var2, i11 != 0 ? 0 : iVarC.f13591d, i11);
    }

    @Override // e4.o
    public final float V(float f10, s0[] s0VarArr) {
        int iMax = -1;
        for (s0 s0Var : s0VarArr) {
            int i10 = s0Var.G;
            if (i10 != -1) {
                iMax = Math.max(iMax, i10);
            }
        }
        if (iMax == -1) {
            return -1.0f;
        }
        return f10 * iMax;
    }

    @Override // e4.o
    public final List<e4.n> W(e4.p pVar, s0 s0Var, boolean z10) throws e4.r.b {
        return e4.r.g(D0(pVar, s0Var, z10, this.O0), s0Var);
    }

    /* JADX WARN: Code duplicated, block: B:24:0x0065  */
    /* JADX WARN: Code duplicated, block: B:35:0x00b3  */
    @Override // e4.o
    public final e4.l.a Y(e4.n nVar, s0 s0Var, MediaCrypto mediaCrypto, float f10) {
        boolean z10;
        boolean z11;
        s0[] s0VarArr = this.f11388o;
        Objects.requireNonNull(s0VarArr);
        int iC0 = C0(nVar, s0Var);
        if (s0VarArr.length != 1) {
            for (s0 s0Var2 : s0VarArr) {
                if (nVar.c(s0Var, s0Var2).f13591d != 0) {
                    iC0 = Math.max(iC0, C0(nVar, s0Var2));
                }
            }
        }
        this.P0 = iC0;
        String str = nVar.f6415a;
        int i10 = m5.g0.f10384a;
        if (i10 < 24 && "OMX.SEC.aac.dec".equals(str) && "samsung".equals(m5.g0.f10386c)) {
            String str2 = m5.g0.f10385b;
            if (str2.startsWith("zeroflte") || str2.startsWith("herolte") || str2.startsWith("heroqlte")) {
                z10 = true;
            } else {
                z10 = false;
            }
        } else {
            z10 = false;
        }
        this.Q0 = z10;
        String str3 = nVar.f6417c;
        int i11 = this.P0;
        MediaFormat mediaFormat = new MediaFormat();
        mediaFormat.setString("mime", str3);
        mediaFormat.setInteger("channel-count", s0Var.F);
        mediaFormat.setInteger("sample-rate", s0Var.G);
        f1.b.m(mediaFormat, s0Var.f11689u);
        f1.b.k(mediaFormat, "max-input-size", i11);
        if (i10 >= 23) {
            mediaFormat.setInteger("priority", 0);
            if (f10 != -1.0f) {
                if (i10 == 23) {
                    String str4 = m5.g0.f10387d;
                    if ("ZTE B2017G".equals(str4) || "AXON 7 mini".equals(str4)) {
                        z11 = true;
                    } else {
                        z11 = false;
                    }
                } else {
                    z11 = false;
                }
                if (!z11) {
                    mediaFormat.setFloat("operating-rate", f10);
                }
            }
        }
        if (i10 <= 28 && "audio/ac4".equals(s0Var.f11687s)) {
            mediaFormat.setInteger("ac4-is-sync", 1);
        }
        if (i10 >= 24) {
            q qVar = this.O0;
            int i12 = s0Var.F;
            int i13 = s0Var.G;
            s0.a aVar = new s0.a();
            aVar.f11705k = "audio/raw";
            aVar.f11718x = i12;
            aVar.f11719y = i13;
            aVar.f11720z = 4;
            if (qVar.h(new s0(aVar)) == 2) {
                mediaFormat.setInteger("pcm-encoding", 4);
            }
        }
        if (i10 >= 32) {
            mediaFormat.setInteger("max-output-channel-count", 99);
        }
        this.R0 = "audio/raw".equals(nVar.f6416b) && !"audio/raw".equals(s0Var.f11687s) ? s0Var : null;
        return new e4.l.a(nVar, mediaFormat, s0Var, null, mediaCrypto);
    }

    @Override // e4.o, n3.s1
    public final boolean b() {
        return this.D0 && this.O0.b();
    }

    @Override // m5.r
    public final m1 d() {
        return this.O0.d();
    }

    @Override // e4.o
    public final void d0(Exception exc) {
        m5.p.d("MediaCodecAudioRenderer", "Audio codec error", exc);
        p.a aVar = this.N0;
        Handler handler = aVar.f12789a;
        if (handler != null) {
            handler.post(new h(aVar, exc, 0));
        }
    }

    @Override // e4.o
    public final void e0(final String str, final long j10, final long j11) {
        final p.a aVar = this.N0;
        Handler handler = aVar.f12789a;
        if (handler != null) {
            handler.post(new Runnable() { // from class: p3.m
                @Override // java.lang.Runnable
                public final void run() {
                    p.a aVar2 = aVar;
                    String str2 = str;
                    long j12 = j10;
                    long j13 = j11;
                    p pVar = aVar2.f12790b;
                    int i10 = m5.g0.f10384a;
                    pVar.w(str2, j12, j13);
                }
            });
        }
    }

    @Override // m5.r
    public final void f(m1 m1Var) {
        this.O0.f(m1Var);
    }

    @Override // e4.o
    public final void f0(final String str) {
        final p.a aVar = this.N0;
        Handler handler = aVar.f12789a;
        if (handler != null) {
            final int i10 = 0;
            handler.post(new Runnable() { // from class: p3.i
                @Override // java.lang.Runnable
                public final void run() {
                    switch (i10) {
                        case 0:
                            p.a aVar2 = (p.a) aVar;
                            String str2 = (String) str;
                            p pVar = aVar2.f12790b;
                            int i11 = m5.g0.f10384a;
                            pVar.v(str2);
                            return;
                        default:
                            r0.i(aVar);
                            throw null;
                    }
                }
            });
        }
    }

    @Override // e4.o
    public final q3.i g0(y0.r rVar) throws n3.q {
        final q3.i iVarG0 = super.g0(rVar);
        final p.a aVar = this.N0;
        final s0 s0Var = (s0) rVar.f18272c;
        Handler handler = aVar.f12789a;
        if (handler != null) {
            handler.post(new Runnable() { // from class: p3.n
                @Override // java.lang.Runnable
                public final void run() {
                    p.a aVar2 = aVar;
                    s0 s0Var2 = s0Var;
                    q3.i iVar = iVarG0;
                    p pVar = aVar2.f12790b;
                    int i10 = m5.g0.f10384a;
                    pVar.a();
                    aVar2.f12790b.h(s0Var2, iVar);
                }
            });
        }
        return iVarG0;
    }

    @Override // n3.s1, n3.t1
    public final String getName() {
        return "MediaCodecAudioRenderer";
    }

    @Override // e4.o
    public final void h0(s0 s0Var, MediaFormat mediaFormat) throws n3.q {
        int iY;
        int i10;
        s0 s0Var2 = this.R0;
        int[] iArr = null;
        if (s0Var2 != null) {
            s0Var = s0Var2;
        } else if (this.Q != null) {
            if ("audio/raw".equals(s0Var.f11687s)) {
                iY = s0Var.H;
            } else if (m5.g0.f10384a < 24 || !mediaFormat.containsKey("pcm-encoding")) {
                iY = mediaFormat.containsKey("v-bits-per-sample") ? m5.g0.y(mediaFormat.getInteger("v-bits-per-sample")) : 2;
            } else {
                iY = mediaFormat.getInteger("pcm-encoding");
            }
            s0.a aVar = new s0.a();
            aVar.f11705k = "audio/raw";
            aVar.f11720z = iY;
            aVar.A = s0Var.I;
            aVar.B = s0Var.J;
            aVar.f11718x = mediaFormat.getInteger("channel-count");
            aVar.f11719y = mediaFormat.getInteger("sample-rate");
            s0 s0Var3 = new s0(aVar);
            if (this.Q0 && s0Var3.F == 6 && (i10 = s0Var.F) < 6) {
                int[] iArr2 = new int[i10];
                for (int i11 = 0; i11 < s0Var.F; i11++) {
                    iArr2[i11] = i11;
                }
                iArr = iArr2;
            }
            s0Var = s0Var3;
        }
        try {
            this.O0.q(s0Var, iArr);
        } catch (q.a e10) {
            throw z(e10, e10.f12791h, false, 5001);
        }
    }

    @Override // e4.o, n3.s1
    public final boolean isReady() {
        return this.O0.k() || super.isReady();
    }

    @Override // e4.o
    public final void j0() {
        this.O0.u();
    }

    @Override // e4.o
    public final void k0(q3.g gVar) {
        if (!this.T0 || gVar.n()) {
            return;
        }
        if (Math.abs(gVar.f13583l - this.S0) > 500000) {
            this.S0 = gVar.f13583l;
        }
        this.T0 = false;
    }

    @Override // n3.f, n3.p1.b
    public final void l(int i10, Object obj) throws n3.q {
        if (i10 == 2) {
            this.O0.v(((Float) obj).floatValue());
        }
        if (i10 == 3) {
            this.O0.r((d) obj);
            return;
        }
        if (i10 == 6) {
            this.O0.t((t) obj);
            return;
        }
        switch (i10) {
            case 9:
                this.O0.s(((Boolean) obj).booleanValue());
                break;
            case 10:
                this.O0.l(((Integer) obj).intValue());
                break;
            case 11:
                this.W0 = (s1.a) obj;
                break;
        }
    }

    @Override // e4.o
    public final boolean m0(long j10, long j11, e4.l lVar, ByteBuffer byteBuffer, int i10, int i11, int i12, long j12, boolean z10, boolean z11, s0 s0Var) throws n3.q {
        Objects.requireNonNull(byteBuffer);
        if (this.R0 != null && (i11 & 2) != 0) {
            Objects.requireNonNull(lVar);
            lVar.d(i10, false);
            return true;
        }
        if (z10) {
            if (lVar != null) {
                lVar.d(i10, false);
            }
            this.H0.f13573f += i12;
            this.O0.u();
            return true;
        }
        try {
            if (!this.O0.n(byteBuffer, j12, i12)) {
                return false;
            }
            if (lVar != null) {
                lVar.d(i10, false);
            }
            this.H0.f13572e += i12;
            return true;
        } catch (q.b e10) {
            throw z(e10, e10.f12794j, e10.f12793i, 5001);
        } catch (q.e e11) {
            throw z(e11, s0Var, e11.f12796i, 5002);
        }
    }

    @Override // e4.o
    public final void p0() throws n3.q {
        try {
            this.O0.j();
        } catch (q.e e10) {
            throw z(e10, e10.f12797j, e10.f12796i, 5002);
        }
    }

    @Override // n3.f, n3.s1
    public final m5.r s() {
        return this;
    }

    @Override // m5.r
    public final long w() {
        if (this.f11386m == 2) {
            E0();
        }
        return this.S0;
    }

    @Override // e4.o
    public final boolean x0(s0 s0Var) {
        return this.O0.a(s0Var);
    }

    @Override // e4.o
    public final int y0(e4.p pVar, s0 s0Var) throws e4.r.b {
        boolean z10;
        if (!m5.s.k(s0Var.f11687s)) {
            return t1.c(0);
        }
        int i10 = m5.g0.f10384a >= 21 ? 32 : 0;
        int i11 = s0Var.L;
        boolean z11 = true;
        boolean z12 = i11 != 0;
        boolean z13 = i11 == 0 || i11 == 2;
        if (z13 && this.O0.a(s0Var) && (!z12 || e4.r.h() != null)) {
            return 12 | i10 | 0 | 128;
        }
        if ("audio/raw".equals(s0Var.f11687s) && !this.O0.a(s0Var)) {
            return t1.c(1);
        }
        q qVar = this.O0;
        int i12 = s0Var.F;
        int i13 = s0Var.G;
        s0.a aVar = new s0.a();
        aVar.f11705k = "audio/raw";
        aVar.f11718x = i12;
        aVar.f11719y = i13;
        aVar.f11720z = 2;
        if (!qVar.a(aVar.a())) {
            return t1.c(1);
        }
        List<e4.n> listD0 = D0(pVar, s0Var, false, this.O0);
        if (listD0.isEmpty()) {
            return t1.c(1);
        }
        if (!z13) {
            return t1.c(2);
        }
        e4.n nVar = listD0.get(0);
        boolean zE = nVar.e(s0Var);
        if (!zE) {
            int i14 = 1;
            while (true) {
                if (i14 >= listD0.size()) {
                    z10 = true;
                    z11 = zE;
                    break;
                }
                e4.n nVar2 = listD0.get(i14);
                if (nVar2.e(s0Var)) {
                    z10 = false;
                    nVar = nVar2;
                    break;
                }
                i14++;
            }
        } else {
            z10 = true;
            z11 = zE;
            break;
        }
        return (z11 ? 4 : 3) | ((z11 && nVar.f(s0Var)) ? 16 : 8) | i10 | (nVar.f6421g ? 64 : 0) | (z10 ? 128 : 0);
    }
}
