package x4;

import m5.g0;
import m5.p;
import n3.s0;
import okhttp3.internal.http.HttpStatusCodesKt;
import s3.w;

/* JADX INFO: compiled from: RtpH263Reader.java */
/* JADX INFO: loaded from: classes.dex */
public final class d implements i {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final w4.f f17782a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public w f17783b;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f17785d;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f17787f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int f17788g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public boolean f17789h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public boolean f17790i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public long f17791j;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public long f17784c = -9223372036854775807L;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f17786e = -1;

    public d(w4.f fVar) {
        this.f17782a = fVar;
    }

    /* JADX WARN: Multi-variable type inference failed */
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
    @Override // x4.i
    public final void a(m5.w wVar, long j10, int i10, boolean z10) {
        m5.a.f(this.f17783b);
        int i11 = wVar.f10476b;
        int iY = wVar.y();
        Object[] objArr = (iY & 1024) > 0;
        if ((iY & 512) != 0 || (iY & HttpStatusCodesKt.HTTP_GATEWAY_TIMEOUT) != 0 || (iY & 7) != 0) {
            p.g("RtpH263Reader", "Dropping packet: video reduncancy coding is not supported, packet header VRC, or PLEN or PEBIT is non-zero");
            return;
        }
        if (objArr != true) {
            int iA = w4.c.a(this.f17786e);
            if (i10 != iA) {
                p.g("RtpH263Reader", g0.m("Received RTP packet with unexpected sequence number. Expected: %d; received: %d. Dropping packet.", Integer.valueOf(iA), Integer.valueOf(i10)));
                return;
            }
        } else {
            if ((wVar.b() & 252) < 128) {
                p.g("RtpH263Reader", "Picture start Code (PSC) missing, dropping packet.");
                return;
            }
            byte[] bArr = wVar.f10475a;
            bArr[i11] = 0;
            bArr[i11 + 1] = 0;
            wVar.D(i11);
        }
        if (this.f17785d == 0) {
            boolean z11 = this.f17790i;
            int i12 = wVar.f10476b;
            if (((wVar.u() >> 10) & 63) == 32) {
                int iB = wVar.b();
                int i13 = (iB >> 1) & 1;
                if (!z11 && i13 == 0) {
                    int i14 = (iB >> 2) & 7;
                    if (i14 == 1) {
                        this.f17787f = 128;
                        this.f17788g = 96;
                    } else {
                        int i15 = i14 - 2;
                        this.f17787f = 176 << i15;
                        this.f17788g = 144 << i15;
                    }
                }
                wVar.D(i12);
                this.f17789h = i13 == 0;
            } else {
                wVar.D(i12);
                this.f17789h = false;
            }
            if (!this.f17790i && this.f17789h) {
                int i16 = this.f17787f;
                s0 s0Var = this.f17782a.f17176c;
                if (i16 != s0Var.f11692x || this.f17788g != s0Var.f11693y) {
                    w wVar2 = this.f17783b;
                    s0.a aVar = new s0.a(s0Var);
                    aVar.f11710p = this.f17787f;
                    aVar.f11711q = this.f17788g;
                    wVar2.b(new s0(aVar));
                }
                this.f17790i = true;
            }
        }
        int i17 = wVar.f10477c - wVar.f10476b;
        this.f17783b.f(wVar, i17);
        this.f17785d += i17;
        if (z10) {
            if (this.f17784c == -9223372036854775807L) {
                this.f17784c = j10;
            }
            this.f17783b.c(g0.R(j10 - this.f17784c, 1000000L, 90000L) + this.f17791j, this.f17789h ? 1 : 0, this.f17785d, 0, null);
            this.f17785d = 0;
            this.f17789h = false;
        }
        this.f17786e = i10;
    }

    @Override // x4.i
    public final void b(long j10, long j11) {
        this.f17784c = j10;
        this.f17785d = 0;
        this.f17791j = j11;
    }

    @Override // x4.i
    public final void c(long j10) {
    }

    @Override // x4.i
    public final void d(s3.j jVar, int i10) {
        w wVarP = jVar.p(i10, 2);
        this.f17783b = wVarP;
        wVarP.b(this.f17782a.f17176c);
    }
}
