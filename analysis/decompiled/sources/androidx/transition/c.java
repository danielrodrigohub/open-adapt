package androidx.transition;

import android.annotation.SuppressLint;
import android.graphics.Rect;
import android.view.View;
import android.view.ViewGroup;
import androidx.fragment.app.k0;
import java.util.ArrayList;

/* JADX INFO: compiled from: FragmentTransitionSupport.java */
/* JADX INFO: loaded from: classes.dex */
@SuppressLint({"RestrictedApi"})
public class c extends k0 {

    /* JADX INFO: compiled from: FragmentTransitionSupport.java */
    public class a extends f.c {
    }

    /* JADX INFO: compiled from: FragmentTransitionSupport.java */
    public class b implements f.d {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final /* synthetic */ View f2908a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final /* synthetic */ ArrayList f2909b;

        public b(View view, ArrayList arrayList) {
            this.f2908a = view;
            this.f2909b = arrayList;
        }

        @Override // androidx.transition.f.d
        public final void a() {
        }

        @Override // androidx.transition.f.d
        public final void b(f fVar) {
            fVar.v(this);
            fVar.a(this);
        }

        @Override // androidx.transition.f.d
        public final void c() {
        }

        @Override // androidx.transition.f.d
        public final void d() {
        }

        @Override // androidx.transition.f.d
        public final void e(f fVar) {
            fVar.v(this);
            this.f2908a.setVisibility(8);
            int size = this.f2909b.size();
            for (int i10 = 0; i10 < size; i10++) {
                ((View) this.f2909b.get(i10)).setVisibility(0);
            }
        }
    }

    /* JADX INFO: renamed from: androidx.transition.c$c, reason: collision with other inner class name */
    /* JADX INFO: compiled from: FragmentTransitionSupport.java */
    public class C0041c extends g {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final /* synthetic */ Object f2910a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final /* synthetic */ ArrayList f2911b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final /* synthetic */ Object f2912c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public final /* synthetic */ ArrayList f2913d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final /* synthetic */ Object f2914e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public final /* synthetic */ ArrayList f2915f;

        public C0041c(Object obj, ArrayList arrayList, Object obj2, ArrayList arrayList2, Object obj3, ArrayList arrayList3) {
            this.f2910a = obj;
            this.f2911b = arrayList;
            this.f2912c = obj2;
            this.f2913d = arrayList2;
            this.f2914e = obj3;
            this.f2915f = arrayList3;
        }

        @Override // androidx.transition.g, androidx.transition.f.d
        public final void b(f fVar) {
            Object obj = this.f2910a;
            if (obj != null) {
                c.this.v(obj, this.f2911b, null);
            }
            Object obj2 = this.f2912c;
            if (obj2 != null) {
                c.this.v(obj2, this.f2913d, null);
            }
            Object obj3 = this.f2914e;
            if (obj3 != null) {
                c.this.v(obj3, this.f2915f, null);
            }
        }

        @Override // androidx.transition.f.d
        public final void e(f fVar) {
            fVar.v(this);
        }
    }

    /* JADX INFO: compiled from: FragmentTransitionSupport.java */
    public class d extends f.c {
    }

    public static boolean u(f fVar) {
        return (k0.h(fVar.f2922l) && k0.h(null) && k0.h(null)) ? false : true;
    }

    @Override // androidx.fragment.app.k0
    public final void a(Object obj, View view) {
        if (obj != null) {
            ((f) obj).b(view);
        }
    }

    @Override // androidx.fragment.app.k0
    public final void b(Object obj, ArrayList<View> arrayList) {
        f fVar = (f) obj;
        if (fVar == null) {
            return;
        }
        int i10 = 0;
        if (fVar instanceof i) {
            i iVar = (i) fVar;
            int size = iVar.E.size();
            while (i10 < size) {
                b(iVar.I(i10), arrayList);
                i10++;
            }
            return;
        }
        if (u(fVar) || !k0.h(fVar.f2923m)) {
            return;
        }
        int size2 = arrayList.size();
        while (i10 < size2) {
            fVar.b(arrayList.get(i10));
            i10++;
        }
    }

    @Override // androidx.fragment.app.k0
    public final void c(ViewGroup viewGroup, Object obj) {
        h.a(viewGroup, (f) obj);
    }

    @Override // androidx.fragment.app.k0
    public final boolean e(Object obj) {
        return obj instanceof f;
    }

