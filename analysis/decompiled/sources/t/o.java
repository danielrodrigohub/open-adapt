package t;

import androidx.fragment.app.r0;
import androidx.recyclerview.widget.s;
import java.lang.ref.WeakReference;
import java.util.ArrayList;

/* JADX INFO: compiled from: WidgetGroup.java */
/* JADX INFO: loaded from: classes.dex */
public final class o {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static int f15309f;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f15311b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f15312c;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public ArrayList<s.d> f15310a = new ArrayList<>();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public ArrayList<a> f15313d = null;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f15314e = -1;

    /* JADX INFO: compiled from: WidgetGroup.java */
    public class a {
        public a(s.d dVar, q.d dVar2) {
            new WeakReference(dVar);
            dVar2.o(dVar.J);
            dVar2.o(dVar.K);
            dVar2.o(dVar.L);
            dVar2.o(dVar.M);
            dVar2.o(dVar.N);
        }
    }

    public o(int i10) {
        int i11 = f15309f;
        f15309f = i11 + 1;
        this.f15311b = i11;
        this.f15312c = i10;
    }

    public final boolean a(s.d dVar) {
        if (this.f15310a.contains(dVar)) {
            return false;
        }
        this.f15310a.add(dVar);
        return true;
    }

    public final void b(ArrayList<o> arrayList) {
        int size = this.f15310a.size();
        if (this.f15314e != -1 && size > 0) {
            for (int i10 = 0; i10 < arrayList.size(); i10++) {
                o oVar = arrayList.get(i10);
                if (this.f15314e == oVar.f15311b) {
                    d(this.f15312c, oVar);
                }
            }
        }
        if (size == 0) {
            arrayList.remove(this);
        }
    }

    public final int c(q.d dVar, int i10) {
        int iO;
        int iO2;
        if (this.f15310a.size() == 0) {
            return 0;
        }
        ArrayList<s.d> arrayList = this.f15310a;
        s.e eVar = (s.e) arrayList.get(0).V;
        dVar.u();
        eVar.c(dVar, false);
        for (int i11 = 0; i11 < arrayList.size(); i11++) {
            arrayList.get(i11).c(dVar, false);
        }
        if (i10 == 0 && eVar.A0 > 0) {
            d3.e.a(eVar, dVar, arrayList, 0);
        }
        if (i10 == 1 && eVar.B0 > 0) {
            d3.e.a(eVar, dVar, arrayList, 1);
        }
        try {
            dVar.q();
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        this.f15313d = new ArrayList<>();
        for (int i12 = 0; i12 < arrayList.size(); i12++) {
            this.f15313d.add(new a(arrayList.get(i12), dVar));
        }
        if (i10 == 0) {
            iO = dVar.o(eVar.J);
            iO2 = dVar.o(eVar.L);
            dVar.u();
        } else {
            iO = dVar.o(eVar.K);
            iO2 = dVar.o(eVar.M);
            dVar.u();
        }
        return iO2 - iO;
    }

    public final void d(int i10, o oVar) {
        for (s.d dVar : this.f15310a) {
            oVar.a(dVar);
            if (i10 == 0) {
                dVar.f14883p0 = oVar.f15311b;
            } else {
                dVar.f14885q0 = oVar.f15311b;
            }
        }
        this.f15314e = oVar.f15311b;
    }

    public final String toString() {
        String str;
        StringBuilder sb2 = new StringBuilder();
        int i10 = this.f15312c;
        if (i10 == 0) {
            str = "Horizontal";
        } else if (i10 == 1) {
            str = "Vertical";
        } else {
            str = i10 == 2 ? "Both" : "Unknown";
        }
        sb2.append(str);
        sb2.append(" [");
        String strA = s.a(sb2, this.f15311b, "] <");
        for (s.d dVar : this.f15310a) {
            StringBuilder sbH = r0.h(strA, " ");
            sbH.append(dVar.f14871j0);
            strA = sbH.toString();
        }
        return androidx.recyclerview.widget.d.c(strA, " >");
    }
}
