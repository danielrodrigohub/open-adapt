package androidx.recyclerview.widget;

import android.animation.TimeInterpolator;
import android.animation.ValueAnimator;
import android.view.View;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: compiled from: DefaultItemAnimator.java */
/* JADX INFO: loaded from: classes.dex */
public final class n extends j0 {

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public static TimeInterpolator f2676s;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public ArrayList<RecyclerView.b0> f2677h = new ArrayList<>();

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public ArrayList<RecyclerView.b0> f2678i = new ArrayList<>();

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public ArrayList<b> f2679j = new ArrayList<>();

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public ArrayList<a> f2680k = new ArrayList<>();

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public ArrayList<ArrayList<RecyclerView.b0>> f2681l = new ArrayList<>();

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public ArrayList<ArrayList<b>> f2682m = new ArrayList<>();

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public ArrayList<ArrayList<a>> f2683n = new ArrayList<>();

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public ArrayList<RecyclerView.b0> f2684o = new ArrayList<>();

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public ArrayList<RecyclerView.b0> f2685p = new ArrayList<>();

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public ArrayList<RecyclerView.b0> f2686q = new ArrayList<>();

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public ArrayList<RecyclerView.b0> f2687r = new ArrayList<>();

    /* JADX INFO: compiled from: DefaultItemAnimator.java */
    public static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public RecyclerView.b0 f2688a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public RecyclerView.b0 f2689b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public int f2690c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public int f2691d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public int f2692e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public int f2693f;

        public a(RecyclerView.b0 b0Var, RecyclerView.b0 b0Var2, int i10, int i11, int i12, int i13) {
            this.f2688a = b0Var;
            this.f2689b = b0Var2;
            this.f2690c = i10;
            this.f2691d = i11;
            this.f2692e = i12;
            this.f2693f = i13;
        }

