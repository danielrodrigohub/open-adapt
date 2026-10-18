package b4;

import com.newrelic.agent.android.api.v1.Defaults;
import java.io.IOException;
import java.util.Arrays;
import m5.g0;
import m5.w;
import n3.i1;
import n3.s0;
import org.checkerframework.checker.nullness.qual.EnsuresNonNullIf;
import s3.j;
import s3.t;
import s3.u;
import s3.z;

/* JADX INFO: compiled from: OggExtractor.java */
/* JADX INFO: loaded from: classes.dex */
public final class c implements s3.h {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public j f3248a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public h f3249b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public boolean f3250c;

    static {
        y0.g gVar = y0.g.f18210h;
    }

    @Override // s3.h
    public final void a() {
    }

    @Override // s3.h
    public final void b(long j10, long j11) {
        h hVar = this.f3249b;
        if (hVar != null) {
            d dVar = hVar.f3266a;
            dVar.f3251a.b();
            dVar.f3252b.A(0);
            dVar.f3253c = -1;
            dVar.f3255e = false;
            if (j10 == 0) {
                hVar.e(!hVar.f3277l);
                return;
            }
            if (hVar.f3273h != 0) {
                long jA = hVar.a(j11);
                hVar.f3270e = jA;
                f fVar = hVar.f3269d;
                int i10 = g0.f10384a;
                fVar.c(jA);
                hVar.f3273h = 2;
            }
        }
    }

    @EnsuresNonNullIf(expression = {"streamReader"}, result = Defaults.COLLECT_NETWORK_ERRORS)
    public final boolean c(s3.i iVar) throws IOException {
        boolean zD;
        e eVar = new e();
        if (eVar.a(iVar, true) && (eVar.f3256a & 2) == 2) {
            int iMin = Math.min(eVar.f3260e, 8);
            w wVar = new w(iMin);
            iVar.s(wVar.f10475a, 0, iMin);
            wVar.D(0);
            if (wVar.f10477c - wVar.f10476b >= 5 && wVar.t() == 127 && wVar.u() == 1179402563) {
                this.f3249b = new b();
            } else {
                wVar.D(0);
                try {
                    zD = z.d(1, wVar, true);
                } catch (i1 unused) {
                    zD = false;
                }
                if (zD) {
                    this.f3249b = new i();
                } else {
                    wVar.D(0);
                    if (g.f(wVar, g.f3263o)) {
                        this.f3249b = new g();
                    }
                }
            }
            return true;
        }
        return false;
    }

    /* JADX WARN: Code duplicated, block: B:69:0x017c  */
    /* JADX WARN: Code duplicated, block: B:77:? A[RETURN, SYNTHETIC] */
    @Override // s3.h
    public final int e(s3.i iVar, t tVar) throws IOException {
        boolean z10;
        d dVar;
        w wVar;
        byte[] bArr;
        m5.a.f(this.f3248a);
        if (this.f3249b == null) {
            if (!c(iVar)) {
                throw i1.a("Failed to determine bitstream type", null);
            }
            iVar.i();
        }
        if (!this.f3250c) {
            s3.w wVarP = this.f3248a.p(0, 1);
            this.f3248a.b();
            h hVar = this.f3249b;
            hVar.f3268c = this.f3248a;
            hVar.f3267b = wVarP;
            hVar.e(true);
            this.f3250c = true;
        }
        h hVar2 = this.f3249b;
        m5.a.f(hVar2.f3267b);
        int i10 = g0.f10384a;
        int i11 = hVar2.f3273h;
        if (i11 == 0) {
            while (true) {
                if (!hVar2.f3266a.b(iVar)) {
                    hVar2.f3273h = 3;
                    z10 = false;
                    break;
                }
                long jU = iVar.u();
                long j10 = hVar2.f3271f;
                hVar2.f3276k = jU - j10;
                if (!hVar2.d(hVar2.f3266a.f3252b, j10, hVar2.f3275j)) {
                    z10 = true;
                    break;
                }
                hVar2.f3271f = iVar.u();
            }
            if (z10) {
                s0 s0Var = hVar2.f3275j.f3279a;
                hVar2.f3274i = s0Var.G;
                if (!hVar2.f3278m) {
                    hVar2.f3267b.b(s0Var);
                    hVar2.f3278m = true;
                }
                b.a aVar = hVar2.f3275j.f3280b;
                if (aVar == null) {
                    if (iVar.a() == -1) {
                        hVar2.f3269d = new h.b();
                    } else {
                        e eVar = hVar2.f3266a.f3251a;
                        hVar2.f3269d = new a(hVar2, hVar2.f3271f, iVar.a(), eVar.f3259d + eVar.f3260e, eVar.f3257b, (eVar.f3256a & 4) != 0);
                    }
                    hVar2.f3273h = 2;
                    dVar = hVar2.f3266a;
                    wVar = dVar.f3252b;
                    bArr = wVar.f10475a;
                    if (bArr.length == 65025) {
                        return 0;
                    }
                    wVar.B(Arrays.copyOf(bArr, Math.max(65025, wVar.f10477c)), dVar.f3252b.f10477c);
                    return 0;
                }
                hVar2.f3269d = aVar;
                hVar2.f3273h = 2;
                dVar = hVar2.f3266a;
                wVar = dVar.f3252b;
                bArr = wVar.f10475a;
                if (bArr.length == 65025) {
                    return 0;
                }
                wVar.B(Arrays.copyOf(bArr, Math.max(65025, wVar.f10477c)), dVar.f3252b.f10477c);
                return 0;
            }
        } else {
            if (i11 == 1) {
                iVar.k((int) hVar2.f3271f);
                hVar2.f3273h = 2;
                return 0;
            }
            if (i11 == 2) {
                long jB = hVar2.f3269d.b(iVar);
                if (jB >= 0) {
                    tVar.f15076a = jB;
                    return 1;
                }
                if (jB < -1) {
                    hVar2.b(-(jB + 2));
                }
                if (!hVar2.f3277l) {
                    u uVarA = hVar2.f3269d.a();
                    m5.a.f(uVarA);
                    hVar2.f3268c.j(uVarA);
                    hVar2.f3277l = true;
                }
                if (hVar2.f3276k > 0 || hVar2.f3266a.b(iVar)) {
                    hVar2.f3276k = 0L;
                    w wVar2 = hVar2.f3266a.f3252b;
                    long jC = hVar2.c(wVar2);
                    if (jC >= 0) {
                        long j11 = hVar2.f3272g;
                        if (j11 + jC >= hVar2.f3270e) {
                            long j12 = (j11 * 1000000) / ((long) hVar2.f3274i);
                            hVar2.f3267b.f(wVar2, wVar2.f10477c);
                            hVar2.f3267b.c(j12, 1, wVar2.f10477c, 0, null);
                            hVar2.f3270e = -1L;
                        }
                    }
                    hVar2.f3272g += jC;
                    return 0;
                }
                hVar2.f3273h = 3;
            } else if (i11 != 3) {
                throw new IllegalStateException();
            }
        }
        return -1;
    }

    @Override // s3.h
    public final void g(j jVar) {
        this.f3248a = jVar;
    }

    @Override // s3.h
    public final boolean j(s3.i iVar) throws IOException {
        try {
            return c(iVar);
        } catch (i1 unused) {
            return false;
        }
    }
}
