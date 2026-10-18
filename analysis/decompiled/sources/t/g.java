package t;

/* JADX INFO: compiled from: DimensionDependency.java */
/* JADX INFO: loaded from: classes.dex */
public class g extends f {

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public int f15302m;

    public g(p pVar) {
        super(pVar);
        if (pVar instanceof l) {
            this.f15294e = 2;
        } else {
            this.f15294e = 3;
        }
    }

    /* JADX WARN: Type inference failed for: r2v1, types: [java.util.ArrayList, java.util.List<t.d>] */
    @Override // t.f
    public final void d(int i10) {
        if (this.f15299j) {
            return;
        }
        this.f15299j = true;
        this.f15296g = i10;
        for (d dVar : this.f15300k) {
            dVar.a(dVar);
        }
    }
}
