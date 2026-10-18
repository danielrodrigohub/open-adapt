package androidx.transition;

import android.animation.Animator;
import android.util.SparseArray;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.view.WindowId;
import g1.p;
import g1.r;
import g1.s;
import j0.a0;
import j0.g0;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Objects;
import java.util.WeakHashMap;

/* JADX INFO: compiled from: TransitionManager.java */
/* JADX INFO: loaded from: classes.dex */
public final class h {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static g1.a f2942a = new g1.a();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static ThreadLocal<WeakReference<p.a<ViewGroup, ArrayList<f>>>> f2943b = new ThreadLocal<>();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static ArrayList<ViewGroup> f2944c = new ArrayList<>();

    /* JADX INFO: compiled from: TransitionManager.java */
    public static class a implements ViewTreeObserver.OnPreDrawListener, View.OnAttachStateChangeListener {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public f f2945h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public ViewGroup f2946i;

        /* JADX INFO: renamed from: androidx.transition.h$a$a, reason: collision with other inner class name */
        /* JADX INFO: compiled from: TransitionManager.java */
        public class C0042a extends g {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public final /* synthetic */ p.a f2947a;

            public C0042a(p.a aVar) {
                this.f2947a = aVar;
            }

            /* JADX WARN: Multi-variable type inference failed */
            @Override // androidx.transition.f.d
            public final void e(f fVar) {
                ((ArrayList) this.f2947a.getOrDefault(a.this.f2946i, null)).remove(fVar);
                fVar.v(this);
            }
        }

        public a(f fVar, ViewGroup viewGroup) {
            this.f2945h = fVar;
            this.f2946i = viewGroup;
        }

