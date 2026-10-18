package c4;

import java.util.Arrays;
import java.util.Collections;
import java.util.Objects;
import m5.g0;
import n3.s0;

/* JADX INFO: compiled from: H263Reader.java */
/* JADX INFO: loaded from: classes.dex */
public final class l implements j {

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public static final float[] f4032l = {1.0f, 1.0f, 1.0909091f, 0.90909094f, 1.4545455f, 1.2121212f, 1.0f};

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final e0 f4033a;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public b f4038f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public long f4039g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public String f4040h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public s3.w f4041i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public boolean f4042j;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final boolean[] f4035c = new boolean[4];

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final a f4036d = new a();

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public long f4043k = -9223372036854775807L;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final r f4037e = new r(178);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final m5.w f4034b = new m5.w();

    /* JADX INFO: compiled from: H263Reader.java */
    public static final class a {

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public static final byte[] f4044f = {0, 0, 1};

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public boolean f4045a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f4046b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public int f4047c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public int f4048d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public byte[] f4049e = new byte[128];

        public final void a(byte[] bArr, int i10, int i11) {
            if (this.f4045a) {
                int i12 = i11 - i10;
                byte[] bArr2 = this.f4049e;
                int length = bArr2.length;
                int i13 = this.f4047c;
                if (length < i13 + i12) {
                    this.f4049e = Arrays.copyOf(bArr2, (i13 + i12) * 2);
                }
                System.arraycopy(bArr, i10, this.f4049e, this.f4047c, i12);
                this.f4047c += i12;
            }
        }

        public final void b() {
            this.f4045a = false;
            this.f4047c = 0;
            this.f4046b = 0;
        }
    }

    /* JADX INFO: compiled from: H263Reader.java */
    public static final class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final s3.w f4050a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public boolean f4051b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public boolean f4052c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public boolean f4053d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public int f4054e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public int f4055f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        public long f4056g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public long f4057h;

        public b(s3.w wVar) {
            this.f4050a = wVar;
        }

