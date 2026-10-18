package t;

import java.util.Iterator;

/* JADX INFO: compiled from: HelperReferences.java */
/* JADX INFO: loaded from: classes.dex */
public final class k extends p {
    public k(s.d dVar) {
        super(dVar);
    }

    /* JADX WARN: Type inference failed for: r1v1, types: [java.util.ArrayList, java.util.List<t.f>] */
    @Override // t.p, t.d
    public final void a(d dVar) {
        s.a aVar = (s.a) this.f15316b;
        int i10 = aVar.f14814t0;
        Iterator it = this.f15322h.f15301l.iterator();
        int i11 = 0;
        int i12 = -1;
        while (it.hasNext()) {
            int i13 = ((f) it.next()).f15296g;
            if (i12 == -1 || i13 < i12) {
                i12 = i13;
            }
            if (i11 < i13) {
                i11 = i13;
            }
        }
        if (i10 == 0 || i10 == 2) {
            this.f15322h.d(i12 + aVar.f14816v0);
        } else {
            this.f15322h.d(i11 + aVar.f14816v0);
        }
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // t.p
    public final void d() {
        s.d dVar = this.f15316b;
        if (dVar instanceof s.a) {
            f fVar = this.f15322h;
            fVar.f15291b = true;
            s.a aVar = (s.a) dVar;
            int i10 = aVar.f14814t0;
            boolean z10 = aVar.f14815u0;
            int i11 = 0;
            if (i10 == 0) {
                fVar.f15294e = 4;
                while (i11 < aVar.f14910s0) {
                    s.d dVar2 = aVar.f14909r0[i11];
                    if (z10 || dVar2.f14869i0 != 8) {
                        f fVar2 = dVar2.f14859d.f15322h;
                        fVar2.f15300k.add(this.f15322h);
                        this.f15322h.f15301l.add(fVar2);
                    }
                    i11++;
                }
                m(this.f15316b.f14859d.f15322h);
                m(this.f15316b.f14859d.f15323i);
                return;
            }
            if (i10 == 1) {
                fVar.f15294e = 5;
                while (i11 < aVar.f14910s0) {
                    s.d dVar3 = aVar.f14909r0[i11];
                    if (z10 || dVar3.f14869i0 != 8) {
                        f fVar3 = dVar3.f14859d.f15323i;
                        fVar3.f15300k.add(this.f15322h);
                        this.f15322h.f15301l.add(fVar3);
                    }
                    i11++;
                }
                m(this.f15316b.f14859d.f15322h);
                m(this.f15316b.f14859d.f15323i);
                return;
            }
            if (i10 == 2) {
                fVar.f15294e = 6;
                while (i11 < aVar.f14910s0) {
                    s.d dVar4 = aVar.f14909r0[i11];
                    if (z10 || dVar4.f14869i0 != 8) {
                        f fVar4 = dVar4.f14860e.f15322h;
                        fVar4.f15300k.add(this.f15322h);
                        this.f15322h.f15301l.add(fVar4);
                    }
                    i11++;
                }
                m(this.f15316b.f14860e.f15322h);
                m(this.f15316b.f14860e.f15323i);
                return;
            }
            if (i10 != 3) {
                return;
            }
            fVar.f15294e = 7;
            while (i11 < aVar.f14910s0) {
                s.d dVar5 = aVar.f14909r0[i11];
                if (z10 || dVar5.f14869i0 != 8) {
                    f fVar5 = dVar5.f14860e.f15323i;
                    fVar5.f15300k.add(this.f15322h);
                    this.f15322h.f15301l.add(fVar5);
                }
                i11++;
            }
            m(this.f15316b.f14860e.f15322h);
            m(this.f15316b.f14860e.f15323i);
        }
    }

    @Override // t.p
    public final void e() {
        s.d dVar = this.f15316b;
        if (dVar instanceof s.a) {
            int i10 = ((s.a) dVar).f14814t0;
            if (i10 == 0 || i10 == 1) {
                dVar.f14854a0 = this.f15322h.f15296g;
            } else {
                dVar.f14856b0 = this.f15322h.f15296g;
            }
        }
    }

    @Override // t.p
    public final void f() {
        this.f15317c = null;
        this.f15322h.c();
    }

    @Override // t.p
    public final boolean k() {
        return false;
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    public final void m(f fVar) {
        this.f15322h.f15300k.add(fVar);
        fVar.f15301l.add(this.f15322h);
    }
}