    @Override // androidx.fragment.app.k0
    public final Object f(Object obj) {
        if (obj != null) {
            return ((f) obj).clone();
        }
        return null;
    }

    @Override // androidx.fragment.app.k0
    public final Object i(Object obj, Object obj2, Object obj3) {
        f fVar = (f) obj;
        f fVar2 = (f) obj2;
        f fVar3 = (f) obj3;
        if (fVar != null && fVar2 != null) {
            i iVar = new i();
            iVar.H(fVar);
            iVar.H(fVar2);
            iVar.F = false;
            fVar = iVar;
        } else if (fVar == null) {
            fVar = fVar2 != null ? fVar2 : null;
        }
        if (fVar3 == null) {
            return fVar;
        }
        i iVar2 = new i();
        if (fVar != null) {
            iVar2.H(fVar);
        }
        iVar2.H(fVar3);
        return iVar2;
    }

    @Override // androidx.fragment.app.k0
    public final Object j(Object obj, Object obj2, Object obj3) {
        i iVar = new i();
        if (obj != null) {
            iVar.H((f) obj);
        }
        if (obj2 != null) {
            iVar.H((f) obj2);
        }
        if (obj3 != null) {
            iVar.H((f) obj3);
        }
        return iVar;
    }

    @Override // androidx.fragment.app.k0
    public final void l(Object obj, View view, ArrayList<View> arrayList) {
        ((f) obj).a(new b(view, arrayList));
    }

    @Override // androidx.fragment.app.k0
    public final void m(Object obj, Object obj2, ArrayList<View> arrayList, Object obj3, ArrayList<View> arrayList2, Object obj4, ArrayList<View> arrayList3) {
        ((f) obj).a(new C0041c(obj2, arrayList, obj3, arrayList2, obj4, arrayList3));
    }

    @Override // androidx.fragment.app.k0
    public final void n(Object obj, Rect rect) {
        if (obj != null) {
            ((f) obj).A(new d());
        }
    }

    @Override // androidx.fragment.app.k0
    public final void o(Object obj, View view) {
        if (view != null) {
            g(view, new Rect());
            ((f) obj).A(new a());
        }
    }

    @Override // androidx.fragment.app.k0
    public final void p(Object obj, f0.d dVar, Runnable runnable) {
        f fVar = (f) obj;
        dVar.b(new g1.b(fVar));
        fVar.a(new androidx.transition.d(runnable));
    }

    @Override // androidx.fragment.app.k0
    public final void r(Object obj, View view, ArrayList<View> arrayList) {
        i iVar = (i) obj;
        ArrayList<View> arrayList2 = iVar.f2923m;
        arrayList2.clear();
        int size = arrayList.size();
        for (int i10 = 0; i10 < size; i10++) {
            k0.d(arrayList2, arrayList.get(i10));
        }
        arrayList2.add(view);
        arrayList.add(view);
        b(iVar, arrayList);
    }

    @Override // androidx.fragment.app.k0
    public final void s(Object obj, ArrayList<View> arrayList, ArrayList<View> arrayList2) {
        i iVar = (i) obj;
        if (iVar != null) {
            iVar.f2923m.clear();
            iVar.f2923m.addAll(arrayList2);
            v(iVar, arrayList, arrayList2);
        }
    }

    @Override // androidx.fragment.app.k0
    public final Object t(Object obj) {
        if (obj == null) {
            return null;
        }
        i iVar = new i();
        iVar.H((f) obj);
        return iVar;
    }

    public final void v(Object obj, ArrayList<View> arrayList, ArrayList<View> arrayList2) {
        f fVar = (f) obj;
        int i10 = 0;
        if (fVar instanceof i) {
            i iVar = (i) fVar;
            int size = iVar.E.size();
            while (i10 < size) {
                v(iVar.I(i10), arrayList, arrayList2);
                i10++;
            }
            return;
        }
        if (u(fVar)) {
            return;
        }
        ArrayList<View> arrayList3 = fVar.f2923m;
        if (arrayList3.size() != arrayList.size() || !arrayList3.containsAll(arrayList)) {
            return;
        }
        int size2 = arrayList2 == null ? 0 : arrayList2.size();
        while (i10 < size2) {
            fVar.b(arrayList2.get(i10));
            i10++;
        }
        int size3 = arrayList.size();
        while (true) {
            size3--;
            if (size3 < 0) {
                return;
            } else {
                fVar.w(arrayList.get(size3));
            }
        }
    }
}
