package n3;

/* JADX INFO: compiled from: R8$$SyntheticClass */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class a0 implements o0.e, m5.o.a, m5.f {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f11222b;

    public /* synthetic */ a0(Object obj) {
        this.f11222b = obj;
    }

    @Override // m5.f
    public final void b(Object obj) {
        ((r3.k.a) obj).e((Exception) this.f11222b);
    }

    @Override // m5.o.a
    public final void invoke(Object obj) {
        l1 l1Var = (l1) this.f11222b;
        o1.c cVar = (o1.c) obj;
        boolean z10 = l1Var.f11522g;
        cVar.e();
        cVar.N(l1Var.f11522g);
    }
}
