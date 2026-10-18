package a4;

import android.util.Pair;
import android.util.SparseArray;
import androidx.appcompat.widget.y0;
import java.io.IOException;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.Objects;
import java.util.UUID;
import m5.d0;
import m5.g0;
import m5.p;
import n3.i1;
import n3.s0;
import s3.q;
import s3.t;
import s3.u;
import s3.w;

/* JADX INFO: compiled from: FragmentedMp4Extractor.java */
/* JADX INFO: loaded from: classes.dex */
public final class e implements s3.h {
    public static final byte[] I;
    public static final s0 J;
    public int A;
    public int B;
    public int C;
    public boolean D;
    public s3.j E;
    public w[] F;
    public w[] G;
    public boolean H;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f247a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final l f248b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final List<s0> f249c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final SparseArray<b> f250d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final m5.w f251e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final m5.w f252f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final m5.w f253g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final byte[] f254h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final m5.w f255i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final d0 f256j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final h4.c f257k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final m5.w f258l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final ArrayDeque<a4.a.C0004a> f259m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final ArrayDeque<a> f260n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public final w f261o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public int f262p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public int f263q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public long f264r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public int f265s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public m5.w f266t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public long f267u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public int f268v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public long f269w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public long f270x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public long f271y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public b f272z;

    /* JADX INFO: compiled from: FragmentedMp4Extractor.java */
    public static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final long f273a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final boolean f274b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final int f275c;

