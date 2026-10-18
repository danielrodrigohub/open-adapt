package androidx.transition;

import android.animation.Animator;
import android.animation.TimeInterpolator;
import android.graphics.Path;
import android.util.SparseIntArray;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ListView;
import androidx.fragment.app.r0;
import androidx.lifecycle.k0;
import g1.p;
import g1.r;
import g1.s;
import j0.a0;
import j0.g0;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.WeakHashMap;

/* JADX INFO: compiled from: Transition.java */
/* JADX INFO: loaded from: classes.dex */
public abstract class f implements Cloneable {
    public static final int[] B = {2, 1, 3, 4};
    public static final a C = new a();
    public static ThreadLocal<p.a<Animator, b>> D = new ThreadLocal<>();

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public ArrayList<g1.g> f2928r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public ArrayList<g1.g> f2929s;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public c f2936z;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public String f2918h = getClass().getName();

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public long f2919i = -1;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public long f2920j = -1;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public TimeInterpolator f2921k = null;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public ArrayList<Integer> f2922l = new ArrayList<>();

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public ArrayList<View> f2923m = new ArrayList<>();

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public g1.h f2924n = new g1.h();

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public g1.h f2925o = new g1.h();

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public i f2926p = null;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public int[] f2927q = B;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public ArrayList<Animator> f2930t = new ArrayList<>();

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public int f2931u = 0;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public boolean f2932v = false;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public boolean f2933w = false;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public ArrayList<d> f2934x = null;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public ArrayList<Animator> f2935y = new ArrayList<>();
    public g1.c A = C;

    /* JADX INFO: compiled from: Transition.java */
    public class a extends g1.c {
        public a() {
            super(0);
        }

        @Override // g1.c
        public final Path b(float f10, float f11, float f12, float f13) {
            Path path = new Path();
            path.moveTo(f10, f11);
            path.lineTo(f12, f13);
            return path;
        }
    }

    /* JADX INFO: compiled from: Transition.java */
    public static class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public View f2937a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public String f2938b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public g1.g f2939c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public s f2940d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public f f2941e;

