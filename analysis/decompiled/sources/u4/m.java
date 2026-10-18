package u4;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.Objects;
import m5.g0;
import n3.s0;
import p4.m0;
import y0.r;

/* JADX INFO: compiled from: HlsSampleStream.java */
/* JADX INFO: loaded from: classes.dex */
public final class m implements m0 {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final int f15808h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final n f15809i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int f15810j = -1;

    public m(n nVar, int i10) {
        this.f15809i = nVar;
        this.f15808h = i10;
    }

    /* JADX WARN: Code duplicated, block: B:11:0x0030  */
    public final void a() {
        m5.a.a(this.f15810j == -1);
        n nVar = this.f15809i;
        int i10 = this.f15808h;
        nVar.v();
        Objects.requireNonNull(nVar.R);
        int i11 = nVar.R[i10];
        if (i11 != -1) {
            boolean[] zArr = nVar.U;
            if (zArr[i11]) {
                i11 = -2;
            } else {
                zArr[i11] = true;
            }
        } else if (nVar.Q.contains(nVar.P.b(i10))) {
            i11 = -3;
        } else {
            i11 = -2;
        }
        this.f15810j = i11;
    }

    @Override // p4.m0
    public final void b() throws IOException {
        int i10 = this.f15810j;
        if (i10 == -2) {
            n nVar = this.f15809i;
            nVar.v();
            throw new p(nVar.P.b(this.f15808h).f13224k[0].f11687s);
        }
        if (i10 == -1) {
            this.f15809i.E();
        } else if (i10 != -3) {
            n nVar2 = this.f15809i;
            nVar2.E();
            nVar2.C[i10].w();
        }
    }

    public final boolean c() {
        int i10 = this.f15810j;
        return (i10 == -1 || i10 == -3 || i10 == -2) ? false : true;
    }

    @Override // p4.m0
    public final boolean isReady() {
        if (this.f15810j != -3) {
            if (!c()) {
                return false;
            }
            n nVar = this.f15809i;
            if (!(!nVar.C() && nVar.C[this.f15810j].u(nVar.f15812a0))) {
                return false;
            }
        }
        return true;
    }

    @Override // p4.m0
    public final int j(r rVar, q3.g gVar, int i10) {
        s0 s0Var;
        if (this.f15810j == -3) {
            gVar.k(4);
            return -4;
        }
        if (!c()) {
            return -3;
        }
        n nVar = this.f15809i;
        int i11 = this.f15810j;
        if (nVar.C()) {
            return -3;
        }
        int i12 = 0;
        if (!nVar.f15829u.isEmpty()) {
            int i13 = 0;
            while (true) {
                boolean z10 = true;
                if (i13 >= nVar.f15829u.size() - 1) {
                    break;
                }
                int i14 = nVar.f15829u.get(i13).f15773k;
                int length = nVar.C.length;
                for (int i15 = 0; i15 < length; i15++) {
                    if (nVar.U[i15] && nVar.C[i15].y() == i14) {
                        z10 = false;
                        break;
                    }
                }
                if (!z10) {
                    break;
                }
                i13++;
            }
            g0.Q(nVar.f15829u, 0, i13);
            j jVar = nVar.f15829u.get(0);
            s0 s0Var2 = jVar.f14561d;
            if (!s0Var2.equals(nVar.N)) {
                nVar.f15826r.b(nVar.f15817i, s0Var2, jVar.f14562e, jVar.f14563f, jVar.f14564g);
            }
            nVar.N = s0Var2;
        }
        if (!nVar.f15829u.isEmpty() && !nVar.f15829u.get(0).K) {
            return -3;
        }
        int iA = nVar.C[i11].A(rVar, gVar, i10, nVar.f15812a0);
        if (iA == -5) {
            s0 s0VarG = (s0) rVar.f18272c;
            Objects.requireNonNull(s0VarG);
            if (i11 == nVar.I) {
                int iY = nVar.C[i11].y();
                while (i12 < nVar.f15829u.size() && nVar.f15829u.get(i12).f15773k != iY) {
                    i12++;
                }
                if (i12 < nVar.f15829u.size()) {
                    s0Var = nVar.f15829u.get(i12).f14561d;
                } else {
                    s0Var = nVar.M;
                    Objects.requireNonNull(s0Var);
                }
                s0VarG = s0VarG.g(s0Var);
            }
            rVar.f18272c = s0VarG;
        }
        return iA;
    }

    @Override // p4.m0
    public final int p(long j10) {
        if (!c()) {
            return 0;
        }
        n nVar = this.f15809i;
        int i10 = this.f15810j;
        if (nVar.C()) {
            return 0;
        }
        n.d dVar = nVar.C[i10];
        int iR = dVar.r(j10, nVar.f15812a0);
        ArrayList<j> arrayList = nVar.f15829u;
        j next = null;
        if (!(arrayList instanceof Collection)) {
            Iterator<j> it = arrayList.iterator();
            if (it.hasNext()) {
                do {
                    next = it.next();
                } while (it.hasNext());
            }
        } else if (!arrayList.isEmpty()) {
            next = arrayList.get(arrayList.size() - 1);
        }
        j jVar = next;
        if (jVar != null && !jVar.K) {
            iR = Math.min(iR, jVar.g(i10) - (dVar.f13108q + dVar.f13110s));
        }
        dVar.F(iR);
        return iR;
    }
}
