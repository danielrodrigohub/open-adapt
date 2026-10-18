package x4;

import java.util.Objects;
import m5.g0;
import m5.p;
import n3.s0;
import s3.w;

/* JADX INFO: compiled from: RtpVp8Reader.java */
/* JADX INFO: loaded from: classes.dex */
public final class k implements i {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final w4.f f17829a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public w f17830b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public long f17831c = -9223372036854775807L;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f17832d = -1;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f17833e = -1;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public long f17834f = -9223372036854775807L;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public long f17835g = 0;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public boolean f17836h = false;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public boolean f17837i = false;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public boolean f17838j = false;

    public k(w4.f fVar) {
        this.f17829a = fVar;
    }

    /* JADX WARN: Code duplicated, block: B:36:0x007c  */
    /* JADX WARN: Code duplicated, block: B:38:0x0081  */
    /* JADX WARN: Code duplicated, block: B:42:0x008c  */
    /* JADX WARN: Code duplicated, block: B:46:0x0093  */
    /* JADX WARN: Code duplicated, block: B:48:0x00b1  */
    /* JADX WARN: Code duplicated, block: B:50:0x00b5  */
    /* JADX WARN: Code duplicated, block: B:54:0x00d8  */
    /* JADX WARN: Code duplicated, block: B:55:0x00db  */
    /* JADX WARN: Code duplicated, block: B:58:0x00f3  */
    /* JADX WARN: Code duplicated, block: B:61:? A[RETURN, SYNTHETIC] */
    @Override // x4.i
    public final void a(m5.w wVar, long j10, int i10, boolean z10) {
        boolean z11;
        int i11;
        int i12;
        int iL;
        int iL2;
        s0 s0Var;
        m5.a.f(this.f17830b);
        int iT = wVar.t();
        if ((iT & 16) != 16 || (iT & 7) != 0) {
            if (this.f17836h) {
                int iA = w4.c.a(this.f17832d);
                if (i10 < iA) {
                    p.g("RtpVP8Reader", g0.m("Received RTP packet with unexpected sequence number. Expected: %d; received: %d. Dropping packet.", Integer.valueOf(iA), Integer.valueOf(i10)));
                }
                if (z11) {
                    if (this.f17833e == -1 && this.f17836h) {
                        this.f17837i = (wVar.b() & 1) == 0;
                    }
                    if (!this.f17838j) {
                        int i13 = wVar.f10476b;
                        wVar.D(i13 + 6);
                        iL = wVar.l() & 16383;
                        iL2 = wVar.l() & 16383;
                        wVar.D(i13);
                        s0Var = this.f17829a.f17176c;
                        if (iL == s0Var.f11692x || iL2 != s0Var.f11693y) {
                            w wVar2 = this.f17830b;
                            s0.a aVar = new s0.a(s0Var);
                            aVar.f11710p = iL;
                            aVar.f11711q = iL2;
                            wVar2.b(new s0(aVar));
                        }
                        this.f17838j = true;
                    }
                    i11 = wVar.f10477c - wVar.f10476b;
                    this.f17830b.f(wVar, i11);
                    i12 = this.f17833e;
                    if (i12 == -1) {
                        this.f17833e = i11;
                    } else {
                        this.f17833e = i12 + i11;
                    }
                    this.f17834f = g0.R(j10 - this.f17831c, 1000000L, 90000L) + this.f17835g;
                    if (z10) {
                        e();
                    }
                    this.f17832d = i10;
                }
            }
            p.g("RtpVP8Reader", "RTP packet is not the start of a new VP8 partition, skipping.");
            z11 = false;
            if (z11) {
                if (this.f17833e == -1) {
                    this.f17837i = (wVar.b() & 1) == 0;
                }
                if (!this.f17838j) {
                    int i14 = wVar.f10476b;
                    wVar.D(i14 + 6);
                    iL = wVar.l() & 16383;
                    iL2 = wVar.l() & 16383;
                    wVar.D(i14);
                    s0Var = this.f17829a.f17176c;
                    if (iL == s0Var.f11692x) {
                        w wVar3 = this.f17830b;
                        s0.a aVar2 = new s0.a(s0Var);
                        aVar2.f11710p = iL;
                        aVar2.f11711q = iL2;
                        wVar3.b(new s0(aVar2));
                    } else {
                        w wVar4 = this.f17830b;
                        s0.a aVar3 = new s0.a(s0Var);
                        aVar3.f11710p = iL;
                        aVar3.f11711q = iL2;
                        wVar4.b(new s0(aVar3));
                    }
                    this.f17838j = true;
                }
                i11 = wVar.f10477c - wVar.f10476b;
                this.f17830b.f(wVar, i11);
                i12 = this.f17833e;
                if (i12 == -1) {
                    this.f17833e = i11;
                } else {
                    this.f17833e = i12 + i11;
                }
                this.f17834f = g0.R(j10 - this.f17831c, 1000000L, 90000L) + this.f17835g;
                if (z10) {
                    e();
                }
                this.f17832d = i10;
            }
        }
        if (this.f17836h && this.f17833e > 0) {
            e();
        }
        this.f17836h = true;
        if ((iT & 128) != 0) {
            int iT2 = wVar.t();
            if ((iT2 & 128) != 0 && (wVar.t() & 128) != 0) {
                wVar.E(1);
            }
            if ((iT2 & 64) != 0) {
                wVar.E(1);
            }
            if ((iT2 & 32) != 0 || (iT2 & 16) != 0) {
                wVar.E(1);
            }
        }
        z11 = true;
        if (z11) {
            if (this.f17833e == -1) {
                this.f17837i = (wVar.b() & 1) == 0;
            }
            if (!this.f17838j) {
                int i15 = wVar.f10476b;
                wVar.D(i15 + 6);
                iL = wVar.l() & 16383;
                iL2 = wVar.l() & 16383;
                wVar.D(i15);
                s0Var = this.f17829a.f17176c;
                if (iL == s0Var.f11692x) {
                    w wVar5 = this.f17830b;
                    s0.a aVar4 = new s0.a(s0Var);
                    aVar4.f11710p = iL;
                    aVar4.f11711q = iL2;
                    wVar5.b(new s0(aVar4));
                } else {
                    w wVar6 = this.f17830b;
                    s0.a aVar5 = new s0.a(s0Var);
                    aVar5.f11710p = iL;
                    aVar5.f11711q = iL2;
                    wVar6.b(new s0(aVar5));
                }
                this.f17838j = true;
            }
            i11 = wVar.f10477c - wVar.f10476b;
            this.f17830b.f(wVar, i11);
            i12 = this.f17833e;
            if (i12 == -1) {
                this.f17833e = i11;
            } else {
                this.f17833e = i12 + i11;
            }
            this.f17834f = g0.R(j10 - this.f17831c, 1000000L, 90000L) + this.f17835g;
            if (z10) {
                e();
            }
            this.f17832d = i10;
        }
    }

    @Override // x4.i
    public final void b(long j10, long j11) {
        this.f17831c = j10;
        this.f17833e = -1;
        this.f17835g = j11;
    }

    @Override // x4.i
    public final void c(long j10) {
        m5.a.e(this.f17831c == -9223372036854775807L);
        this.f17831c = j10;
    }

    @Override // x4.i
    public final void d(s3.j jVar, int i10) {
        w wVarP = jVar.p(i10, 2);
        this.f17830b = wVarP;
        wVarP.b(this.f17829a.f17176c);
    }

    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$PrimitiveArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    public final void e() {
        w wVar = this.f17830b;
        Objects.requireNonNull(wVar);
        long j10 = this.f17834f;
        boolean z10 = this.f17837i;
        wVar.c(j10, z10 ? 1 : 0, this.f17833e, 0, null);
        this.f17833e = 0;
        this.f17834f = -9223372036854775807L;
        this.f17836h = false;
    }
}