        public b(View view, String str, f fVar, s sVar, g1.g gVar) {
            this.f2937a = view;
            this.f2938b = str;
            this.f2939c = gVar;
            this.f2940d = sVar;
            this.f2941e = fVar;
        }
    }

    /* JADX INFO: compiled from: Transition.java */
    public static abstract class c {
    }

    /* JADX INFO: compiled from: Transition.java */
    public interface d {
        void a();

        void b(f fVar);

        void c();

        void d();

        void e(f fVar);
    }

    public static void c(g1.h hVar, View view, g1.g gVar) {
        hVar.f7546a.put(view, gVar);
        int id2 = view.getId();
        if (id2 >= 0) {
            if (hVar.f7547b.indexOfKey(id2) >= 0) {
                hVar.f7547b.put(id2, null);
            } else {
                hVar.f7547b.put(id2, view);
            }
        }
        WeakHashMap<View, g0> weakHashMap = a0.f9147a;
        String strK = a0.i.k(view);
        if (strK != null) {
            if (hVar.f7549d.containsKey(strK)) {
                hVar.f7549d.put(strK, null);
            } else {
                hVar.f7549d.put(strK, view);
            }
        }
        if (view.getParent() instanceof ListView) {
            ListView listView = (ListView) view.getParent();
            if (listView.getAdapter().hasStableIds()) {
                long itemIdAtPosition = listView.getItemIdAtPosition(listView.getPositionForView(view));
                p.d<View> dVar = hVar.f7548c;
                if (dVar.f12584h) {
                    dVar.c();
                }
                if (k0.f(dVar.f12585i, dVar.f12587k, itemIdAtPosition) < 0) {
                    a0.d.r(view, true);
                    hVar.f7548c.f(itemIdAtPosition, view);
                    return;
                }
                View viewD = hVar.f7548c.d(itemIdAtPosition, null);
                if (viewD != null) {
                    a0.d.r(viewD, false);
                    hVar.f7548c.f(itemIdAtPosition, null);
                }
            }
        }
    }

    public static p.a<Animator, b> o() {
        p.a<Animator, b> aVar = D.get();
        if (aVar != null) {
            return aVar;
        }
        p.a<Animator, b> aVar2 = new p.a<>();
        D.set(aVar2);
        return aVar2;
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [java.util.HashMap, java.util.Map<java.lang.String, java.lang.Object>] */
    /* JADX WARN: Type inference failed for: r1v1, types: [java.util.HashMap, java.util.Map<java.lang.String, java.lang.Object>] */
    public static boolean t(g1.g gVar, g1.g gVar2, String str) {
        Object obj = gVar.f7543a.get(str);
        Object obj2 = gVar2.f7543a.get(str);
        if (obj == null && obj2 == null) {
            return false;
        }
        if (obj == null || obj2 == null) {
            return true;
        }
        return true ^ obj.equals(obj2);
    }

    public void A(c cVar) {
        this.f2936z = cVar;
    }

    public f B(TimeInterpolator timeInterpolator) {
        this.f2921k = timeInterpolator;
        return this;
    }

    public void C(g1.c cVar) {
        if (cVar == null) {
            this.A = C;
        } else {
            this.A = cVar;
        }
    }

    public void D() {
    }

    public f E(long j10) {
        this.f2919i = j10;
        return this;
    }

    public final void F() {
        if (this.f2931u == 0) {
            ArrayList<d> arrayList = this.f2934x;
            if (arrayList != null && arrayList.size() > 0) {
                ArrayList arrayList2 = (ArrayList) this.f2934x.clone();
                int size = arrayList2.size();
                for (int i10 = 0; i10 < size; i10++) {
                    ((d) arrayList2.get(i10)).b(this);
                }
            }
            this.f2933w = false;
        }
        this.f2931u++;
    }

    public String G(String str) {
        StringBuilder sbC = a0.b.c(str);
        sbC.append(getClass().getSimpleName());
        sbC.append("@");
        sbC.append(Integer.toHexString(hashCode()));
        sbC.append(": ");
        String string = sbC.toString();
        if (this.f2920j != -1) {
            StringBuilder sbH = r0.h(string, "dur(");
            sbH.append(this.f2920j);
            sbH.append(") ");
            string = sbH.toString();
        }
        if (this.f2919i != -1) {
            StringBuilder sbH2 = r0.h(string, "dly(");
            sbH2.append(this.f2919i);
            sbH2.append(") ");
            string = sbH2.toString();
        }
        if (this.f2921k != null) {
            StringBuilder sbH3 = r0.h(string, "interp(");
            sbH3.append(this.f2921k);
            sbH3.append(") ");
            string = sbH3.toString();
        }
        if (this.f2922l.size() <= 0 && this.f2923m.size() <= 0) {
            return string;
        }
        String strC = androidx.recyclerview.widget.d.c(string, "tgts(");
        if (this.f2922l.size() > 0) {
            for (int i10 = 0; i10 < this.f2922l.size(); i10++) {
                if (i10 > 0) {
                    strC = androidx.recyclerview.widget.d.c(strC, ", ");
                }
                StringBuilder sbC2 = a0.b.c(strC);
                sbC2.append(this.f2922l.get(i10));
                strC = sbC2.toString();
            }
        }
        if (this.f2923m.size() > 0) {
            for (int i11 = 0; i11 < this.f2923m.size(); i11++) {
                if (i11 > 0) {
                    strC = androidx.recyclerview.widget.d.c(strC, ", ");
                }
                StringBuilder sbC3 = a0.b.c(strC);
                sbC3.append(this.f2923m.get(i11));
                strC = sbC3.toString();
            }
        }
        return androidx.recyclerview.widget.d.c(strC, ")");
    }

    public f a(d dVar) {
        if (this.f2934x == null) {
            this.f2934x = new ArrayList<>();
        }
        this.f2934x.add(dVar);
        return this;
    }

    public f b(View view) {
        this.f2923m.add(view);
        return this;
    }

    public void cancel() {
        int size = this.f2930t.size();
        while (true) {
            size--;
            if (size < 0) {
                break;
            } else {
                this.f2930t.get(size).cancel();
            }
        }
        ArrayList<d> arrayList = this.f2934x;
        if (arrayList == null || arrayList.size() <= 0) {
            return;
        }
        ArrayList arrayList2 = (ArrayList) this.f2934x.clone();
        int size2 = arrayList2.size();
        for (int i10 = 0; i10 < size2; i10++) {
            ((d) arrayList2.get(i10)).d();
        }
    }

    public abstract void d(g1.g gVar);

    public final void e(View view, boolean z10) {
        if (view == null) {
            return;
        }
        view.getId();
        if (view.getParent() instanceof ViewGroup) {
            g1.g gVar = new g1.g(view);
            if (z10) {
                g(gVar);
            } else {
                d(gVar);
            }
            gVar.f7545c.add(this);
            f(gVar);
            if (z10) {
                c(this.f2924n, view, gVar);
            } else {
                c(this.f2925o, view, gVar);
            }
        }
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            for (int i10 = 0; i10 < viewGroup.getChildCount(); i10++) {
                e(viewGroup.getChildAt(i10), z10);
            }
        }
    }

    public void f(g1.g gVar) {
    }

    public abstract void g(g1.g gVar);

    public final void h(ViewGroup viewGroup, boolean z10) {
        i(z10);
        if (this.f2922l.size() <= 0 && this.f2923m.size() <= 0) {
            e(viewGroup, z10);
            return;
        }
        for (int i10 = 0; i10 < this.f2922l.size(); i10++) {
            View viewFindViewById = viewGroup.findViewById(this.f2922l.get(i10).intValue());
            if (viewFindViewById != null) {
                g1.g gVar = new g1.g(viewFindViewById);
                if (z10) {
                    g(gVar);
                } else {
                    d(gVar);
                }
                gVar.f7545c.add(this);
                f(gVar);
                if (z10) {
                    c(this.f2924n, viewFindViewById, gVar);
                } else {
                    c(this.f2925o, viewFindViewById, gVar);
                }
            }
        }
        for (int i11 = 0; i11 < this.f2923m.size(); i11++) {
            View view = this.f2923m.get(i11);
            g1.g gVar2 = new g1.g(view);
            if (z10) {
                g(gVar2);
            } else {
                d(gVar2);
            }
            gVar2.f7545c.add(this);
            f(gVar2);
            if (z10) {
                c(this.f2924n, view, gVar2);
            } else {
                c(this.f2925o, view, gVar2);
            }
        }
    }

    public final void i(boolean z10) {
        if (z10) {
            this.f2924n.f7546a.clear();
            this.f2924n.f7547b.clear();
            this.f2924n.f7548c.a();
        } else {
            this.f2925o.f7546a.clear();
            this.f2925o.f7547b.clear();
            this.f2925o.f7548c.a();
        }
    }

    @Override // 
    /* JADX INFO: renamed from: j, reason: merged with bridge method [inline-methods] */
    public f clone() {
        try {
            f fVar = (f) super.clone();
            fVar.f2935y = new ArrayList<>();
            fVar.f2924n = new g1.h();
            fVar.f2925o = new g1.h();
            fVar.f2928r = null;
            fVar.f2929s = null;
            return fVar;
        } catch (CloneNotSupportedException unused) {
            return null;
        }
    }

    public Animator k(ViewGroup viewGroup, g1.g gVar, g1.g gVar2) {
        return null;
    }

    /* JADX WARN: Code duplicated, block: B:16:0x0044  */
    /* JADX WARN: Type inference failed for: r10v11, types: [java.util.HashMap, java.util.Map<java.lang.String, java.lang.Object>] */
    /* JADX WARN: Type inference failed for: r2v17, types: [java.util.HashMap, java.util.Map<java.lang.String, java.lang.Object>] */
    public void l(ViewGroup viewGroup, g1.h hVar, g1.h hVar2, ArrayList<g1.g> arrayList, ArrayList<g1.g> arrayList2) {
        Animator animatorK;
        g1.g gVar;
        int i10;
        View view;
        Animator animator;
        Animator animator2;
        g1.g gVar2;
        g1.g gVar3;
        Animator animator3;
        p.a<Animator, b> aVarO = o();
        SparseIntArray sparseIntArray = new SparseIntArray();
        int size = arrayList.size();
        int i11 = 0;
        while (i11 < size) {
            g1.g gVar4 = arrayList.get(i11);
            g1.g gVar5 = arrayList2.get(i11);
            if (gVar4 != null && !gVar4.f7545c.contains(this)) {
                gVar4 = null;
            }
            if (gVar5 != null && !gVar5.f7545c.contains(this)) {
                gVar5 = null;
            }
            if (gVar4 == null && gVar5 == null) {
                i10 = size;
            } else if (!(gVar4 == null || gVar5 == null || r(gVar4, gVar5)) || (animatorK = k(viewGroup, gVar4, gVar5)) == null) {
                i10 = size;
            } else {
                if (gVar5 != null) {
                    View view2 = gVar5.f7544b;
                    String[] strArrP = p();
                    if (strArrP == null || strArrP.length <= 0) {
                        animator2 = animatorK;
                        i10 = size;
                        gVar2 = null;
                    } else {
                        gVar3 = new g1.g(view2);
                        g1.g orDefault = hVar2.f7546a.getOrDefault(view2, null);
                        if (orDefault != null) {
                            int i12 = 0;
                            while (i12 < strArrP.length) {
                                gVar3.f7543a.put(strArrP[i12], orDefault.f7543a.get(strArrP[i12]));
                                i12++;
                                animatorK = animatorK;
                                size = size;
                                orDefault = orDefault;
                            }
                        }
                        animator2 = animatorK;
                        i10 = size;
                        int i13 = aVarO.f12614j;
                        int i14 = 0;
                        while (true) {
                            if (i14 < i13) {
                                b orDefault2 = aVarO.getOrDefault(aVarO.i(i14), null);
                                if (orDefault2.f2939c != null && orDefault2.f2937a == view2 && orDefault2.f2938b.equals(this.f2918h) && orDefault2.f2939c.equals(gVar3)) {
                                    animator3 = null;
                                    break;
                                }
                                i14++;
                            } else {
                                gVar2 = gVar3;
                            }
                        }
                        view = view2;
                        animator = animator3;
                        gVar = gVar3;
                    }
                    gVar3 = gVar2;
                    animator3 = animator2;
                    view = view2;
                    animator = animator3;
                    gVar = gVar3;
                } else {
                    gVar = null;
                    i10 = size;
                    view = gVar4.f7544b;
                    animator = animatorK;
                }
                if (animator != null) {
                    String str = this.f2918h;
                    p pVar = g1.l.f7553a;
                    aVarO.put(animator, new b(view, str, this, new r(viewGroup), gVar));
                    this.f2935y.add(animator);
                }
            }
            i11++;
            size = i10;
        }
        if (sparseIntArray.size() != 0) {
            for (int i15 = 0; i15 < sparseIntArray.size(); i15++) {
                Animator animator4 = this.f2935y.get(sparseIntArray.keyAt(i15));
                animator4.setStartDelay(animator4.getStartDelay() + (((long) sparseIntArray.valueAt(i15)) - Long.MAX_VALUE));
            }
        }
    }

    public final void m() {
        int i10 = this.f2931u - 1;
        this.f2931u = i10;
        if (i10 == 0) {
            ArrayList<d> arrayList = this.f2934x;
            if (arrayList != null && arrayList.size() > 0) {
                ArrayList arrayList2 = (ArrayList) this.f2934x.clone();
                int size = arrayList2.size();
                for (int i11 = 0; i11 < size; i11++) {
                    ((d) arrayList2.get(i11)).e(this);
                }
            }
            for (int i12 = 0; i12 < this.f2924n.f7548c.g(); i12++) {
                View viewH = this.f2924n.f7548c.h(i12);
                if (viewH != null) {
                    WeakHashMap<View, g0> weakHashMap = a0.f9147a;
                    a0.d.r(viewH, false);
                }
            }
            for (int i13 = 0; i13 < this.f2925o.f7548c.g(); i13++) {
                View viewH2 = this.f2925o.f7548c.h(i13);
                if (viewH2 != null) {
                    WeakHashMap<View, g0> weakHashMap2 = a0.f9147a;
                    a0.d.r(viewH2, false);
                }
            }
            this.f2933w = true;
        }
    }

    public final g1.g n(View view, boolean z10) {
        i iVar = this.f2926p;
        if (iVar != null) {
            return iVar.n(view, z10);
        }
        ArrayList<g1.g> arrayList = z10 ? this.f2928r : this.f2929s;
        if (arrayList == null) {
            return null;
        }
        int size = arrayList.size();
        int i10 = -1;
        for (int i11 = 0; i11 < size; i11++) {
            g1.g gVar = arrayList.get(i11);
            if (gVar == null) {
                return null;
            }
            if (gVar.f7544b == view) {
                i10 = i11;
                break;
            }
        }
        if (i10 >= 0) {
            return (z10 ? this.f2929s : this.f2928r).get(i10);
        }
        return null;
    }

    public String[] p() {
        return null;
    }

    public final g1.g q(View view, boolean z10) {
        i iVar = this.f2926p;
        if (iVar != null) {
            return iVar.q(view, z10);
        }
        return (z10 ? this.f2924n : this.f2925o).f7546a.getOrDefault(view, null);
    }

    /* JADX WARN: Type inference failed for: r1v1, types: [java.util.HashMap, java.util.Map<java.lang.String, java.lang.Object>] */
    public boolean r(g1.g gVar, g1.g gVar2) {
        if (gVar == null || gVar2 == null) {
            return false;
        }
        String[] strArrP = p();
        if (strArrP == null) {
            Iterator it = gVar.f7543a.keySet().iterator();
            while (it.hasNext()) {
                if (t(gVar, gVar2, (String) it.next())) {
                }
            }
            return false;
        }
        for (String str : strArrP) {
            if (!t(gVar, gVar2, str)) {
            }
        }
        return false;
        return true;
    }

    public final boolean s(View view) {
        return (this.f2922l.size() == 0 && this.f2923m.size() == 0) || this.f2922l.contains(Integer.valueOf(view.getId())) || this.f2923m.contains(view);
    }

    public final String toString() {
        return G("");
    }

    public void u(View view) {
        if (this.f2933w) {
            return;
        }
        for (int size = this.f2930t.size() - 1; size >= 0; size--) {
            this.f2930t.get(size).pause();
        }
        ArrayList<d> arrayList = this.f2934x;
        if (arrayList != null && arrayList.size() > 0) {
            ArrayList arrayList2 = (ArrayList) this.f2934x.clone();
            int size2 = arrayList2.size();
            for (int i10 = 0; i10 < size2; i10++) {
                ((d) arrayList2.get(i10)).a();
            }
        }
        this.f2932v = true;
    }

    public f v(d dVar) {
        ArrayList<d> arrayList = this.f2934x;
        if (arrayList == null) {
            return this;
        }
        arrayList.remove(dVar);
        if (this.f2934x.size() == 0) {
            this.f2934x = null;
        }
        return this;
    }

    public f w(View view) {
        this.f2923m.remove(view);
        return this;
    }

    public void x(View view) {
        if (this.f2932v) {
            if (!this.f2933w) {
                int size = this.f2930t.size();
                while (true) {
                    size--;
                    if (size < 0) {
                        break;
                    } else {
                        this.f2930t.get(size).resume();
                    }
                }
                ArrayList<d> arrayList = this.f2934x;
                if (arrayList != null && arrayList.size() > 0) {
                    ArrayList arrayList2 = (ArrayList) this.f2934x.clone();
                    int size2 = arrayList2.size();
                    for (int i10 = 0; i10 < size2; i10++) {
                        ((d) arrayList2.get(i10)).c();
                    }
                }
            }
            this.f2932v = false;
        }
    }

    public void y() {
        F();
        p.a<Animator, b> aVarO = o();
        for (Animator animator : this.f2935y) {
            if (aVarO.containsKey(animator)) {
                F();
                if (animator != null) {
                    animator.addListener(new g1.d(this, aVarO));
                    long j10 = this.f2920j;
                    if (j10 >= 0) {
                        animator.setDuration(j10);
                    }
                    long j11 = this.f2919i;
                    if (j11 >= 0) {
                        animator.setStartDelay(animator.getStartDelay() + j11);
                    }
                    TimeInterpolator timeInterpolator = this.f2921k;
                    if (timeInterpolator != null) {
                        animator.setInterpolator(timeInterpolator);
                    }
                    animator.addListener(new g1.e(this));
                    animator.start();
                }
            }
        }
        this.f2935y.clear();
        m();
    }

    public f z(long j10) {
        this.f2920j = j10;
        return this;
    }
}