        public final String toString() {
            StringBuilder sbC = a0.b.c("ChangeInfo{oldHolder=");
            sbC.append(this.f2688a);
            sbC.append(", newHolder=");
            sbC.append(this.f2689b);
            sbC.append(", fromX=");
            sbC.append(this.f2690c);
            sbC.append(", fromY=");
            sbC.append(this.f2691d);
            sbC.append(", toX=");
            sbC.append(this.f2692e);
            sbC.append(", toY=");
            return a0.b.b(sbC, this.f2693f, '}');
        }
    }

    /* JADX INFO: compiled from: DefaultItemAnimator.java */
    public static class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public RecyclerView.b0 f2694a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f2695b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public int f2696c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public int f2697d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public int f2698e;

        public b(RecyclerView.b0 b0Var, int i10, int i11, int i12, int i13) {
            this.f2694a = b0Var;
            this.f2695b = i10;
            this.f2696c = i11;
            this.f2697d = i12;
            this.f2698e = i13;
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.j
    public final void e(RecyclerView.b0 b0Var) {
        View view = b0Var.f2453a;
        view.animate().cancel();
        int size = this.f2679j.size();
        while (true) {
            size--;
            if (size < 0) {
                break;
            }
            if (this.f2679j.get(size).f2694a == b0Var) {
                view.setTranslationY(0.0f);
                view.setTranslationX(0.0f);
                c(b0Var);
                this.f2679j.remove(size);
            }
        }
        k(this.f2680k, b0Var);
        if (this.f2677h.remove(b0Var)) {
            view.setAlpha(1.0f);
            c(b0Var);
        }
        if (this.f2678i.remove(b0Var)) {
            view.setAlpha(1.0f);
            c(b0Var);
        }
        for (int size2 = this.f2683n.size() - 1; size2 >= 0; size2--) {
            ArrayList<a> arrayList = this.f2683n.get(size2);
            k(arrayList, b0Var);
            if (arrayList.isEmpty()) {
                this.f2683n.remove(size2);
            }
        }
        for (int size3 = this.f2682m.size() - 1; size3 >= 0; size3--) {
            ArrayList<b> arrayList2 = this.f2682m.get(size3);
            for (int size4 = arrayList2.size() - 1; size4 >= 0; size4--) {
                if (arrayList2.get(size4).f2694a == b0Var) {
                    view.setTranslationY(0.0f);
                    view.setTranslationX(0.0f);
                    c(b0Var);
                    arrayList2.remove(size4);
                    if (!arrayList2.isEmpty()) {
                        break;
                    }
                    this.f2682m.remove(size3);
                    break;
                }
            }
        }
        for (int size5 = this.f2681l.size() - 1; size5 >= 0; size5--) {
            ArrayList<RecyclerView.b0> arrayList3 = this.f2681l.get(size5);
            if (arrayList3.remove(b0Var)) {
                view.setAlpha(1.0f);
                c(b0Var);
                if (arrayList3.isEmpty()) {
                    this.f2681l.remove(size5);
                }
            }
        }
        this.f2686q.remove(b0Var);
        this.f2684o.remove(b0Var);
        this.f2687r.remove(b0Var);
        this.f2685p.remove(b0Var);
        j();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.j
    public final void f() {
        int size = this.f2679j.size();
        while (true) {
            size--;
            if (size < 0) {
                break;
            }
            b bVar = this.f2679j.get(size);
            View view = bVar.f2694a.f2453a;
            view.setTranslationY(0.0f);
            view.setTranslationX(0.0f);
            c(bVar.f2694a);
            this.f2679j.remove(size);
        }
        int size2 = this.f2677h.size();
        while (true) {
            size2--;
            if (size2 < 0) {
                break;
            }
            c(this.f2677h.get(size2));
            this.f2677h.remove(size2);
        }
        int size3 = this.f2678i.size();
        while (true) {
            size3--;
            if (size3 < 0) {
                break;
            }
            RecyclerView.b0 b0Var = this.f2678i.get(size3);
            b0Var.f2453a.setAlpha(1.0f);
            c(b0Var);
            this.f2678i.remove(size3);
        }
        int size4 = this.f2680k.size();
        while (true) {
            size4--;
            if (size4 < 0) {
                break;
            }
            a aVar = this.f2680k.get(size4);
            RecyclerView.b0 b0Var2 = aVar.f2688a;
            if (b0Var2 != null) {
                l(aVar, b0Var2);
            }
            RecyclerView.b0 b0Var3 = aVar.f2689b;
            if (b0Var3 != null) {
                l(aVar, b0Var3);
            }
        }
        this.f2680k.clear();
        if (!g()) {
            return;
        }
        int size5 = this.f2682m.size();
        while (true) {
            size5--;
            if (size5 < 0) {
                break;
            }
            ArrayList<b> arrayList = this.f2682m.get(size5);
            int size6 = arrayList.size();
            while (true) {
                size6--;
                if (size6 >= 0) {
                    b bVar2 = arrayList.get(size6);
                    View view2 = bVar2.f2694a.f2453a;
                    view2.setTranslationY(0.0f);
                    view2.setTranslationX(0.0f);
                    c(bVar2.f2694a);
                    arrayList.remove(size6);
                    if (arrayList.isEmpty()) {
                        this.f2682m.remove(arrayList);
                    }
                }
            }
        }
        int size7 = this.f2681l.size();
        while (true) {
            size7--;
            if (size7 < 0) {
                break;
            }
            ArrayList<RecyclerView.b0> arrayList2 = this.f2681l.get(size7);
            int size8 = arrayList2.size();
            while (true) {
                size8--;
                if (size8 >= 0) {
                    RecyclerView.b0 b0Var4 = arrayList2.get(size8);
                    b0Var4.f2453a.setAlpha(1.0f);
                    c(b0Var4);
                    arrayList2.remove(size8);
                    if (arrayList2.isEmpty()) {
                        this.f2681l.remove(arrayList2);
                    }
                }
            }
        }
        int size9 = this.f2683n.size();
        while (true) {
            size9--;
            if (size9 < 0) {
                i(this.f2686q);
                i(this.f2685p);
                i(this.f2684o);
                i(this.f2687r);
                d();
                return;
            }
            ArrayList<a> arrayList3 = this.f2683n.get(size9);
            int size10 = arrayList3.size();
            while (true) {
                size10--;
                if (size10 >= 0) {
                    a aVar2 = arrayList3.get(size10);
                    RecyclerView.b0 b0Var5 = aVar2.f2688a;
                    if (b0Var5 != null) {
                        l(aVar2, b0Var5);
                    }
                    RecyclerView.b0 b0Var6 = aVar2.f2689b;
                    if (b0Var6 != null) {
                        l(aVar2, b0Var6);
                    }
                    if (arrayList3.isEmpty()) {
                        this.f2683n.remove(arrayList3);
                    }
                }
            }
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.j
    public final boolean g() {
        return (this.f2678i.isEmpty() && this.f2680k.isEmpty() && this.f2679j.isEmpty() && this.f2677h.isEmpty() && this.f2685p.isEmpty() && this.f2686q.isEmpty() && this.f2684o.isEmpty() && this.f2687r.isEmpty() && this.f2682m.isEmpty() && this.f2681l.isEmpty() && this.f2683n.isEmpty()) ? false : true;
    }

    @Override // androidx.recyclerview.widget.j0
    public final boolean h(RecyclerView.b0 b0Var, int i10, int i11, int i12, int i13) {
        View view = b0Var.f2453a;
        int translationX = i10 + ((int) view.getTranslationX());
        int translationY = i11 + ((int) b0Var.f2453a.getTranslationY());
        m(b0Var);
        int i14 = i12 - translationX;
        int i15 = i13 - translationY;
        if (i14 == 0 && i15 == 0) {
            c(b0Var);
            return false;
        }
        if (i14 != 0) {
            view.setTranslationX(-i14);
        }
        if (i15 != 0) {
            view.setTranslationY(-i15);
        }
        this.f2679j.add(new b(b0Var, translationX, translationY, i12, i13));
        return true;
    }

    public final void i(List<RecyclerView.b0> list) {
        for (int size = list.size() - 1; size >= 0; size--) {
            list.get(size).f2453a.animate().cancel();
        }
    }

    public final void j() {
        if (g()) {
            return;
        }
        d();
    }

    public final void k(List<a> list, RecyclerView.b0 b0Var) {
        for (int size = list.size() - 1; size >= 0; size--) {
            a aVar = list.get(size);
            if (l(aVar, b0Var) && aVar.f2688a == null && aVar.f2689b == null) {
                list.remove(aVar);
            }
        }
    }

    public final boolean l(a aVar, RecyclerView.b0 b0Var) {
        if (aVar.f2689b == b0Var) {
            aVar.f2689b = null;
        } else {
            if (aVar.f2688a != b0Var) {
                return false;
            }
            aVar.f2688a = null;
        }
        b0Var.f2453a.setAlpha(1.0f);
        b0Var.f2453a.setTranslationX(0.0f);
        b0Var.f2453a.setTranslationY(0.0f);
        c(b0Var);
        return true;
    }

    public final void m(RecyclerView.b0 b0Var) {
        if (f2676s == null) {
            f2676s = new ValueAnimator().getInterpolator();
        }
        b0Var.f2453a.animate().setInterpolator(f2676s);
        e(b0Var);
    }
}
