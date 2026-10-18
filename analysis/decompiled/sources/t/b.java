package t;

import androidx.constraintlayout.widget.ConstraintLayout;
import java.util.ArrayList;

/* JADX INFO: compiled from: BasicMeasure.java */
/* JADX INFO: loaded from: classes.dex */
public final class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ArrayList<s.d> f15267a = new ArrayList<>();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public a f15268b = new a();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public s.e f15269c;

    /* JADX INFO: compiled from: BasicMeasure.java */
    public static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public int f15270a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f15271b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public int f15272c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public int f15273d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public int f15274e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public int f15275f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        public int f15276g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public boolean f15277h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public boolean f15278i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public int f15279j;
    }

    /* JADX INFO: renamed from: t.b$b, reason: collision with other inner class name */
    /* JADX INFO: compiled from: BasicMeasure.java */
    public interface InterfaceC0261b {
    }

    public b(s.e eVar) {
        this.f15269c = eVar;
    }

    public final boolean a(InterfaceC0261b interfaceC0261b, s.d dVar, int i10) {
        a aVar = this.f15268b;
        int[] iArr = dVar.U;
        aVar.f15270a = iArr[0];
        aVar.f15271b = iArr[1];
        aVar.f15272c = dVar.r();
        this.f15268b.f15273d = dVar.k();
        a aVar2 = this.f15268b;
        aVar2.f15278i = false;
        aVar2.f15279j = i10;
        boolean z10 = aVar2.f15270a == 3;
        boolean z11 = aVar2.f15271b == 3;
        boolean z12 = z10 && dVar.Y > 0.0f;
        boolean z13 = z11 && dVar.Y > 0.0f;
        if (z12 && dVar.f14888t[0] == 4) {
            aVar2.f15270a = 1;
        }
        if (z13 && dVar.f14888t[1] == 4) {
            aVar2.f15271b = 1;
        }
        ((ConstraintLayout.b) interfaceC0261b).b(dVar, aVar2);
        dVar.Q(this.f15268b.f15274e);
        dVar.L(this.f15268b.f15275f);
        a aVar3 = this.f15268b;
        dVar.E = aVar3.f15277h;
        dVar.I(aVar3.f15276g);
        a aVar4 = this.f15268b;
        aVar4.f15279j = 0;
        return aVar4.f15278i;
    }

    public final void b(s.e eVar, int i10, int i11, int i12) {
        int i13 = eVar.d0;
        int i14 = eVar.f14861e0;
        eVar.O(0);
        eVar.N(0);
        eVar.Q(i11);
        eVar.L(i12);
        eVar.O(i13);
        eVar.N(i14);
        s.e eVar2 = this.f15269c;
        eVar2.f14897u0 = i10;
        eVar2.T();
    }

    public final void c(s.e eVar) {
        this.f15267a.clear();
        int size = eVar.f14911r0.size();
        for (int i10 = 0; i10 < size; i10++) {
            s.d dVar = eVar.f14911r0.get(i10);
            int[] iArr = dVar.U;
            if (iArr[0] == 3 || iArr[1] == 3) {
                this.f15267a.add(dVar);
            }
        }
        eVar.b0();
    }
}
