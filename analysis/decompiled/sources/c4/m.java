package c4;

import android.util.SparseArray;
import de.n0;
import java.util.ArrayList;
import java.util.Arrays;
import m5.g0;
import n3.s0;
import org.checkerframework.checker.nullness.qual.RequiresNonNull;

/* JADX INFO: compiled from: H264Reader.java */
/* JADX INFO: loaded from: classes.dex */
public final class m implements j {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final z f4058a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final boolean f4059b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final boolean f4060c;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public long f4064g;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public String f4066i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public s3.w f4067j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public a f4068k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public boolean f4069l;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public boolean f4071n;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final boolean[] f4065h = new boolean[3];

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final r f4061d = new r(7);

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final r f4062e = new r(8);

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final r f4063f = new r(6);

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public long f4070m = -9223372036854775807L;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public final m5.w f4072o = new m5.w();

    /* JADX INFO: compiled from: H264Reader.java */
    public static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final s3.w f4073a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final boolean f4074b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final boolean f4075c;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public final m5.x f4078f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        public byte[] f4079g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public int f4080h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public int f4081i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public long f4082j;

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        public long f4084l;

        /* JADX INFO: renamed from: p, reason: collision with root package name */
        public long f4088p;

        /* JADX INFO: renamed from: q, reason: collision with root package name */
        public long f4089q;

        /* JADX INFO: renamed from: r, reason: collision with root package name */
        public boolean f4090r;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public final SparseArray<m5.t.c> f4076d = new SparseArray<>();

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final SparseArray<m5.t.b> f4077e = new SparseArray<>();

        /* JADX INFO: renamed from: m, reason: collision with root package name */
        public C0072a f4085m = new C0072a();

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        public C0072a f4086n = new C0072a();

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public boolean f4083k = false;

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        public boolean f4087o = false;

        /* JADX INFO: renamed from: c4.m$a$a, reason: collision with other inner class name */
        /* JADX INFO: compiled from: H264Reader.java */
        public static final class C0072a {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public boolean f4091a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public boolean f4092b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public m5.t.c f4093c;

            /* JADX INFO: renamed from: d, reason: collision with root package name */
            public int f4094d;

            /* JADX INFO: renamed from: e, reason: collision with root package name */
            public int f4095e;

            /* JADX INFO: renamed from: f, reason: collision with root package name */
            public int f4096f;

            /* JADX INFO: renamed from: g, reason: collision with root package name */
            public int f4097g;

            /* JADX INFO: renamed from: h, reason: collision with root package name */
            public boolean f4098h;

            /* JADX INFO: renamed from: i, reason: collision with root package name */
            public boolean f4099i;

            /* JADX INFO: renamed from: j, reason: collision with root package name */
            public boolean f4100j;

            /* JADX INFO: renamed from: k, reason: collision with root package name */
            public boolean f4101k;

            /* JADX INFO: renamed from: l, reason: collision with root package name */
            public int f4102l;

            /* JADX INFO: renamed from: m, reason: collision with root package name */
            public int f4103m;

            /* JADX INFO: renamed from: n, reason: collision with root package name */
            public int f4104n;

            /* JADX INFO: renamed from: o, reason: collision with root package name */
            public int f4105o;

            /* JADX INFO: renamed from: p, reason: collision with root package name */
            public int f4106p;
        }

