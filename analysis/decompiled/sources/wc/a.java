package wc;

import androidx.activity.k;
import fd.f;
import fd.o;
import java.util.concurrent.CancellationException;
import jd.d;
import kotlinx.coroutines.DelayKt;
import ld.e;
import qd.l;
import qd.p;
import rd.v;
import vd.h;

/* JADX INFO: compiled from: Coroutines.kt */
/* JADX INFO: loaded from: classes.dex */
public final class a {

    /* JADX INFO: renamed from: wc.a$a, reason: collision with other inner class name */
    /* JADX INFO: compiled from: Coroutines.kt */
    @e(c = "com.nike.ktx.coroutines.CoroutinesKt", f = "Coroutines.kt", l = {15, 21, 27}, m = "runWithRetry")
    public static final class C0310a<T> extends ld.c {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public b f17589h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public l f17590i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public p f17591j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public v f17592k;

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        public f.a f17593l;

        /* JADX INFO: renamed from: m, reason: collision with root package name */
        public int f17594m;

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        public int f17595n;

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        public int f17596o;

        /* JADX INFO: renamed from: p, reason: collision with root package name */
        public int f17597p;

        /* JADX INFO: renamed from: q, reason: collision with root package name */
        public /* synthetic */ Object f17598q;

        /* JADX INFO: renamed from: r, reason: collision with root package name */
        public int f17599r;

        public C0310a(d<? super C0310a> dVar) {
            super(dVar);
        }

        @Override // ld.a
        public final Object invokeSuspend(Object obj) {
            this.f17598q = obj;
            this.f17599r |= Integer.MIN_VALUE;
            return a.a(null, null, null, this);
        }
    }

    /* JADX WARN: Can't wrap try/catch for region: R(4:28|160|29|(1:31)) */
    /* JADX WARN: Code duplicated, block: B:100:0x0230 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:101:0x0232  */
    /* JADX WARN: Code duplicated, block: B:102:0x0234  */
    /* JADX WARN: Code duplicated, block: B:104:0x0237  */
    /* JADX WARN: Code duplicated, block: B:105:0x0239 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:106:0x023b  */
    /* JADX WARN: Code duplicated, block: B:107:0x023d  */
    /* JADX WARN: Code duplicated, block: B:110:0x0241  */
    /* JADX WARN: Code duplicated, block: B:111:0x0245  */
    /* JADX WARN: Code duplicated, block: B:112:0x0249  */
    /* JADX WARN: Code duplicated, block: B:114:0x0253  */
    /* JADX WARN: Code duplicated, block: B:115:0x026c  */
    /* JADX WARN: Code duplicated, block: B:117:0x0272  */
    /* JADX WARN: Code duplicated, block: B:118:0x0274 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:119:0x0276  */
    /* JADX WARN: Code duplicated, block: B:120:0x0278  */
    /* JADX WARN: Code duplicated, block: B:122:0x027b  */
    /* JADX WARN: Code duplicated, block: B:123:0x027d A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:124:0x027f  */
    /* JADX WARN: Code duplicated, block: B:125:0x0281  */
    /* JADX WARN: Code duplicated, block: B:128:0x0285  */
    /* JADX WARN: Code duplicated, block: B:129:0x0289  */
    /* JADX WARN: Code duplicated, block: B:130:0x028d  */
    /* JADX WARN: Code duplicated, block: B:132:0x02a8  */
    /* JADX WARN: Code duplicated, block: B:134:0x02ae  */
    /* JADX WARN: Code duplicated, block: B:136:0x02c7  */
    /* JADX WARN: Code duplicated, block: B:138:0x02cd  */
    /* JADX WARN: Code duplicated, block: B:140:0x02d9  */
    /* JADX WARN: Code duplicated, block: B:142:0x02f2  */
    /* JADX WARN: Code duplicated, block: B:143:0x02fc  */
    /* JADX WARN: Code duplicated, block: B:146:0x0317  */
    /* JADX WARN: Code duplicated, block: B:148:0x032d  */
    /* JADX WARN: Code duplicated, block: B:150:0x0333  */
    /* JADX WARN: Code duplicated, block: B:152:0x0339  */
    /* JADX WARN: Code duplicated, block: B:154:0x0345  */
    /* JADX WARN: Code duplicated, block: B:156:0x034b  */
    /* JADX WARN: Code duplicated, block: B:158:0x035d  */
    /* JADX WARN: Code duplicated, block: B:28:0x00a1  */
    /* JADX WARN: Code duplicated, block: B:31:0x00c4 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:37:0x00e0  */
    /* JADX WARN: Code duplicated, block: B:39:0x00e4 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:41:0x00e7  */
    /* JADX WARN: Code duplicated, block: B:43:0x0103 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:44:0x0104  */
    /* JADX WARN: Code duplicated, block: B:48:0x0111  */
    /* JADX WARN: Code duplicated, block: B:50:0x012c A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:51:0x012d  */
    /* JADX WARN: Code duplicated, block: B:54:0x0140  */
    /* JADX WARN: Code duplicated, block: B:56:0x0149  */
    /* JADX WARN: Code duplicated, block: B:59:0x0153  */
    /* JADX WARN: Code duplicated, block: B:61:0x0159  */
    /* JADX WARN: Code duplicated, block: B:62:0x015c  */
    /* JADX WARN: Code duplicated, block: B:65:0x0169  */
    /* JADX WARN: Code duplicated, block: B:66:0x016b  */
    /* JADX WARN: Code duplicated, block: B:68:0x016e  */
    /* JADX WARN: Code duplicated, block: B:70:0x0174 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:71:0x0176 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:73:0x0179  */
    /* JADX WARN: Code duplicated, block: B:75:0x018c  */
    /* JADX WARN: Code duplicated, block: B:77:0x0194  */
    /* JADX WARN: Code duplicated, block: B:79:0x0197  */
    /* JADX WARN: Code duplicated, block: B:7:0x0017  */
    /* JADX WARN: Code duplicated, block: B:80:0x019f  */
    /* JADX WARN: Code duplicated, block: B:82:0x01aa  */
    /* JADX WARN: Code duplicated, block: B:84:0x01bf  */
    /* JADX WARN: Code duplicated, block: B:85:0x01c5  */
    /* JADX WARN: Code duplicated, block: B:87:0x01cb  */
    /* JADX WARN: Code duplicated, block: B:89:0x01e0  */
    /* JADX WARN: Code duplicated, block: B:90:0x01e6  */
    /* JADX WARN: Code duplicated, block: B:91:0x01f1  */
    /* JADX WARN: Code duplicated, block: B:93:0x0207  */
    /* JADX WARN: Code duplicated, block: B:95:0x020f  */
    /* JADX WARN: Code duplicated, block: B:96:0x0228  */
    /* JADX WARN: Code duplicated, block: B:99:0x022e  */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x00c6, code lost:
    
