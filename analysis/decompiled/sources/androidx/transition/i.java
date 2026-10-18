package androidx.transition;

import android.animation.TimeInterpolator;
import android.view.View;
import android.view.ViewGroup;
import androidx.fragment.app.r0;
import java.util.ArrayList;
import java.util.Iterator;

/* JADX INFO: compiled from: TransitionSet.java */
/* JADX INFO: loaded from: classes.dex */
public class i extends f {
    public int G;
    public ArrayList<f> E = new ArrayList<>();
    public boolean F = true;
    public boolean H = false;
    public int I = 0;

    /* JADX INFO: compiled from: TransitionSet.java */
    public class a extends g {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final /* synthetic */ f f2949a;

        public a(f fVar) {
            this.f2949a = fVar;
        }

        @Override // androidx.transition.f.d
        public final void e(f fVar) {
            this.f2949a.y();
            fVar.v(this);
        }
    }

    /* JADX INFO: compiled from: TransitionSet.java */
    public static class b extends g {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public i f2950a;

        public b(i iVar) {
            this.f2950a = iVar;
        }

        @Override // androidx.transition.g, androidx.transition.f.d
        public final void b(f fVar) {
            i iVar = this.f2950a;
            if (iVar.H) {
                return;
            }
            iVar.F();
            this.f2950a.H = true;
        }

        @Override // androidx.transition.f.d
        public final void e(f fVar) {
            i iVar = this.f2950a;
            int i10 = iVar.G - 1;
            iVar.G = i10;
            if (i10 == 0) {
                iVar.H = false;
                iVar.m();
            }
            fVar.v(this);
        }
    }

    @Override // androidx.transition.f
    public final void A(f.c cVar) {
        this.f2936z = cVar;
        this.I |= 8;
        int size = this.E.size();
        for (int i10 = 0; i10 < size; i10++) {
            this.E.get(i10).A(cVar);
        }
    }

    @Override // androidx.transition.f
    public final f B(TimeInterpolator timeInterpolator) {
        this.I |= 1;
        ArrayList<f> arrayList = this.E;
        if (arrayList != null) {
            int size = arrayList.size();
            for (int i10 = 0; i10 < size; i10++) {
                this.E.get(i10).B(timeInterpolator);
            }
        }
        this.f2921k = timeInterpolator;
        return this;
    }

    @Override // androidx.transition.f
    public final void C(g1.c cVar) {
        super.C(cVar);
        this.I |= 4;
        if (this.E != null) {
            for (int i10 = 0; i10 < this.E.size(); i10++) {
                this.E.get(i10).C(cVar);
            }
        }
    }

    @Override // androidx.transition.f
    public final void D() {
        this.I |= 2;
        int size = this.E.size();
        for (int i10 = 0; i10 < size; i10++) {
            this.E.get(i10).D();
        }
    }

    @Override // androidx.transition.f
    public final f E(long j10) {
        this.f2919i = j10;
        return this;
    }

    @Override // androidx.transition.f
    public final String G(String str) {
        String strG = super.G(str);
        for (int i10 = 0; i10 < this.E.size(); i10++) {
            StringBuilder sbH = r0.h(strG, "\n");
            sbH.append(this.E.get(i10).G(str + "  "));
            strG = sbH.toString();
        }
        return strG;
    }

    public final i H(f fVar) {
        this.E.add(fVar);
        fVar.f2926p = this;
        long j10 = this.f2920j;
        if (j10 >= 0) {
            fVar.z(j10);
        }
        if ((this.I & 1) != 0) {
            fVar.B(this.f2921k);
        }
        if ((this.I & 2) != 0) {
            fVar.D();
        }
        if ((this.I & 4) != 0) {
            fVar.C(this.A);
        }
        if ((this.I & 8) != 0) {
            fVar.A(this.f2936z);
        }
        return this;
    }

    public final f I(int i10) {
        if (i10 < 0 || i10 >= this.E.size()) {
            return null;
        }
        return this.E.get(i10);
    }

    @Override // androidx.transition.f
    public final f a(f.d dVar) {
        super.a(dVar);
        return this;
    }

    @Override // androidx.transition.f
    public final f b(View view) {
        for (int i10 = 0; i10 < this.E.size(); i10++) {
            this.E.get(i10).b(view);
        }
        this.f2923m.add(view);
        return this;
    }

