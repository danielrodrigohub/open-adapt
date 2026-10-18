package o3;

import android.util.Base64;
import java.util.HashMap;
import java.util.Objects;
import java.util.Random;
import n3.b2;
import org.checkerframework.checker.nullness.qual.RequiresNonNull;

/* JADX INFO: compiled from: DefaultPlaybackSessionManager.java */
/* JADX INFO: loaded from: classes.dex */
public final class s0 {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final Random f12195g = new Random();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public u0 f12199d;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public String f12201f;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final b2.d f12196a = new b2.d();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final b2.b f12197b = new b2.b();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final HashMap<String, a> f12198c = new HashMap<>();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public b2 f12200e = b2.f11293h;

    /* JADX INFO: compiled from: DefaultPlaybackSessionManager.java */
    public final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f12202a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f12203b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public long f12204c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public p4.x.b f12205d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public boolean f12206e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public boolean f12207f;

        public a(String str, int i10, p4.x.b bVar) {
            this.f12202a = str;
            this.f12203b = i10;
            this.f12204c = bVar == null ? -1L : bVar.f13241d;
            if (bVar == null || !bVar.a()) {
                return;
            }
            this.f12205d = bVar;
        }

        public final boolean a(b.a aVar) {
            long j10 = this.f12204c;
            if (j10 == -1) {
                return false;
            }
            p4.x.b bVar = aVar.f12082d;
            if (bVar == null) {
                return this.f12203b != aVar.f12081c;
            }
            if (bVar.f13241d > j10) {
                return true;
            }
            if (this.f12205d == null) {
                return false;
            }
            int iD = aVar.f12080b.d(bVar.f13238a);
            int iD2 = aVar.f12080b.d(this.f12205d.f13238a);
            p4.x.b bVar2 = aVar.f12082d;
            if (bVar2.f13241d < this.f12205d.f13241d || iD < iD2) {
                return false;
            }
            if (iD > iD2) {
                return true;
            }
            if (!bVar2.a()) {
                int i10 = aVar.f12082d.f13242e;
                return i10 == -1 || i10 > this.f12205d.f13239b;
            }
            p4.x.b bVar3 = aVar.f12082d;
            int i11 = bVar3.f13239b;
            int i12 = bVar3.f13240c;
            p4.x.b bVar4 = this.f12205d;
            int i13 = bVar4.f13239b;
            return i11 > i13 || (i11 == i13 && i12 > bVar4.f13240c);
        }

