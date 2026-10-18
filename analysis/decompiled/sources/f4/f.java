package f4;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;
import m5.g0;
import n3.s0;
import n3.t1;
import y0.r;

/* JADX INFO: compiled from: MetadataRenderer.java */
/* JADX INFO: loaded from: classes.dex */
public final class f extends n3.f implements Handler.Callback {
    public long A;
    public long B;
    public a C;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public final c f7055t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public final e f7056u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public final Handler f7057v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public final d f7058w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public b f7059x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public boolean f7060y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public boolean f7061z;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public f(e eVar, Looper looper) {
        Handler handler;
        super(5);
        c.a aVar = c.f7053a;
        this.f7056u = eVar;
        if (looper == null) {
            handler = null;
        } else {
            int i10 = g0.f10384a;
            handler = new Handler(looper, this);
        }
        this.f7057v = handler;
        this.f7055t = aVar;
        this.f7058w = new d();
        this.B = -9223372036854775807L;
    }

    @Override // n3.f
    public final void B() {
        this.C = null;
        this.B = -9223372036854775807L;
        this.f7059x = null;
    }

    @Override // n3.f
    public final void D(long j10, boolean z10) {
        this.C = null;
        this.B = -9223372036854775807L;
        this.f7060y = false;
        this.f7061z = false;
    }

    @Override // n3.f
    public final void H(s0[] s0VarArr, long j10, long j11) {
        this.f7059x = this.f7055t.b(s0VarArr[0]);
    }

    public final void J(a aVar, List<a.b> list) {
        int i10 = 0;
        while (true) {
            a.b[] bVarArr = aVar.f7052h;
            if (i10 >= bVarArr.length) {
                return;
            }
            s0 s0VarS = bVarArr[i10].s();
            if (s0VarS == null || !this.f7055t.a(s0VarS)) {
                list.add(aVar.f7052h[i10]);
            } else {
                b bVarB = this.f7055t.b(s0VarS);
                byte[] bArrZ = aVar.f7052h[i10].z();
                Objects.requireNonNull(bArrZ);
                this.f7058w.o();
                this.f7058w.q(bArrZ.length);
                ByteBuffer byteBuffer = this.f7058w.f13581j;
                int i11 = g0.f10384a;
                byteBuffer.put(bArrZ);
                this.f7058w.s();
                a aVarC = bVarB.c(this.f7058w);
                if (aVarC != null) {
                    J(aVarC, list);
                }
            }
            i10++;
        }
    }

    @Override // n3.t1
    public final int a(s0 s0Var) {
        if (this.f7055t.a(s0Var)) {
            return t1.c(s0Var.L == 0 ? 4 : 2);
        }
        return t1.c(0);
    }

    @Override // n3.s1
    public final boolean b() {
        return this.f7061z;
    }

    @Override // n3.s1, n3.t1
    public final String getName() {
        return "MetadataRenderer";
    }

    @Override // android.os.Handler.Callback
    public final boolean handleMessage(Message message) {
        if (message.what != 0) {
            throw new IllegalStateException();
        }
        this.f7056u.C((a) message.obj);
        return true;
    }

    @Override // n3.s1
    public final boolean isReady() {
        return true;
    }

    @Override // n3.s1
    public final void k(long j10, long j11) {
        boolean z10 = true;
        while (z10) {
            if (!this.f7060y && this.C == null) {
                this.f7058w.o();
                r rVarA = A();
                int I = I(rVarA, this.f7058w, 0);
                if (I == -4) {
                    if (this.f7058w.l(4)) {
                        this.f7060y = true;
                    } else {
                        d dVar = this.f7058w;
                        dVar.f7054p = this.A;
                        dVar.s();
                        b bVar = this.f7059x;
                        int i10 = g0.f10384a;
                        a aVarC = bVar.c(this.f7058w);
                        if (aVarC != null) {
                            ArrayList arrayList = new ArrayList(aVarC.f7052h.length);
                            J(aVarC, arrayList);
                            if (!arrayList.isEmpty()) {
                                this.C = new a(arrayList);
                                this.B = this.f7058w.f13583l;
                            }
                        }
                    }
                } else if (I == -5) {
                    s0 s0Var = (s0) rVarA.f18272c;
                    Objects.requireNonNull(s0Var);
                    this.A = s0Var.f11691w;
                }
            }
            a aVar = this.C;
            if (aVar == null || this.B > j10) {
                z10 = false;
            } else {
                Handler handler = this.f7057v;
                if (handler != null) {
                    handler.obtainMessage(0, aVar).sendToTarget();
                } else {
                    this.f7056u.C(aVar);
                }
                this.C = null;
                this.B = -9223372036854775807L;
                z10 = true;
            }
            if (this.f7060y && this.C == null) {
                this.f7061z = true;
            }
        }
    }
}