        /* JADX WARN: Code duplicated, block: B:101:0x021f  */
        /* JADX WARN: Code duplicated, block: B:105:0x023d  */
        /* JADX WARN: Code duplicated, block: B:137:0x02ac  */
        /* JADX WARN: Code duplicated, block: B:142:0x01eb A[EDGE_INSN: B:142:0x01eb->B:89:0x01eb BREAK  A[LOOP:1: B:19:0x009a->B:88:0x01e1], SYNTHETIC] */
        /* JADX WARN: Code duplicated, block: B:14:0x005c  */
        /* JADX WARN: Code duplicated, block: B:17:0x0066 A[LOOP:0: B:15:0x0060->B:17:0x0066, LOOP_END] */
        /* JADX WARN: Code duplicated, block: B:180:0x0209 A[SYNTHETIC] */
        /* JADX WARN: Code duplicated, block: B:183:0x022a A[SYNTHETIC] */
        /* JADX WARN: Code duplicated, block: B:21:0x009f  */
        /* JADX WARN: Code duplicated, block: B:23:0x00a3  */
        /* JADX WARN: Code duplicated, block: B:25:0x00a6  */
        /* JADX WARN: Code duplicated, block: B:27:0x00a9  */
        /* JADX WARN: Code duplicated, block: B:30:0x00af  */
        /* JADX WARN: Code duplicated, block: B:32:0x00ba  */
        /* JADX WARN: Code duplicated, block: B:44:0x00ff  */
        /* JADX WARN: Code duplicated, block: B:46:0x0109  */
        /* JADX WARN: Code duplicated, block: B:48:0x0115  */
        /* JADX WARN: Code duplicated, block: B:61:0x015d  */
        /* JADX WARN: Code duplicated, block: B:63:0x0167  */
        /* JADX WARN: Code duplicated, block: B:76:0x01ab  */
        /* JADX WARN: Code duplicated, block: B:79:0x01b2  */
        /* JADX WARN: Code duplicated, block: B:92:0x01f0  */
        /* JADX WARN: Code duplicated, block: B:94:0x01fe  */
        /* JADX WARN: Code duplicated, block: B:99:0x0211  */
        /* JADX WARN: Multi-variable type inference failed */
        @Override // android.view.ViewTreeObserver.OnPreDrawListener
        public final boolean onPreDraw() {
            ArrayList arrayList;
            int i10;
            f fVar;
            g1.h hVar;
            g1.h hVar2;
            p.a aVar;
            p.a aVar2;
            int i11;
            int[] iArr;
            int i12;
            int i13;
            p.a<Animator, f.b> aVarO;
            int i14;
            Animator animatorI;
            f.b orDefault;
            g1.g gVar;
            g1.g gVar2;
            int i15;
            g1.h hVar3;
            int i16;
            View view;
            g1.g gVar3;
            p.a<String, View> aVar3;
            int i17;
            int i18;
            View viewM;
            View orDefault2;
            SparseArray<View> sparseArray;
            int size;
            int i19;
            View viewValueAt;
            View view2;
            p.d<View> dVar;
            int iG;
            int i20;
            View viewH;
            g1.h hVar4;
            Iterator it;
            this.f2946i.getViewTreeObserver().removeOnPreDrawListener(this);
            this.f2946i.removeOnAttachStateChangeListener(this);
            int i21 = 1;
            if (!h.f2944c.remove(this.f2946i)) {
                return true;
            }
            p.a<ViewGroup, ArrayList<f>> aVarB = h.b();
            View view3 = null;
            ArrayList<f> orDefault3 = aVarB.getOrDefault(this.f2946i, null);
            if (orDefault3 != null) {
                arrayList = orDefault3.size() > 0 ? new ArrayList(orDefault3) : null;
                orDefault3.add(this.f2945h);
                this.f2945h.a(new C0042a(aVarB));
                i10 = 0;
                this.f2945h.h(this.f2946i, false);
                if (arrayList != null) {
                    it = arrayList.iterator();
                    while (it.hasNext()) {
                        ((f) it.next()).x(this.f2946i);
                    }
                }
                fVar = this.f2945h;
                ViewGroup viewGroup = this.f2946i;
                Objects.requireNonNull(fVar);
                fVar.f2928r = new ArrayList<>();
                fVar.f2929s = new ArrayList<>();
                hVar = fVar.f2924n;
                hVar2 = fVar.f2925o;
                aVar = new p.a(hVar.f7546a);
                aVar2 = new p.a(hVar2.f7546a);
                i11 = 0;
                while (true) {
                    iArr = fVar.f2927q;
                    if (i11 < iArr.length) {
                        break;
                    }
                    i15 = iArr[i11];
                    if (i15 != i21) {
                        hVar3 = hVar;
                        i16 = aVar.f12614j;
                        while (true) {
                            i16--;
                            if (i16 >= 0) {
                                view = (View) aVar.i(i16);
                                if (view == null && fVar.s(view) && (gVar3 = (g1.g) aVar2.remove(view)) != null && fVar.s(gVar3.f7544b)) {
                                    fVar.f2928r.add((g1.g) aVar.k(i16));
                                    fVar.f2929s.add(gVar3);
                                }
                            }
                        }
                    } else if (i15 != 2) {
                        hVar3 = hVar;
                        aVar3 = hVar3.f7549d;
                        p.a<String, View> aVar4 = hVar2.f7549d;
                        i17 = aVar3.f12614j;
                        for (i18 = 0; i18 < i17; i18++) {
                            viewM = aVar3.m(i18);
                            if (viewM == null && fVar.s(viewM) && (orDefault2 = aVar4.getOrDefault(aVar3.i(i18), null)) != null && fVar.s(orDefault2)) {
                                g1.g gVar4 = (g1.g) aVar.getOrDefault(viewM, null);
                                g1.g gVar5 = (g1.g) aVar2.getOrDefault(orDefault2, null);
                                if (gVar4 != null && gVar5 != null) {
                                    fVar.f2928r.add(gVar4);
                                    fVar.f2929s.add(gVar5);
                                    aVar.remove(viewM);
                                    aVar2.remove(orDefault2);
                                }
                            }
                        }
                    } else if (i15 != 3) {
                        if (i15 == 4) {
                            dVar = hVar.f7548c;
                            p.d<View> dVar2 = hVar2.f7548c;
                            iG = dVar.g();
                            i20 = i10;
                            while (i20 < iG) {
                                viewH = dVar.h(i20);
                                if (viewH == null && fVar.s(viewH)) {
                                    hVar4 = hVar;
                                    View viewD = dVar2.d(dVar.e(i20), view3);
                                    if (viewD != null && fVar.s(viewD)) {
                                        g1.g gVar6 = (g1.g) aVar.getOrDefault(viewH, view3);
                                        g1.g gVar7 = (g1.g) aVar2.getOrDefault(viewD, view3);
                                        if (gVar6 != null && gVar7 != null) {
                                            fVar.f2928r.add(gVar6);
                                            fVar.f2929s.add(gVar7);
                                            aVar.remove(viewH);
                                            aVar2.remove(viewD);
                                        }
                                    }
                                } else {
                                    hVar4 = hVar;
                                }
                                i20++;
                                hVar = hVar4;
                                view3 = null;
                            }
                        }
                        hVar3 = hVar;
                    } else {
                        hVar3 = hVar;
                        sparseArray = hVar3.f7547b;
                        SparseArray<View> sparseArray2 = hVar2.f7547b;
                        size = sparseArray.size();
                        for (i19 = 0; i19 < size; i19++) {
                            viewValueAt = sparseArray.valueAt(i19);
                            if (viewValueAt == null && fVar.s(viewValueAt) && (view2 = sparseArray2.get(sparseArray.keyAt(i19))) != null && fVar.s(view2)) {
                                g1.g gVar8 = (g1.g) aVar.getOrDefault(viewValueAt, null);
                                g1.g gVar9 = (g1.g) aVar2.getOrDefault(view2, null);
                                if (gVar8 != null && gVar9 != null) {
                                    fVar.f2928r.add(gVar8);
                                    fVar.f2929s.add(gVar9);
                                    aVar.remove(viewValueAt);
                                    aVar2.remove(view2);
                                }
                            }
                        }
                    }
                    i11++;
                    hVar = hVar3;
                    i21 = 1;
                    view3 = null;
                    i10 = 0;
                }
                for (i12 = 0; i12 < aVar.f12614j; i12++) {
                    gVar2 = (g1.g) aVar.m(i12);
                    if (fVar.s(gVar2.f7544b)) {
                        fVar.f2928r.add(gVar2);
                        fVar.f2929s.add(null);
                    }
                }
                for (i13 = 0; i13 < aVar2.f12614j; i13++) {
                    gVar = (g1.g) aVar2.m(i13);
                    if (fVar.s(gVar.f7544b)) {
                        fVar.f2929s.add(gVar);
                        fVar.f2928r.add(null);
                    }
                }
                aVarO = f.o();
                int i22 = aVarO.f12614j;
                p pVar = g1.l.f7553a;
                WindowId windowId = viewGroup.getWindowId();
                for (i14 = i22 - 1; i14 >= 0; i14--) {
                    animatorI = aVarO.i(i14);
                    if (animatorI == null && (orDefault = aVarO.getOrDefault(animatorI, null)) != null && orDefault.f2937a != null) {
                        s sVar = orDefault.f2940d;
                        if ((sVar instanceof r) && ((r) sVar).f7560a.equals(windowId)) {
                            g1.g gVar10 = orDefault.f2939c;
                            View view4 = orDefault.f2937a;
                            g1.g gVarQ = fVar.q(view4, true);
                            g1.g gVarN = fVar.n(view4, true);
                            if (gVarQ == null && gVarN == null) {
                                gVarN = fVar.f2925o.f7546a.getOrDefault(view4, null);
                            }
                            if (!(gVarQ == null && gVarN == null) && orDefault.f2941e.r(gVar10, gVarN)) {
                                if (animatorI.isRunning() || animatorI.isStarted()) {
                                    animatorI.cancel();
                                } else {
                                    aVarO.remove(animatorI);
                                }
                            }
                        }
                    }
                }
                fVar.l(viewGroup, fVar.f2924n, fVar.f2925o, fVar.f2928r, fVar.f2929s);
                fVar.y();
                return true;
            }
            orDefault3 = new ArrayList<>();
            aVarB.put(this.f2946i, orDefault3);
            orDefault3.add(this.f2945h);
            this.f2945h.a(new C0042a(aVarB));
            i10 = 0;
            this.f2945h.h(this.f2946i, false);
            if (arrayList != null) {
                it = arrayList.iterator();
                while (it.hasNext()) {
                    ((f) it.next()).x(this.f2946i);
                }
            }
            fVar = this.f2945h;
            ViewGroup viewGroup2 = this.f2946i;
            Objects.requireNonNull(fVar);
            fVar.f2928r = new ArrayList<>();
            fVar.f2929s = new ArrayList<>();
            hVar = fVar.f2924n;
            hVar2 = fVar.f2925o;
            aVar = new p.a(hVar.f7546a);
            aVar2 = new p.a(hVar2.f7546a);
            i11 = 0;
            while (true) {
                iArr = fVar.f2927q;
                if (i11 < iArr.length) {
                    break;
                    break;
                }
                i15 = iArr[i11];
                if (i15 != i21) {
                    hVar3 = hVar;
                    i16 = aVar.f12614j;
                    while (true) {
                        i16--;
                        if (i16 >= 0) {
                            view = (View) aVar.i(i16);
                            if (view == null) {
                            }
                        }
                    }
                } else if (i15 != 2) {
                    hVar3 = hVar;
                    aVar3 = hVar3.f7549d;
                    p.a<String, View> aVar5 = hVar2.f7549d;
                    i17 = aVar3.f12614j;
                    while (i18 < i17) {
                        viewM = aVar3.m(i18);
                        if (viewM == null) {
                        }
                    }
                } else if (i15 != 3) {
                    if (i15 == 4) {
                        dVar = hVar.f7548c;
                        p.d<View> dVar3 = hVar2.f7548c;
                        iG = dVar.g();
                        i20 = i10;
                        while (i20 < iG) {
                            viewH = dVar.h(i20);
                            if (viewH == null) {
                                hVar4 = hVar;
                            } else {
                                hVar4 = hVar;
                            }
                            i20++;
                            hVar = hVar4;
                            view3 = null;
                        }
                    }
                    hVar3 = hVar;
                } else {
                    hVar3 = hVar;
                    sparseArray = hVar3.f7547b;
                    SparseArray<View> sparseArray3 = hVar2.f7547b;
                    size = sparseArray.size();
                    while (i19 < size) {
                        viewValueAt = sparseArray.valueAt(i19);
                        if (viewValueAt == null) {
                        }
                    }
                }
                i11++;
                hVar = hVar3;
                i21 = 1;
                view3 = null;
                i10 = 0;
            }
            while (i12 < aVar.f12614j) {
                gVar2 = (g1.g) aVar.m(i12);
                if (fVar.s(gVar2.f7544b)) {
                    fVar.f2928r.add(gVar2);
                    fVar.f2929s.add(null);
                }
            }
            while (i13 < aVar2.f12614j) {
                gVar = (g1.g) aVar2.m(i13);
                if (fVar.s(gVar.f7544b)) {
                    fVar.f2929s.add(gVar);
                    fVar.f2928r.add(null);
                }
            }
            aVarO = f.o();
            int i23 = aVarO.f12614j;
            p pVar2 = g1.l.f7553a;
            WindowId windowId2 = viewGroup2.getWindowId();
            while (i14 >= 0) {
                animatorI = aVarO.i(i14);
                if (animatorI == null) {
                }
            }
            fVar.l(viewGroup2, fVar.f2924n, fVar.f2925o, fVar.f2928r, fVar.f2929s);
            fVar.y();
            return true;
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public final void onViewAttachedToWindow(View view) {
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public final void onViewDetachedFromWindow(View view) {
            this.f2946i.getViewTreeObserver().removeOnPreDrawListener(this);
            this.f2946i.removeOnAttachStateChangeListener(this);
            h.f2944c.remove(this.f2946i);
            ArrayList<f> orDefault = h.b().getOrDefault(this.f2946i, null);
            if (orDefault != null && orDefault.size() > 0) {
                Iterator<f> it = orDefault.iterator();
                while (it.hasNext()) {
                    it.next().x(this.f2946i);
                }
            }
            this.f2945h.i(true);
        }
    }

    public static void a(ViewGroup viewGroup, f fVar) {
        if (f2944c.contains(viewGroup)) {
            return;
        }
        WeakHashMap<View, g0> weakHashMap = a0.f9147a;
        if (a0.g.c(viewGroup)) {
            f2944c.add(viewGroup);
            if (fVar == null) {
                fVar = f2942a;
            }
            f fVarClone = fVar.clone();
            ArrayList<f> orDefault = b().getOrDefault(viewGroup, null);
            if (orDefault != null && orDefault.size() > 0) {
                Iterator<f> it = orDefault.iterator();
                while (it.hasNext()) {
                    it.next().u(viewGroup);
                }
            }
            if (fVarClone != null) {
                fVarClone.h(viewGroup, true);
            }
            int i10 = R.id.transition_current_scene;
            if (((e) viewGroup.getTag(i10)) != null) {
                throw null;
            }
            viewGroup.setTag(i10, null);
            if (fVarClone != null) {
                a aVar = new a(fVarClone, viewGroup);
                viewGroup.addOnAttachStateChangeListener(aVar);
                viewGroup.getViewTreeObserver().addOnPreDrawListener(aVar);
            }
        }
    }

    public static p.a<ViewGroup, ArrayList<f>> b() {
        p.a<ViewGroup, ArrayList<f>> aVar;
        WeakReference<p.a<ViewGroup, ArrayList<f>>> weakReference = f2943b.get();
        if (weakReference != null && (aVar = weakReference.get()) != null) {
            return aVar;
        }
        p.a<ViewGroup, ArrayList<f>> aVar2 = new p.a<>();
        f2943b.set(new WeakReference<>(aVar2));
        return aVar2;
    }
}