        public final boolean b(b2 b2Var, b2 b2Var2) {
            int i10 = this.f12203b;
            if (i10 < b2Var.r()) {
                b2Var.p(i10, s0.this.f12196a);
                int i11 = s0.this.f12196a.f11322v;
                while (true) {
                    if (i11 > s0.this.f12196a.f11323w) {
                        i10 = -1;
                        break;
                    }
                    int iD = b2Var2.d(b2Var.o(i11));
                    if (iD != -1) {
                        i10 = b2Var2.i(iD, s0.this.f12197b, false).f11297j;
                        break;
                    }
                    i11++;
                }
            } else if (i10 >= b2Var2.r()) {
                i10 = -1;
                break;
            }
            this.f12203b = i10;
            if (i10 == -1) {
                return false;
            }
            p4.x.b bVar = this.f12205d;
            return bVar == null || b2Var2.d(bVar.f13238a) != -1;
        }
    }

    public final a a(int i10, p4.x.b bVar) {
        p4.x.b bVar2;
        a aVar = null;
        long j10 = Long.MAX_VALUE;
        for (a aVar2 : this.f12198c.values()) {
            if (aVar2.f12204c == -1 && i10 == aVar2.f12203b && bVar != null) {
                aVar2.f12204c = bVar.f13241d;
            }
            if (bVar != null ? !((bVar2 = aVar2.f12205d) != null ? !(bVar.f13241d == bVar2.f13241d && bVar.f13239b == bVar2.f13239b && bVar.f13240c == bVar2.f13240c) : bVar.a() || bVar.f13241d != aVar2.f12204c) : i10 == aVar2.f12203b) {
                long j11 = aVar2.f12204c;
                if (j11 == -1 || j11 < j10) {
                    aVar = aVar2;
                    j10 = j11;
                } else if (j11 == j10) {
                    int i11 = m5.g0.f10384a;
                    if (aVar.f12205d != null && aVar2.f12205d != null) {
                        aVar = aVar2;
                    }
                }
            }
        }
        if (aVar != null) {
            return aVar;
        }
        byte[] bArr = new byte[12];
        f12195g.nextBytes(bArr);
        String strEncodeToString = Base64.encodeToString(bArr, 10);
        a aVar3 = new a(strEncodeToString, i10, bVar);
        this.f12198c.put(strEncodeToString, aVar3);
        return aVar3;
    }

    public final synchronized String b(b2 b2Var, p4.x.b bVar) {
        return a(b2Var.j(bVar.f13238a, this.f12197b).f11297j, bVar).f12202a;
    }

    @RequiresNonNull({"listener"})
    public final void c(b.a aVar) {
        p4.x.b bVar;
        if (aVar.f12080b.s()) {
            this.f12201f = null;
            return;
        }
        a aVar2 = this.f12198c.get(this.f12201f);
        this.f12201f = a(aVar.f12081c, aVar.f12082d).f12202a;
        d(aVar);
        p4.x.b bVar2 = aVar.f12082d;
        if (bVar2 == null || !bVar2.a()) {
            return;
        }
        if (aVar2 != null) {
            long j10 = aVar2.f12204c;
            p4.x.b bVar3 = aVar.f12082d;
            if (j10 == bVar3.f13241d && (bVar = aVar2.f12205d) != null && bVar.f13239b == bVar3.f13239b && bVar.f13240c == bVar3.f13240c) {
                return;
            }
        }
        p4.x.b bVar4 = aVar.f12082d;
        a(aVar.f12081c, new p4.x.b(bVar4.f13238a, bVar4.f13241d));
        Objects.requireNonNull(this.f12199d);
    }

    public final synchronized void d(b.a aVar) {
        Objects.requireNonNull(this.f12199d);
        if (aVar.f12080b.s()) {
            return;
        }
        a aVar2 = this.f12198c.get(this.f12201f);
        p4.x.b bVar = aVar.f12082d;
        if (bVar != null && aVar2 != null) {
            long j10 = aVar2.f12204c;
            boolean z10 = false;
            if (j10 == -1) {
                if (aVar2.f12203b != aVar.f12081c) {
                    z10 = true;
                }
            } else if (bVar.f13241d < j10) {
                z10 = true;
            }
            if (z10) {
                return;
            }
        }
        a aVarA = a(aVar.f12081c, bVar);
        if (this.f12201f == null) {
            this.f12201f = aVarA.f12202a;
        }
        p4.x.b bVar2 = aVar.f12082d;
        if (bVar2 != null && bVar2.a()) {
            p4.x.b bVar3 = aVar.f12082d;
            a aVarA2 = a(aVar.f12081c, new p4.x.b(bVar3.f13238a, bVar3.f13241d, bVar3.f13239b));
            if (!aVarA2.f12206e) {
                aVarA2.f12206e = true;
                aVar.f12080b.j(aVar.f12082d.f13238a, this.f12197b);
                Math.max(0L, m5.g0.X(this.f12197b.e(aVar.f12082d.f13239b)) + m5.g0.X(this.f12197b.f11299l));
                Objects.requireNonNull(this.f12199d);
            }
        }
        if (!aVarA.f12206e) {
            aVarA.f12206e = true;
            Objects.requireNonNull(this.f12199d);
        }
        if (aVarA.f12202a.equals(this.f12201f) && !aVarA.f12207f) {
            aVarA.f12207f = true;
            ((t0) this.f12199d).o(aVar, aVarA.f12202a);
        }
    }
}