    @Override // androidx.transition.f
    public final void cancel() {
        super.cancel();
        int size = this.E.size();
        for (int i10 = 0; i10 < size; i10++) {
            this.E.get(i10).cancel();
        }
    }

    @Override // androidx.transition.f
    public final void d(g1.g gVar) {
        if (s(gVar.f7544b)) {
            for (f fVar : this.E) {
                if (fVar.s(gVar.f7544b)) {
                    fVar.d(gVar);
                    gVar.f7545c.add(fVar);
                }
            }
        }
    }

    @Override // androidx.transition.f
    public final void f(g1.g gVar) {
        int size = this.E.size();
        for (int i10 = 0; i10 < size; i10++) {
            this.E.get(i10).f(gVar);
        }
    }

    @Override // androidx.transition.f
    public final void g(g1.g gVar) {
        if (s(gVar.f7544b)) {
            for (f fVar : this.E) {
                if (fVar.s(gVar.f7544b)) {
                    fVar.g(gVar);
                    gVar.f7545c.add(fVar);
                }
            }
        }
    }

    @Override // androidx.transition.f
    /* JADX INFO: renamed from: j */
    public final f clone() {
        i iVar = (i) super.clone();
        iVar.E = new ArrayList<>();
        int size = this.E.size();
        for (int i10 = 0; i10 < size; i10++) {
            f fVarClone = this.E.get(i10).clone();
            iVar.E.add(fVarClone);
            fVarClone.f2926p = iVar;
        }
        return iVar;
    }

    @Override // androidx.transition.f
    public final void l(ViewGroup viewGroup, g1.h hVar, g1.h hVar2, ArrayList<g1.g> arrayList, ArrayList<g1.g> arrayList2) {
        long j10 = this.f2919i;
        int size = this.E.size();
        for (int i10 = 0; i10 < size; i10++) {
            f fVar = this.E.get(i10);
            if (j10 > 0 && (this.F || i10 == 0)) {
                long j11 = fVar.f2919i;
                if (j11 > 0) {
                    fVar.E(j11 + j10);
                } else {
                    fVar.E(j10);
                }
            }
            fVar.l(viewGroup, hVar, hVar2, arrayList, arrayList2);
        }
    }

    @Override // androidx.transition.f
    public final void u(View view) {
        super.u(view);
        int size = this.E.size();
        for (int i10 = 0; i10 < size; i10++) {
            this.E.get(i10).u(view);
        }
    }

    @Override // androidx.transition.f
    public final f v(f.d dVar) {
        super.v(dVar);
        return this;
    }

    @Override // androidx.transition.f
    public final f w(View view) {
        for (int i10 = 0; i10 < this.E.size(); i10++) {
            this.E.get(i10).w(view);
        }
        this.f2923m.remove(view);
        return this;
    }

    @Override // androidx.transition.f
    public final void x(View view) {
        super.x(view);
        int size = this.E.size();
        for (int i10 = 0; i10 < size; i10++) {
            this.E.get(i10).x(view);
        }
    }

    @Override // androidx.transition.f
    public final void y() {
        if (this.E.isEmpty()) {
            F();
            m();
            return;
        }
        b bVar = new b(this);
        Iterator<f> it = this.E.iterator();
        while (it.hasNext()) {
            it.next().a(bVar);
        }
        this.G = this.E.size();
        if (this.F) {
            Iterator<f> it2 = this.E.iterator();
            while (it2.hasNext()) {
                it2.next().y();
            }
            return;
        }
        for (int i10 = 1; i10 < this.E.size(); i10++) {
            this.E.get(i10 - 1).a(new a(this.E.get(i10)));
        }
        f fVar = this.E.get(0);
        if (fVar != null) {
            fVar.y();
        }
    }

    @Override // androidx.transition.f
    public final f z(long j10) {
        ArrayList<f> arrayList;
        this.f2920j = j10;
        if (j10 >= 0 && (arrayList = this.E) != null) {
            int size = arrayList.size();
            for (int i10 = 0; i10 < size; i10++) {
                this.E.get(i10).z(j10);
            }
        }
        return this;
    }
}
