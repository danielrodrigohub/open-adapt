package l5;

import java.util.ArrayList;
import java.util.Objects;

/* JADX INFO: compiled from: BaseDataSource.java */
/* JADX INFO: loaded from: classes.dex */
public abstract class f implements j {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final boolean f10012a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ArrayList<j0> f10013b = new ArrayList<>(1);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f10014c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public m f10015d;

    public f(boolean z10) {
        this.f10012a = z10;
    }

    @Override // l5.j
    public final void j(j0 j0Var) {
        Objects.requireNonNull(j0Var);
        if (this.f10013b.contains(j0Var)) {
            return;
        }
        this.f10013b.add(j0Var);
        this.f10014c++;
    }

    public final void v(int i10) {
        m mVar = this.f10015d;
        int i11 = m5.g0.f10384a;
        for (int i12 = 0; i12 < this.f10014c; i12++) {
            this.f10013b.get(i12).i(mVar, this.f10012a, i10);
        }
    }

    public final void w() {
        m mVar = this.f10015d;
        int i10 = m5.g0.f10384a;
        for (int i11 = 0; i11 < this.f10014c; i11++) {
            this.f10013b.get(i11).h(mVar, this.f10012a);
        }
        this.f10015d = null;
    }

    public final void x(m mVar) {
        for (int i10 = 0; i10 < this.f10014c; i10++) {
            this.f10013b.get(i10).g();
        }
    }

    public final void y(m mVar) {
        this.f10015d = mVar;
        for (int i10 = 0; i10 < this.f10014c; i10++) {
            this.f10013b.get(i10).f(mVar, this.f10012a);
        }
    }
}