        public a(long j10, boolean z10, int i10) {
            this.f273a = j10;
            this.f274b = z10;
            this.f275c = i10;
        }
    }

    /* JADX INFO: compiled from: FragmentedMp4Extractor.java */
    public static final class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final w f276a;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public o f279d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public c f280e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public int f281f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        public int f282g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public int f283h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public int f284i;

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        public boolean f287l;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final n f277b = new n();

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final m5.w f278c = new m5.w();

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public final m5.w f285j = new m5.w(1);

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public final m5.w f286k = new m5.w();

        public b(w wVar, o oVar, c cVar) {
            this.f276a = wVar;
            this.f279d = oVar;
            this.f280e = cVar;
            this.f279d = oVar;
            this.f280e = cVar;
            wVar.b(oVar.f365a.f337f);
            e();
        }

        public final long a() {
            return !this.f287l ? this.f279d.f367c[this.f281f] : this.f277b.f353f[this.f283h];
        }

        public final m b() {
            if (!this.f287l) {
                return null;
            }
            n nVar = this.f277b;
            c cVar = nVar.f348a;
            int i10 = g0.f10384a;
            int i11 = cVar.f242a;
            m mVarA = nVar.f360m;
            if (mVarA == null) {
                mVarA = this.f279d.f365a.a(i11);
            }
            if (mVarA == null || !mVarA.f343a) {
                return null;
            }
            return mVarA;
        }

        public final boolean c() {
            this.f281f++;
            if (!this.f287l) {
                return false;
            }
            int i10 = this.f282g + 1;
            this.f282g = i10;
            int[] iArr = this.f277b.f354g;
            int i11 = this.f283h;
            if (i10 != iArr[i11]) {
                return true;
            }
            this.f283h = i11 + 1;
            this.f282g = 0;
            return false;
        }

        public final int d(int i10, int i11) {
            m5.w wVar;
            m mVarB = b();
            if (mVarB == null) {
                return 0;
            }
            int length = mVarB.f346d;
            if (length != 0) {
                wVar = this.f277b.f361n;
            } else {
                byte[] bArr = mVarB.f347e;
                int i12 = g0.f10384a;
                this.f286k.B(bArr, bArr.length);
                m5.w wVar2 = this.f286k;
                length = bArr.length;
                wVar = wVar2;
            }
            n nVar = this.f277b;
            boolean z10 = nVar.f358k && nVar.f359l[this.f281f];
            boolean z11 = z10 || i11 != 0;
            m5.w wVar3 = this.f285j;
            wVar3.f10475a[0] = (byte) ((z11 ? 128 : 0) | length);
            wVar3.D(0);
            this.f276a.a(this.f285j, 1);
            this.f276a.a(wVar, length);
            if (!z11) {
                return length + 1;
            }
            if (!z10) {
                this.f278c.A(8);
                m5.w wVar4 = this.f278c;
                byte[] bArr2 = wVar4.f10475a;
                bArr2[0] = 0;
                bArr2[1] = 1;
                bArr2[2] = (byte) ((i11 >> 8) & 255);
                bArr2[3] = (byte) (i11 & 255);
                bArr2[4] = (byte) ((i10 >> 24) & 255);
                bArr2[5] = (byte) ((i10 >> 16) & 255);
                bArr2[6] = (byte) ((i10 >> 8) & 255);
                bArr2[7] = (byte) (i10 & 255);
                this.f276a.a(wVar4, 8);
                return length + 1 + 8;
            }
            m5.w wVar5 = this.f277b.f361n;
            int iY = wVar5.y();
            wVar5.E(-2);
            int i13 = (iY * 6) + 2;
            if (i11 != 0) {
                this.f278c.A(i13);
                byte[] bArr3 = this.f278c.f10475a;
                wVar5.d(bArr3, 0, i13);
                int i14 = (((bArr3[2] & 255) << 8) | (bArr3[3] & 255)) + i11;
                bArr3[2] = (byte) ((i14 >> 8) & 255);
                bArr3[3] = (byte) (i14 & 255);
                wVar5 = this.f278c;
            }
            this.f276a.a(wVar5, i13);
            return length + 1 + i13;
        }

        public final void e() {
            n nVar = this.f277b;
            nVar.f351d = 0;
            nVar.f363p = 0L;
            nVar.f364q = false;
            nVar.f358k = false;
            nVar.f362o = false;
            nVar.f360m = null;
            this.f281f = 0;
            this.f283h = 0;
            this.f282g = 0;
            this.f284i = 0;
            this.f287l = false;
        }
    }

    static {
        y0.m mVar = y0.m.f18250e;
        I = new byte[]{-94, 57, 79, 82, 90, -101, 79, 20, -94, 68, 108, 66, 124, 100, -115, -12};
        s0.a aVar = new s0.a();
        aVar.f11705k = "application/x-emsg";
        J = aVar.a();
    }

    public e(int i10, d0 d0Var, l lVar, List<s0> list) {
        this(i10, d0Var, lVar, list, null);
    }

    public static int c(int i10) throws i1 {
        if (i10 >= 0) {
            return i10;
        }
        throw i1.a("Unexpected negative value: " + i10, null);
    }

    public static r3.d h(List<a4.a.b> list) {
        int size = list.size();
        ArrayList arrayList = null;
        for (int i10 = 0; i10 < size; i10++) {
            a4.a.b bVar = list.get(i10);
            if (bVar.f211a == 1886614376) {
                if (arrayList == null) {
                    arrayList = new ArrayList();
                }
                byte[] bArr = bVar.f215b.f10475a;
                i.a aVarB = i.b(bArr);
                UUID uuid = aVarB == null ? null : aVarB.f321a;
                if (uuid == null) {
                    p.g("FragmentedMp4Extractor", "Skipped pssh atom (failed to extract uuid)");
                } else {
                    arrayList.add(new r3.d.b(uuid, null, "video/mp4", bArr));
                }
            }
        }
        if (arrayList == null) {
            return null;
        }
        return new r3.d(null, false, (r3.d.b[]) arrayList.toArray(new r3.d.b[0]));
    }

    public static void i(m5.w wVar, int i10, n nVar) throws i1 {
        wVar.D(i10 + 8);
        int iE = wVar.e() & 16777215;
        if ((iE & 1) != 0) {
            throw i1.c("Overriding TrackEncryptionBox parameters is unsupported.");
        }
        boolean z10 = (iE & 2) != 0;
        int iW = wVar.w();
        if (iW == 0) {
            Arrays.fill(nVar.f359l, 0, nVar.f352e, false);
            return;
        }
        if (iW != nVar.f352e) {
            StringBuilder sbC = y0.c("Senc sample count ", iW, " is different from fragment sample count");
            sbC.append(nVar.f352e);
            throw i1.a(sbC.toString(), null);
        }
        Arrays.fill(nVar.f359l, 0, iW, z10);
        nVar.f361n.A(wVar.f10477c - wVar.f10476b);
        nVar.f358k = true;
        nVar.f362o = true;
        m5.w wVar2 = nVar.f361n;
        wVar.d(wVar2.f10475a, 0, wVar2.f10477c);
        nVar.f361n.D(0);
        nVar.f362o = false;
    }

    @Override // s3.h
    public final void a() {
    }

    @Override // s3.h
    public final void b(long j10, long j11) {
        int size = this.f250d.size();
        for (int i10 = 0; i10 < size; i10++) {
            this.f250d.valueAt(i10).e();
        }
        this.f260n.clear();
        this.f268v = 0;
        this.f269w = j11;
        this.f259m.clear();
        d();
    }

    public final void d() {
        this.f262p = 0;
        this.f265s = 0;
    }

    /* JADX WARN: Code duplicated, block: B:103:0x01eb  */
    /* JADX WARN: Code duplicated, block: B:105:0x01ef  */
    /* JADX WARN: Code duplicated, block: B:106:0x022b  */
    /* JADX WARN: Code duplicated, block: B:109:0x023f A[LOOP:10: B:109:0x023f->B:111:0x0245, LOOP_START] */
    /* JADX WARN: Code duplicated, block: B:111:0x0245 A[LOOP:10: B:109:0x023f->B:111:0x0245, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:114:0x0255  */
    /* JADX WARN: Code duplicated, block: B:115:0x025e  */
    /* JADX WARN: Code duplicated, block: B:117:0x0268  */
    /* JADX WARN: Code duplicated, block: B:118:0x026a  */
    /* JADX WARN: Code duplicated, block: B:121:0x0271  */
    /* JADX WARN: Code duplicated, block: B:124:0x027b  */
    /* JADX WARN: Code duplicated, block: B:125:0x027e  */
    /* JADX WARN: Code duplicated, block: B:129:0x0290  */
    /* JADX WARN: Code duplicated, block: B:131:0x02a5  */
    /* JADX WARN: Code duplicated, block: B:134:0x02aa  */
    /* JADX WARN: Code duplicated, block: B:137:0x02b5  */
    /* JADX WARN: Code duplicated, block: B:140:0x02d7  */
    /* JADX WARN: Code duplicated, block: B:219:0x0596  */
    /* JADX WARN: Code duplicated, block: B:220:0x05ad  */
    /* JADX WARN: Code duplicated, block: B:222:0x05b3  */
    /* JADX WARN: Code duplicated, block: B:229:0x05d3  */
    /* JADX WARN: Code duplicated, block: B:232:0x05e7  */
    /* JADX WARN: Code duplicated, block: B:240:0x0612  */
    /* JADX WARN: Code duplicated, block: B:242:0x061b A[LOOP:1: B:241:0x0619->B:242:0x061b, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:245:0x0633  */
    /* JADX WARN: Code duplicated, block: B:246:0x0641  */
    /* JADX WARN: Code duplicated, block: B:265:0x066e  */
    /* JADX WARN: Code duplicated, block: B:267:0x0671  */
    /* JADX WARN: Code duplicated, block: B:269:0x0690  */
    /* JADX WARN: Code duplicated, block: B:270:0x0694  */
    /* JADX WARN: Code duplicated, block: B:273:0x069b  */
    /* JADX WARN: Code duplicated, block: B:329:0x0724  */
    /* JADX WARN: Code duplicated, block: B:332:0x072a  */
    /* JADX WARN: Code duplicated, block: B:334:0x0730  */
    /* JADX WARN: Code duplicated, block: B:336:0x0736  */
    /* JADX WARN: Code duplicated, block: B:341:0x075b  */
    /* JADX WARN: Code duplicated, block: B:343:0x0761  */
    /* JADX WARN: Code duplicated, block: B:355:0x01e3 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:364:0x0754 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:365:0x074d A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:366:0x076d A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:368:0x0774 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:37:0x0093  */
    /* JADX WARN: Code duplicated, block: B:395:0x0251 A[EDGE_INSN: B:395:0x0251->B:112:0x0251 BREAK  A[LOOP:10: B:109:0x023f->B:111:0x0245], SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:39:0x0097  */
    /* JADX WARN: Code duplicated, block: B:40:0x00a0  */
    /* JADX WARN: Code duplicated, block: B:43:0x00b0  */
    /* JADX WARN: Code duplicated, block: B:46:0x00ba  */
    /* JADX WARN: Code duplicated, block: B:48:0x00c2  */
    /* JADX WARN: Code duplicated, block: B:54:0x00d5  */
    /* JADX WARN: Code duplicated, block: B:56:0x00d8  */
    /* JADX WARN: Code duplicated, block: B:59:0x00e6  */
    /* JADX WARN: Code duplicated, block: B:61:0x00ec  */
    /* JADX WARN: Code duplicated, block: B:63:0x00f4  */
    /* JADX WARN: Code duplicated, block: B:66:0x010d  */
    /* JADX WARN: Code duplicated, block: B:67:0x012b  */
    /* JADX WARN: Code duplicated, block: B:69:0x0141  */
    /* JADX WARN: Code duplicated, block: B:71:0x014b  */
    /* JADX WARN: Code duplicated, block: B:72:0x0152  */
    /* JADX WARN: Code duplicated, block: B:75:0x015e  */
    /* JADX WARN: Code duplicated, block: B:78:0x0167  */
    /* JADX WARN: Code duplicated, block: B:81:0x017d  */
    /* JADX WARN: Code duplicated, block: B:83:0x0183  */
    /* JADX WARN: Code duplicated, block: B:85:0x0194  */
    /* JADX WARN: Code duplicated, block: B:87:0x01ad  */
    /* JADX WARN: Code duplicated, block: B:89:0x01bd  */
    /* JADX WARN: Code duplicated, block: B:91:0x01c1  */
    /* JADX WARN: Code duplicated, block: B:99:0x01d4  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r3v90, types: [java.util.ArrayList, java.util.List<a4.a$b>] */
    /* JADX WARN: Type inference failed for: r4v27 */
    /* JADX WARN: Type inference failed for: r4v30 */
    /* JADX WARN: Type inference failed for: r4v31 */
    /* JADX WARN: Type inference failed for: r5v15 */
    /* JADX WARN: Type inference failed for: r7v0 */
    /* JADX WARN: Type inference failed for: r7v1 */
    /* JADX WARN: Type inference failed for: r7v10 */
    /* JADX WARN: Type inference failed for: r7v11, types: [boolean] */
    /* JADX WARN: Type inference failed for: r7v12 */
    /* JADX WARN: Type inference failed for: r7v13 */
    /* JADX WARN: Type inference failed for: r7v3 */
    /* JADX WARN: Type inference failed for: r7v36 */
    /* JADX WARN: Type inference failed for: r7v39 */
    /* JADX WARN: Type inference failed for: r7v9 */
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
    @Override // s3.h
    public final int e(s3.i iVar, t tVar) throws IOException {
        char c10;
        o oVar;
        l lVar;
        w wVar;
        long jA;
        d0 d0Var;
        long j10;
        int i10;
        int i11;
        int i12;
        int i13;
        m mVarB;
        w.a aVar;
        a aVarRemoveFirst;
        long jA2;
        d0 d0Var2;
        w[] wVarArr;
        int length;
        int i14;
        byte[] bArr;
        int i15;
        int i16;
        int i17;
        int iD;
        int iE;
        String str;
        byte b10;
        int i18;
        int i19;
        m mVarB2;
        m5.w wVar2;
        int i20;
        n nVar;
        boolean z10;
        long jR;
        String str2;
        String str3;
        long jR2;
        long jU;
        long jA3;
        long jX;
        long jX2;
        long j11;
        long jA4;
        long jU2;
        int i21;
        int i22;
        boolean z11;
        boolean z12;
        boolean z13;
        long j12;
        boolean z14;
        long jU3;
        int size;
        int i23;
        s3.i iVar2 = iVar;
        while (true) {
            int i24 = this.f262p;
            ?? r10 = 1;
            ?? r11 = 1;
            if (i24 == 0) {
                if (this.f265s == 0) {
                    z14 = false;
                    if (iVar2.e(this.f258l.f10475a, 0, 8, true)) {
                        this.f265s = 8;
                        this.f258l.D(0);
                        this.f264r = this.f258l.u();
                        this.f263q = this.f258l.e();
                        j11 = this.f264r;
                        if (j11 == 1) {
                            iVar2.readFully(this.f258l.f10475a, 8, 8);
                            this.f265s += 8;
                            this.f264r = this.f258l.x();
                        } else if (j11 == 0) {
                            jA4 = iVar.a();
                            if (jA4 == -1 && !this.f259m.isEmpty()) {
                                jA4 = this.f259m.peek().f212b;
                            }
                            if (jA4 != -1) {
                                this.f264r = (jA4 - iVar.u()) + ((long) this.f265s);
                            }
                        }
                        if (this.f264r >= this.f265s) {
                            throw i1.c("Atom size less than header length (unsupported).");
                        }
                        jU2 = iVar.u() - ((long) this.f265s);
                        i21 = this.f263q;
                        if ((i21 != 1836019558 || i21 == 1835295092) && !this.H) {
                            this.E.j(new u.b(this.f270x, jU2));
                            this.H = true;
                        }
                        if (this.f263q == 1836019558) {
                            size = this.f250d.size();
                            for (i23 = 0; i23 < size; i23++) {
                                n nVar2 = this.f250d.valueAt(i23).f277b;
                                Objects.requireNonNull(nVar2);
                                nVar2.f350c = jU2;
                                nVar2.f349b = jU2;
                            }
                        }
                        i22 = this.f263q;
                        if (i22 == 1835295092) {
                            this.f272z = null;
                            this.f267u = jU2 + this.f264r;
                            this.f262p = 2;
                            z14 = true;
                        } else {
                            if (i22 != 1836019574 || i22 == 1953653099 || i22 == 1835297121 || i22 == 1835626086 || i22 == 1937007212 || i22 == 1836019558 || i22 == 1953653094 || i22 == 1836475768 || i22 == 1701082227) {
                                z11 = true;
                            } else {
                                z11 = false;
                            }
                            if (z11) {
                                jU3 = (iVar.u() + this.f264r) - 8;
                                this.f259m.push(new a4.a.C0004a(this.f263q, jU3));
                                if (this.f264r == this.f265s) {
                                    k(jU3);
                                } else {
                                    d();
                                }
                                z13 = true;
                            } else {
                                if (i22 != 1751411826 || i22 == 1835296868 || i22 == 1836476516 || i22 == 1936286840 || i22 == 1937011556 || i22 == 1937011827 || i22 == 1668576371 || i22 == 1937011555 || i22 == 1937011578 || i22 == 1937013298 || i22 == 1937007471 || i22 == 1668232756 || i22 == 1937011571 || i22 == 1952867444 || i22 == 1952868452 || i22 == 1953196132 || i22 == 1953654136 || i22 == 1953658222 || i22 == 1886614376 || i22 == 1935763834 || i22 == 1935763823 || i22 == 1936027235 || i22 == 1970628964 || i22 == 1935828848 || i22 == 1936158820 || i22 == 1701606260 || i22 == 1835362404 || i22 == 1701671783) {
                                    z12 = true;
                                } else {
                                    z12 = false;
                                }
                                if (z12) {
                                    if (this.f265s == 8) {
                                        throw i1.c("Leaf atom defines extended atom size (unsupported).");
                                    }
                                    j12 = this.f264r;
                                    if (j12 <= 2147483647L) {
                                        throw i1.c("Leaf atom with length > 2147483647 (unsupported).");
                                    }
                                    m5.w wVar3 = new m5.w((int) j12);
                                    System.arraycopy(this.f258l.f10475a, 0, wVar3.f10475a, 0, 8);
                                    this.f266t = wVar3;
                                    z13 = true;
                                    this.f262p = 1;
                                } else {
                                    if (this.f264r <= 2147483647L) {
                                        throw i1.c("Skipping atom with length > 2147483647 (unsupported).");
                                    }
                                    this.f266t = null;
                                    z13 = true;
                                    this.f262p = 1;
                                }
                            }
                            z14 = z13;
                        }
                    }
                } else {
                    j11 = this.f264r;
                    if (j11 == 1) {
                        iVar2.readFully(this.f258l.f10475a, 8, 8);
                        this.f265s += 8;
                        this.f264r = this.f258l.x();
                    } else if (j11 == 0) {
                        jA4 = iVar.a();
                        if (jA4 == -1) {
                            jA4 = this.f259m.peek().f212b;
                        }
                        if (jA4 != -1) {
                            this.f264r = (jA4 - iVar.u()) + ((long) this.f265s);
                        }
                    }
                    if (this.f264r >= this.f265s) {
                        throw i1.c("Atom size less than header length (unsupported).");
                    }
                    jU2 = iVar.u() - ((long) this.f265s);
                    i21 = this.f263q;
                    if (i21 != 1836019558) {
                        this.E.j(new u.b(this.f270x, jU2));
                        this.H = true;
                    } else {
                        this.E.j(new u.b(this.f270x, jU2));
                        this.H = true;
                    }
                    if (this.f263q == 1836019558) {
                        size = this.f250d.size();
                        while (i23 < size) {
                            n nVar3 = this.f250d.valueAt(i23).f277b;
                            Objects.requireNonNull(nVar3);
                            nVar3.f350c = jU2;
                            nVar3.f349b = jU2;
                        }
                    }
                    i22 = this.f263q;
                    if (i22 == 1835295092) {
                        this.f272z = null;
                        this.f267u = jU2 + this.f264r;
                        this.f262p = 2;
                        z14 = true;
                    } else {
                        if (i22 != 1836019574) {
                            z11 = true;
                        } else {
                            z11 = true;
                        }
                        if (z11) {
                            jU3 = (iVar.u() + this.f264r) - 8;
                            this.f259m.push(new a4.a.C0004a(this.f263q, jU3));
                            if (this.f264r == this.f265s) {
                                k(jU3);
                            } else {
                                d();
                            }
                            z13 = true;
                        } else {
                            if (i22 != 1751411826) {
                                z12 = true;
                            } else {
                                z12 = true;
                            }
                            if (z12) {
                                if (this.f265s == 8) {
                                    throw i1.c("Leaf atom defines extended atom size (unsupported).");
                                }
                                j12 = this.f264r;
                                if (j12 <= 2147483647L) {
                                    throw i1.c("Leaf atom with length > 2147483647 (unsupported).");
                                }
                                m5.w wVar4 = new m5.w((int) j12);
                                System.arraycopy(this.f258l.f10475a, 0, wVar4.f10475a, 0, 8);
                                this.f266t = wVar4;
                                z13 = true;
                                this.f262p = 1;
                            } else {
                                if (this.f264r <= 2147483647L) {
                                    throw i1.c("Skipping atom with length > 2147483647 (unsupported).");
                                }
                                this.f266t = null;
                                z13 = true;
                                this.f262p = 1;
                            }
                        }
                        z14 = z13;
                    }
                }
                if (!z14) {
                    return -1;
                }
            } else if (i24 == 1) {
                int i25 = ((int) this.f264r) - this.f265s;
                m5.w wVar5 = this.f266t;
                if (wVar5 != null) {
                    iVar2.readFully(wVar5.f10475a, 8, i25);
                    int i26 = this.f263q;
                    a4.a.b bVar = new a4.a.b(i26, wVar5);
                    long jU4 = iVar.u();
                    if (this.f259m.isEmpty()) {
                        if (i26 == 1936286840) {
                            wVar5.D(8);
                            int iE2 = (wVar5.e() >> 24) & 255;
                            wVar5.E(4);
                            long jU5 = wVar5.u();
                            if (iE2 == 0) {
                                jX = wVar5.u();
                                jX2 = wVar5.u();
                            } else {
                                jX = wVar5.x();
                                jX2 = wVar5.x();
                            }
                            long j13 = jX2 + jU4;
                            long jR3 = g0.R(jX, 1000000L, jU5);
                            wVar5.E(2);
                            int iY = wVar5.y();
                            int[] iArr = new int[iY];
                            long[] jArr = new long[iY];
                            long[] jArr2 = new long[iY];
                            long[] jArr3 = new long[iY];
                            int i27 = 0;
                            long jR4 = jR3;
                            while (i27 < iY) {
                                int iE3 = wVar5.e();
                                if ((iE3 & Integer.MIN_VALUE) != 0) {
                                    throw i1.a("Unhandled indirect reference", null);
                                }
                                long jU6 = wVar5.u();
                                iArr[i27] = iE3 & Integer.MAX_VALUE;
                                jArr[i27] = j13;
                                jArr3[i27] = jR4;
                                long j14 = jX + jU6;
                                int i28 = iY;
                                long[] jArr4 = jArr3;
                                int i29 = i27;
                                long[] jArr5 = jArr2;
                                jR4 = g0.R(j14, 1000000L, jU5);
                                jArr5[i29] = jR4 - jArr4[i29];
                                wVar5.E(4);
                                j13 += (long) iArr[i29];
                                i27 = i29 + 1;
                                jArr3 = jArr4;
                                jArr2 = jArr5;
                                jX = j14;
                                iY = i28;
                            }
                            Pair pairCreate = Pair.create(Long.valueOf(jR3), new s3.c(iArr, jArr, jArr2, jArr3));
                            this.f271y = ((Long) pairCreate.first).longValue();
                            this.E.j((u) pairCreate.second);
                            this.H = true;
                        } else if (i26 == 1701671783 && this.F.length != 0) {
                            wVar5.D(8);
                            int iE4 = (wVar5.e() >> 24) & 255;
                            if (iE4 == 0) {
                                String strN = wVar5.n();
                                Objects.requireNonNull(strN);
                                String strN2 = wVar5.n();
                                Objects.requireNonNull(strN2);
                                long jU7 = wVar5.u();
                                jR = g0.R(wVar5.u(), 1000000L, jU7);
                                long j15 = this.f271y;
                                long j16 = j15 != -9223372036854775807L ? j15 + jR : -9223372036854775807L;
                                str2 = strN;
                                str3 = strN2;
                                jR2 = g0.R(wVar5.u(), 1000L, jU7);
                                jU = wVar5.u();
                                jA3 = j16;
                            } else if (iE4 != 1) {
                                da.c.b("Skipping unsupported emsg version: ", iE4, "FragmentedMp4Extractor");
                            } else {
                                long jU8 = wVar5.u();
                                long jR5 = g0.R(wVar5.x(), 1000000L, jU8);
                                long jR6 = g0.R(wVar5.u(), 1000L, jU8);
                                long jU9 = wVar5.u();
                                String strN3 = wVar5.n();
                                Objects.requireNonNull(strN3);
                                String strN4 = wVar5.n();
                                Objects.requireNonNull(strN4);
                                str2 = strN3;
                                str3 = strN4;
                                jR2 = jR6;
                                jU = jU9;
                                jA3 = jR5;
                                jR = -9223372036854775807L;
                            }
                            int i30 = wVar5.f10477c - wVar5.f10476b;
                            byte[] bArr2 = new byte[i30];
                            wVar5.d(bArr2, 0, i30);
                            m5.w wVar6 = new m5.w(this.f257k.a(new h4.a(str2, str3, jR2, jU, bArr2)));
                            int i31 = wVar6.f10477c - wVar6.f10476b;
                            for (w wVar7 : this.F) {
                                wVar6.D(0);
                                wVar7.f(wVar6, i31);
                            }
                            if (jA3 == -9223372036854775807L) {
                                this.f260n.addLast(new a(jR, true, i31));
                                this.f268v += i31;
                            } else if (this.f260n.isEmpty()) {
                                d0 d0Var3 = this.f256j;
                                if (d0Var3 != null) {
                                    jA3 = d0Var3.a(jA3);
                                }
                                for (w wVar8 : this.F) {
                                    wVar8.c(jA3, 1, i31, 0, null);
                                }
                            } else {
                                this.f260n.addLast(new a(jA3, false, i31));
                                this.f268v += i31;
                            }
                        }
                        iVar2 = iVar;
                    } else {
                        this.f259m.peek().f213c.add(bVar);
                    }
                } else {
                    iVar2.k(i25);
                }
                k(iVar.u());
            } else if (i24 != 2) {
                b bVar2 = this.f272z;
                if (bVar2 == null) {
                    SparseArray<b> sparseArray = this.f250d;
                    int size2 = sparseArray.size();
                    b bVar3 = null;
                    long j17 = Long.MAX_VALUE;
                    for (int i32 = 0; i32 < size2; i32++) {
                        b bVarValueAt = sparseArray.valueAt(i32);
                        boolean z15 = bVarValueAt.f287l;
                        if ((z15 || bVarValueAt.f281f != bVarValueAt.f279d.f366b) && (!z15 || bVarValueAt.f283h != bVarValueAt.f277b.f351d)) {
                            long jA5 = bVarValueAt.a();
                            if (jA5 < j17) {
                                bVar3 = bVarValueAt;
                                j17 = jA5;
                            }
                        }
                    }
                    if (bVar3 == null) {
                        int iU = (int) (this.f267u - iVar.u());
                        if (iU < 0) {
                            throw i1.a("Offset to end of mdat was negative.", null);
                        }
                        iVar2.k(iU);
                        d();
                        r11 = 0;
                    } else {
                        int iA = (int) (bVar3.a() - iVar.u());
                        if (iA < 0) {
                            p.g("FragmentedMp4Extractor", "Ignoring negative offset to sample data.");
                            iA = 0;
                        }
                        iVar2.k(iA);
                        this.f272z = bVar3;
                        bVar2 = bVar3;
                        c10 = 6;
                        if (this.f262p != 3) {
                            oVar = bVar2.f279d;
                            lVar = oVar.f365a;
                            wVar = bVar2.f276a;
                            if (bVar2.f287l) {
                                jA = bVar2.f277b.f356i[bVar2.f281f];
                            } else {
                                jA = oVar.f370f[bVar2.f281f];
                            }
                            d0Var = this.f256j;
                            if (d0Var != null) {
                                jA = d0Var.a(jA);
                            }
                            j10 = jA;
                            i10 = lVar.f341j;
                            if (i10 != 0) {
                                while (true) {
                                    i11 = this.B;
                                    i12 = this.A;
                                    if (i11 < i12) {
                                        break;
                                    }
                                    this.B += wVar.d(iVar2, i12 - i11, false);
                                }
                            } else {
                                bArr = this.f252f.f10475a;
                                bArr[0] = 0;
                                bArr[1] = 0;
                                bArr[2] = 0;
                                i15 = i10 + 1;
                                i16 = 4 - i10;
                                while (this.B < this.A) {
                                    i17 = this.C;
                                    if (i17 == 0) {
                                        iVar2.readFully(bArr, i16, i15);
                                        this.f252f.D(0);
                                        iE = this.f252f.e();
                                        if (iE >= r10) {
                                            throw i1.a("Invalid NAL length", null);
                                        }
                                        this.C = iE - 1;
                                        this.f251e.D(0);
                                        wVar.f(this.f251e, 4);
                                        wVar.f(this.f252f, r10 == true ? 1 : 0);
                                        if (this.G.length > 0) {
                                            str = lVar.f337f.f11687s;
                                            b10 = bArr[4];
                                            byte[] bArr3 = m5.t.f10435a;
                                            if (((("video/avc".equals(str) || (b10 & 31) != c10) && !("video/hevc".equals(str) && ((b10 & 126) >> (r10 == true ? 1 : 0)) == 39)) ? 0 : r10 == true ? 1 : 0) == 0) {
                                                r10 = 0;
                                            }
                                        } else {
                                            r10 = 0;
                                        }
                                        this.D = r10;
                                        this.B += 5;
                                        this.A += i16;
                                    } else {
                                        if (this.D) {
                                            this.f253g.A(i17);
                                            iVar2.readFully(this.f253g.f10475a, 0, this.C);
                                            wVar.f(this.f253g, this.C);
                                            iD = this.C;
                                            m5.w wVar9 = this.f253g;
                                            int iF = m5.t.f(wVar9.f10475a, wVar9.f10477c);
                                            this.f253g.D("video/hevc".equals(lVar.f337f.f11687s) ? 1 : 0);
                                            this.f253g.C(iF);
                                            s3.b.a(j10, this.f253g, this.G);
                                        } else {
                                            iD = wVar.d(iVar2, i17, false);
                                        }
                                        this.B += iD;
                                        this.C -= iD;
                                    }
                                    c10 = 6;
                                    r10 = 1;
                                }
                            }
                            if (!bVar2.f287l) {
                                i13 = bVar2.f279d.f371g[bVar2.f281f];
                            } else if (bVar2.f277b.f357j[bVar2.f281f]) {
                                i13 = 1;
                            } else {
                                i13 = 0;
                            }
                            if (bVar2.b() != null) {
                                i13 |= 1073741824;
                            }
                            int i33 = i13;
                            mVarB = bVar2.b();
                            if (mVarB != null) {
                                aVar = mVarB.f345c;
                            } else {
                                aVar = null;
                            }
                            wVar.c(j10, i33, this.A, 0, aVar);
                            while (!this.f260n.isEmpty()) {
                                aVarRemoveFirst = this.f260n.removeFirst();
                                this.f268v -= aVarRemoveFirst.f275c;
                                jA2 = aVarRemoveFirst.f273a;
                                if (aVarRemoveFirst.f274b) {
                                    jA2 += j10;
                                }
                                d0Var2 = this.f256j;
                                if (d0Var2 != null) {
                                    jA2 = d0Var2.a(jA2);
                                }
                                wVarArr = this.F;
                                i14 = 0;
                                for (length = wVarArr.length; i14 < length; length = length) {
                                    wVarArr[i14].c(jA2, 1, aVarRemoveFirst.f275c, this.f268v, null);
                                    i14++;
                                }
                            }
                            if (!bVar2.c()) {
                                this.f272z = null;
                            }
                            this.f262p = 3;
                            r11 = 1;
                        } else {
                            if (bVar2.f287l) {
                                i18 = bVar2.f277b.f355h[bVar2.f281f];
                            } else {
                                i18 = bVar2.f279d.f368d[bVar2.f281f];
                            }
                            this.A = i18;
                            if (bVar2.f281f < bVar2.f284i) {
                                iVar2.k(i18);
                                mVarB2 = bVar2.b();
                                if (mVarB2 != null) {
                                    wVar2 = bVar2.f277b.f361n;
                                    i20 = mVarB2.f346d;
                                    if (i20 != 0) {
                                        wVar2.E(i20);
                                    }
                                    nVar = bVar2.f277b;
                                    int i34 = bVar2.f281f;
                                    if (nVar.f358k || !nVar.f359l[i34]) {
                                        z10 = false;
                                    } else {
                                        z10 = true;
                                    }
                                    if (z10) {
                                        wVar2.E(wVar2.y() * 6);
                                    }
                                }
                                if (!bVar2.c()) {
                                    this.f272z = null;
                                }
                                this.f262p = 3;
                            } else {
                                if (bVar2.f279d.f365a.f338g == 1) {
                                    this.A = i18 - 8;
                                    iVar2.k(8);
                                }
                                if ("audio/ac4".equals(bVar2.f279d.f365a.f337f.f11687s)) {
                                    this.B = bVar2.d(this.A, 7);
                                    p3.c.a(this.A, this.f255i);
                                    bVar2.f276a.f(this.f255i, 7);
                                    this.B += 7;
                                    i19 = 0;
                                } else {
                                    this.B = bVar2.d(this.A, 0);
                                    i19 = 0;
                                }
                                this.A += this.B;
                                this.f262p = 4;
                                this.C = i19;
                                oVar = bVar2.f279d;
                                lVar = oVar.f365a;
                                wVar = bVar2.f276a;
                                if (bVar2.f287l) {
                                    jA = oVar.f370f[bVar2.f281f];
                                } else {
                                    jA = bVar2.f277b.f356i[bVar2.f281f];
                                }
                                d0Var = this.f256j;
                                if (d0Var != null) {
                                    jA = d0Var.a(jA);
                                }
                                j10 = jA;
                                i10 = lVar.f341j;
                                if (i10 != 0) {
                                    while (true) {
                                        i11 = this.B;
                                        i12 = this.A;
                                        if (i11 < i12) {
                                            break;
                                            break;
                                        }
                                        this.B += wVar.d(iVar2, i12 - i11, false);
                                    }
                                } else {
                                    bArr = this.f252f.f10475a;
                                    bArr[0] = 0;
                                    bArr[1] = 0;
                                    bArr[2] = 0;
                                    i15 = i10 + 1;
                                    i16 = 4 - i10;
                                    while (this.B < this.A) {
                                        i17 = this.C;
                                        if (i17 == 0) {
                                            iVar2.readFully(bArr, i16, i15);
                                            this.f252f.D(0);
                                            iE = this.f252f.e();
                                            if (iE >= r10) {
                                                throw i1.a("Invalid NAL length", null);
                                            }
                                            this.C = iE - 1;
                                            this.f251e.D(0);
                                            wVar.f(this.f251e, 4);
                                            wVar.f(this.f252f, r10 == true ? 1 : 0);
                                            if (this.G.length > 0) {
                                                str = lVar.f337f.f11687s;
                                                b10 = bArr[4];
                                                byte[] bArr4 = m5.t.f10435a;
                                                if (((("video/avc".equals(str) || (b10 & 31) != c10) && !("video/hevc".equals(str) && ((b10 & 126) >> (r10 == true ? 1 : 0)) == 39)) ? 0 : r10 == true ? 1 : 0) == 0) {
                                                    r10 = 0;
                                                }
                                            } else {
                                                r10 = 0;
                                            }
                                            this.D = r10;
                                            this.B += 5;
                                            this.A += i16;
                                        } else {
                                            if (this.D) {
                                                this.f253g.A(i17);
                                                iVar2.readFully(this.f253g.f10475a, 0, this.C);
                                                wVar.f(this.f253g, this.C);
                                                iD = this.C;
                                                m5.w wVar10 = this.f253g;
                                                int iF2 = m5.t.f(wVar10.f10475a, wVar10.f10477c);
                                                this.f253g.D("video/hevc".equals(lVar.f337f.f11687s) ? 1 : 0);
                                                this.f253g.C(iF2);
                                                s3.b.a(j10, this.f253g, this.G);
                                            } else {
                                                iD = wVar.d(iVar2, i17, false);
                                            }
                                            this.B += iD;
                                            this.C -= iD;
                                        }
                                        c10 = 6;
                                        r10 = 1;
                                    }
                                }
                                if (!bVar2.f287l) {
                                    i13 = bVar2.f279d.f371g[bVar2.f281f];
                                } else if (bVar2.f277b.f357j[bVar2.f281f]) {
                                    i13 = 1;
                                } else {
                                    i13 = 0;
                                }
                                if (bVar2.b() != null) {
                                    i13 |= 1073741824;
                                }
                                int i35 = i13;
                                mVarB = bVar2.b();
                                if (mVarB != null) {
                                    aVar = mVarB.f345c;
                                } else {
                                    aVar = null;
                                }
                                wVar.c(j10, i35, this.A, 0, aVar);
                                while (!this.f260n.isEmpty()) {
                                    aVarRemoveFirst = this.f260n.removeFirst();
                                    this.f268v -= aVarRemoveFirst.f275c;
                                    jA2 = aVarRemoveFirst.f273a;
                                    if (aVarRemoveFirst.f274b) {
                                        jA2 += j10;
                                    }
                                    d0Var2 = this.f256j;
                                    if (d0Var2 != null) {
                                        jA2 = d0Var2.a(jA2);
                                    }
                                    wVarArr = this.F;
                                    i14 = 0;
                                    while (i14 < length) {
                                        wVarArr[i14].c(jA2, 1, aVarRemoveFirst.f275c, this.f268v, null);
                                        i14++;
                                    }
                                }
                                if (!bVar2.c()) {
                                    this.f272z = null;
                                }
                                this.f262p = 3;
                                r11 = 1;
                            }
                        }
                    }
                } else {
                    c10 = 6;
                    if (this.f262p != 3) {
                        oVar = bVar2.f279d;
                        lVar = oVar.f365a;
                        wVar = bVar2.f276a;
                        if (bVar2.f287l) {
                            jA = oVar.f370f[bVar2.f281f];
                        } else {
                            jA = bVar2.f277b.f356i[bVar2.f281f];
                        }
                        d0Var = this.f256j;
                        if (d0Var != null) {
                            jA = d0Var.a(jA);
                        }
                        j10 = jA;
                        i10 = lVar.f341j;
                        if (i10 != 0) {
                            while (true) {
                                i11 = this.B;
                                i12 = this.A;
                                if (i11 < i12) {
                                    break;
                                    break;
                                }
                                this.B += wVar.d(iVar2, i12 - i11, false);
                            }
                        } else {
                            bArr = this.f252f.f10475a;
                            bArr[0] = 0;
                            bArr[1] = 0;
                            bArr[2] = 0;
                            i15 = i10 + 1;
                            i16 = 4 - i10;
                            while (this.B < this.A) {
                                i17 = this.C;
                                if (i17 == 0) {
                                    iVar2.readFully(bArr, i16, i15);
                                    this.f252f.D(0);
                                    iE = this.f252f.e();
                                    if (iE >= r10) {
                                        throw i1.a("Invalid NAL length", null);
                                    }
                                    this.C = iE - 1;
                                    this.f251e.D(0);
                                    wVar.f(this.f251e, 4);
                                    wVar.f(this.f252f, r10 == true ? 1 : 0);
                                    if (this.G.length > 0) {
                                        str = lVar.f337f.f11687s;
                                        b10 = bArr[4];
                                        byte[] bArr5 = m5.t.f10435a;
                                        if (((("video/avc".equals(str) || (b10 & 31) != c10) && !("video/hevc".equals(str) && ((b10 & 126) >> (r10 == true ? 1 : 0)) == 39)) ? 0 : r10 == true ? 1 : 0) == 0) {
                                            r10 = 0;
                                        }
                                    } else {
                                        r10 = 0;
                                    }
                                    this.D = r10;
                                    this.B += 5;
                                    this.A += i16;
                                } else {
                                    if (this.D) {
                                        this.f253g.A(i17);
                                        iVar2.readFully(this.f253g.f10475a, 0, this.C);
                                        wVar.f(this.f253g, this.C);
                                        iD = this.C;
                                        m5.w wVar11 = this.f253g;
                                        int iF3 = m5.t.f(wVar11.f10475a, wVar11.f10477c);
                                        this.f253g.D("video/hevc".equals(lVar.f337f.f11687s) ? 1 : 0);
                                        this.f253g.C(iF3);
                                        s3.b.a(j10, this.f253g, this.G);
                                    } else {
                                        iD = wVar.d(iVar2, i17, false);
                                    }
                                    this.B += iD;
                                    this.C -= iD;
                                }
                                c10 = 6;
                                r10 = 1;
                            }
                        }
                        if (!bVar2.f287l) {
                            i13 = bVar2.f279d.f371g[bVar2.f281f];
                        } else if (bVar2.f277b.f357j[bVar2.f281f]) {
                            i13 = 1;
                        } else {
                            i13 = 0;
                        }
                        if (bVar2.b() != null) {
                            i13 |= 1073741824;
                        }
                        int i36 = i13;
                        mVarB = bVar2.b();
                        if (mVarB != null) {
                            aVar = mVarB.f345c;
                        } else {
                            aVar = null;
                        }
                        wVar.c(j10, i36, this.A, 0, aVar);
                        while (!this.f260n.isEmpty()) {
                            aVarRemoveFirst = this.f260n.removeFirst();
                            this.f268v -= aVarRemoveFirst.f275c;
                            jA2 = aVarRemoveFirst.f273a;
                            if (aVarRemoveFirst.f274b) {
                                jA2 += j10;
                            }
                            d0Var2 = this.f256j;
                            if (d0Var2 != null) {
                                jA2 = d0Var2.a(jA2);
                            }
                            wVarArr = this.F;
                            i14 = 0;
                            while (i14 < length) {
                                wVarArr[i14].c(jA2, 1, aVarRemoveFirst.f275c, this.f268v, null);
                                i14++;
                            }
                        }
                        if (!bVar2.c()) {
                            this.f272z = null;
                        }
                        this.f262p = 3;
                        r11 = 1;
                    } else {
                        if (bVar2.f287l) {
                            i18 = bVar2.f279d.f368d[bVar2.f281f];
                        } else {
                            i18 = bVar2.f277b.f355h[bVar2.f281f];
                        }
                        this.A = i18;
                        if (bVar2.f281f < bVar2.f284i) {
                            iVar2.k(i18);
                            mVarB2 = bVar2.b();
                            if (mVarB2 != null) {
                                wVar2 = bVar2.f277b.f361n;
                                i20 = mVarB2.f346d;
                                if (i20 != 0) {
                                    wVar2.E(i20);
                                }
                                nVar = bVar2.f277b;
                                int i37 = bVar2.f281f;
                                if (nVar.f358k) {
                                    z10 = false;
                                } else {
                                    z10 = false;
                                }
                                if (z10) {
                                    wVar2.E(wVar2.y() * 6);
                                }
                            }
                            if (!bVar2.c()) {
                                this.f272z = null;
                            }
                            this.f262p = 3;
                        } else {
                            if (bVar2.f279d.f365a.f338g == 1) {
                                this.A = i18 - 8;
                                iVar2.k(8);
                            }
                            if ("audio/ac4".equals(bVar2.f279d.f365a.f337f.f11687s)) {
                                this.B = bVar2.d(this.A, 7);
                                p3.c.a(this.A, this.f255i);
                                bVar2.f276a.f(this.f255i, 7);
                                this.B += 7;
                                i19 = 0;
                            } else {
                                this.B = bVar2.d(this.A, 0);
                                i19 = 0;
                            }
                            this.A += this.B;
                            this.f262p = 4;
                            this.C = i19;
                            oVar = bVar2.f279d;
                            lVar = oVar.f365a;
                            wVar = bVar2.f276a;
                            if (bVar2.f287l) {
                                jA = oVar.f370f[bVar2.f281f];
                            } else {
                                jA = bVar2.f277b.f356i[bVar2.f281f];
                            }
                            d0Var = this.f256j;
                            if (d0Var != null) {
                                jA = d0Var.a(jA);
                            }
                            j10 = jA;
                            i10 = lVar.f341j;
                            if (i10 != 0) {
                                while (true) {
                                    i11 = this.B;
                                    i12 = this.A;
                                    if (i11 < i12) {
                                        break;
                                        break;
                                    }
                                    this.B += wVar.d(iVar2, i12 - i11, false);
                                }
                            } else {
                                bArr = this.f252f.f10475a;
                                bArr[0] = 0;
                                bArr[1] = 0;
                                bArr[2] = 0;
                                i15 = i10 + 1;
                                i16 = 4 - i10;
                                while (this.B < this.A) {
                                    i17 = this.C;
                                    if (i17 == 0) {
                                        iVar2.readFully(bArr, i16, i15);
                                        this.f252f.D(0);
                                        iE = this.f252f.e();
                                        if (iE >= r10) {
                                            throw i1.a("Invalid NAL length", null);
                                        }
                                        this.C = iE - 1;
                                        this.f251e.D(0);
                                        wVar.f(this.f251e, 4);
                                        wVar.f(this.f252f, r10 == true ? 1 : 0);
                                        if (this.G.length > 0) {
                                            str = lVar.f337f.f11687s;
                                            b10 = bArr[4];
                                            byte[] bArr6 = m5.t.f10435a;
                                            if (((("video/avc".equals(str) || (b10 & 31) != c10) && !("video/hevc".equals(str) && ((b10 & 126) >> (r10 == true ? 1 : 0)) == 39)) ? 0 : r10 == true ? 1 : 0) == 0) {
                                                r10 = 0;
                                            }
                                        } else {
                                            r10 = 0;
                                        }
                                        this.D = r10;
                                        this.B += 5;
                                        this.A += i16;
                                    } else {
                                        if (this.D) {
                                            this.f253g.A(i17);
                                            iVar2.readFully(this.f253g.f10475a, 0, this.C);
                                            wVar.f(this.f253g, this.C);
                                            iD = this.C;
                                            m5.w wVar12 = this.f253g;
                                            int iF4 = m5.t.f(wVar12.f10475a, wVar12.f10477c);
                                            this.f253g.D("video/hevc".equals(lVar.f337f.f11687s) ? 1 : 0);
                                            this.f253g.C(iF4);
                                            s3.b.a(j10, this.f253g, this.G);
                                        } else {
                                            iD = wVar.d(iVar2, i17, false);
                                        }
                                        this.B += iD;
                                        this.C -= iD;
                                    }
                                    c10 = 6;
                                    r10 = 1;
                                }
                            }
                            if (!bVar2.f287l) {
                                i13 = bVar2.f279d.f371g[bVar2.f281f];
                            } else if (bVar2.f277b.f357j[bVar2.f281f]) {
                                i13 = 1;
                            } else {
                                i13 = 0;
                            }
                            if (bVar2.b() != null) {
                                i13 |= 1073741824;
                            }
                            int i38 = i13;
                            mVarB = bVar2.b();
                            if (mVarB != null) {
                                aVar = mVarB.f345c;
                            } else {
                                aVar = null;
                            }
                            wVar.c(j10, i38, this.A, 0, aVar);
                            while (!this.f260n.isEmpty()) {
                                aVarRemoveFirst = this.f260n.removeFirst();
                                this.f268v -= aVarRemoveFirst.f275c;
                                jA2 = aVarRemoveFirst.f273a;
                                if (aVarRemoveFirst.f274b) {
                                    jA2 += j10;
                                }
                                d0Var2 = this.f256j;
                                if (d0Var2 != null) {
                                    jA2 = d0Var2.a(jA2);
                                }
                                wVarArr = this.F;
                                i14 = 0;
                                while (i14 < length) {
                                    wVarArr[i14].c(jA2, 1, aVarRemoveFirst.f275c, this.f268v, null);
                                    i14++;
                                }
                            }
                            if (!bVar2.c()) {
                                this.f272z = null;
                            }
                            this.f262p = 3;
                            r11 = 1;
                        }
                    }
                }
                if (r11 != 0) {
                    return 0;
                }
            } else {
                int size3 = this.f250d.size();
                long j18 = Long.MAX_VALUE;
                b bVarValueAt2 = null;
                for (int i39 = 0; i39 < size3; i39++) {
                    n nVar4 = this.f250d.valueAt(i39).f277b;
                    if (nVar4.f362o) {
                        long j19 = nVar4.f350c;
                        if (j19 < j18) {
                            bVarValueAt2 = this.f250d.valueAt(i39);
                            j18 = j19;
                        }
                    }
                }
                if (bVarValueAt2 == null) {
                    this.f262p = 3;
                } else {
                    int iU2 = (int) (j18 - iVar.u());
                    if (iU2 < 0) {
                        throw i1.a("Offset to encryption data was negative.", null);
                    }
                    iVar2.k(iU2);
                    n nVar5 = bVarValueAt2.f277b;
                    m5.w wVar13 = nVar5.f361n;
                    iVar2.readFully(wVar13.f10475a, 0, wVar13.f10477c);
                    nVar5.f361n.D(0);
                    nVar5.f362o = false;
                }
            }
        }
    }

    public final c f(SparseArray<c> sparseArray, int i10) {
        if (sparseArray.size() == 1) {
            return sparseArray.valueAt(0);
        }
        c cVar = sparseArray.get(i10);
        Objects.requireNonNull(cVar);
        return cVar;
    }

    @Override // s3.h
    public final void g(s3.j jVar) {
        int i10;
        this.E = jVar;
        d();
        w[] wVarArr = new w[2];
        this.F = wVarArr;
        w wVar = this.f261o;
        if (wVar != null) {
            wVarArr[0] = wVar;
            i10 = 1;
        } else {
            i10 = 0;
        }
        int i11 = 100;
        if ((this.f247a & 4) != 0) {
            wVarArr[i10] = this.E.p(100, 5);
            i10++;
            i11 = 101;
        }
        w[] wVarArr2 = (w[]) g0.N(this.F, i10);
        this.F = wVarArr2;
        for (w wVar2 : wVarArr2) {
            wVar2.b(J);
        }
        this.G = new w[this.f249c.size()];
        int i12 = 0;
        while (i12 < this.G.length) {
            w wVarP = this.E.p(i11, 3);
            wVarP.b(this.f249c.get(i12));
            this.G[i12] = wVarP;
            i12++;
            i11++;
        }
        l lVar = this.f248b;
        if (lVar != null) {
            this.f250d.put(0, new b(jVar.p(0, lVar.f333b), new o(this.f248b, new long[0], new int[0], 0, new long[0], new int[0], 0L), new c(0, 0, 0, 0)));
            this.E.b();
        }
    }

    @Override // s3.h
    public final boolean j(s3.i iVar) throws IOException {
        return k.a(iVar, true, false);
    }

    /* JADX WARN: Code duplicated, block: B:155:0x0378  */
    /* JADX WARN: Code duplicated, block: B:158:0x0387 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:159:0x0389  */
    /* JADX WARN: Code duplicated, block: B:160:0x0392  */
    /* JADX WARN: Code duplicated, block: B:163:0x039b  */
    /* JADX WARN: Code duplicated, block: B:164:0x03a4  */
    /* JADX WARN: Code duplicated, block: B:167:0x03ad  */
    /* JADX WARN: Code duplicated, block: B:168:0x03b6  */
    /* JADX WARN: Code duplicated, block: B:171:0x03bf  */
    /* JADX WARN: Code duplicated, block: B:173:0x03c5  */
    /* JADX WARN: Code duplicated, block: B:174:0x03ca  */
    /* JADX WARN: Code duplicated, block: B:177:0x03e5  */
    /* JADX WARN: Code duplicated, block: B:178:0x03f5  */
    /* JADX WARN: Code duplicated, block: B:184:0x0409  */
    /* JADX WARN: Code duplicated, block: B:294:0x0689  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v19, types: [java.util.ArrayList, java.util.List<a4.a$b>] */
    /* JADX WARN: Type inference failed for: r0v7, types: [java.util.ArrayList, java.util.List<a4.a$a>] */
    /* JADX WARN: Type inference failed for: r10v10 */
    /* JADX WARN: Type inference failed for: r10v15, types: [java.util.ArrayList, java.util.List<a4.a$b>] */
    /* JADX WARN: Type inference failed for: r10v23 */
    /* JADX WARN: Type inference failed for: r10v7, types: [java.util.ArrayList, java.util.List, java.util.List<a4.a$b>] */
    /* JADX WARN: Type inference failed for: r10v8, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r3v12, types: [java.util.ArrayList, java.util.List<a4.a$b>] */
    /* JADX WARN: Type inference failed for: r4v51, types: [java.util.ArrayList, java.util.List<a4.a$b>] */
    /* JADX WARN: Type inference failed for: r5v17, types: [java.util.ArrayList, java.util.List<a4.a$b>] */
    /* JADX WARN: Type inference failed for: r5v8, types: [java.util.ArrayList, java.util.List<a4.a$b>] */
    /* JADX WARN: Type inference failed for: r6v0, types: [java.util.ArrayList, java.util.List<a4.a$a>] */
    /* JADX WARN: Type inference failed for: r8v9, types: [java.util.ArrayList, java.util.List<a4.a$a>] */
    public final void k(long j10) throws i1 {
        e eVar;
        a4.a.C0004a c0004a;
        boolean z10;
        int i10;
        int i11;
        int i12;
        byte[] bArr;
        int i13;
        byte[] bArr2;
        int i14;
        boolean z11;
        byte[] bArr3;
        int i15;
        n nVar;
        long j11;
        int[] iArr;
        long[] jArr;
        boolean[] zArr;
        boolean z12;
        int i16;
        long j12;
        long j13;
        int iE;
        int iE2;
        int iE3;
        int iE4;
        boolean z13;
        e eVar2 = this;
        final e eVar3 = eVar2;
        while (!eVar3.f259m.isEmpty() && eVar3.f259m.peek().f212b == j10) {
            a4.a.C0004a c0004aPop = eVar3.f259m.pop();
            int i17 = c0004aPop.f211a;
            int i18 = 12;
            if (i17 == 1836019574) {
                if (!(eVar3.f248b == null)) {
                    throw new IllegalStateException("Unexpected moov box.");
                }
                r3.d dVarH = h(c0004aPop.f213c);
                a4.a.C0004a c0004aB = c0004aPop.b(1836475768);
                Objects.requireNonNull(c0004aB);
                SparseArray<c> sparseArray = new SparseArray<>();
                int size = c0004aB.f213c.size();
                long jU = -9223372036854775807L;
                int i19 = 0;
                while (i19 < size) {
                    a4.a.b bVar = (a4.a.b) c0004aB.f213c.get(i19);
                    int i20 = bVar.f211a;
                    if (i20 == 1953654136) {
                        m5.w wVar = bVar.f215b;
                        wVar.D(i18);
                        Pair pairCreate = Pair.create(Integer.valueOf(wVar.e()), new c(wVar.e() - 1, wVar.e(), wVar.e(), wVar.e()));
                        sparseArray.put(((Integer) pairCreate.first).intValue(), (c) pairCreate.second);
                    } else if (i20 == 1835362404) {
                        m5.w wVar2 = bVar.f215b;
                        wVar2.D(8);
                        jU = ((wVar2.e() >> 24) & 255) == 0 ? wVar2.u() : wVar2.x();
                    }
                    i19++;
                    i18 = 12;
                }
                ArrayList arrayList = (ArrayList) a4.b.f(c0004aPop, new q(), jU, dVarH, (eVar3.f247a & 16) != 0, false, new t6.d() { // from class: a4.d
                    @Override // t6.d
                    public final Object apply(Object obj) {
                        l lVar = (l) obj;
                        Objects.requireNonNull(this.f246a);
                        return lVar;
                    }
                });
                int size2 = arrayList.size();
                if (eVar3.f250d.size() == 0) {
                    for (int i21 = 0; i21 < size2; i21++) {
                        o oVar = (o) arrayList.get(i21);
                        l lVar = oVar.f365a;
                        eVar3.f250d.put(lVar.f332a, new b(eVar3.E.p(i21, lVar.f333b), oVar, eVar3.f(sparseArray, lVar.f332a)));
                        eVar3.f270x = Math.max(eVar3.f270x, lVar.f336e);
                    }
                    eVar3.E.b();
                } else {
                    m5.a.e(eVar3.f250d.size() == size2);
                    for (int i22 = 0; i22 < size2; i22++) {
                        o oVar2 = (o) arrayList.get(i22);
                        l lVar2 = oVar2.f365a;
                        b bVar2 = eVar3.f250d.get(lVar2.f332a);
                        c cVarF = eVar3.f(sparseArray, lVar2.f332a);
                        bVar2.f279d = oVar2;
                        bVar2.f280e = cVarF;
                        bVar2.f276a.b(oVar2.f365a.f337f);
                        bVar2.e();
                    }
                }
                eVar = eVar2;
            } else if (i17 == 1836019558) {
                SparseArray<b> sparseArray2 = eVar3.f250d;
                boolean z14 = eVar3.f248b != null;
                int i23 = eVar3.f247a;
                byte[] bArr4 = eVar3.f254h;
                int size3 = c0004aPop.f214d.size();
                int i24 = 0;
                while (i24 < size3) {
                    a4.a.C0004a c0004a2 = (a4.a.C0004a) c0004aPop.f214d.get(i24);
                    if (c0004a2.f211a == 1953653094) {
                        a4.a.b bVarC = c0004a2.c(1952868452);
                        Objects.requireNonNull(bVarC);
                        m5.w wVar3 = bVarC.f215b;
                        wVar3.D(8);
                        int iE5 = wVar3.e() & 16777215;
                        b bVarValueAt = z14 ? sparseArray2.valueAt(0) : sparseArray2.get(wVar3.e());
                        if (bVarValueAt == null) {
                            bVarValueAt = null;
                        } else {
                            if ((iE5 & 1) != 0) {
                                long jX = wVar3.x();
                                n nVar2 = bVarValueAt.f277b;
                                nVar2.f349b = jX;
                                nVar2.f350c = jX;
                            }
                            c cVar = bVarValueAt.f280e;
                            bVarValueAt.f277b.f348a = new c((iE5 & 2) != 0 ? wVar3.e() - 1 : cVar.f242a, (iE5 & 8) != 0 ? wVar3.e() : cVar.f243b, (iE5 & 16) != 0 ? wVar3.e() : cVar.f244c, (iE5 & 32) != 0 ? wVar3.e() : cVar.f245d);
                        }
                        if (bVarValueAt == null) {
                            c0004a = c0004aPop;
                            z10 = z14;
                            i10 = i23;
                            i11 = size3;
                            i12 = i24;
                            bArr = bArr4;
                        } else {
                            n nVar3 = bVarValueAt.f277b;
                            long j14 = nVar3.f363p;
                            boolean z15 = nVar3.f364q;
                            bVarValueAt.e();
                            bVarValueAt.f287l = true;
                            a4.a.b bVarC2 = c0004a2.c(1952867444);
                            if (bVarC2 == null || (i23 & 2) != 0) {
                                nVar3.f363p = j14;
                                nVar3.f364q = z15;
                            } else {
                                m5.w wVar4 = bVarC2.f215b;
                                wVar4.D(8);
                                nVar3.f363p = ((wVar4.e() >> 24) & 255) == 1 ? wVar4.x() : wVar4.u();
                                nVar3.f364q = true;
                            }
                            ?? r10 = c0004a2.f213c;
                            int size4 = r10.size();
                            int i25 = 0;
                            int i26 = 0;
                            int i27 = 0;
                            while (true) {
                                i13 = 1953658222;
                                if (i25 >= size4) {
                                    break;
                                }
                                boolean z16 = z14;
                                a4.a.b bVar3 = (a4.a.b) r10.get(i25);
                                int i28 = size3;
                                if (bVar3.f211a == 1953658222) {
                                    m5.w wVar5 = bVar3.f215b;
                                    wVar5.D(12);
                                    int iW = wVar5.w();
                                    if (iW > 0) {
                                        i27 += iW;
                                        i26++;
                                    }
                                }
                                i25++;
                                size3 = i28;
                                z14 = z16;
                            }
                            z10 = z14;
                            i11 = size3;
                            bVarValueAt.f283h = 0;
                            bVarValueAt.f282g = 0;
                            bVarValueAt.f281f = 0;
                            n nVar4 = bVarValueAt.f277b;
                            nVar4.f351d = i26;
                            nVar4.f352e = i27;
                            if (nVar4.f354g.length < i26) {
                                nVar4.f353f = new long[i26];
                                nVar4.f354g = new int[i26];
                            }
                            if (nVar4.f355h.length < i27) {
                                int i29 = (i27 * 125) / 100;
                                nVar4.f355h = new int[i29];
                                nVar4.f356i = new long[i29];
                                nVar4.f357j = new boolean[i29];
                                nVar4.f359l = new boolean[i29];
                            }
                            int i30 = 0;
                            int i31 = 0;
                            int i32 = 0;
                            ?? r11 = r10;
                            while (i30 < size4) {
                                a4.a.b bVar4 = (a4.a.b) r11.get(i30);
                                if (bVar4.f211a == i13) {
                                    int i33 = i31 + 1;
                                    m5.w wVar6 = bVar4.f215b;
                                    wVar6.D(8);
                                    int iE6 = wVar6.e() & 16777215;
                                    l lVar3 = bVarValueAt.f279d.f365a;
                                    n nVar5 = bVarValueAt.f277b;
                                    c cVar2 = nVar5.f348a;
                                    int i34 = g0.f10384a;
                                    nVar5.f354g[i31] = wVar6.w();
                                    long[] jArr2 = nVar5.f353f;
                                    jArr2[i31] = nVar5.f349b;
                                    if ((iE6 & 1) != 0) {
                                        jArr2[i31] = jArr2[i31] + ((long) wVar6.e());
                                    }
                                    boolean z17 = (iE6 & 4) != 0;
                                    int iE7 = cVar2.f245d;
                                    if (z17) {
                                        iE7 = wVar6.e();
                                    }
                                    boolean z18 = (iE6 & 256) != 0;
                                    boolean z19 = (iE6 & 512) != 0;
                                    boolean z20 = (iE6 & 1024) != 0;
                                    boolean z21 = (iE6 & 2048) != 0;
                                    int i35 = iE7;
                                    long[] jArr3 = lVar3.f339h;
                                    if (jArr3 != null) {
                                        bArr3 = bArr4;
                                        nVar = nVar3;
                                        if (jArr3.length == 1 && jArr3[0] == 0) {
                                            j11 = lVar3.f340i[0];
                                        }
                                        iArr = nVar5.f355h;
                                        jArr = nVar5.f356i;
                                        zArr = nVar5.f357j;
                                        if (lVar3.f333b == 2 || (i23 & 1) == 0) {
                                            z12 = false;
                                        } else {
                                            z12 = true;
                                        }
                                        i16 = nVar5.f354g[i31] + i32;
                                        boolean z22 = z12;
                                        j12 = lVar3.f334c;
                                        j13 = nVar5.f363p;
                                        while (i32 < i16) {
                                            if (z18) {
                                                iE = wVar6.e();
                                            } else {
                                                iE = cVar2.f243b;
                                            }
                                            c(iE);
                                            if (z19) {
                                                iE2 = wVar6.e();
                                            } else {
                                                iE2 = cVar2.f244c;
                                            }
                                            c(iE2);
                                            if (z20) {
                                                iE3 = wVar6.e();
                                            } else if (i32 == 0 || !z17) {
                                                iE3 = cVar2.f245d;
                                            } else {
                                                iE3 = i35;
                                            }
                                            if (z21) {
                                                iE4 = wVar6.e();
                                            } else {
                                                iE4 = 0;
                                            }
                                            int i36 = i16;
                                            boolean z23 = z19;
                                            jArr[i32] = g0.R((((long) iE4) + j13) - j11, 1000000L, j12);
                                            if (!nVar5.f364q) {
                                                jArr[i32] = jArr[i32] + bVarValueAt.f279d.f372h;
                                            }
                                            iArr[i32] = iE2;
                                            if (((iE3 >> 16) & 1) == 0 || (z22 && i32 != 0)) {
                                                z13 = false;
                                            } else {
                                                z13 = true;
                                            }
                                            zArr[i32] = z13;
                                            j13 += (long) iE;
                                            i32++;
                                            z20 = z20;
                                            wVar6 = wVar6;
                                            z21 = z21;
                                            z18 = z18;
                                            i23 = i23;
                                            z17 = z17;
                                            i16 = i36;
                                            z19 = z23;
                                        }
                                        i15 = i23;
                                        int i37 = i16;
                                        nVar5.f363p = j13;
                                        i31 = i33;
                                        i32 = i37;
                                    } else {
                                        bArr3 = bArr4;
                                        nVar = nVar3;
                                    }
                                    j11 = 0;
                                    iArr = nVar5.f355h;
                                    jArr = nVar5.f356i;
                                    zArr = nVar5.f357j;
                                    if (lVar3.f333b == 2) {
                                        z12 = false;
                                    } else {
                                        z12 = false;
                                    }
                                    i16 = nVar5.f354g[i31] + i32;
                                    boolean z24 = z12;
                                    j12 = lVar3.f334c;
                                    j13 = nVar5.f363p;
                                    while (i32 < i16) {
                                        if (z18) {
                                            iE = wVar6.e();
                                        } else {
                                            iE = cVar2.f243b;
                                        }
                                        c(iE);
                                        if (z19) {
                                            iE2 = wVar6.e();
                                        } else {
                                            iE2 = cVar2.f244c;
                                        }
                                        c(iE2);
                                        if (z20) {
                                            iE3 = wVar6.e();
                                        } else if (i32 == 0) {
                                            iE3 = cVar2.f245d;
                                        } else {
                                            iE3 = cVar2.f245d;
                                        }
                                        if (z21) {
                                            iE4 = wVar6.e();
                                        } else {
                                            iE4 = 0;
                                        }
                                        int i38 = i16;
                                        boolean z25 = z19;
                                        jArr[i32] = g0.R((((long) iE4) + j13) - j11, 1000000L, j12);
                                        if (!nVar5.f364q) {
                                            jArr[i32] = jArr[i32] + bVarValueAt.f279d.f372h;
                                        }
                                        iArr[i32] = iE2;
                                        if (((iE3 >> 16) & 1) == 0) {
                                            z13 = false;
                                        } else {
                                            z13 = false;
                                        }
                                        zArr[i32] = z13;
                                        j13 += (long) iE;
                                        i32++;
                                        z20 = z20;
                                        wVar6 = wVar6;
                                        z21 = z21;
                                        z18 = z18;
                                        i23 = i23;
                                        z17 = z17;
                                        i16 = i38;
                                        z19 = z25;
                                    }
                                    i15 = i23;
                                    int i39 = i16;
                                    nVar5.f363p = j13;
                                    i31 = i33;
                                    i32 = i39;
                                } else {
                                    bArr3 = bArr4;
                                    c0004aPop = c0004aPop;
                                    i30 = i30;
                                    i15 = i23;
                                    nVar = nVar3;
                                }
                                i30++;
                                i13 = 1953658222;
                                r11 = r11;
                                size4 = size4;
                                i24 = i24;
                                c0004a2 = c0004a2;
                                c0004aPop = c0004aPop;
                                bArr4 = bArr3;
                                nVar3 = nVar;
                                i23 = i15;
                            }
                            byte[] bArr5 = bArr4;
                            c0004a = c0004aPop;
                            i10 = i23;
                            i12 = i24;
                            n nVar6 = nVar3;
                            l lVar4 = bVarValueAt.f279d.f365a;
                            c cVar3 = nVar6.f348a;
                            Objects.requireNonNull(cVar3);
                            m mVarA = lVar4.a(cVar3.f242a);
                            a4.a.b bVarC3 = c0004a2.c(1935763834);
                            if (bVarC3 != null) {
                                Objects.requireNonNull(mVarA);
                                m5.w wVar7 = bVarC3.f215b;
                                int i40 = mVarA.f346d;
                                wVar7.D(8);
                                if ((wVar7.e() & 16777215 & 1) == 1) {
                                    wVar7.E(8);
                                }
                                int iT = wVar7.t();
                                int iW2 = wVar7.w();
                                if (iW2 > nVar6.f352e) {
                                    StringBuilder sbC = y0.c("Saiz sample count ", iW2, " is greater than fragment sample count");
                                    sbC.append(nVar6.f352e);
                                    throw i1.a(sbC.toString(), null);
                                }
                                if (iT == 0) {
                                    boolean[] zArr2 = nVar6.f359l;
                                    i14 = 0;
                                    for (int i41 = 0; i41 < iW2; i41++) {
                                        int iT2 = wVar7.t();
                                        i14 += iT2;
                                        zArr2[i41] = iT2 > i40;
                                    }
                                    z11 = false;
                                } else {
                                    i14 = (iT * iW2) + 0;
                                    Arrays.fill(nVar6.f359l, 0, iW2, iT > i40);
                                    z11 = false;
                                }
                                Arrays.fill(nVar6.f359l, iW2, nVar6.f352e, z11);
                                if (i14 > 0) {
                                    nVar6.f361n.A(i14);
                                    nVar6.f358k = true;
                                    nVar6.f362o = true;
                                }
                            }
                            a4.a.b bVarC4 = c0004a2.c(1935763823);
                            if (bVarC4 != null) {
                                m5.w wVar8 = bVarC4.f215b;
                                wVar8.D(8);
                                int iE8 = wVar8.e();
                                if ((16777215 & iE8 & 1) == 1) {
                                    wVar8.E(8);
                                }
                                int iW3 = wVar8.w();
                                if (iW3 != 1) {
                                    throw i1.a("Unexpected saio entry count: " + iW3, null);
                                }
                                nVar6.f350c += ((iE8 >> 24) & 255) == 0 ? wVar8.u() : wVar8.x();
                            }
                            byte[] bArr6 = null;
                            a4.a.b bVarC5 = c0004a2.c(1936027235);
                            if (bVarC5 != null) {
                                i(bVarC5.f215b, 0, nVar6);
                            }
                            String str = mVarA != null ? mVarA.f344b : null;
                            m5.w wVar9 = null;
                            m5.w wVar10 = null;
                            for (int i42 = 0; i42 < c0004a2.f213c.size(); i42++) {
                                a4.a.b bVar5 = (a4.a.b) c0004a2.f213c.get(i42);
                                m5.w wVar11 = bVar5.f215b;
                                int i43 = bVar5.f211a;
                                if (i43 == 1935828848) {
                                    wVar11.D(12);
                                    if (wVar11.e() == 1936025959) {
                                        wVar9 = wVar11;
                                    }
                                } else if (i43 == 1936158820) {
                                    wVar11.D(12);
                                    if (wVar11.e() == 1936025959) {
                                        wVar10 = wVar11;
                                    }
                                }
                            }
                            if (wVar9 != null && wVar10 != null) {
                                wVar9.D(8);
                                int iE9 = (wVar9.e() >> 24) & 255;
                                wVar9.E(4);
                                if (iE9 == 1) {
                                    wVar9.E(4);
                                }
                                if (wVar9.e() != 1) {
                                    throw i1.c("Entry count in sbgp != 1 (unsupported).");
                                }
                                wVar10.D(8);
                                int iE10 = (wVar10.e() >> 24) & 255;
                                wVar10.E(4);
                                if (iE10 == 1) {
                                    if (wVar10.u() == 0) {
                                        throw i1.c("Variable length description in sgpd found (unsupported)");
                                    }
                                } else if (iE10 >= 2) {
                                    wVar10.E(4);
                                }
                                if (wVar10.u() != 1) {
                                    throw i1.c("Entry count in sgpd != 1 (unsupported).");
                                }
                                wVar10.E(1);
                                int iT3 = wVar10.t();
                                int i44 = (iT3 & 240) >> 4;
                                int i45 = iT3 & 15;
                                boolean z26 = wVar10.t() == 1;
                                if (z26) {
                                    int iT4 = wVar10.t();
                                    byte[] bArr7 = new byte[16];
                                    wVar10.d(bArr7, 0, 16);
                                    if (iT4 == 0) {
                                        int iT5 = wVar10.t();
                                        bArr6 = new byte[iT5];
                                        wVar10.d(bArr6, 0, iT5);
                                    }
                                    nVar6.f358k = true;
                                    nVar6.f360m = new m(z26, str, iT4, bArr7, i44, i45, bArr6);
                                }
                            }
                            int size5 = c0004a2.f213c.size();
                            int i46 = 0;
                            while (i46 < size5) {
                                a4.a.b bVar6 = (a4.a.b) c0004a2.f213c.get(i46);
                                if (bVar6.f211a == 1970628964) {
                                    m5.w wVar12 = bVar6.f215b;
                                    wVar12.D(8);
                                    bArr2 = bArr5;
                                    wVar12.d(bArr2, 0, 16);
                                    if (Arrays.equals(bArr2, I)) {
                                        i(wVar12, 16, nVar6);
                                    }
                                } else {
                                    bArr2 = bArr5;
                                }
                                i46++;
                                bArr5 = bArr2;
                            }
                            bArr = bArr5;
                        }
                    } else {
                        c0004a = c0004aPop;
                        z10 = z14;
                        i10 = i23;
                        i11 = size3;
                        i12 = i24;
                        bArr = bArr4;
                    }
                    i24 = i12 + 1;
                    bArr4 = bArr;
                    sparseArray2 = sparseArray2;
                    size3 = i11;
                    z14 = z10;
                    c0004aPop = c0004a;
                    i23 = i10;
                }
                r3.d dVarH2 = h(c0004aPop.f213c);
                eVar = this;
                if (dVarH2 != null) {
                    int size6 = eVar.f250d.size();
                    for (int i47 = 0; i47 < size6; i47++) {
                        b bVarValueAt2 = eVar.f250d.valueAt(i47);
                        l lVar5 = bVarValueAt2.f279d.f365a;
                        c cVar4 = bVarValueAt2.f277b.f348a;
                        int i48 = g0.f10384a;
                        m mVarA2 = lVar5.a(cVar4.f242a);
                        r3.d dVarA = dVarH2.a(mVarA2 != null ? mVarA2.f344b : null);
                        s0.a aVar = new s0.a(bVarValueAt2.f279d.f365a.f337f);
                        aVar.f11708n = dVarA;
                        bVarValueAt2.f276a.b(new s0(aVar));
                    }
                }
                if (eVar.f269w != -9223372036854775807L) {
                    int size7 = eVar.f250d.size();
                    for (int i49 = 0; i49 < size7; i49++) {
                        b bVarValueAt3 = eVar.f250d.valueAt(i49);
                        long j15 = eVar.f269w;
                        int i50 = bVarValueAt3.f281f;
                        while (true) {
                            n nVar7 = bVarValueAt3.f277b;
                            if (i50 >= nVar7.f352e || nVar7.f356i[i50] >= j15) {
                                break;
                            }
                            if (nVar7.f357j[i50]) {
                                bVarValueAt3.f284i = i50;
                            }
                            i50++;
                        }
                    }
                    eVar.f269w = -9223372036854775807L;
                }
                eVar3 = eVar;
            } else {
                eVar = eVar2;
                if (!eVar3.f259m.isEmpty()) {
                    eVar3.f259m.peek().f214d.add(c0004aPop);
                }
            }
            eVar2 = eVar;
        }
        d();
    }

    public e(int i10, d0 d0Var, l lVar, List<s0> list, w wVar) {
        this.f247a = i10;
        this.f256j = d0Var;
        this.f248b = lVar;
        this.f249c = Collections.unmodifiableList(list);
        this.f261o = wVar;
        this.f257k = new h4.c();
        this.f258l = new m5.w(16);
        this.f251e = new m5.w(m5.t.f10435a);
        this.f252f = new m5.w(5);
        this.f253g = new m5.w();
        byte[] bArr = new byte[16];
        this.f254h = bArr;
        this.f255i = new m5.w(bArr);
        this.f259m = new ArrayDeque<>();
        this.f260n = new ArrayDeque<>();
        this.f250d = new SparseArray<>();
        this.f270x = -9223372036854775807L;
        this.f269w = -9223372036854775807L;
        this.f271y = -9223372036854775807L;
        this.E = s3.j.f15050g;
        this.F = new w[0];
        this.G = new w[0];
    }
}
