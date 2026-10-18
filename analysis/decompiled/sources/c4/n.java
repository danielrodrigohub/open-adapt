package c4;

import de.n0;
import java.util.Collections;
import m5.g0;
import n3.s0;
import org.checkerframework.checker.nullness.qual.RequiresNonNull;

/* JADX INFO: compiled from: H265Reader.java */
/* JADX INFO: loaded from: classes.dex */
public final class n implements j {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final z f4107a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public String f4108b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public s3.w f4109c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public a f4110d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public boolean f4111e;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public long f4118l;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final boolean[] f4112f = new boolean[3];

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final r f4113g = new r(32);

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final r f4114h = new r(33);

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final r f4115i = new r(34);

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final r f4116j = new r(39);

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final r f4117k = new r(40);

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public long f4119m = -9223372036854775807L;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final m5.w f4120n = new m5.w();

    /* JADX INFO: compiled from: H265Reader.java */
    public static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final s3.w f4121a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public long f4122b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public boolean f4123c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public int f4124d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public long f4125e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public boolean f4126f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        public boolean f4127g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public boolean f4128h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public boolean f4129i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public boolean f4130j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public long f4131k;

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        public long f4132l;

        /* JADX INFO: renamed from: m, reason: collision with root package name */
        public boolean f4133m;

        public a(s3.w wVar) {
            this.f4121a = wVar;
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
        public final void a(int i10) {
            long j10 = this.f4132l;
            if (j10 == -9223372036854775807L) {
                return;
            }
            boolean z10 = this.f4133m;
            this.f4121a.c(j10, z10 ? 1 : 0, (int) (this.f4122b - this.f4131k), i10, null);
        }
    }

    public n(z zVar) {
        this.f4107a = zVar;
    }

    @Override // c4.j
    public final void a() {
        this.f4118l = 0L;
        this.f4119m = -9223372036854775807L;
        m5.t.a(this.f4112f);
        this.f4113g.c();
        this.f4114h.c();
        this.f4115i.c();
        this.f4116j.c();
        this.f4117k.c();
        a aVar = this.f4110d;
        if (aVar != null) {
            aVar.f4126f = false;
            aVar.f4127g = false;
            aVar.f4128h = false;
            aVar.f4129i = false;
            aVar.f4130j = false;
        }
    }

    @RequiresNonNull({"sampleReader"})
    public final void b(byte[] bArr, int i10, int i11) {
        a aVar = this.f4110d;
        if (aVar.f4126f) {
            int i12 = aVar.f4124d;
            int i13 = (i10 + 2) - i12;
            if (i13 < i11) {
                aVar.f4127g = (bArr[i13] & 128) != 0;
                aVar.f4126f = false;
            } else {
                aVar.f4124d = (i11 - i10) + i12;
            }
        }
        if (!this.f4111e) {
            this.f4113g.a(bArr, i10, i11);
            this.f4114h.a(bArr, i10, i11);
            this.f4115i.a(bArr, i10, i11);
        }
        this.f4116j.a(bArr, i10, i11);
        this.f4117k.a(bArr, i10, i11);
    }

