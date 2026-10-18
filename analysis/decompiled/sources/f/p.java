package f;

import android.content.res.Resources;
import p4.n0;
import r2.w;
import y2.v;

/* JADX INFO: compiled from: LayoutIncludeDetector.java */
/* JADX INFO: loaded from: classes.dex */
public final class p implements d3.c, n0 {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final Object f6888h;

    @Override // p4.n0
    public final boolean a() {
        for (n0 n0Var : (n0[]) this.f6888h) {
            if (n0Var.a()) {
                return true;
            }
        }
        return false;
    }

    @Override // d3.c
    public final w b(w wVar, p2.h hVar) {
        return v.d((Resources) this.f6888h, wVar);
    }

    @Override // p4.n0
    public final long c() {
        long jMin = Long.MAX_VALUE;
        for (n0 n0Var : (n0[]) this.f6888h) {
            long jC = n0Var.c();
            if (jC != Long.MIN_VALUE) {
                jMin = Math.min(jMin, jC);
            }
        }
        if (jMin == Long.MAX_VALUE) {
            return Long.MIN_VALUE;
        }
        return jMin;
    }

    @Override // p4.n0
    public final long e() {
        long jMin = Long.MAX_VALUE;
        for (n0 n0Var : (n0[]) this.f6888h) {
            long jE = n0Var.e();
            if (jE != Long.MIN_VALUE) {
                jMin = Math.min(jMin, jE);
            }
        }
        if (jMin == Long.MAX_VALUE) {
            return Long.MIN_VALUE;
        }
        return jMin;
    }

    @Override // p4.n0
    public final boolean f(long j10) {
        boolean zF;
        boolean z10 = false;
        do {
            long jC = c();
            if (jC == Long.MIN_VALUE) {
                break;
            }
            zF = false;
            for (n0 n0Var : (n0[]) this.f6888h) {
                long jC2 = n0Var.c();
                boolean z11 = jC2 != Long.MIN_VALUE && jC2 <= j10;
                if (jC2 == jC || z11) {
                    zF |= n0Var.f(j10);
                }
            }
            z10 |= zF;
        } while (zF);
        return z10;
    }

    @Override // p4.n0
    public final void g(long j10) {
        for (n0 n0Var : (n0[]) this.f6888h) {
            n0Var.g(j10);
        }
    }

    public p(Resources resources) {
        this.f6888h = resources;
    }
}
