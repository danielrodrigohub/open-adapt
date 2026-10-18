package t;

/* JADX INFO: compiled from: GuidelineReference.java */
/* JADX INFO: loaded from: classes.dex */
public final class j extends p {
    public j(s.d dVar) {
        super(dVar);
        dVar.f14859d.f();
        dVar.f14860e.f();
        this.f15320f = ((s.f) dVar).f14907v0;
    }

    /* JADX WARN: Type inference failed for: r3v2, types: [java.util.ArrayList, java.util.List<t.f>] */
    @Override // t.p, t.d
    public final void a(d dVar) {
        f fVar = this.f15322h;
        if (fVar.f15292c && !fVar.f15299j) {
            this.f15322h.d((int) ((((f) fVar.f15301l.get(0)).f15296g * ((s.f) this.f15316b).f14903r0) + 0.5f));
        }
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // t.p
    public final void d() {
        s.d dVar = this.f15316b;
        s.f fVar = (s.f) dVar;
        int i10 = fVar.f14904s0;
        int i11 = fVar.f14905t0;
        if (fVar.f14907v0 == 1) {
            if (i10 != -1) {
                this.f15322h.f15301l.add(dVar.V.f14859d.f15322h);
                this.f15316b.V.f14859d.f15322h.f15300k.add(this.f15322h);
                this.f15322h.f15295f = i10;
            } else if (i11 != -1) {
                this.f15322h.f15301l.add(dVar.V.f14859d.f15323i);
                this.f15316b.V.f14859d.f15323i.f15300k.add(this.f15322h);
                this.f15322h.f15295f = -i11;
            } else {
                f fVar2 = this.f15322h;
                fVar2.f15291b = true;
                fVar2.f15301l.add(dVar.V.f14859d.f15323i);
                this.f15316b.V.f14859d.f15323i.f15300k.add(this.f15322h);
            }
            m(this.f15316b.f14859d.f15322h);
            m(this.f15316b.f14859d.f15323i);
            return;
        }
        if (i10 != -1) {
            this.f15322h.f15301l.add(dVar.V.f14860e.f15322h);
            this.f15316b.V.f14860e.f15322h.f15300k.add(this.f15322h);
            this.f15322h.f15295f = i10;
        } else if (i11 != -1) {
            this.f15322h.f15301l.add(dVar.V.f14860e.f15323i);
            this.f15316b.V.f14860e.f15323i.f15300k.add(this.f15322h);
            this.f15322h.f15295f = -i11;
        } else {
            f fVar3 = this.f15322h;
            fVar3.f15291b = true;
            fVar3.f15301l.add(dVar.V.f14860e.f15323i);
            this.f15316b.V.f14860e.f15323i.f15300k.add(this.f15322h);
        }
        m(this.f15316b.f14860e.f15322h);
        m(this.f15316b.f14860e.f15323i);
    }

    @Override // t.p
    public final void e() {
        s.d dVar = this.f15316b;
        if (((s.f) dVar).f14907v0 == 1) {
            dVar.f14854a0 = this.f15322h.f15296g;
        } else {
            dVar.f14856b0 = this.f15322h.f15296g;
        }
    }

    @Override // t.p
    public final void f() {
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
