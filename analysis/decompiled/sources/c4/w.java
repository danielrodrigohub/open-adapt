package c4;

import android.util.SparseArray;
import com.newrelic.agent.android.analytics.AnalyticsAttribute;
import java.io.IOException;

/* JADX INFO: compiled from: PsExtractor.java */
/* JADX INFO: loaded from: classes.dex */
public final class w implements s3.h {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public boolean f4207e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public boolean f4208f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public boolean f4209g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public long f4210h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public u f4211i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public s3.j f4212j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public boolean f4213k;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final m5.d0 f4203a = new m5.d0(0);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final m5.w f4205c = new m5.w(AnalyticsAttribute.ATTRIBUTE_VALUE_MAX_LENGTH);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final SparseArray<a> f4204b = new SparseArray<>();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final v f4206d = new v();

    /* JADX INFO: compiled from: PsExtractor.java */
    public static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final j f4214a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final m5.d0 f4215b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final m5.v f4216c = new m5.v(new byte[64], 64);

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public boolean f4217d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public boolean f4218e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public boolean f4219f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        public long f4220g;

        public a(j jVar, m5.d0 d0Var) {
            this.f4214a = jVar;
            this.f4215b = d0Var;
        }
    }

    static {
        y0.l lVar = y0.l.f18246i;
    }

    @Override // s3.h
    public final void a() {
    }

    @Override // s3.h
    public final void b(long j10, long j11) {
        boolean z10 = this.f4203a.d() == -9223372036854775807L;
        if (!z10) {
            long jC = this.f4203a.c();
            z10 = (jC == -9223372036854775807L || jC == 0 || jC == j11) ? false : true;
        }
        if (z10) {
            this.f4203a.e(j11);
        }
        u uVar = this.f4211i;
        if (uVar != null) {
            uVar.e(j11);
        }
        for (int i10 = 0; i10 < this.f4204b.size(); i10++) {
            a aVarValueAt = this.f4204b.valueAt(i10);
            aVarValueAt.f4219f = false;
            aVarValueAt.f4214a.a();
        }
    }

    @Override // s3.h
    public final int e(s3.i iVar, s3.t tVar) throws IOException {
        long j10;
        long jQ;
        j kVar;
        m5.a.f(this.f4212j);
        long jA = iVar.a();
        int i10 = 1;
        long j11 = -9223372036854775807L;
        if (jA != -1) {
            v vVar = this.f4206d;
            if (!vVar.f4197c) {
                if (!vVar.f4199e) {
                    long jA2 = iVar.a();
                    int iMin = (int) Math.min(20000L, jA2);
                    long j12 = jA2 - ((long) iMin);
                    if (iVar.u() != j12) {
                        tVar.f15076a = j12;
                    } else {
                        vVar.f4196b.A(iMin);
                        iVar.i();
                        iVar.s(vVar.f4196b.f10475a, 0, iMin);
                        m5.w wVar = vVar.f4196b;
                        int i11 = wVar.f10476b;
                        for (int i12 = wVar.f10477c - 4; i12 >= i11; i12--) {
                            if (vVar.b(wVar.f10475a, i12) == 442) {
                                wVar.D(i12 + 4);
                                long jC = v.c(wVar);
                                if (jC != -9223372036854775807L) {
                                    j11 = jC;
                                    break;
                                }
                            }
                        }
                        vVar.f4201g = j11;
                        vVar.f4199e = true;
                        i10 = 0;
                    }
                } else {
                    if (vVar.f4201g == -9223372036854775807L) {
                        vVar.a(iVar);
                        return 0;
                    }
                    if (vVar.f4198d) {
                        long j13 = vVar.f4200f;
                        if (j13 == -9223372036854775807L) {
                            vVar.a(iVar);
                            return 0;
                        }
                        long jB = vVar.f4195a.b(vVar.f4201g) - vVar.f4195a.b(j13);
                        vVar.f4202h = jB;
                        if (jB < 0) {
                            StringBuilder sbC = a0.b.c("Invalid duration: ");
                            sbC.append(vVar.f4202h);
                            sbC.append(". Using TIME_UNSET instead.");
                            m5.p.g("PsDurationReader", sbC.toString());
                            vVar.f4202h = -9223372036854775807L;
                        }
                        vVar.a(iVar);
                        return 0;
                    }
                    int iMin2 = (int) Math.min(20000L, iVar.a());
                    long j14 = 0;
                    if (iVar.u() != j14) {
                        tVar.f15076a = j14;
                    } else {
                        vVar.f4196b.A(iMin2);
                        iVar.i();
                        iVar.s(vVar.f4196b.f10475a, 0, iMin2);
                        m5.w wVar2 = vVar.f4196b;
                        int i13 = wVar2.f10477c;
                        for (int i14 = wVar2.f10476b; i14 < i13 - 3; i14++) {
                            if (vVar.b(wVar2.f10475a, i14) == 442) {
                                wVar2.D(i14 + 4);
                                long jC2 = v.c(wVar2);
                                if (jC2 != -9223372036854775807L) {
                                    j11 = jC2;
                                    break;
                                }
                            }
                        }
                        vVar.f4200f = j11;
                        vVar.f4198d = true;
                        i10 = 0;
                    }
                }
                return i10;
            }
        }
        if (!this.f4213k) {
            this.f4213k = true;
            v vVar2 = this.f4206d;
            long j15 = vVar2.f4202h;
            if (j15 != -9223372036854775807L) {
                u uVar = new u(vVar2.f4195a, j15, jA);
                this.f4211i = uVar;
                this.f4212j.j(uVar.f15001a);
            } else {
                this.f4212j.j(new s3.u.b(j15));
            }
        }
        u uVar2 = this.f4211i;
        if (uVar2 != null && uVar2.b()) {
            return this.f4211i.a(iVar, tVar);
        }
        iVar.i();
        if (jA != -1) {
            jQ = jA - iVar.q();
            j10 = -1;
        } else {
            j10 = -1;
            jQ = -1;
        }
        if ((jQ != j10 && jQ < 4) || !iVar.p(this.f4205c.f10475a, 0, 4, true)) {
            return -1;
        }
        this.f4205c.D(0);
        int iE = this.f4205c.e();
        if (iE == 441) {
            return -1;
        }
        if (iE == 442) {
            iVar.s(this.f4205c.f10475a, 0, 10);
            this.f4205c.D(9);
            iVar.k((this.f4205c.t() & 7) + 14);
            return 0;
        }
        if (iE == 443) {
            iVar.s(this.f4205c.f10475a, 0, 2);
            this.f4205c.D(0);
            iVar.k(this.f4205c.y() + 6);
            return 0;
        }
        if (((iE & (-256)) >> 8) != 1) {
            iVar.k(1);
            return 0;
        }
        int i15 = iE & 255;
        a aVar = this.f4204b.get(i15);
        if (!this.f4207e) {
            if (aVar == null) {
                j jVar = null;
                if (i15 == 189) {
                    b bVar = new b(null);
                    this.f4208f = true;
                    this.f4210h = iVar.u();
                    jVar = bVar;
                } else {
                    if ((i15 & 224) == 192) {
                        kVar = new q(null);
                        this.f4208f = true;
                        this.f4210h = iVar.u();
                    } else if ((i15 & 240) == 224) {
                        kVar = new k(null);
                        this.f4209g = true;
                        this.f4210h = iVar.u();
                    }
                    jVar = kVar;
                }
                if (jVar != null) {
                    jVar.f(this.f4212j, new d0.d(i15, 256));
                    aVar = new a(jVar, this.f4203a);
                    this.f4204b.put(i15, aVar);
                }
            }
            if (iVar.u() > ((this.f4208f && this.f4209g) ? this.f4210h + 8192 : 1048576L)) {
                this.f4207e = true;
                this.f4212j.b();
            }
        }
        iVar.s(this.f4205c.f10475a, 0, 2);
        this.f4205c.D(0);
        int iY = this.f4205c.y() + 6;
        if (aVar == null) {
            iVar.k(iY);
        } else {
            this.f4205c.A(iY);
            iVar.readFully(this.f4205c.f10475a, 0, iY);
            this.f4205c.D(6);
            m5.w wVar3 = this.f4205c;
            wVar3.d(aVar.f4216c.f10471a, 0, 3);
            aVar.f4216c.k(0);
            aVar.f4216c.m(8);
            aVar.f4217d = aVar.f4216c.f();
            aVar.f4218e = aVar.f4216c.f();
            aVar.f4216c.m(6);
            wVar3.d(aVar.f4216c.f10471a, 0, aVar.f4216c.g(8));
            aVar.f4216c.k(0);
            aVar.f4220g = 0L;
            if (aVar.f4217d) {
                aVar.f4216c.m(4);
                long jG = ((long) aVar.f4216c.g(3)) << 30;
                aVar.f4216c.m(1);
                long jG2 = jG | ((long) (aVar.f4216c.g(15) << 15));
                aVar.f4216c.m(1);
                long jG3 = jG2 | ((long) aVar.f4216c.g(15));
                aVar.f4216c.m(1);
                if (!aVar.f4219f && aVar.f4218e) {
                    aVar.f4216c.m(4);
                    long jG4 = ((long) aVar.f4216c.g(3)) << 30;
                    aVar.f4216c.m(1);
                    long jG5 = jG4 | ((long) (aVar.f4216c.g(15) << 15));
                    aVar.f4216c.m(1);
                    long jG6 = jG5 | ((long) aVar.f4216c.g(15));
                    aVar.f4216c.m(1);
                    aVar.f4215b.b(jG6);
                    aVar.f4219f = true;
                }
                aVar.f4220g = aVar.f4215b.b(jG3);
            }
            aVar.f4214a.e(aVar.f4220g, 4);
            aVar.f4214a.c(wVar3);
            aVar.f4214a.d();
            m5.w wVar4 = this.f4205c;
            wVar4.C(wVar4.f10475a.length);
        }
        return 0;
    }

    @Override // s3.h
    public final void g(s3.j jVar) {
        this.f4212j = jVar;
    }

    @Override // s3.h
    public final boolean j(s3.i iVar) throws IOException {
        byte[] bArr = new byte[14];
        s3.e eVar = (s3.e) iVar;
        eVar.p(bArr, 0, 14, false);
        if (442 != (((bArr[0] & 255) << 24) | ((bArr[1] & 255) << 16) | ((bArr[2] & 255) << 8) | (bArr[3] & 255)) || (bArr[4] & 196) != 68 || (bArr[6] & 4) != 4 || (bArr[8] & 4) != 4 || (bArr[9] & 1) != 1 || (bArr[12] & 3) != 3) {
            return false;
        }
        eVar.n(bArr[13] & 7, false);
        eVar.p(bArr, 0, 3, false);
        return 1 == ((((bArr[0] & 255) << 16) | ((bArr[1] & 255) << 8)) | (bArr[2] & 255));
    }
}
