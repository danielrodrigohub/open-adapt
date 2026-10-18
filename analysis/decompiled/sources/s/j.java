package s;

import java.util.ArrayList;

/* JADX INFO: compiled from: WidgetContainer.java */
/* JADX INFO: loaded from: classes.dex */
public class j extends d {

    /* JADX INFO: renamed from: r0, reason: collision with root package name */
    public ArrayList<d> f14911r0 = new ArrayList<>();

    @Override // s.d
    public void D() {
        this.f14911r0.clear();
        super.D();
    }

    @Override // s.d
    public final void F(q.c cVar) {
        super.F(cVar);
        int size = this.f14911r0.size();
        for (int i10 = 0; i10 < size; i10++) {
            this.f14911r0.get(i10).F(cVar);
        }
    }

    public void T() {
        ArrayList<d> arrayList = this.f14911r0;
        if (arrayList == null) {
            return;
        }
        int size = arrayList.size();
        for (int i10 = 0; i10 < size; i10++) {
            d dVar = this.f14911r0.get(i10);
            if (dVar instanceof j) {
                ((j) dVar).T();
            }
        }
    }
}