        public final void a(byte[] bArr, int i10, int i11) {
            if (this.f4052c) {
                int i12 = this.f4055f;
                int i13 = (i10 + 1) - i12;
                if (i13 >= i11) {
                    this.f4055f = (i11 - i10) + i12;
                } else {
                    this.f4053d = ((bArr[i13] & 192) >> 6) == 0;
                    this.f4052c = false;
                }
            }
        }
    }

    public l(e0 e0Var) {
        this.f4033a = e0Var;
    }

    @Override // c4.j
    public final void a() {
        m5.t.a(this.f4035c);
        this.f4036d.b();
        b bVar = this.f4038f;
        if (bVar != null) {
            bVar.f4051b = false;
            bVar.f4052c = false;
            bVar.f4053d = false;
            bVar.f4054e = -1;
        }
        r rVar = this.f4037e;
        if (rVar != null) {
            rVar.c();
        }
        this.f4039g = 0L;
        this.f4043k = -9223372036854775807L;
    }

    /* JADX WARN: Code duplicated, block: B:50:0x00ce  */
    /* JADX WARN: Code duplicated, block: B:52:0x00fc  */
    /* JADX WARN: Code duplicated, block: B:55:0x010f  */
    /* JADX WARN: Code duplicated, block: B:57:0x0119  */
    /* JADX WARN: Code duplicated, block: B:58:0x011d  */
    /* JADX WARN: Code duplicated, block: B:59:0x0121  */
    /* JADX WARN: Code duplicated, block: B:61:0x0126  */
    /* JADX WARN: Code duplicated, block: B:62:0x0129  */
    /* JADX WARN: Code duplicated, block: B:66:0x0134  */
    /* JADX WARN: Code duplicated, block: B:68:0x0142  */
    /* JADX WARN: Code duplicated, block: B:71:0x016f  */
    /* JADX WARN: Code duplicated, block: B:74:0x0186 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:75:0x0188  */
    /* JADX WARN: Code duplicated, block: B:76:0x018e  */
    /* JADX WARN: Code duplicated, block: B:78:0x0193 A[LOOP:1: B:77:0x0191->B:78:0x0193, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:81:0x01d4  */
    /* JADX WARN: Code duplicated, block: B:96:0x0225  */
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
        boolean z10;
        int i11;
        boolean z11;
        m5.v vVar;
        int iG;
        float[] fArr;
        float f10;
        int iG2;
        int i12;
        int i13;
        int iG3;
        int iG4;
        m5.a.f(this.f4038f);
        m5.a.f(this.f4041i);
        int i14 = wVar.f10476b;
        int i15 = wVar.f10477c;
        byte[] bArr = wVar.f10475a;
        int i16 = i15 - i14;
        this.f4039g += (long) i16;
        this.f4041i.f(wVar, i16);
        while (true) {
            int iB = m5.t.b(bArr, i14, i15, this.f4035c);
            if (iB == i15) {
                if (!this.f4042j) {
                    this.f4036d.a(bArr, i14, i15);
                }
                this.f4038f.a(bArr, i14, i15);
                r rVar = this.f4037e;
                if (rVar != null) {
                    rVar.a(bArr, i14, i15);
                    return;
                }
                return;
            }
            int i17 = iB + 3;
            int i18 = wVar.f10475a[i17] & 255;
            int i19 = iB - i14;
            if (this.f4042j) {
                i10 = i17;
            } else {
                if (i19 > 0) {
                    this.f4036d.a(bArr, i14, iB);
                }
                int i20 = i19 < 0 ? -i19 : 0;
                a aVar = this.f4036d;
                int i21 = aVar.f4046b;
                if (i21 != 0) {
                    i10 = i17;
                    if (i21 != 1) {
                        if (i21 != 2) {
                            if (i21 != 3) {
                                if (i21 != 4) {
                                    throw new IllegalStateException();
                                }
                                if (i18 == 179 || i18 == 181) {
                                    aVar.f4047c -= i20;
                                    aVar.f4045a = false;
                                    z11 = true;
                                }
                                if (z11) {
                                    s3.w wVar2 = this.f4041i;
                                    a aVar2 = this.f4036d;
                                    int i22 = aVar2.f4048d;
                                    String str = this.f4040h;
                                    Objects.requireNonNull(str);
                                    byte[] bArrCopyOf = Arrays.copyOf(aVar2.f4049e, aVar2.f4047c);
                                    vVar = new m5.v(bArrCopyOf, bArrCopyOf.length);
                                    vVar.n(i22);
                                    vVar.n(4);
                                    vVar.l();
                                    vVar.m(8);
                                    if (vVar.f()) {
                                        vVar.m(4);
                                        vVar.m(3);
                                    }
                                    iG = vVar.g(4);
                                    if (iG == 15) {
                                        iG3 = vVar.g(8);
                                        iG4 = vVar.g(8);
                                        if (iG4 == 0) {
                                            m5.p.g("H263Reader", "Invalid aspect ratio");
                                            f10 = 1.0f;
                                        } else {
                                            f10 = iG3 / iG4;
                                        }
                                    } else {
                                        fArr = f4032l;
                                        if (iG < 7) {
                                            f10 = fArr[iG];
                                        } else {
                                            m5.p.g("H263Reader", "Invalid aspect ratio");
                                            f10 = 1.0f;
                                        }
                                    }
                                    if (vVar.f()) {
                                        vVar.m(2);
                                        vVar.m(1);
                                        if (vVar.f()) {
                                            vVar.m(15);
                                            vVar.l();
                                            vVar.m(15);
                                            vVar.l();
                                            vVar.m(15);
                                            vVar.l();
                                            vVar.m(3);
                                            vVar.m(11);
                                            vVar.l();
                                            vVar.m(15);
                                            vVar.l();
                                        }
                                    }
                                    if (vVar.g(2) != 0) {
                                        m5.p.g("H263Reader", "Unhandled video object layer shape");
                                    }
                                    vVar.l();
                                    iG2 = vVar.g(16);
                                    vVar.l();
                                    if (vVar.f()) {
                                        if (iG2 == 0) {
                                            m5.p.g("H263Reader", "Invalid vop_increment_time_resolution");
                                        } else {
                                            i13 = 0;
                                            for (i12 = iG2 - 1; i12 > 0; i12 >>= 1) {
                                                i13++;
                                            }
                                            vVar.m(i13);
                                        }
                                    }
                                    vVar.l();
                                    int iG5 = vVar.g(13);
                                    vVar.l();
                                    int iG6 = vVar.g(13);
                                    vVar.l();
                                    vVar.l();
                                    s0.a aVar3 = new s0.a();
                                    aVar3.f11695a = str;
                                    aVar3.f11705k = "video/mp4v-es";
                                    aVar3.f11710p = iG5;
                                    aVar3.f11711q = iG6;
                                    aVar3.f11714t = f10;
                                    aVar3.f11707m = Collections.singletonList(bArrCopyOf);
                                    wVar2.b(new s0(aVar3));
                                    this.f4042j = true;
                                }
                            } else if ((i18 & 240) != 32) {
                                m5.p.g("H263Reader", "Unexpected start code value");
                                aVar.b();
                            } else {
                                aVar.f4048d = aVar.f4047c;
                                aVar.f4046b = 4;
                            }
                        } else if (i18 > 31) {
                            m5.p.g("H263Reader", "Unexpected start code value");
                            aVar.b();
                        } else {
                            aVar.f4046b = 3;
                        }
                    } else if (i18 != 181) {
                        m5.p.g("H263Reader", "Unexpected start code value");
                        aVar.b();
                    } else {
                        aVar.f4046b = 2;
                    }
                } else {
                    i10 = i17;
                    if (i18 == 176) {
                        aVar.f4046b = 1;
                        aVar.f4045a = true;
                    }
                }
                aVar.a(a.f4044f, 0, 3);
                z11 = false;
                if (z11) {
                    s3.w wVar3 = this.f4041i;
                    a aVar4 = this.f4036d;
                    int i23 = aVar4.f4048d;
                    String str2 = this.f4040h;
                    Objects.requireNonNull(str2);
                    byte[] bArrCopyOf2 = Arrays.copyOf(aVar4.f4049e, aVar4.f4047c);
                    vVar = new m5.v(bArrCopyOf2, bArrCopyOf2.length);
                    vVar.n(i23);
                    vVar.n(4);
                    vVar.l();
                    vVar.m(8);
                    if (vVar.f()) {
                        vVar.m(4);
                        vVar.m(3);
                    }
                    iG = vVar.g(4);
                    if (iG == 15) {
                        iG3 = vVar.g(8);
                        iG4 = vVar.g(8);
                        if (iG4 == 0) {
                            m5.p.g("H263Reader", "Invalid aspect ratio");
                            f10 = 1.0f;
                        } else {
                            f10 = iG3 / iG4;
                        }
                    } else {
                        fArr = f4032l;
                        if (iG < 7) {
                            f10 = fArr[iG];
                        } else {
                            m5.p.g("H263Reader", "Invalid aspect ratio");
                            f10 = 1.0f;
                        }
                    }
                    if (vVar.f()) {
                        vVar.m(2);
                        vVar.m(1);
                        if (vVar.f()) {
                            vVar.m(15);
                            vVar.l();
                            vVar.m(15);
                            vVar.l();
                            vVar.m(15);
                            vVar.l();
                            vVar.m(3);
                            vVar.m(11);
                            vVar.l();
                            vVar.m(15);
                            vVar.l();
                        }
                    }
                    if (vVar.g(2) != 0) {
                        m5.p.g("H263Reader", "Unhandled video object layer shape");
                    }
                    vVar.l();
                    iG2 = vVar.g(16);
                    vVar.l();
                    if (vVar.f()) {
                        if (iG2 == 0) {
                            m5.p.g("H263Reader", "Invalid vop_increment_time_resolution");
                        } else {
                            i13 = 0;
                            while (i12 > 0) {
                                i13++;
                            }
                            vVar.m(i13);
                        }
                    }
                    vVar.l();
                    int iG7 = vVar.g(13);
                    vVar.l();
                    int iG8 = vVar.g(13);
                    vVar.l();
                    vVar.l();
                    s0.a aVar5 = new s0.a();
                    aVar5.f11695a = str2;
                    aVar5.f11705k = "video/mp4v-es";
                    aVar5.f11710p = iG7;
                    aVar5.f11711q = iG8;
                    aVar5.f11714t = f10;
                    aVar5.f11707m = Collections.singletonList(bArrCopyOf2);
                    wVar3.b(new s0(aVar5));
                    this.f4042j = true;
                }
            }
            this.f4038f.a(bArr, i14, iB);
            r rVar2 = this.f4037e;
            if (rVar2 == null) {
                z10 = true;
            } else {
                if (i19 > 0) {
                    rVar2.a(bArr, i14, iB);
                    i11 = 0;
                } else {
                    i11 = -i19;
                }
                if (this.f4037e.b(i11)) {
                    r rVar3 = this.f4037e;
                    int iF = m5.t.f(rVar3.f4176d, rVar3.f4177e);
                    m5.w wVar4 = this.f4034b;
                    int i24 = g0.f10384a;
                    wVar4.B(this.f4037e.f4176d, iF);
                    this.f4033a.a(this.f4043k, this.f4034b);
                }
                if (i18 == 178) {
                    z10 = true;
                    if (wVar.f10475a[iB + 2] == 1) {
                        this.f4037e.d(i18);
                    }
                } else {
                    z10 = true;
                }
            }
            int i25 = i15 - iB;
            long j10 = this.f4039g - ((long) i25);
            b bVar = this.f4038f;
            boolean z12 = this.f4042j;
            if (bVar.f4054e == 182 && z12 && bVar.f4051b) {
                long j11 = bVar.f4057h;
                if (j11 != -9223372036854775807L) {
                    bVar.f4050a.c(j11, bVar.f4053d ? 1 : 0, (int) (j10 - bVar.f4056g), i25, null);
                }
            }
            if (bVar.f4054e != 179) {
                bVar.f4056g = j10;
            }
            b bVar2 = this.f4038f;
            long j12 = this.f4043k;
            bVar2.f4054e = i18;
            bVar2.f4053d = false;
            bVar2.f4051b = (i18 == 182 || i18 == 179) ? z10 : false;
            if (i18 != 182) {
                z10 = false;
            }
            bVar2.f4052c = z10;
            bVar2.f4055f = 0;
            bVar2.f4057h = j12;
            i14 = i10;
            i15 = i15;
        }
    }

    @Override // c4.j
    public final void d() {
    }

    @Override // c4.j
    public final void e(long j10, int i10) {
        if (j10 != -9223372036854775807L) {
            this.f4043k = j10;
        }
    }

    @Override // c4.j
    public final void f(s3.j jVar, d0.d dVar) {
        dVar.a();
        this.f4040h = dVar.b();
        s3.w wVarP = jVar.p(dVar.c(), 2);
        this.f4041i = wVarP;
        this.f4038f = new b(wVarP);
        e0 e0Var = this.f4033a;
        if (e0Var != null) {
            e0Var.b(jVar, dVar);
        }
    }
}
