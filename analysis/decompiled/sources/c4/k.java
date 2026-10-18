package c4;

import android.util.Pair;
import java.util.Arrays;
import java.util.Collections;
import java.util.Objects;
import m5.g0;
import n3.s0;

/* JADX INFO: compiled from: H262Reader.java */
/* JADX INFO: loaded from: classes.dex */
public final class k implements j {

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public static final double[] f4010q = {23.976023976023978d, 24.0d, 25.0d, 29.97002997002997d, 30.0d, 50.0d, 59.94005994005994d, 60.0d};

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public String f4011a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public s3.w f4012b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final e0 f4013c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final m5.w f4014d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final r f4015e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final boolean[] f4016f = new boolean[4];

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final a f4017g = new a();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public long f4018h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public boolean f4019i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public boolean f4020j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public long f4021k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public long f4022l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public long f4023m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public long f4024n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public boolean f4025o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public boolean f4026p;

    /* JADX INFO: compiled from: H262Reader.java */
    public static final class a {

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public static final byte[] f4027e = {0, 0, 1};

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public boolean f4028a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f4029b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public int f4030c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public byte[] f4031d = new byte[128];

        public final void a(byte[] bArr, int i10, int i11) {
            if (this.f4028a) {
                int i12 = i11 - i10;
                byte[] bArr2 = this.f4031d;
                int length = bArr2.length;
                int i13 = this.f4029b;
                if (length < i13 + i12) {
                    this.f4031d = Arrays.copyOf(bArr2, (i13 + i12) * 2);
                }
                System.arraycopy(bArr, i10, this.f4031d, this.f4029b, i12);
                this.f4029b += i12;
            }
        }
    }

    public k(e0 e0Var) {
        this.f4013c = e0Var;
        if (e0Var != null) {
            this.f4015e = new r(178);
            this.f4014d = new m5.w();
        } else {
            this.f4015e = null;
            this.f4014d = null;
        }
        this.f4022l = -9223372036854775807L;
        this.f4024n = -9223372036854775807L;
    }

    @Override // c4.j
    public final void a() {
        m5.t.a(this.f4016f);
        a aVar = this.f4017g;
        aVar.f4028a = false;
        aVar.f4029b = 0;
        aVar.f4030c = 0;
        r rVar = this.f4015e;
        if (rVar != null) {
            rVar.c();
        }
        this.f4018h = 0L;
        this.f4019i = false;
        this.f4022l = -9223372036854775807L;
        this.f4024n = -9223372036854775807L;
    }