        r0 = th;
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x00c7, code lost:
    
        r14 = r1;
        r1 = r2;
        r2 = r4;
        r20 = r12;
        r12 = r3;
        r3 = r5;
        r5 = r6;
        r6 = r7;
        r7 = r8;
        r8 = r9;
        r9 = r10;
        r10 = r11;
        r11 = r20;
     */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:156:0x034b -> B:157:0x0357). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:51:0x012d -> B:52:0x0132). Please report as a decompilation issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final <T> Object a(b bVar, l<? super d<? super T>, ? extends Object> lVar, p<? super Throwable, ? super d<? super o>, ? extends Object> pVar, d<? super T> dVar) throws Exception {
        C0310a c0310a;
        v vVar;
        int i10;
        int i11;
        int i12;
        b bVar2;
        int i13;
        int i14;
        C0310a c0310a2;
        f.a aVar;
        l<? super d<? super T>, ? extends Object> lVar2;
        kd.a aVar2;
        p<? super Throwable, ? super d<? super o>, ? extends Object> pVar2;
        b bVar3;
        l<? super d<? super T>, ? extends Object> lVar3;
        v vVar2;
        p<? super Throwable, ? super d<? super o>, ? extends Object> pVar3;
        int i15;
        int i16;
        int i17;
        f.a aVar3;
        int i18;
        long j10;
        int i19;
        int i20;
        v vVar3;
        l<? super d<? super T>, ? extends Object> lVar4;
        b bVar4;
        int iIntValue;
        long jK;
        double d10;
        int iRound;
        boolean z10;
        int i21;
        int i22;
        zd.c cVarJ;
        double dO;
        double dE;
        long jRound;
        double dE2;
        long jRound2;
        long jK2;
        zd.a aVar4;
        zd.a aVar5;
        long j11;
        long j12;
        long j13;
        int i23;
        int i24;
        long j14;
        long j15;
        long j16;
        long j17;
        int i25;
        int i26;
        if (dVar instanceof C0310a) {
            c0310a = (C0310a) dVar;
            int i27 = c0310a.f17599r;
            if ((i27 & Integer.MIN_VALUE) != 0) {
                c0310a.f17599r = i27 - Integer.MIN_VALUE;
            } else {
                c0310a = new C0310a(dVar);
            }
        } else {
            c0310a = new C0310a(dVar);
        }
        Object objInvoke = c0310a.f17598q;
        kd.a aVar6 = kd.a.COROUTINE_SUSPENDED;
        int i28 = c0310a.f17599r;
        f.a aVar7 = null;
        int i29 = 2;
        int i30 = 1;
        if (i28 == 0) {
            d3.e.p(objInvoke);
            int i31 = bVar.f17600a;
            int i32 = i31 != Integer.MAX_VALUE ? i31 + 1 : Integer.MAX_VALUE;
            v vVar4 = new v();
            vVar4.f14794h = bVar.f17601b;
            vVar = vVar4;
            i10 = i32;
            i11 = 2;
            i12 = 1;
            bVar2 = bVar;
            i13 = 0;
            i14 = i10;
            c0310a2 = c0310a;
            aVar = null;
            lVar2 = lVar;
            aVar2 = aVar6;
            pVar2 = pVar;
            if (i13 >= i14) {
                throw new Exception(a0.d.b("runWithRetry failed after ", i10, " attempts"));
            }
            iIntValue = new Integer(i13).intValue();
            c0310a2.f17589h = bVar2;
            c0310a2.f17590i = lVar2;
            c0310a2.f17591j = pVar2;
            c0310a2.f17592k = vVar;
            c0310a2.f17593l = aVar;
            c0310a2.f17594m = i10;
            c0310a2.f17595n = i13;
            c0310a2.f17596o = i14;
            c0310a2.f17597p = iIntValue;
            c0310a2.f17599r = i12;
            objInvoke = lVar2.invoke(c0310a2);
            if (objInvoke == aVar2) {
                return aVar2;
            }
        } else if (i28 != 1) {
            if (i28 == 2) {
                i18 = c0310a.f17597p;
                i17 = c0310a.f17596o;
                i15 = c0310a.f17595n;
                int i33 = c0310a.f17594m;
                vVar2 = c0310a.f17592k;
                p<? super Throwable, ? super d<? super o>, ? extends Object> pVar4 = c0310a.f17591j;
                lVar3 = c0310a.f17590i;
                bVar3 = c0310a.f17589h;
                d3.e.p(objInvoke);
                aVar3 = null;
                i16 = i33;
                pVar3 = pVar4;
                if (i18 + i30 < i16) {
                    j10 = vVar2.f14794h;
                    c0310a.f17589h = bVar3;
                    c0310a.f17590i = lVar3;
                    c0310a.f17591j = pVar3;
                    c0310a.f17592k = vVar2;
                    c0310a.f17593l = aVar3;
                    c0310a.f17594m = i16;
                    c0310a.f17595n = i15;
                    c0310a.f17596o = i17;
                    c0310a.f17599r = 3;
                    if (DelayKt.m10delayVtjQ1oo(j10, c0310a) == aVar6) {
                        return aVar6;
                    }
                    i19 = i17;
                    i20 = i15;
                    vVar3 = vVar2;
                    lVar4 = lVar3;
                    bVar4 = bVar3;
                } else {
                    i12 = i30;
                    bVar2 = bVar3;
                    vVar = vVar2;
                    int i34 = i17;
                    c0310a2 = c0310a;
                    lVar2 = lVar3;
                    i10 = i16;
                    aVar2 = aVar6;
                    pVar2 = pVar3;
                    i14 = i34;
                }
                i13 = i15 + 1;
                aVar = null;
                i11 = 2;
                if (i13 >= i14) {
                    throw new Exception(a0.d.b("runWithRetry failed after ", i10, " attempts"));
                }
                iIntValue = new Integer(i13).intValue();
                c0310a2.f17589h = bVar2;
                c0310a2.f17590i = lVar2;
                c0310a2.f17591j = pVar2;
                c0310a2.f17592k = vVar;
                c0310a2.f17593l = aVar;
                c0310a2.f17594m = i10;
                c0310a2.f17595n = i13;
                c0310a2.f17596o = i14;
                c0310a2.f17597p = iIntValue;
                c0310a2.f17599r = i12;
                objInvoke = lVar2.invoke(c0310a2);
                if (objInvoke == aVar2) {
                    return aVar2;
                }
            } else {
                if (i28 != 3) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                i19 = c0310a.f17596o;
                i20 = c0310a.f17595n;
                i16 = c0310a.f17594m;
                vVar3 = c0310a.f17592k;
                pVar3 = c0310a.f17591j;
                lVar4 = c0310a.f17590i;
                bVar4 = c0310a.f17589h;
                d3.e.p(objInvoke);
            }
            jK = vVar3.f14794h;
            d10 = bVar4.f17603d;
            zd.a.C0338a c0338a = zd.a.f19479i;
            if (!Double.isNaN(d10)) {
                throw new IllegalArgumentException("Cannot round NaN value.");
            }
            if (d10 > 2.147483647E9d) {
                iRound = Integer.MAX_VALUE;
            } else {
                if (d10 < -2.147483648E9d) {
                    iRound = Integer.MIN_VALUE;
                } else {
                    iRound = (int) Math.round(d10);
                }
                C0310a c0310a3 = c0310a;
                kd.a aVar8 = aVar6;
                if (iRound == d10) {
                    z10 = true;
                } else {
                    z10 = false;
                }
                if (z10) {
                    i21 = i20;
                    i22 = i16;
                    cVarJ = zd.a.j(jK);
                    dO = zd.a.o(jK, cVarJ) * d10;
                    dE = d3.e.e(dO, cVarJ, zd.c.NANOSECONDS);
                    if (!Double.isNaN(dE)) {
                        throw new IllegalArgumentException("Duration value cannot be NaN.".toString());
                    }
                    if (!Double.isNaN(dE)) {
                        throw new IllegalArgumentException("Cannot round NaN value.");
                    }
                    jRound = Math.round(dE);
                    if (new h(-4611686018426999999L, 4611686018426999999L).n(jRound)) {
                        jK2 = c3.d.l(jRound);
                    } else {
                        dE2 = d3.e.e(dO, cVarJ, zd.c.MILLISECONDS);
                        if (!Double.isNaN(dE2)) {
                            throw new IllegalArgumentException("Cannot round NaN value.");
                        }
                        jRound2 = Math.round(dE2);
                        if (new h(-4611686018426L, 4611686018426L).n(jRound2)) {
                            jK2 = c3.d.l(jRound2 * ((long) 1000000));
                        } else {
                            jK2 = c3.d.k(k.a(jRound2));
                        }
                    }
                    jK = jK2;
                } else if (zd.a.m(jK)) {
                    if (iRound != 0) {
                        throw new IllegalArgumentException("Multiplying infinite duration by zero yields an undefined result.");
                    }
                    if (iRound <= 0) {
                        jK = ((-(jK >> 1)) << 1) + ((long) (((int) jK) & 1));
                        int i35 = zd.b.f19483a;
                    }
                    i21 = i20;
                    i22 = i16;
                } else if (iRound == 0) {
                    i21 = i20;
                    i22 = i16;
                    jK = 0;
                } else {
                    j11 = jK >> 1;
                    j12 = iRound;
                    j13 = j11 * j12;
                    if (zd.a.l(jK)) {
                        i21 = i20;
                        i22 = i16;
                        if (new h(-2147483647L, 2147483647L).n(j11)) {
                            jK = c3.d.l(j13);
                        } else if (j13 / j12 == j11) {
                            long j18 = 1000000;
                            j14 = j11 / j18;
                            j15 = j14 * j12;
                            j16 = (((j11 - (j14 * j18)) * j12) / j18) + j15;
                            if (j15 / j12 == j14) {
                                j17 = 0;
                                if ((j16 ^ j15) >= 0) {
                                    jK = c3.d.k(k.b(j16, new h(-4611686018427387903L, 4611686018427387903L)));
                                }
                            } else {
                                j17 = 0;
                            }
                            if (j11 < j17) {
                                i25 = -1;
                            } else if (j11 > j17) {
                                i25 = 1;
                            } else {
                                i25 = 0;
                            }
                            if (iRound < 0) {
                                i26 = -1;
                            } else if (iRound > 0) {
                                i26 = 1;
                            } else {
                                i26 = 0;
                            }
                            if (i25 * i26 > 0) {
                                jK = zd.a.f19480j;
                            } else {
                                jK = zd.a.f19481k;
                            }
                        } else if (new h(-4611686018426999999L, 4611686018426999999L).n(j13)) {
                            jK = c3.d.l(j13);
                        } else {
                            jK = c3.d.k(j13 / ((long) 1000000));
                        }
                    } else {
                        i21 = i20;
                        i22 = i16;
                        if (j13 / j12 == j11) {
                            jK = c3.d.k(k.b(j13, new h(-4611686018427387903L, 4611686018427387903L)));
                        } else {
                            if (j11 < 0) {
                                i23 = -1;
                            } else if (j11 > 0) {
                                i23 = 1;
                            } else {
                                i23 = 0;
                            }
                            if (iRound < 0) {
                                i24 = -1;
                            } else if (iRound > 0) {
                                i24 = 1;
                            } else {
                                i24 = 0;
                            }
                            if (i23 * i24 > 0) {
                                jK = zd.a.f19480j;
                            } else {
                                jK = zd.a.f19481k;
                            }
                        }
                    }
                }
                aVar4 = new zd.a(jK);
                aVar5 = new zd.a(bVar4.f17602c);
                if (aVar4.compareTo(aVar5) > 0) {
                    aVar4 = aVar5;
                }
                vVar3.f14794h = aVar4.f19482h;
                c0310a2 = c0310a3;
                aVar2 = aVar8;
                i12 = 1;
                vVar = vVar3;
                pVar2 = pVar3;
                lVar2 = lVar4;
                bVar2 = bVar4;
                i10 = i22;
                i14 = i19;
                i15 = i21;
                i13 = i15 + 1;
                aVar = null;
                i11 = 2;
                if (i13 >= i14) {
                    throw new Exception(a0.d.b("runWithRetry failed after ", i10, " attempts"));
                }
                iIntValue = new Integer(i13).intValue();
                c0310a2.f17589h = bVar2;
                c0310a2.f17590i = lVar2;
                c0310a2.f17591j = pVar2;
                c0310a2.f17592k = vVar;
                c0310a2.f17593l = aVar;
                c0310a2.f17594m = i10;
                c0310a2.f17595n = i13;
                c0310a2.f17596o = i14;
                c0310a2.f17597p = iIntValue;
                c0310a2.f17599r = i12;
                objInvoke = lVar2.invoke(c0310a2);
                if (objInvoke == aVar2) {
                    return aVar2;
                }
            }
            C0310a c0310a4 = c0310a;
            kd.a aVar9 = aVar6;
            if (iRound == d10) {
                z10 = true;
            } else {
                z10 = false;
            }
            if (z10) {
                i21 = i20;
                i22 = i16;
                cVarJ = zd.a.j(jK);
                dO = zd.a.o(jK, cVarJ) * d10;
                dE = d3.e.e(dO, cVarJ, zd.c.NANOSECONDS);
                if (!Double.isNaN(dE)) {
                    throw new IllegalArgumentException("Duration value cannot be NaN.".toString());
                }
                if (!Double.isNaN(dE)) {
                    throw new IllegalArgumentException("Cannot round NaN value.");
                }
                jRound = Math.round(dE);
                if (new h(-4611686018426999999L, 4611686018426999999L).n(jRound)) {
                    jK2 = c3.d.l(jRound);
                } else {
                    dE2 = d3.e.e(dO, cVarJ, zd.c.MILLISECONDS);
                    if (!Double.isNaN(dE2)) {
                        throw new IllegalArgumentException("Cannot round NaN value.");
                    }
                    jRound2 = Math.round(dE2);
                    if (new h(-4611686018426L, 4611686018426L).n(jRound2)) {
                        jK2 = c3.d.l(jRound2 * ((long) 1000000));
                    } else {
                        jK2 = c3.d.k(k.a(jRound2));
                    }
                }
                jK = jK2;
            } else if (zd.a.m(jK)) {
                if (iRound != 0) {
                    throw new IllegalArgumentException("Multiplying infinite duration by zero yields an undefined result.");
                }
                if (iRound <= 0) {
                    jK = ((-(jK >> 1)) << 1) + ((long) (((int) jK) & 1));
                    int i36 = zd.b.f19483a;
                }
                i21 = i20;
                i22 = i16;
            } else if (iRound == 0) {
                i21 = i20;
                i22 = i16;
                jK = 0;
            } else {
                j11 = jK >> 1;
                j12 = iRound;
                j13 = j11 * j12;
                if (zd.a.l(jK)) {
                    i21 = i20;
                    i22 = i16;
                    if (new h(-2147483647L, 2147483647L).n(j11)) {
                        jK = c3.d.l(j13);
                    } else if (j13 / j12 == j11) {
                        long j19 = 1000000;
                        j14 = j11 / j19;
                        j15 = j14 * j12;
                        j16 = (((j11 - (j14 * j19)) * j12) / j19) + j15;
                        if (j15 / j12 == j14) {
                            j17 = 0;
                            if ((j16 ^ j15) >= 0) {
                                jK = c3.d.k(k.b(j16, new h(-4611686018427387903L, 4611686018427387903L)));
                            }
                        } else {
                            j17 = 0;
                        }
                        if (j11 < j17) {
                            i25 = -1;
                        } else if (j11 > j17) {
                            i25 = 1;
                        } else {
                            i25 = 0;
                        }
                        if (iRound < 0) {
                            i26 = -1;
                        } else if (iRound > 0) {
                            i26 = 1;
                        } else {
                            i26 = 0;
                        }
                        if (i25 * i26 > 0) {
                            jK = zd.a.f19480j;
                        } else {
                            jK = zd.a.f19481k;
                        }
                    } else if (new h(-4611686018426999999L, 4611686018426999999L).n(j13)) {
                        jK = c3.d.l(j13);
                    } else {
                        jK = c3.d.k(j13 / ((long) 1000000));
                    }
                } else {
                    i21 = i20;
                    i22 = i16;
                    if (j13 / j12 == j11) {
                        jK = c3.d.k(k.b(j13, new h(-4611686018427387903L, 4611686018427387903L)));
                    } else {
                        if (j11 < 0) {
                            i23 = -1;
                        } else if (j11 > 0) {
                            i23 = 1;
                        } else {
                            i23 = 0;
                        }
                        if (iRound < 0) {
                            i24 = -1;
                        } else if (iRound > 0) {
                            i24 = 1;
                        } else {
                            i24 = 0;
                        }
                        if (i23 * i24 > 0) {
                            jK = zd.a.f19480j;
                        } else {
                            jK = zd.a.f19481k;
                        }
                    }
                }
            }
            aVar4 = new zd.a(jK);
            aVar5 = new zd.a(bVar4.f17602c);
            if (aVar4.compareTo(aVar5) > 0) {
                aVar4 = aVar5;
            }
            vVar3.f14794h = aVar4.f19482h;
            c0310a2 = c0310a4;
            aVar2 = aVar9;
            i12 = 1;
            vVar = vVar3;
            pVar2 = pVar3;
            lVar2 = lVar4;
            bVar2 = bVar4;
            i10 = i22;
            i14 = i19;
            i15 = i21;
            i13 = i15 + 1;
            aVar = null;
            i11 = 2;
            if (i13 >= i14) {
                throw new Exception(a0.d.b("runWithRetry failed after ", i10, " attempts"));
            }
            iIntValue = new Integer(i13).intValue();
            c0310a2.f17589h = bVar2;
            c0310a2.f17590i = lVar2;
            c0310a2.f17591j = pVar2;
            c0310a2.f17592k = vVar;
            c0310a2.f17593l = aVar;
            c0310a2.f17594m = i10;
            c0310a2.f17595n = i13;
            c0310a2.f17596o = i14;
            c0310a2.f17597p = iIntValue;
            c0310a2.f17599r = i12;
            objInvoke = lVar2.invoke(c0310a2);
            if (objInvoke == aVar2) {
                return aVar2;
            }
        } else {
            int i37 = c0310a.f17597p;
            int i38 = c0310a.f17596o;
            int i39 = c0310a.f17595n;
            int i40 = c0310a.f17594m;
            v vVar5 = c0310a.f17592k;
            p<? super Throwable, ? super d<? super o>, ? extends Object> pVar5 = c0310a.f17591j;
            l<? super d<? super T>, ? extends Object> lVar5 = c0310a.f17590i;
            b bVar5 = c0310a.f17589h;
            try {
                d3.e.p(objInvoke);
            } catch (Throwable th) {
                Throwable th2 = th;
                l<? super d<? super T>, ? extends Object> lVar6 = lVar5;
                iIntValue = i37;
                Object objG = d3.e.g(th2);
                Throwable thA = f.a(objG);
                if (thA != null) {
                    if (thA instanceof CancellationException) {
                        throw thA;
                    }
                    if (pVar5 != null) {
                        c0310a.f17589h = bVar5;
                        c0310a.f17590i = lVar6;
                        c0310a.f17591j = pVar5;
                        c0310a.f17592k = vVar5;
                        c0310a.f17593l = (f.a) objG;
                        c0310a.f17594m = i40;
                        c0310a.f17595n = i39;
                        c0310a.f17596o = i38;
                        c0310a.f17597p = iIntValue;
                        c0310a.f17599r = i29;
                        if (pVar5.invoke(thA, c0310a) == aVar6) {
                            return aVar6;
                        }
                    }
                }
                i17 = i38;
                i15 = i39;
                vVar2 = vVar5;
                pVar3 = pVar5;
                i18 = iIntValue;
                bVar3 = bVar5;
                lVar3 = lVar6;
                aVar3 = aVar7;
                i16 = i40;
                if (i18 + i30 < i16) {
                    j10 = vVar2.f14794h;
                    c0310a.f17589h = bVar3;
                    c0310a.f17590i = lVar3;
                    c0310a.f17591j = pVar3;
                    c0310a.f17592k = vVar2;
                    c0310a.f17593l = aVar3;
                    c0310a.f17594m = i16;
                    c0310a.f17595n = i15;
                    c0310a.f17596o = i17;
                    c0310a.f17599r = 3;
                    if (DelayKt.m10delayVtjQ1oo(j10, c0310a) == aVar6) {
                        return aVar6;
                    }
                    i19 = i17;
                    i20 = i15;
                    vVar3 = vVar2;
                    lVar4 = lVar3;
                    bVar4 = bVar3;
                    jK = vVar3.f14794h;
                    d10 = bVar4.f17603d;
                    zd.a.C0338a c0338a2 = zd.a.f19479i;
                    if (!Double.isNaN(d10)) {
                        throw new IllegalArgumentException("Cannot round NaN value.");
                    }
                    if (d10 > 2.147483647E9d) {
                        iRound = Integer.MAX_VALUE;
                    } else {
                        if (d10 < -2.147483648E9d) {
                            iRound = Integer.MIN_VALUE;
                        } else {
                            iRound = (int) Math.round(d10);
                        }
                        C0310a c0310a5 = c0310a;
                        kd.a aVar10 = aVar6;
                        if (iRound == d10) {
                            z10 = true;
                        } else {
                            z10 = false;
                        }
                        if (z10) {
                            i21 = i20;
                            i22 = i16;
                            cVarJ = zd.a.j(jK);
                            dO = zd.a.o(jK, cVarJ) * d10;
                            dE = d3.e.e(dO, cVarJ, zd.c.NANOSECONDS);
                            if (!Double.isNaN(dE)) {
                                throw new IllegalArgumentException("Duration value cannot be NaN.".toString());
                            }
                            if (!Double.isNaN(dE)) {
                                throw new IllegalArgumentException("Cannot round NaN value.");
                            }
                            jRound = Math.round(dE);
                            if (new h(-4611686018426999999L, 4611686018426999999L).n(jRound)) {
                                jK2 = c3.d.l(jRound);
                            } else {
                                dE2 = d3.e.e(dO, cVarJ, zd.c.MILLISECONDS);
                                if (!Double.isNaN(dE2)) {
                                    throw new IllegalArgumentException("Cannot round NaN value.");
                                }
                                jRound2 = Math.round(dE2);
                                if (new h(-4611686018426L, 4611686018426L).n(jRound2)) {
                                    jK2 = c3.d.l(jRound2 * ((long) 1000000));
                                } else {
                                    jK2 = c3.d.k(k.a(jRound2));
                                }
                            }
                            jK = jK2;
                        } else if (zd.a.m(jK)) {
                            if (iRound != 0) {
                                throw new IllegalArgumentException("Multiplying infinite duration by zero yields an undefined result.");
                            }
                            if (iRound <= 0) {
                                jK = ((-(jK >> 1)) << 1) + ((long) (((int) jK) & 1));
                                int i310 = zd.b.f19483a;
                            }
                            i21 = i20;
                            i22 = i16;
                        } else if (iRound == 0) {
                            i21 = i20;
                            i22 = i16;
                            jK = 0;
                        } else {
                            j11 = jK >> 1;
                            j12 = iRound;
                            j13 = j11 * j12;
                            if (zd.a.l(jK)) {
                                i21 = i20;
                                i22 = i16;
                                if (new h(-2147483647L, 2147483647L).n(j11)) {
                                    jK = c3.d.l(j13);
                                } else if (j13 / j12 == j11) {
                                    long j110 = 1000000;
                                    j14 = j11 / j110;
                                    j15 = j14 * j12;
                                    j16 = (((j11 - (j14 * j110)) * j12) / j110) + j15;
                                    if (j15 / j12 == j14) {
                                        j17 = 0;
                                        if ((j16 ^ j15) >= 0) {
                                            jK = c3.d.k(k.b(j16, new h(-4611686018427387903L, 4611686018427387903L)));
                                        }
                                    } else {
                                        j17 = 0;
                                    }
                                    if (j11 < j17) {
                                        i25 = -1;
                                    } else if (j11 > j17) {
                                        i25 = 1;
                                    } else {
                                        i25 = 0;
                                    }
                                    if (iRound < 0) {
                                        i26 = -1;
                                    } else if (iRound > 0) {
                                        i26 = 1;
                                    } else {
                                        i26 = 0;
                                    }
                                    if (i25 * i26 > 0) {
                                        jK = zd.a.f19480j;
                                    } else {
                                        jK = zd.a.f19481k;
                                    }
                                } else if (new h(-4611686018426999999L, 4611686018426999999L).n(j13)) {
                                    jK = c3.d.l(j13);
                                } else {
                                    jK = c3.d.k(j13 / ((long) 1000000));
                                }
                            } else {
                                i21 = i20;
                                i22 = i16;
                                if (j13 / j12 == j11) {
                                    jK = c3.d.k(k.b(j13, new h(-4611686018427387903L, 4611686018427387903L)));
                                } else {
                                    if (j11 < 0) {
                                        i23 = -1;
                                    } else if (j11 > 0) {
                                        i23 = 1;
                                    } else {
                                        i23 = 0;
                                    }
                                    if (iRound < 0) {
                                        i24 = -1;
                                    } else if (iRound > 0) {
                                        i24 = 1;
                                    } else {
                                        i24 = 0;
                                    }
                                    if (i23 * i24 > 0) {
                                        jK = zd.a.f19480j;
                                    } else {
                                        jK = zd.a.f19481k;
                                    }
                                }
                            }
                        }
                        aVar4 = new zd.a(jK);
                        aVar5 = new zd.a(bVar4.f17602c);
                        if (aVar4.compareTo(aVar5) > 0) {
                            aVar4 = aVar5;
                        }
                        vVar3.f14794h = aVar4.f19482h;
                        c0310a2 = c0310a5;
                        aVar2 = aVar10;
                        i12 = 1;
                        vVar = vVar3;
                        pVar2 = pVar3;
                        lVar2 = lVar4;
                        bVar2 = bVar4;
                        i10 = i22;
                        i14 = i19;
                        i15 = i21;
                    }
                    C0310a c0310a6 = c0310a;
                    kd.a aVar11 = aVar6;
                    if (iRound == d10) {
                        z10 = true;
                    } else {
                        z10 = false;
                    }
                    if (z10) {
                        i21 = i20;
                        i22 = i16;
                        cVarJ = zd.a.j(jK);
                        dO = zd.a.o(jK, cVarJ) * d10;
                        dE = d3.e.e(dO, cVarJ, zd.c.NANOSECONDS);
                        if (!Double.isNaN(dE)) {
                            throw new IllegalArgumentException("Duration value cannot be NaN.".toString());
                        }
                        if (!Double.isNaN(dE)) {
                            throw new IllegalArgumentException("Cannot round NaN value.");
                        }
                        jRound = Math.round(dE);
                        if (new h(-4611686018426999999L, 4611686018426999999L).n(jRound)) {
                            jK2 = c3.d.l(jRound);
                        } else {
                            dE2 = d3.e.e(dO, cVarJ, zd.c.MILLISECONDS);
                            if (!Double.isNaN(dE2)) {
                                throw new IllegalArgumentException("Cannot round NaN value.");
                            }
                            jRound2 = Math.round(dE2);
                            if (new h(-4611686018426L, 4611686018426L).n(jRound2)) {
                                jK2 = c3.d.l(jRound2 * ((long) 1000000));
                            } else {
                                jK2 = c3.d.k(k.a(jRound2));
                            }
                        }
                        jK = jK2;
                    } else if (zd.a.m(jK)) {
                        if (iRound != 0) {
                            throw new IllegalArgumentException("Multiplying infinite duration by zero yields an undefined result.");
                        }
                        if (iRound <= 0) {
                            jK = ((-(jK >> 1)) << 1) + ((long) (((int) jK) & 1));
                            int i311 = zd.b.f19483a;
                        }
                        i21 = i20;
                        i22 = i16;
                    } else if (iRound == 0) {
                        i21 = i20;
                        i22 = i16;
                        jK = 0;
                    } else {
                        j11 = jK >> 1;
                        j12 = iRound;
                        j13 = j11 * j12;
                        if (zd.a.l(jK)) {
                            i21 = i20;
                            i22 = i16;
                            if (new h(-2147483647L, 2147483647L).n(j11)) {
                                jK = c3.d.l(j13);
                            } else if (j13 / j12 == j11) {
                                long j111 = 1000000;
                                j14 = j11 / j111;
                                j15 = j14 * j12;
                                j16 = (((j11 - (j14 * j111)) * j12) / j111) + j15;
                                if (j15 / j12 == j14) {
                                    j17 = 0;
                                    if ((j16 ^ j15) >= 0) {
                                        jK = c3.d.k(k.b(j16, new h(-4611686018427387903L, 4611686018427387903L)));
                                    }
                                } else {
                                    j17 = 0;
                                }
                                if (j11 < j17) {
                                    i25 = -1;
                                } else if (j11 > j17) {
                                    i25 = 1;
                                } else {
                                    i25 = 0;
                                }
                                if (iRound < 0) {
                                    i26 = -1;
                                } else if (iRound > 0) {
                                    i26 = 1;
                                } else {
                                    i26 = 0;
                                }
                                if (i25 * i26 > 0) {
                                    jK = zd.a.f19480j;
                                } else {
                                    jK = zd.a.f19481k;
                                }
                            } else if (new h(-4611686018426999999L, 4611686018426999999L).n(j13)) {
                                jK = c3.d.l(j13);
                            } else {
                                jK = c3.d.k(j13 / ((long) 1000000));
                            }
                        } else {
                            i21 = i20;
                            i22 = i16;
                            if (j13 / j12 == j11) {
                                jK = c3.d.k(k.b(j13, new h(-4611686018427387903L, 4611686018427387903L)));
                            } else {
                                if (j11 < 0) {
                                    i23 = -1;
                                } else if (j11 > 0) {
                                    i23 = 1;
                                } else {
                                    i23 = 0;
                                }
                                if (iRound < 0) {
                                    i24 = -1;
                                } else if (iRound > 0) {
                                    i24 = 1;
                                } else {
                                    i24 = 0;
                                }
                                if (i23 * i24 > 0) {
                                    jK = zd.a.f19480j;
                                } else {
                                    jK = zd.a.f19481k;
                                }
                            }
                        }
                    }
                    aVar4 = new zd.a(jK);
                    aVar5 = new zd.a(bVar4.f17602c);
                    if (aVar4.compareTo(aVar5) > 0) {
                        aVar4 = aVar5;
                    }
                    vVar3.f14794h = aVar4.f19482h;
                    c0310a2 = c0310a6;
                    aVar2 = aVar11;
                    i12 = 1;
                    vVar = vVar3;
                    pVar2 = pVar3;
                    lVar2 = lVar4;
                    bVar2 = bVar4;
                    i10 = i22;
                    i14 = i19;
                    i15 = i21;
                } else {
                    i12 = i30;
                    bVar2 = bVar3;
                    vVar = vVar2;
                    int i312 = i17;
                    c0310a2 = c0310a;
                    lVar2 = lVar3;
                    i10 = i16;
                    aVar2 = aVar6;
                    pVar2 = pVar3;
                    i14 = i312;
                }
                i13 = i15 + 1;
                aVar = null;
                i11 = 2;
                if (i13 >= i14) {
                    throw new Exception(a0.d.b("runWithRetry failed after ", i10, " attempts"));
                }
                iIntValue = new Integer(i13).intValue();
                c0310a2.f17589h = bVar2;
                c0310a2.f17590i = lVar2;
                c0310a2.f17591j = pVar2;
                c0310a2.f17592k = vVar;
                c0310a2.f17593l = aVar;
                c0310a2.f17594m = i10;
                c0310a2.f17595n = i13;
                c0310a2.f17596o = i14;
                c0310a2.f17597p = iIntValue;
                c0310a2.f17599r = i12;
                objInvoke = lVar2.invoke(c0310a2);
                if (objInvoke == aVar2) {
                    return aVar2;
                }
            }
        }
        return objInvoke;
    }
}