        public a(s3.w wVar, boolean z10, boolean z11) {
            this.f4073a = wVar;
            this.f4074b = z10;
            this.f4075c = z11;
            byte[] bArr = new byte[128];
            this.f4079g = bArr;
            this.f4078f = new m5.x(bArr, 0, 0);
            C0072a c0072a = this.f4086n;
            c0072a.f4092b = false;
            c0072a.f4091a = false;
        }
    }

    public m(z zVar, boolean z10, boolean z11) {
        this.f4058a = zVar;
        this.f4059b = z10;
        this.f4060c = z11;
    }

    @Override // c4.j
    public final void a() {
        this.f4064g = 0L;
        this.f4071n = false;
        this.f4070m = -9223372036854775807L;
        m5.t.a(this.f4065h);
        this.f4061d.c();
        this.f4062e.c();
        this.f4063f.c();
        a aVar = this.f4068k;
        if (aVar != null) {
            aVar.f4083k = false;
            aVar.f4087o = false;
            a.C0072a c0072a = aVar.f4086n;
            c0072a.f4092b = false;
            c0072a.f4091a = false;
        }
    }

    /* JADX WARN: Code duplicated, block: B:105:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:106:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:55:0x0125  */
    /* JADX WARN: Code duplicated, block: B:56:0x0127  */
    /* JADX WARN: Code duplicated, block: B:58:0x012a  */
    /* JADX WARN: Code duplicated, block: B:61:0x0134  */
    /* JADX WARN: Code duplicated, block: B:62:0x013b  */
    /* JADX WARN: Code duplicated, block: B:65:0x0140  */
    /* JADX WARN: Code duplicated, block: B:68:0x014c  */
    /* JADX WARN: Code duplicated, block: B:75:0x016e  */
    @RequiresNonNull({"sampleReader"})
    public final void b(byte[] bArr, int i10, int i11) {
        boolean zD;
        boolean zD2;
        boolean z10;
        boolean z11;
        int iF;
        int i12;
        int iE;
        int i13;
        int iG;
        int iG2;
        if (!this.f4069l || this.f4068k.f4075c) {
            this.f4061d.a(bArr, i10, i11);
            this.f4062e.a(bArr, i10, i11);
        }
        this.f4063f.a(bArr, i10, i11);
        a aVar = this.f4068k;
        if (aVar.f4083k) {
            int i14 = i11 - i10;
            byte[] bArr2 = aVar.f4079g;
            int length = bArr2.length;
            int i15 = aVar.f4080h + i14;
            if (length < i15) {
                aVar.f4079g = Arrays.copyOf(bArr2, i15 * 2);
            }
            System.arraycopy(bArr, i10, aVar.f4079g, aVar.f4080h, i14);
            int i16 = aVar.f4080h + i14;
            aVar.f4080h = i16;
            m5.x xVar = aVar.f4078f;
            xVar.f10478a = aVar.f4079g;
            xVar.f10480c = 0;
            xVar.f10479b = i16;
            xVar.f10481d = 0;
            xVar.a();
            if (aVar.f4078f.b(8)) {
                aVar.f4078f.i();
                int iE2 = aVar.f4078f.e(2);
                aVar.f4078f.j(5);
                if (aVar.f4078f.c()) {
                    aVar.f4078f.f();
                    if (aVar.f4078f.c()) {
                        int iF2 = aVar.f4078f.f();
                        if (!aVar.f4075c) {
                            aVar.f4083k = false;
                            a.C0072a c0072a = aVar.f4086n;
                            c0072a.f4095e = iF2;
                            c0072a.f4092b = true;
                            return;
                        }
                        if (aVar.f4078f.c()) {
                            int iF3 = aVar.f4078f.f();
                            if (aVar.f4077e.indexOfKey(iF3) < 0) {
                                aVar.f4083k = false;
                                return;
                            }
                            m5.t.b bVar = aVar.f4077e.get(iF3);
                            m5.t.c cVar = aVar.f4076d.get(bVar.f10449b);
                            if (cVar.f10458h) {
                                if (!aVar.f4078f.b(2)) {
                                    return;
                                } else {
                                    aVar.f4078f.j(2);
                                }
                            }
                            if (aVar.f4078f.b(cVar.f10460j)) {
                                int iE3 = aVar.f4078f.e(cVar.f10460j);
                                if (!cVar.f10459i) {
                                    if (aVar.f4078f.b(1)) {
                                        zD = aVar.f4078f.d();
                                        if (zD) {
                                            if (!aVar.f4078f.b(1)) {
                                                return;
                                            }
                                            zD2 = aVar.f4078f.d();
                                            z10 = true;
                                        }
                                        if (aVar.f4081i == 5) {
                                            z11 = true;
                                        } else {
                                            z11 = false;
                                        }
                                        if (z11) {
                                            iF = 0;
                                        } else if (!aVar.f4078f.c()) {
                                            return;
                                        } else {
                                            iF = aVar.f4078f.f();
                                        }
                                        i12 = cVar.f10461k;
                                        if (i12 != 0) {
                                            if (!aVar.f4078f.b(cVar.f10462l)) {
                                                return;
                                            }
                                            iE = aVar.f4078f.e(cVar.f10462l);
                                            if (bVar.f10450c || zD) {
                                                iG = 0;
                                                i13 = 0;
                                                iG2 = 0;
                                            } else {
                                                if (!aVar.f4078f.c()) {
                                                    return;
                                                }
                                                iG2 = aVar.f4078f.g();
                                                iG = 0;
                                                i13 = 0;
                                            }
                                        } else if (i12 == 1 || cVar.f10463m) {
                                            iE = 0;
                                            iG = 0;
                                            i13 = 0;
                                            iG2 = 0;
                                        } else {
                                            if (!aVar.f4078f.c()) {
                                                return;
                                            }
                                            int iG3 = aVar.f4078f.g();
                                            if (!bVar.f10450c || zD) {
                                                i13 = iG3;
                                                iE = 0;
                                                iG = 0;
                                                iG2 = 0;
                                            } else {
                                                if (!aVar.f4078f.c()) {
                                                    return;
                                                }
                                                iG = aVar.f4078f.g();
                                                iG2 = 0;
                                                i13 = iG3;
                                                iE = 0;
                                            }
                                        }
                                        a.C0072a c0072a2 = aVar.f4086n;
                                        c0072a2.f4093c = cVar;
                                        c0072a2.f4094d = iE2;
                                        c0072a2.f4095e = iF2;
                                        c0072a2.f4096f = iE3;
                                        c0072a2.f4097g = iF3;
                                        c0072a2.f4098h = zD;
                                        c0072a2.f4099i = z10;
                                        c0072a2.f4100j = zD2;
                                        c0072a2.f4101k = z11;
                                        c0072a2.f4102l = iF;
                                        c0072a2.f4103m = iE;
                                        c0072a2.f4104n = iG2;
                                        c0072a2.f4105o = i13;
                                        c0072a2.f4106p = iG;
                                        c0072a2.f4091a = true;
                                        c0072a2.f4092b = true;
                                        aVar.f4083k = false;
                                    }
                                    return;
                                }
                                zD = false;
                                zD2 = false;
                                z10 = false;
                                if (aVar.f4081i == 5) {
                                    z11 = true;
                                } else {
                                    z11 = false;
                                }
                                if (z11) {
                                    iF = 0;
                                } else if (!aVar.f4078f.c()) {
                                    return;
                                } else {
                                    iF = aVar.f4078f.f();
                                }
                                i12 = cVar.f10461k;
                                if (i12 != 0) {
                                    if (i12 == 1) {
                                    }
                                    iE = 0;
                                    iG = 0;
                                    i13 = 0;
                                    iG2 = 0;
                                } else {
                                    if (!aVar.f4078f.b(cVar.f10462l)) {
                                        return;
                                    }
                                    iE = aVar.f4078f.e(cVar.f10462l);
                                    if (bVar.f10450c) {
                                    }
                                    iG = 0;
                                    i13 = 0;
                                    iG2 = 0;
                                }
                                a.C0072a c0072a3 = aVar.f4086n;
                                c0072a3.f4093c = cVar;
                                c0072a3.f4094d = iE2;
                                c0072a3.f4095e = iF2;
                                c0072a3.f4096f = iE3;
                                c0072a3.f4097g = iF3;
                                c0072a3.f4098h = zD;
                                c0072a3.f4099i = z10;
                                c0072a3.f4100j = zD2;
                                c0072a3.f4101k = z11;
                                c0072a3.f4102l = iF;
                                c0072a3.f4103m = iE;
                                c0072a3.f4104n = iG2;
                                c0072a3.f4105o = i13;
                                c0072a3.f4106p = iG;
                                c0072a3.f4091a = true;
                                c0072a3.f4092b = true;
                                aVar.f4083k = false;
                            }
                        }
                    }
                }
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:131:0x028b  */
    /* JADX WARN: Code duplicated, block: B:19:0x004f  */
    /* JADX WARN: Code duplicated, block: B:84:0x01e7  */
    /* JADX WARN: Code duplicated, block: B:87:0x01ec  */
    /* JADX WARN: Code duplicated, block: B:93:0x0205  */
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
    @Override // c4.j
    public final void c(m5.w wVar) {
        int i10;
        byte[] bArr;
        long j10;
        int i11;
        long j11;
        int i12;
        int i13;
        boolean z10;
        int i14;
        int i15;
        int i16;
        boolean z11;
        m5.a.f(this.f4067j);
        int i17 = g0.f10384a;
        int i18 = wVar.f10476b;
        int i19 = wVar.f10477c;
        byte[] bArr2 = wVar.f10475a;
        int i20 = i19 - i18;
        this.f4064g += (long) i20;
        this.f4067j.f(wVar, i20);
        while (true) {
            int iB = m5.t.b(bArr2, i18, i19, this.f4065h);
            if (iB == i19) {
                b(bArr2, i18, i19);
                return;
            }
            int i21 = iB + 3;
            int i22 = bArr2[i21] & 31;
            int i23 = iB - i18;
            if (i23 > 0) {
                b(bArr2, i18, iB);
            }
            int i24 = i19 - iB;
            long j12 = this.f4064g - ((long) i24);
            int i25 = i23 < 0 ? -i23 : 0;
            long j13 = this.f4070m;
            if (!this.f4069l || this.f4068k.f4075c) {
                this.f4061d.b(i25);
                this.f4062e.b(i25);
                if (this.f4069l) {
                    i10 = i19;
                    bArr = bArr2;
                    r rVar = this.f4061d;
                    if (rVar.f4175c) {
                        m5.t.c cVarE = m5.t.e(rVar.f4176d, 3, rVar.f4177e);
                        this.f4068k.f4076d.append(cVarE.f10454d, cVarE);
                        this.f4061d.c();
                    } else {
                        r rVar2 = this.f4062e;
                        if (rVar2.f4175c) {
                            m5.t.b bVarD = m5.t.d(rVar2.f4176d, rVar2.f4177e);
                            this.f4068k.f4077e.append(bVarD.f10448a, bVarD);
                            this.f4062e.c();
                        }
                    }
                } else if (this.f4061d.f4175c && this.f4062e.f4175c) {
                    ArrayList arrayList = new ArrayList();
                    r rVar3 = this.f4061d;
                    arrayList.add(Arrays.copyOf(rVar3.f4176d, rVar3.f4177e));
                    r rVar4 = this.f4062e;
                    arrayList.add(Arrays.copyOf(rVar4.f4176d, rVar4.f4177e));
                    r rVar5 = this.f4061d;
                    m5.t.c cVarE2 = m5.t.e(rVar5.f4176d, 3, rVar5.f4177e);
                    r rVar6 = this.f4062e;
                    m5.t.b bVarD2 = m5.t.d(rVar6.f4176d, rVar6.f4177e);
                    i10 = i19;
                    String strC = n0.c(cVarE2.f10451a, cVarE2.f10452b, cVarE2.f10453c);
                    s3.w wVar2 = this.f4067j;
                    s0.a aVar = new s0.a();
                    bArr = bArr2;
                    aVar.f11695a = this.f4066i;
                    aVar.f11705k = "video/avc";
                    aVar.f11702h = strC;
                    aVar.f11710p = cVarE2.f10455e;
                    aVar.f11711q = cVarE2.f10456f;
                    aVar.f11714t = cVarE2.f10457g;
                    aVar.f11707m = arrayList;
                    wVar2.b(new s0(aVar));
                    this.f4069l = true;
                    this.f4068k.f4076d.append(cVarE2.f10454d, cVarE2);
                    this.f4068k.f4077e.append(bVarD2.f10448a, bVarD2);
                    this.f4061d.c();
                    this.f4062e.c();
                } else {
                    i10 = i19;
                    bArr = bArr2;
                }
            } else {
                i10 = i19;
                bArr = bArr2;
            }
            if (this.f4063f.b(i25)) {
                r rVar7 = this.f4063f;
                this.f4072o.B(this.f4063f.f4176d, m5.t.f(rVar7.f4176d, rVar7.f4177e));
                this.f4072o.D(4);
                this.f4058a.a(j13, this.f4072o);
            }
            a aVar2 = this.f4068k;
            boolean z12 = this.f4069l;
            boolean z13 = this.f4071n;
            if (aVar2.f4081i == 9) {
                if (z12 && aVar2.f4087o) {
                    j10 = aVar2.f4082j;
                    i11 = i24 + ((int) (j12 - j10));
                    j11 = aVar2.f4089q;
                    if (j11 != -9223372036854775807L) {
                        aVar2.f4073a.c(j11, aVar2.f4090r ? 1 : 0, (int) (j10 - aVar2.f4088p), i11, null);
                    }
                }
                aVar2.f4088p = aVar2.f4082j;
                aVar2.f4089q = aVar2.f4084l;
                aVar2.f4090r = false;
                aVar2.f4087o = true;
            } else if (aVar2.f4075c) {
                a.C0072a c0072a = aVar2.f4086n;
                a.C0072a c0072a2 = aVar2.f4085m;
                if (c0072a.f4091a) {
                    if (c0072a2.f4091a) {
                        m5.t.c cVar = c0072a.f4093c;
                        m5.a.f(cVar);
                        m5.t.c cVar2 = c0072a2.f4093c;
                        m5.a.f(cVar2);
                        if (c0072a.f4096f == c0072a2.f4096f && c0072a.f4097g == c0072a2.f4097g && c0072a.f4098h == c0072a2.f4098h && ((!c0072a.f4099i || !c0072a2.f4099i || c0072a.f4100j == c0072a2.f4100j) && (((i14 = c0072a.f4094d) == (i15 = c0072a2.f4094d) || (i14 != 0 && i15 != 0)) && (((i16 = cVar.f10461k) != 0 || cVar2.f10461k != 0 || (c0072a.f4103m == c0072a2.f4103m && c0072a.f4104n == c0072a2.f4104n)) && ((i16 != 1 || cVar2.f10461k != 1 || (c0072a.f4105o == c0072a2.f4105o && c0072a.f4106p == c0072a2.f4106p)) && (z11 = c0072a.f4101k) == c0072a2.f4101k && (!z11 || c0072a.f4102l == c0072a2.f4102l)))))) {
                            z10 = false;
                        }
                    }
                    z10 = true;
                } else {
                    z10 = false;
                }
                if (z10) {
                    if (z12) {
                        j10 = aVar2.f4082j;
                        i11 = i24 + ((int) (j12 - j10));
                        j11 = aVar2.f4089q;
                        if (j11 != -9223372036854775807L) {
                            aVar2.f4073a.c(j11, aVar2.f4090r ? 1 : 0, (int) (j10 - aVar2.f4088p), i11, null);
                        }
                    }
                    aVar2.f4088p = aVar2.f4082j;
                    aVar2.f4089q = aVar2.f4084l;
                    aVar2.f4090r = false;
                    aVar2.f4087o = true;
                }
            }
            if (aVar2.f4074b) {
                a.C0072a c0072a3 = aVar2.f4086n;
                z13 = c0072a3.f4092b && ((i13 = c0072a3.f4095e) == 7 || i13 == 2);
            }
            boolean z14 = aVar2.f4090r;
            int i26 = aVar2.f4081i;
            boolean z15 = z14 | (i26 == 5 || (z13 && i26 == 1));
            aVar2.f4090r = z15;
            if (z15) {
                this.f4071n = false;
            }
            long j14 = this.f4070m;
            if (!this.f4069l || this.f4068k.f4075c) {
                this.f4061d.d(i22);
                this.f4062e.d(i22);
            }
            this.f4063f.d(i22);
            a aVar3 = this.f4068k;
            aVar3.f4081i = i22;
            aVar3.f4084l = j14;
            aVar3.f4082j = j12;
            if (aVar3.f4074b) {
                i12 = 1;
                if (i22 == 1) {
                    a.C0072a c0072a4 = aVar3.f4085m;
                    aVar3.f4085m = aVar3.f4086n;
                    aVar3.f4086n = c0072a4;
                    c0072a4.f4092b = false;
                    c0072a4.f4091a = false;
                    aVar3.f4080h = 0;
                    aVar3.f4083k = true;
                }
                i18 = i21;
                i19 = i10;
                bArr2 = bArr;
            } else {
                i12 = 1;
            }
            if (aVar3.f4075c && (i22 == 5 || i22 == i12 || i22 == 2)) {
                a.C0072a c0072a5 = aVar3.f4085m;
                aVar3.f4085m = aVar3.f4086n;
                aVar3.f4086n = c0072a5;
                c0072a5.f4092b = false;
                c0072a5.f4091a = false;
                aVar3.f4080h = 0;
                aVar3.f4083k = true;
            }
            i18 = i21;
            i19 = i10;
            bArr2 = bArr;
        }
    }

    @Override // c4.j
    public final void d() {
    }

    @Override // c4.j
    public final void e(long j10, int i10) {
        if (j10 != -9223372036854775807L) {
            this.f4070m = j10;
        }
        this.f4071n |= (i10 & 2) != 0;
    }

    @Override // c4.j
    public final void f(s3.j jVar, d0.d dVar) {
        dVar.a();
        this.f4066i = dVar.b();
        s3.w wVarP = jVar.p(dVar.c(), 2);
        this.f4067j = wVarP;
        this.f4068k = new a(wVarP, this.f4059b, this.f4060c);
        this.f4058a.b(jVar, dVar);
    }
}
