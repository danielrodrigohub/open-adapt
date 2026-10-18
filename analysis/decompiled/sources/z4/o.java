package z4;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import java.util.Collections;
import java.util.List;
import java.util.Objects;
import m5.g0;
import m5.p;
import m5.s;
import n3.s0;
import n3.t1;
import y0.r;

/* JADX INFO: compiled from: TextRenderer.java */
/* JADX INFO: loaded from: classes.dex */
public final class o extends n3.f implements Handler.Callback {
    public int A;
    public s0 B;
    public h C;
    public l D;
    public m E;
    public m F;
    public int G;
    public long H;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public final Handler f19354t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public final n f19355u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public final j f19356v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public final r f19357w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public boolean f19358x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public boolean f19359y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public boolean f19360z;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public o(n nVar, Looper looper) {
        Handler handler;
        super(3);
        j.a aVar = j.f19339a;
        this.f19355u = nVar;
        if (looper == null) {
            handler = null;
        } else {
            int i10 = g0.f10384a;
            handler = new Handler(looper, this);
        }
        this.f19354t = handler;
        this.f19356v = aVar;
        this.f19357w = new r(2);
        this.H = -9223372036854775807L;
    }

    @Override // n3.f
    public final void B() {
        this.B = null;
        this.H = -9223372036854775807L;
        J();
        M();
        h hVar = this.C;
        Objects.requireNonNull(hVar);
        hVar.a();
        this.C = null;
        this.A = 0;
    }

    @Override // n3.f
    public final void D(long j10, boolean z10) {
        J();
        this.f19358x = false;
        this.f19359y = false;
        this.H = -9223372036854775807L;
        if (this.A != 0) {
            N();
            return;
        }
        M();
        h hVar = this.C;
        Objects.requireNonNull(hVar);
        hVar.flush();
    }

    @Override // n3.f
    public final void H(s0[] s0VarArr, long j10, long j11) {
        s0 s0Var = s0VarArr[0];
        this.B = s0Var;
        if (this.C != null) {
            this.A = 1;
            return;
        }
        this.f19360z = true;
        j jVar = this.f19356v;
        Objects.requireNonNull(s0Var);
        this.C = ((j.a) jVar).a(s0Var);
    }

    public final void J() {
        O(Collections.emptyList());
    }

    public final long K() {
        if (this.G == -1) {
            return Long.MAX_VALUE;
        }
        Objects.requireNonNull(this.E);
        if (this.G >= this.E.j()) {
            return Long.MAX_VALUE;
        }
        return this.E.g(this.G);
    }

    public final void L(i iVar) {
        StringBuilder sbC = a0.b.c("Subtitle decoding failed. streamFormat=");
        sbC.append(this.B);
        p.d("TextRenderer", sbC.toString(), iVar);
        J();
        N();
    }

    public final void M() {
        this.D = null;
        this.G = -1;
        m mVar = this.E;
        if (mVar != null) {
            mVar.o();
            this.E = null;
        }
        m mVar2 = this.F;
        if (mVar2 != null) {
            mVar2.o();
            this.F = null;
        }
    }

    public final void N() {
        M();
        h hVar = this.C;
        Objects.requireNonNull(hVar);
        hVar.a();
        this.C = null;
        this.A = 0;
        this.f19360z = true;
        j jVar = this.f19356v;
        s0 s0Var = this.B;
        Objects.requireNonNull(s0Var);
        this.C = ((j.a) jVar).a(s0Var);
    }

    public final void O(List<a> list) {
        Handler handler = this.f19354t;
        if (handler != null) {
            handler.obtainMessage(0, list).sendToTarget();
        } else {
            this.f19355u.n(list);
            this.f19355u.o(new c(list));
        }
    }

    @Override // n3.t1
    public final int a(s0 s0Var) {
        if (((j.a) this.f19356v).b(s0Var)) {
            return t1.c(s0Var.L == 0 ? 4 : 2);
        }
        return s.m(s0Var.f11687s) ? t1.c(1) : t1.c(0);
    }

    @Override // n3.s1
    public final boolean b() {
        return this.f19359y;
    }

    @Override // n3.s1, n3.t1
    public final String getName() {
        return "TextRenderer";
    }

    @Override // android.os.Handler.Callback
    public final boolean handleMessage(Message message) {
        if (message.what != 0) {
            throw new IllegalStateException();
        }
        List<a> list = (List) message.obj;
        this.f19355u.n(list);
        this.f19355u.o(new c(list));
        return true;
    }

    @Override // n3.s1
    public final boolean isReady() {
        return true;
    }

    @Override // n3.s1
    public final void k(long j10, long j11) throws q3.f {
        boolean z10;
        if (this.f11391r) {
            long j12 = this.H;
            if (j12 != -9223372036854775807L && j10 >= j12) {
                M();
                this.f19359y = true;
            }
        }
        if (this.f19359y) {
            return;
        }
        if (this.F == null) {
            h hVar = this.C;
            Objects.requireNonNull(hVar);
            hVar.b(j10);
            try {
                h hVar2 = this.C;
                Objects.requireNonNull(hVar2);
                this.F = hVar2.d();
            } catch (i e10) {
                L(e10);
                return;
            }
        }
        if (this.f11386m != 2) {
            return;
        }
        if (this.E != null) {
            long jK = K();
            z10 = false;
            while (jK <= j10) {
                this.G++;
                jK = K();
                z10 = true;
            }
        } else {
            z10 = false;
        }
        m mVar = this.F;
        if (mVar != null) {
            if (mVar.l(4)) {
                if (!z10 && K() == Long.MAX_VALUE) {
                    if (this.A == 2) {
                        N();
                    } else {
                        M();
                        this.f19359y = true;
                    }
                }
            } else if (mVar.f13587i <= j10) {
                m mVar2 = this.E;
                if (mVar2 != null) {
                    mVar2.o();
                }
                g gVar = mVar.f19352j;
                Objects.requireNonNull(gVar);
                this.G = gVar.b(j10 - mVar.f19353k);
                this.E = mVar;
                this.F = null;
                z10 = true;
            }
        }
        if (z10) {
            Objects.requireNonNull(this.E);
            O(this.E.i(j10));
        }
        if (this.A == 2) {
            return;
        }
        while (!this.f19358x) {
            try {
                l lVarE = this.D;
                if (lVarE == null) {
                    h hVar3 = this.C;
                    Objects.requireNonNull(hVar3);
                    lVarE = hVar3.e();
                    if (lVarE == null) {
                        return;
                    } else {
                        this.D = lVarE;
                    }
                }
                if (this.A == 1) {
                    lVarE.f13555h = 4;
                    h hVar4 = this.C;
                    Objects.requireNonNull(hVar4);
                    hVar4.c(lVarE);
                    this.D = null;
                    this.A = 2;
                    return;
                }
                int I = I(this.f19357w, lVarE, 0);
                if (I == -4) {
                    if (lVarE.l(4)) {
                        this.f19358x = true;
                        this.f19360z = false;
                    } else {
                        s0 s0Var = (s0) this.f19357w.f18272c;
                        if (s0Var == null) {
                            return;
                        }
                        lVarE.f19351p = s0Var.f11691w;
                        lVarE.s();
                        this.f19360z &= !lVarE.l(1);
                    }
                    if (!this.f19360z) {
                        h hVar5 = this.C;
                        Objects.requireNonNull(hVar5);
                        hVar5.c(lVarE);
                        this.D = null;
                    }
                } else if (I == -3) {
                    return;
                }
            } catch (i e11) {
                L(e11);
                return;
            }
        }
    }
}