    /* JADX WARN: Code duplicated, block: B:168:0x0340  */
    /* JADX WARN: Code duplicated, block: B:209:0x0400  */
    /* JADX WARN: Code duplicated, block: B:214:0x0409  */
    /* JADX WARN: Code duplicated, block: B:217:0x0410  */
    /* JADX WARN: Code duplicated, block: B:225:0x041f A[SYNTHETIC] */
    @Override // c4.j
    public final void c(m5.w wVar) {
        long j10;
        long j11;
        boolean z10;
        boolean z11;
        boolean z12;
        m5.a.f(this.f4109c);
        int i10 = g0.f10384a;
        while (true) {
            int i11 = wVar.f10477c;
            int i12 = wVar.f10476b;
            int i13 = i11 - i12;
            if (i13 <= 0) {
                return;
            }
            byte[] bArr = wVar.f10475a;
            this.f4118l += (long) i13;
            this.f4109c.f(wVar, i13);
            while (i12 < i11) {
                int iB = m5.t.b(bArr, i12, i11, this.f4112f);
                if (iB == i11) {
                    b(bArr, i12, i11);
                    return;
                }
                int i14 = iB + 3;
                int i15 = (bArr[i14] & 126) >> 1;
                int i16 = iB - i12;
                if (i16 > 0) {
                    b(bArr, i12, iB);
                }
                int i17 = i11 - iB;
                long j12 = this.f4118l - ((long) i17);
                int i18 = i16 < 0 ? -i16 : 0;
                long j13 = this.f4119m;
                a aVar = this.f4110d;
                boolean z13 = this.f4111e;
                if (aVar.f4130j && aVar.f4127g) {
                    aVar.f4133m = aVar.f4123c;
                    aVar.f4130j = false;
                } else if (aVar.f4128h || aVar.f4127g) {
                    if (z13 && aVar.f4129i) {
                        aVar.a(((int) (j12 - aVar.f4122b)) + i17);
                    }
                    aVar.f4131k = aVar.f4122b;
                    aVar.f4132l = aVar.f4125e;
                    aVar.f4133m = aVar.f4123c;
                    aVar.f4129i = true;
                }
                if (this.f4111e) {
                    j12 = j12;
                    j10 = j13;
                } else {
                    this.f4113g.b(i18);
                    this.f4114h.b(i18);
                    this.f4115i.b(i18);
                    r rVar = this.f4113g;
                    if (rVar.f4175c) {
                        r rVar2 = this.f4114h;
                        if (rVar2.f4175c) {
                            r rVar3 = this.f4115i;
                            if (rVar3.f4175c) {
                                s3.w wVar2 = this.f4109c;
                                String str = this.f4108b;
                                int i19 = rVar.f4177e;
                                byte[] bArr2 = new byte[rVar2.f4177e + i19 + rVar3.f4177e];
                                System.arraycopy(rVar.f4176d, 0, bArr2, 0, i19);
                                System.arraycopy(rVar2.f4176d, 0, bArr2, rVar.f4177e, rVar2.f4177e);
                                System.arraycopy(rVar3.f4176d, 0, bArr2, rVar.f4177e + rVar2.f4177e, rVar3.f4177e);
                                m5.x xVar = new m5.x(rVar2.f4176d, 0, rVar2.f4177e);
                                xVar.j(44);
                                int iE = xVar.e(3);
                                xVar.i();
                                int i20 = 2;
                                int iE2 = xVar.e(2);
                                boolean zD = xVar.d();
                                int iE3 = xVar.e(5);
                                int i21 = 0;
                                int i22 = 0;
                                for (int i23 = 32; i21 < i23; i23 = 32) {
                                    if (xVar.d()) {
                                        i22 |= 1 << i21;
                                    }
                                    i21++;
                                }
                                int[] iArr = new int[6];
                                for (int i24 = 0; i24 < 6; i24++) {
                                    iArr[i24] = xVar.e(8);
                                }
                                int iE4 = xVar.e(8);
                                int i25 = 0;
                                for (int i26 = 0; i26 < iE; i26++) {
                                    if (xVar.d()) {
                                        i25 += 89;
                                    }
                                    if (xVar.d()) {
                                        i25 += 8;
                                    }
                                }
                                xVar.j(i25);
                                if (iE > 0) {
                                    xVar.j((8 - iE) * 2);
                                }
                                xVar.f();
                                int iF = xVar.f();
                                if (iF == 3) {
                                    xVar.i();
                                }
                                int iF2 = xVar.f();
                                int iF3 = xVar.f();
                                if (xVar.d()) {
                                    int iF4 = xVar.f();
                                    int iF5 = xVar.f();
                                    int iF6 = xVar.f();
                                    int iF7 = xVar.f();
                                    iF2 -= (iF4 + iF5) * ((iF == 1 || iF == 2) ? 2 : 1);
                                    iF3 -= (iF6 + iF7) * (iF == 1 ? 2 : 1);
                                }
                                xVar.f();
                                xVar.f();
                                int iF8 = xVar.f();
                                for (int i27 = xVar.d() ? 0 : iE; i27 <= iE; i27++) {
                                    xVar.f();
                                    xVar.f();
                                    xVar.f();
                                }
                                xVar.f();
                                xVar.f();
                                xVar.f();
                                xVar.f();
                                xVar.f();
                                xVar.f();
                                if (xVar.d() && xVar.d()) {
                                    int i28 = 0;
                                    for (int i29 = 4; i28 < i29; i29 = 4) {
                                        int i30 = 0;
                                        while (i30 < 6) {
                                            if (xVar.d()) {
                                                int iMin = Math.min(64, 1 << ((i28 << 1) + 4));
                                                if (i28 > 1) {
                                                    xVar.g();
                                                }
                                                for (int i31 = 0; i31 < iMin; i31++) {
                                                    xVar.g();
                                                }
                                            } else {
                                                xVar.f();
                                            }
                                            int i32 = 3;
                                            if (i28 != 3) {
                                                i32 = 1;
                                            }
                                            i30 += i32;
                                            j13 = j13;
                                        }
                                        i28++;
                                        i20 = 2;
                                    }
                                    j10 = j13;
                                } else {
                                    j10 = j13;
                                    i20 = 2;
                                }
                                xVar.j(i20);
                                if (xVar.d()) {
                                    xVar.j(8);
                                    xVar.f();
                                    xVar.f();
                                    xVar.i();
                                }
                                int i33 = 0;
                                boolean zD2 = false;
                                int i34 = 0;
                                for (int iF9 = xVar.f(); i33 < iF9; iF9 = iF9) {
                                    if (i33 != 0) {
                                        zD2 = xVar.d();
                                    }
                                    if (zD2) {
                                        xVar.i();
                                        xVar.f();
                                        for (int i35 = 0; i35 <= i34; i35++) {
                                            if (xVar.d()) {
                                                xVar.i();
                                            }
                                        }
                                    } else {
                                        int iF10 = xVar.f();
                                        int iF11 = xVar.f();
                                        int i36 = iF10 + iF11;
                                        for (int i37 = 0; i37 < iF10; i37++) {
                                            xVar.f();
                                            xVar.i();
                                        }
                                        for (int i38 = 0; i38 < iF11; i38++) {
                                            xVar.f();
                                            xVar.i();
                                        }
                                        i34 = i36;
                                    }
                                    i33++;
                                }
                                if (xVar.d()) {
                                    for (int i39 = 0; i39 < xVar.f(); i39++) {
                                        xVar.j(iF8 + 4 + 1);
                                    }
                                }
                                xVar.j(2);
                                float f10 = 1.0f;
                                if (xVar.d()) {
                                    if (xVar.d()) {
                                        int iE5 = xVar.e(8);
                                        if (iE5 == 255) {
                                            int iE6 = xVar.e(16);
                                            int iE7 = xVar.e(16);
                                            if (iE6 != 0 && iE7 != 0) {
                                                f10 = iE6 / iE7;
                                            }
                                        } else {
                                            float[] fArr = m5.t.f10436b;
                                            if (iE5 < 17) {
                                                f10 = fArr[iE5];
                                            } else {
                                                da.c.b("Unexpected aspect_ratio_idc value: ", iE5, "H265Reader");
                                            }
                                        }
                                    }
                                    if (xVar.d()) {
                                        xVar.i();
                                    }
                                    if (xVar.d()) {
                                        xVar.j(4);
                                        if (xVar.d()) {
                                            xVar.j(24);
                                        }
                                    }
                                    if (xVar.d()) {
                                        xVar.f();
                                        xVar.f();
                                    }
                                    xVar.i();
                                    if (xVar.d()) {
                                        iF3 *= 2;
                                    }
                                }
                                String strD = n0.d(iE2, zD, iE3, i22, iArr, iE4);
                                s0.a aVar2 = new s0.a();
                                aVar2.f11695a = str;
                                aVar2.f11705k = "video/hevc";
                                aVar2.f11702h = strD;
                                aVar2.f11710p = iF2;
                                aVar2.f11711q = iF3;
                                aVar2.f11714t = f10;
                                aVar2.f11707m = Collections.singletonList(bArr2);
                                wVar2.b(new s0(aVar2));
                                this.f4111e = true;
                            } else {
                                j12 = j12;
                                j10 = j13;
                            }
                        } else {
                            j12 = j12;
                            j10 = j13;
                        }
                    } else {
                        j12 = j12;
                        j10 = j13;
                    }
                }
                if (this.f4116j.b(i18)) {
                    r rVar4 = this.f4116j;
                    this.f4120n.B(this.f4116j.f4176d, m5.t.f(rVar4.f4176d, rVar4.f4177e));
                    this.f4120n.E(5);
                    j11 = j10;
                    this.f4107a.a(j11, this.f4120n);
                } else {
                    j11 = j10;
                }
                if (this.f4117k.b(i18)) {
                    r rVar5 = this.f4117k;
                    this.f4120n.B(this.f4117k.f4176d, m5.t.f(rVar5.f4176d, rVar5.f4177e));
                    this.f4120n.E(5);
                    this.f4107a.a(j11, this.f4120n);
                }
                long j14 = this.f4119m;
                a aVar3 = this.f4110d;
                boolean z14 = this.f4111e;
                aVar3.f4127g = false;
                aVar3.f4128h = false;
                aVar3.f4125e = j14;
                aVar3.f4124d = 0;
                aVar3.f4122b = j12;
                if (i15 < 32 || i15 == 40) {
                    z10 = false;
                } else {
                    if (!aVar3.f4129i || aVar3.f4130j) {
                        z10 = false;
                    } else {
                        if (z14) {
                            aVar3.a(i17);
                        }
                        z10 = false;
                        aVar3.f4129i = false;
                    }
                    if (((32 > i15 || i15 > 35) && i15 != 39) ? z10 : true) {
                        z11 = true;
                        aVar3.f4128h = !aVar3.f4130j;
                        aVar3.f4130j = true;
                    }
                    if (i15 >= 16 || i15 > 21) {
                        z12 = z10;
                    } else {
                        z12 = z11;
                    }
                    aVar3.f4123c = z12;
                    if (z12 || i15 <= 9) {
                        z10 = z11;
                    }
                    aVar3.f4126f = z10;
                    if (!this.f4111e) {
                        this.f4113g.d(i15);
                        this.f4114h.d(i15);
                        this.f4115i.d(i15);
                    }
                    this.f4116j.d(i15);
                    this.f4117k.d(i15);
                    i11 = i11;
                    bArr = bArr;
                    i12 = i14;
                }
                z11 = true;
                if (i15 >= 16) {
                    z12 = z10;
                } else {
                    z12 = z10;
                }
                aVar3.f4123c = z12;
                if (z12) {
                    z10 = z11;
                } else {
                    z10 = z11;
                }
                aVar3.f4126f = z10;
                if (!this.f4111e) {
                    this.f4113g.d(i15);
                    this.f4114h.d(i15);
                    this.f4115i.d(i15);
                }
                this.f4116j.d(i15);
                this.f4117k.d(i15);
                i11 = i11;
                bArr = bArr;
                i12 = i14;
            }
        }
    }

    @Override // c4.j
    public final void d() {
    }

    @Override // c4.j
    public final void e(long j10, int i10) {
        if (j10 != -9223372036854775807L) {
            this.f4119m = j10;
        }
    }

    @Override // c4.j
    public final void f(s3.j jVar, d0.d dVar) {
        dVar.a();
        this.f4108b = dVar.b();
        s3.w wVarP = jVar.p(dVar.c(), 2);
        this.f4109c = wVarP;
        this.f4110d = new a(wVarP);
        this.f4107a.b(jVar, dVar);
    }
}
