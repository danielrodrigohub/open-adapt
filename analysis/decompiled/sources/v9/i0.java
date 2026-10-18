package v9;

import android.os.Parcelable;
import com.newrelic.agent.android.analytics.AnalyticsAttribute;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;
import java.util.UUID;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.regex.Pattern;

/* JADX INFO: compiled from: AdaptKitPairing.kt */
/* JADX INFO: loaded from: classes.dex */
public final class i0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final k0 f16606a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final v9.a f16607b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final fd.d f16608c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final fd.d f16609d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final AtomicInteger f16610e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final AtomicInteger f16611f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final int f16612g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final AtomicBoolean f16613h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final AtomicBoolean f16614i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public volatile ha.u f16615j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final fd.d f16616k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public boolean f16617l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public boolean f16618m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public String f16619n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public final p0<g, v9.f> f16620o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public ha.u f16621p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public ea.b f16622q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public ea.b f16623r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public AtomicBoolean f16624s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public ya.b f16625t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public ya.b f16626u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public final fd.d f16627v;

    /* JADX INFO: compiled from: AdaptKitPairing.kt */
    public static final class a implements p0<g, v9.f> {
        public a() {
        }

        /* JADX WARN: Code duplicated, block: B:157:0x0274  */
        /* JADX WARN: Code duplicated, block: B:163:0x028b  */
        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference fix 'apply assigned field type' failed
        java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
        	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
        	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
        	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
         */
        @Override // v9.p0
        public final void a(Parcelable parcelable) {
            Object[] objArr;
            boolean z10;
            ha.u uVar;
            g gVar = (g) parcelable;
            p4.h.j(gVar, "result");
            if (gVar instanceof j5) {
                if (gVar.f6155i) {
                    i0.this.f16617l = true;
                } else {
                    i0.this.f16618m = true;
                }
                i0 i0Var = i0.this;
                if (i0Var.f16617l && i0Var.f16618m) {
                    i0Var.f16617l = false;
                    i0Var.f16618m = false;
                    i0Var.g(false);
                    return;
                }
                return;
            }
            String str = null;
            ha.u uVar2 = null;
            if (!(gVar instanceof f2)) {
                if (gVar instanceof w3) {
                    i0 i0Var2 = i0.this;
                    Objects.requireNonNull(i0Var2);
                    ya.b bVar = gVar.f6155i ? i0Var2.f16625t : i0Var2.f16626u;
                    if (bVar != null) {
                        bVar.d(gVar.a(), new ea.d(0, 60, 255, 5));
                        return;
                    }
                    return;
                }
                if (gVar instanceof g1) {
                    i0.this.d(gVar.f6155i ? ha.a0.f8373h : ha.b0.f8375h);
                    return;
                }
                if (gVar instanceof h1) {
                    h1 h1Var = (h1) gVar;
                    if (h1Var.f16580l.f6617o) {
                        if (gVar.f6155i) {
                            ya.b bVar2 = i0.this.f16625t;
                            if (bVar2 != null) {
                                bVar2.f(gVar.a());
                            }
                            ya.b bVar3 = i0.this.f16625t;
                            if (bVar3 != null) {
                                bVar3.h(this);
                                return;
                            }
                            return;
                        }
                        ya.b bVar4 = i0.this.f16626u;
                        if (bVar4 != null) {
                            bVar4.f(gVar.a());
                        }
                        ya.b bVar5 = i0.this.f16626u;
                        if (bVar5 != null) {
                            bVar5.h(this);
                            return;
                        }
                        return;
                    }
                    i0.this.d(gVar.f6155i ? ha.h.f8381h : ha.i.f8382h);
                    if (gVar.f6155i) {
                        i0.this.f16622q = h1Var.f16580l;
                    } else {
                        i0.this.f16623r = h1Var.f16580l;
                    }
                    i0 i0Var3 = i0.this;
                    ea.b bVar6 = i0Var3.f16622q;
                    ea.b bVar7 = i0Var3.f16623r;
                    if (bVar6 == null || bVar7 == null) {
                        return;
                    }
                    long jCurrentTimeMillis = System.currentTimeMillis() - 1;
                    long j10 = jCurrentTimeMillis + 1;
                    String str2 = i0.this.f16619n;
                    String str3 = bVar6.f6610h;
                    if (str3 != null) {
                        Pattern patternCompile = Pattern.compile("^[a-zA-Z0-9]{3}-[a-zA-Z0-9]{6}-[a-zA-Z0-9]{3}$");
                        p4.h.i(patternCompile, "compile(pattern)");
                        if (patternCompile.matcher(str3).matches()) {
                            objArr = true;
                        } else {
                            objArr = false;
                        }
                    } else {
                        objArr = false;
                    }
                    String str4 = bVar7.f6610h;
                    if (str4 != null) {
                        Pattern patternCompile2 = Pattern.compile("^[a-zA-Z0-9]{3}-[a-zA-Z0-9]{6}-[a-zA-Z0-9]{3}$");
                        p4.h.i(patternCompile2, "compile(pattern)");
                        z10 = patternCompile2.matcher(str4).matches();
                    }
                    if ((objArr == true && z10) || objArr == true) {
                        str = bVar6.f6610h;
                    } else if (z10) {
                        str = bVar7.f6610h;
                    }
                    ea.m mVar = new ea.m(str2, "Nike Adapt BB", true, bVar6, bVar7, (String) null, str, (List) new ArrayList(), jCurrentTimeMillis, jCurrentTimeMillis, ea.f.BIGFOOT, j10, AnalyticsAttribute.ATTRIBUTE_VALUE_MAX_LENGTH);
                    ab.a aVar = (ab.a) i0.this.f16609d.getValue();
                    v9.a.C0295a c0295a = v9.a.f16441i;
                    aVar.d(v9.a.f16444l, mVar, new f0());
                    i0.this.d(new ha.g(mVar));
                    return;
                }
                return;
            }
            if (i0.this.f16624s.get()) {
                return;
            }
            if (gVar.f6155i && i0.this.f16613h.get()) {
                return;
            }
            if (gVar.f6156j && i0.this.f16614i.get()) {
                return;
            }
            f2 f2Var = (f2) gVar;
            switch (f2Var.f16547m) {
                case NOT_INITIATED:
                case CONNECTED_AND_REQUIRES_AUTHENTICATION:
                    break;
                case NOT_CONNECTED:
                case CONNECTED_AND_AUTHENTICATION_FAILURE:
                case USER_INTERVENTION_REQUIRED:
                    i0 i0Var4 = i0.this;
                    ya.b bVar8 = i0Var4.f16625t;
                    ya.b bVar9 = i0Var4.f16626u;
                    if (bVar8 != null && gVar.f6155i && i0Var4.f16610e.incrementAndGet() <= i0.this.f16612g) {
                        z9.a.IO.b(new g0(bVar8, gVar));
                        uVar2 = i0.this.f16621p;
                    } else if (bVar9 != null && gVar.f6156j && i0.this.f16611f.incrementAndGet() <= i0.this.f16612g) {
                        z9.a.IO.b(new h0(bVar9, gVar));
                        uVar2 = i0.this.f16621p;
                    } else {
                        z10 = f2Var.f16547m == v9.e.CONNECTED_AND_AUTHENTICATION_FAILURE;
                        if (!gVar.f6155i) {
                            i0.this.f16611f.set(0);
                            ya.b bVar10 = i0.this.f16626u;
                            if (bVar10 != null) {
                                bVar10.f(gVar.a());
                            }
                            ya.b bVar11 = i0.this.f16626u;
                            if (bVar11 != null) {
                                bVar11.h(this);
                            }
                            i0 i0Var5 = i0.this;
                            i0Var5.f16626u = null;
                            i0Var5.f16623r = null;
                            i0Var5.d(z10 ? ha.q.f8390h : ha.m.f8386h);
                            uVar2 = i0.this.f16622q != null ? ha.y.f8401h : ha.w.f8399h;
                        } else {
                            i0.this.f16610e.set(0);
                            ya.b bVar12 = i0.this.f16625t;
                            if (bVar12 != null) {
                                bVar12.f(gVar.a());
                            }
                            ya.b bVar13 = i0.this.f16625t;
                            if (bVar13 != null) {
                                bVar13.h(this);
                            }
                            i0 i0Var6 = i0.this;
                            i0Var6.f16625t = null;
                            i0Var6.f16622q = null;
                            i0Var6.d(z10 ? ha.p.f8389h : ha.l.f8385h);
                            uVar2 = i0.this.f16623r != null ? ha.x.f8400h : ha.w.f8399h;
                        }
                    }
                    break;
                case CONNECTING:
                    uVar2 = !gVar.f6155i ? ha.k.f8384h : ha.j.f8383h;
                    break;
                case CONNECTED_AND_AUTHENTICATED:
                case CONNECTED_AND_AUTHENTICATED_THROUGH_OTHER_ADAPTKIT:
                    if (gVar.f6155i) {
                        i0.this.f16613h.set(true);
                        uVar = ha.h.f8381h;
                    } else {
                        i0.this.f16614i.set(true);
                        uVar = ha.i.f8382h;
                    }
                    uVar2 = uVar;
                    i0.this.d(uVar2);
                    break;
                case BOND_DIALOG_PRESENT:
                    uVar2 = !gVar.f6155i ? ha.f.f8379h : ha.e.f8378h;
                    break;
                case BONDING_DID_NOT_COMPLETE:
                    uVar2 = !gVar.f6155i ? ha.d.f8377h : ha.c.f8376h;
                    break;
                default:
                    throw new j2.a();
            }
            if (uVar2 != null) {
                i0 i0Var7 = i0.this;
                if (p4.h.c(uVar2, ha.i.f8382h) && i0Var7.f16622q == null) {
                    uVar2 = ha.x.f8400h;
                } else if (p4.h.c(uVar2, ha.h.f8381h) && i0Var7.f16623r == null) {
                    uVar2 = ha.y.f8401h;
                }
                i0Var7.d(uVar2);
            }
        }

        @Override // v9.p0
        public final void b(m mVar) {
            p4.h.j((v9.f) mVar, "error");
        }
    }

    /* JADX INFO: compiled from: AdaptKitPairing.kt */
    public static final class b implements p0<ka.b, ka.a> {
        public b() {
        }

        @Override // v9.p0
        public final void a(Parcelable parcelable) {
            ka.b bVar = (ka.b) parcelable;
            p4.h.j(bVar, "result");
            ha.u uVar = i0.this.f16621p;
            Objects.requireNonNull(uVar);
            boolean z10 = false;
            if (androidx.appcompat.widget.p.g(uVar, ha.w.f8399h, ha.y.f8401h, ha.x.f8400h)) {
                ka.c cVar = bVar.f9756h;
                if (cVar.f9761l > -42) {
                    i0.this.h("DeviceMetRssiThreshold: " + cVar);
                    i0 i0Var = i0.this;
                    ea.b bVar2 = i0Var.f16622q;
                    if (bVar2 == null || i0Var.f16623r == null) {
                        if (bVar2 == null) {
                            ka.c cVar2 = bVar.f9756h;
                            if (cVar2.f9763n) {
                                i0Var.d(new ha.n(cVar2.f9757h));
                                i0 i0Var2 = i0.this;
                                ya.a aVar = ya.a.f18735a;
                                String str = i0Var2.f16619n;
                                ka.c cVar3 = bVar.f9756h;
                                String str2 = cVar3.f9757h;
                                String str3 = cVar3.f9759j;
                                String str4 = cVar3.f9760k;
                                String str5 = cVar3.f9758i;
                                byte[] bArr = hc.b.f8408j;
                                p4.h.i(bArr, "DEFAULT_KEY");
                                i0Var2.f16625t = aVar.b(str, new ea.b(str2, str3, str4, str5, g7.b.e(bArr), 100, false));
                                i0 i0Var3 = i0.this;
                                ya.b bVar3 = i0Var3.f16625t;
                                if (bVar3 != null && bVar3.g(i0Var3.f16620o)) {
                                    z10 = true;
                                }
                                if (z10) {
                                    return;
                                }
                                i0 i0Var4 = i0.this;
                                ya.b bVar4 = i0Var4.f16625t;
                                if (bVar4 != null) {
                                    bVar4.B(i0Var4.f16620o);
                                }
                                ya.b bVar5 = i0.this.f16625t;
                                if (bVar5 != null) {
                                    v9.a.C0295a c0295a = v9.a.f16441i;
                                    bVar5.s(v9.a.f16444l);
                                    return;
                                }
                                return;
                            }
                        }
                        if (i0Var.f16623r == null) {
                            ka.c cVar4 = bVar.f9756h;
                            if (cVar4.f9762m) {
                                i0Var.d(new ha.o(cVar4.f9757h));
                                i0 i0Var5 = i0.this;
                                ya.a aVar2 = ya.a.f18735a;
                                String str6 = i0Var5.f16619n;
                                ka.c cVar5 = bVar.f9756h;
                                String str7 = cVar5.f9757h;
                                String str8 = cVar5.f9759j;
                                String str9 = cVar5.f9760k;
                                String str10 = cVar5.f9758i;
                                byte[] bArr2 = hc.b.f8408j;
                                p4.h.i(bArr2, "DEFAULT_KEY");
                                i0Var5.f16626u = aVar2.b(str6, new ea.b(str7, str8, str9, str10, g7.b.e(bArr2), 100, false));
                                i0 i0Var6 = i0.this;
                                ya.b bVar6 = i0Var6.f16626u;
                                if (bVar6 != null && bVar6.g(i0Var6.f16620o)) {
                                    z10 = true;
                                }
                                if (z10) {
                                    return;
                                }
                                i0 i0Var7 = i0.this;
                                ya.b bVar7 = i0Var7.f16626u;
                                if (bVar7 != null) {
                                    bVar7.B(i0Var7.f16620o);
                                }
                                ya.b bVar8 = i0.this.f16626u;
                                if (bVar8 != null) {
                                    v9.a.C0295a c0295a2 = v9.a.f16441i;
                                    bVar8.s(v9.a.f16444l);
                                }
                            }
                        }
                    }
                }
            }
        }

        @Override // v9.p0
        public final void b(m mVar) {
            ka.a aVar = (ka.a) mVar;
            p4.h.j(aVar, "error");
            i0.this.d(ha.v.f8398h);
            i0.this.f16606a.b(new ha.s(i0.this.f16607b, aVar.getMessage(), aVar));
        }
    }

    /* JADX INFO: compiled from: InjectionKtx.kt */
    public static final class c extends rd.o implements qd.a<cb.a> {
        public c() {
            super(0);
        }

        @Override // qd.a
        public final cb.a invoke() {
            int i10 = cb.a.f4268a;
            return cb.c.f4270b;
        }
    }

    /* JADX INFO: compiled from: InjectionKtx.kt */
    public static final class d extends rd.o implements qd.a<ab.a> {
        public d() {
            super(0);
        }

        @Override // qd.a
        public final ab.a invoke() {
            Objects.requireNonNull(ab.a.f552a);
            return ab.a.C0012a.f554b;
        }
    }

    /* JADX INFO: compiled from: InjectionKtx.kt */
    public static final class e extends rd.o implements qd.a<ka.d> {
        public e() {
            super(0);
        }

        @Override // qd.a
        public final ka.d invoke() {
            UUID uuidRandomUUID = UUID.randomUUID();
            p4.h.i(uuidRandomUUID, "randomUUID()");
            return new ka.d("PairingAdaptDevices", uuidRandomUUID);
        }
    }

    /* JADX INFO: compiled from: InjectionKtx.kt */
    public static final class f extends rd.o implements qd.a<b> {
        public f() {
            super(0);
        }

        @Override // qd.a
        public final b invoke() {
            return i0.this.new b();
        }
    }

    public i0(k0 k0Var) {
        this.f16606a = k0Var;
        v9.a.C0295a c0295a = v9.a.f16441i;
        this.f16607b = v9.a.f16442j;
        this.f16608c = androidx.lifecycle.o.w(1, new c());
        this.f16609d = androidx.lifecycle.o.w(1, new d());
        this.f16610e = new AtomicInteger(0);
        this.f16611f = new AtomicInteger(0);
        this.f16612g = 3;
        this.f16613h = new AtomicBoolean(false);
        this.f16614i = new AtomicBoolean(false);
        this.f16616k = androidx.lifecycle.o.w(1, new e());
        String string = UUID.randomUUID().toString();
        p4.h.i(string, "randomUUID().toString()");
        this.f16619n = string;
        this.f16620o = new a();
        this.f16621p = ha.t.f8397h;
        this.f16624s = new AtomicBoolean(false);
        this.f16627v = androidx.lifecycle.o.w(1, new f());
    }

    public final cb.a b() {
        return (cb.a) this.f16608c.getValue();
    }

    public final ka.d c() {
        return (ka.d) this.f16616k.getValue();
    }

    public final void d(ha.u uVar) {
        if (p4.h.c(uVar, this.f16621p) || p4.h.c(uVar, this.f16615j)) {
            return;
        }
        ha.u uVar2 = this.f16621p;
        Objects.requireNonNull(uVar2);
        if (androidx.appcompat.widget.p.g(uVar2, ha.a0.f8373h, ha.b0.f8375h) && androidx.appcompat.widget.p.g(uVar, ha.j.f8383h, ha.k.f8384h, ha.e.f8378h, ha.f.f8379h)) {
            return;
        }
        if ((uVar instanceof ha.j) && (this.f16621p instanceof ha.e)) {
            return;
        }
        if ((uVar instanceof ha.k) && (this.f16621p instanceof ha.f)) {
            return;
        }
        this.f16621p = uVar;
        h(uVar.b());
        this.f16615j = uVar;
        this.f16606a.a(new ha.b(uVar));
        if (uVar instanceof ha.g) {
            b().c(c());
            this.f16624s.set(true);
        }
    }

    public final void e() {
        t.f16822a.a();
        if (this.f16624s.get()) {
            return;
        }
        h("StartPairing");
        d(ha.w.f8399h);
        String string = UUID.randomUUID().toString();
        p4.h.i(string, "randomUUID().toString()");
        this.f16619n = string;
        b().b(c(), (p0) this.f16627v.getValue());
    }

    public final void f() {
        t.f16822a.a();
        if (this.f16624s.get()) {
            return;
        }
        h("StartPairing");
        d(ha.w.f8399h);
        String string = UUID.randomUUID().toString();
        p4.h.i(string, "randomUUID().toString()");
        this.f16619n = string;
        b().a(c(), (p0) this.f16627v.getValue());
    }

    public final void g(boolean z10) {
        ya.b bVar;
        ya.b bVar2;
        h("StopPairing");
        d(ha.z.f8402h);
        this.f16622q = null;
        this.f16623r = null;
        b().c(c());
        ya.b bVar3 = this.f16625t;
        if (bVar3 != null) {
            bVar3.h(this.f16620o);
        }
        if (!z10 && (bVar2 = this.f16625t) != null) {
            bVar2.f(this.f16607b);
        }
        this.f16625t = null;
        this.f16610e.set(0);
        ya.b bVar4 = this.f16626u;
        if (bVar4 != null) {
            bVar4.h(this.f16620o);
        }
        if (!z10 && (bVar = this.f16626u) != null) {
            bVar.f(this.f16607b);
        }
        this.f16626u = null;
        this.f16611f.set(0);
        d(ha.t.f8397h);
    }

    public final void h(String str) {
        t tVar = t.f16822a;
        t.f16830i.a(new eb.c(new eb.a(androidx.recyclerview.widget.d.c("AdaptKitPairing: ", str))));
    }
}