    /* JADX WARN: Code duplicated, block: B:31:0x007a  */
    /* JADX WARN: Code duplicated, block: B:33:0x00af  */
    /* JADX WARN: Code duplicated, block: B:35:0x00b2  */
    /* JADX WARN: Code duplicated, block: B:37:0x00b5  */
    /* JADX WARN: Code duplicated, block: B:38:0x00b8  */
    /* JADX WARN: Code duplicated, block: B:39:0x00be  */
    /* JADX WARN: Code duplicated, block: B:40:0x00c4  */
    /* JADX WARN: Code duplicated, block: B:44:0x00f0  */
    /* JADX WARN: Code duplicated, block: B:46:0x00f6  */
    /* JADX WARN: Code duplicated, block: B:48:0x0108  */
    /* JADX WARN: Code duplicated, block: B:49:0x0116  */
    /* JADX WARN: Code duplicated, block: B:51:0x0121  */
    /* JADX WARN: Code duplicated, block: B:53:0x0145  */
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
    @Override // c4.j
    public final void c(m5.w wVar) {
        int i10;
        boolean z10;
        boolean z11;
        int i11;
        Object[] objArr;
        a aVar;
        byte[] bArrCopyOf;
        int i12;
        int i13;
        int i14;
        float f10;
        int i15;
        float f11;
        int i16;
        long j10;
        double[] dArr;
        double d10;
        int i17;
        int i18;
        m5.a.f(this.f4012b);
        int i19 = wVar.f10476b;
        int i20 = wVar.f10477c;
        byte[] bArr = wVar.f10475a;
        int i21 = i20 - i19;
        this.f4018h += (long) i21;
        this.f4012b.f(wVar, i21);
        while (true) {
            int iB = m5.t.b(bArr, i19, i20, this.f4016f);
            if (iB == i20) {
                break;
            }
            int i22 = iB + 3;
            int i23 = wVar.f10475a[i22] & 255;
            int i24 = iB - i19;
            if (this.f4020j) {
                i23 = i23;
                i22 = i22;
            } else {
                if (i24 > 0) {
                    this.f4017g.a(bArr, i19, iB);
                }
                int i25 = i24 < 0 ? -i24 : 0;
                a aVar2 = this.f4017g;
                if (aVar2.f4028a) {
                    int i26 = aVar2.f4029b - i25;
                    aVar2.f4029b = i26;
                    if (aVar2.f4030c == 0 && i23 == 181) {
                        aVar2.f4030c = i26;
                    } else {
                        aVar2.f4028a = false;
                        objArr = true;
                    }
                    if (objArr == true) {
                        aVar = this.f4017g;
                        String str = this.f4011a;
                        Objects.requireNonNull(str);
                        bArrCopyOf = Arrays.copyOf(aVar.f4031d, aVar.f4029b);
                        int i27 = bArrCopyOf[4] & 255;
                        int i28 = bArrCopyOf[5] & 255;
                        i12 = (i27 << 4) | (i28 >> 4);
                        i13 = ((i28 & 15) << 8) | (bArrCopyOf[6] & 255);
                        i14 = (bArrCopyOf[7] & 240) >> 4;
                        if (i14 != 2) {
                            f10 = i13 * 4;
                            i15 = i12 * 3;
                        } else if (i14 != 3) {
                            if (i14 != 4) {
                                f11 = 1.0f;
                            } else {
                                f10 = i13 * 121;
                                i15 = i12 * 100;
                            }
                            s0.a aVar3 = new s0.a();
                            aVar3.f11695a = str;
                            aVar3.f11705k = "video/mpeg2";
                            aVar3.f11710p = i12;
                            aVar3.f11711q = i13;
                            aVar3.f11714t = f11;
                            aVar3.f11707m = Collections.singletonList(bArrCopyOf);
                            s0 s0Var = new s0(aVar3);
                            i16 = (bArrCopyOf[7] & 15) - 1;
                            if (i16 >= 0) {
                                dArr = f4010q;
                                if (i16 < 8) {
                                    d10 = dArr[i16];
                                    int i29 = aVar.f4030c + 9;
                                    i17 = (bArrCopyOf[i29] & 96) >> 5;
                                    i18 = bArrCopyOf[i29] & 31;
                                    if (i17 != i18) {
                                        d10 *= (((double) i17) + 1.0d) / ((double) (i18 + 1));
                                    }
                                    j10 = (long) (1000000.0d / d10);
                                } else {
                                    i23 = i23;
                                    i22 = i22;
                                    j10 = 0;
                                }
                            } else {
                                i23 = i23;
                                i22 = i22;
                                j10 = 0;
                            }
                            Pair pairCreate = Pair.create(s0Var, Long.valueOf(j10));
                            this.f4012b.b((s0) pairCreate.first);
                            this.f4021k = ((Long) pairCreate.second).longValue();
                            this.f4020j = true;
                        } else {
                            f10 = i13 * 16;
                            i15 = i12 * 9;
                        }
                        f11 = f10 / i15;
                        s0.a aVar4 = new s0.a();
                        aVar4.f11695a = str;
                        aVar4.f11705k = "video/mpeg2";
                        aVar4.f11710p = i12;
                        aVar4.f11711q = i13;
                        aVar4.f11714t = f11;
                        aVar4.f11707m = Collections.singletonList(bArrCopyOf);
                        s0 s0Var2 = new s0(aVar4);
                        i16 = (bArrCopyOf[7] & 15) - 1;
                        if (i16 >= 0) {
                            dArr = f4010q;
                            if (i16 < 8) {
                                d10 = dArr[i16];
                                int i210 = aVar.f4030c + 9;
                                i17 = (bArrCopyOf[i210] & 96) >> 5;
                                i18 = bArrCopyOf[i210] & 31;
                                if (i17 != i18) {
                                    d10 *= (((double) i17) + 1.0d) / ((double) (i18 + 1));
                                }
                                j10 = (long) (1000000.0d / d10);
                            } else {
                                i23 = i23;
                                i22 = i22;
                                j10 = 0;
                            }
                        } else {
                            i23 = i23;
                            i22 = i22;
                            j10 = 0;
                        }
                        Pair pairCreate2 = Pair.create(s0Var2, Long.valueOf(j10));
                        this.f4012b.b((s0) pairCreate2.first);
                        this.f4021k = ((Long) pairCreate2.second).longValue();
                        this.f4020j = true;
                    } else {
                        i23 = i23;
                        i22 = i22;
                    }
                } else if (i23 == 179) {
                    aVar2.f4028a = true;
                }
                aVar2.a(a.f4027e, 0, 3);
                objArr = false;
                if (objArr == true) {
                    aVar = this.f4017g;
                    String str2 = this.f4011a;
                    Objects.requireNonNull(str2);
                    bArrCopyOf = Arrays.copyOf(aVar.f4031d, aVar.f4029b);
                    int i211 = bArrCopyOf[4] & 255;
                    int i212 = bArrCopyOf[5] & 255;
                    i12 = (i211 << 4) | (i212 >> 4);
                    i13 = ((i212 & 15) << 8) | (bArrCopyOf[6] & 255);
                    i14 = (bArrCopyOf[7] & 240) >> 4;
                    if (i14 != 2) {
                        f10 = i13 * 4;
                        i15 = i12 * 3;
                    } else if (i14 != 3) {
                        if (i14 != 4) {
                            f11 = 1.0f;
                        } else {
                            f10 = i13 * 121;
                            i15 = i12 * 100;
                        }
                        s0.a aVar5 = new s0.a();
                        aVar5.f11695a = str2;
                        aVar5.f11705k = "video/mpeg2";
                        aVar5.f11710p = i12;
                        aVar5.f11711q = i13;
                        aVar5.f11714t = f11;
                        aVar5.f11707m = Collections.singletonList(bArrCopyOf);
                        s0 s0Var3 = new s0(aVar5);
                        i16 = (bArrCopyOf[7] & 15) - 1;
                        if (i16 >= 0) {
                            dArr = f4010q;
                            if (i16 < 8) {
                                d10 = dArr[i16];
                                int i213 = aVar.f4030c + 9;
                                i17 = (bArrCopyOf[i213] & 96) >> 5;
                                i18 = bArrCopyOf[i213] & 31;
                                if (i17 != i18) {
                                    d10 *= (((double) i17) + 1.0d) / ((double) (i18 + 1));
                                }
                                j10 = (long) (1000000.0d / d10);
                            } else {
                                i23 = i23;
                                i22 = i22;
                                j10 = 0;
                            }
                        } else {
                            i23 = i23;
                            i22 = i22;
                            j10 = 0;
                        }
                        Pair pairCreate3 = Pair.create(s0Var3, Long.valueOf(j10));
                        this.f4012b.b((s0) pairCreate3.first);
                        this.f4021k = ((Long) pairCreate3.second).longValue();
                        this.f4020j = true;
                    } else {
                        f10 = i13 * 16;
                        i15 = i12 * 9;
                    }
                    f11 = f10 / i15;
                    s0.a aVar6 = new s0.a();
                    aVar6.f11695a = str2;
                    aVar6.f11705k = "video/mpeg2";
                    aVar6.f11710p = i12;
                    aVar6.f11711q = i13;
                    aVar6.f11714t = f11;
                    aVar6.f11707m = Collections.singletonList(bArrCopyOf);
                    s0 s0Var4 = new s0(aVar6);
                    i16 = (bArrCopyOf[7] & 15) - 1;
                    if (i16 >= 0) {
                        dArr = f4010q;
                        if (i16 < 8) {
                            d10 = dArr[i16];
                            int i214 = aVar.f4030c + 9;
                            i17 = (bArrCopyOf[i214] & 96) >> 5;
                            i18 = bArrCopyOf[i214] & 31;
                            if (i17 != i18) {
                                d10 *= (((double) i17) + 1.0d) / ((double) (i18 + 1));
                            }
                            j10 = (long) (1000000.0d / d10);
                        } else {
                            i23 = i23;
                            i22 = i22;
                            j10 = 0;
                        }
                    } else {
                        i23 = i23;
                        i22 = i22;
                        j10 = 0;
                    }
                    Pair pairCreate4 = Pair.create(s0Var4, Long.valueOf(j10));
                    this.f4012b.b((s0) pairCreate4.first);
                    this.f4021k = ((Long) pairCreate4.second).longValue();
                    this.f4020j = true;
                } else {
                    i23 = i23;
                    i22 = i22;
                }
            }
            r rVar = this.f4015e;
            if (rVar != null) {
                if (i24 > 0) {
                    rVar.a(bArr, i19, iB);
                    i11 = 0;
                } else {
                    i11 = -i24;
                }
                if (this.f4015e.b(i11)) {
                    r rVar2 = this.f4015e;
                    int iF = m5.t.f(rVar2.f4176d, rVar2.f4177e);
                    m5.w wVar2 = this.f4014d;
                    int i30 = g0.f10384a;
                    wVar2.B(this.f4015e.f4176d, iF);
                    this.f4013c.a(this.f4024n, this.f4014d);
                }
                i10 = i23;
                if (i10 == 178 && wVar.f10475a[iB + 2] == 1) {
                    this.f4015e.d(i10);
                }
            } else {
                i10 = i23;
            }
            if (i10 == 0 || i10 == 179) {
                int i31 = i20 - iB;
                if (this.f4026p && this.f4020j) {
                    long j11 = this.f4024n;
                    if (j11 != -9223372036854775807L) {
                        this.f4012b.c(j11, this.f4025o ? 1 : 0, ((int) (this.f4018h - this.f4023m)) - i31, i31, null);
                    }
                }
                if (!this.f4019i || this.f4026p) {
                    this.f4023m = this.f4018h - ((long) i31);
                    long j12 = this.f4022l;
                    if (j12 == -9223372036854775807L) {
                        long j13 = this.f4024n;
                        j12 = j13 != -9223372036854775807L ? j13 + this.f4021k : -9223372036854775807L;
                    }
                    this.f4024n = j12;
                    z10 = false;
                    this.f4025o = false;
                    this.f4022l = -9223372036854775807L;
                    z11 = true;
                    this.f4019i = true;
                } else {
                    z10 = false;
                    z11 = true;
                }
                if (i10 == 0) {
                    z10 = z11;
                }
                this.f4026p = z10;
            } else if (i10 == 184) {
                this.f4025o = true;
            }
            i19 = i22;
        }
        if (!this.f4020j) {
            this.f4017g.a(bArr, i19, i20);
        }
        r rVar3 = this.f4015e;
        if (rVar3 != null) {
            rVar3.a(bArr, i19, i20);
        }
    }

    @Override // c4.j
    public final void d() {
    }

    @Override // c4.j
    public final void e(long j10, int i10) {
        this.f4022l = j10;
    }

    @Override // c4.j
    public final void f(s3.j jVar, d0.d dVar) {
        dVar.a();
        this.f4011a = dVar.b();
        this.f4012b = jVar.p(dVar.c(), 2);
        e0 e0Var = this.f4013c;
        if (e0Var != null) {
            e0Var.b(jVar, dVar);
        }
    }
}
