package n3;

/* JADX INFO: compiled from: R8$$SyntheticClass */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class y implements m5.o.a, s3.l {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f11744b;

    public /* synthetic */ y(Object obj) {
        this.f11744b = obj;
    }

    @Override // s3.l
    public final s3.h[] c() {
        s0 s0Var = (s0) this.f11744b;
        s3.h[] hVarArr = new s3.h[1];
        z4.j.a aVar = z4.j.f19339a;
        hVarArr[0] = aVar.b(s0Var) ? new z4.k(aVar.a(s0Var), s0Var) : new p4.n.b(s0Var);
        return hVarArr;
    }

    @Override // m5.o.a
    public final void invoke(Object obj) {
        ((o1.c) obj).j0(((k0) this.f11744b).N);
    }
}
