package androidx.recyclerview.widget;

import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;
import com.newrelic.agent.android.analytics.AnalyticsAttribute;
import java.util.Map;
import java.util.WeakHashMap;

/* JADX INFO: compiled from: RecyclerViewAccessibilityDelegate.java */
/* JADX INFO: loaded from: classes.dex */
public class h0 extends j0.a {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final RecyclerView f2632d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final a f2633e;

    /* JADX INFO: compiled from: RecyclerViewAccessibilityDelegate.java */
    public static class a extends j0.a {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public final h0 f2634d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public Map<View, j0.a> f2635e = new WeakHashMap();

        public a(h0 h0Var) {
            this.f2634d = h0Var;
        }

        /* JADX WARN: Type inference failed for: r0v0, types: [java.util.Map<android.view.View, j0.a>, java.util.WeakHashMap] */
        @Override // j0.a
        public final boolean a(View view, AccessibilityEvent accessibilityEvent) {
            j0.a aVar = (j0.a) this.f2635e.get(view);
            return aVar != null ? aVar.a(view, accessibilityEvent) : super.a(view, accessibilityEvent);
        }

        /* JADX WARN: Type inference failed for: r0v0, types: [java.util.Map<android.view.View, j0.a>, java.util.WeakHashMap] */
        @Override // j0.a
        public final k0.g b(View view) {
            j0.a aVar = (j0.a) this.f2635e.get(view);
            return aVar != null ? aVar.b(view) : super.b(view);
        }

        /* JADX WARN: Type inference failed for: r0v0, types: [java.util.Map<android.view.View, j0.a>, java.util.WeakHashMap] */
        @Override // j0.a
        public final void c(View view, AccessibilityEvent accessibilityEvent) {
            j0.a aVar = (j0.a) this.f2635e.get(view);
            if (aVar != null) {
                aVar.c(view, accessibilityEvent);
            } else {
                super.c(view, accessibilityEvent);
            }
        }

        /* JADX WARN: Type inference failed for: r0v9, types: [java.util.Map<android.view.View, j0.a>, java.util.WeakHashMap] */
        @Override // j0.a
        public final void d(View view, k0.f fVar) {
            if (this.f2634d.k() || this.f2634d.f2632d.getLayoutManager() == null) {
                this.f9144a.onInitializeAccessibilityNodeInfo(view, fVar.f9552a);
                return;
            }
            this.f2634d.f2632d.getLayoutManager().b0(view, fVar);
            j0.a aVar = (j0.a) this.f2635e.get(view);
            if (aVar != null) {
                aVar.d(view, fVar);
            } else {
                this.f9144a.onInitializeAccessibilityNodeInfo(view, fVar.f9552a);
            }
        }

        /* JADX WARN: Type inference failed for: r0v0, types: [java.util.Map<android.view.View, j0.a>, java.util.WeakHashMap] */
        @Override // j0.a
        public final void e(View view, AccessibilityEvent accessibilityEvent) {
            j0.a aVar = (j0.a) this.f2635e.get(view);
            if (aVar != null) {
                aVar.e(view, accessibilityEvent);
            } else {
                super.e(view, accessibilityEvent);
            }
        }

        /* JADX WARN: Type inference failed for: r0v0, types: [java.util.Map<android.view.View, j0.a>, java.util.WeakHashMap] */
        @Override // j0.a
        public final boolean f(ViewGroup viewGroup, View view, AccessibilityEvent accessibilityEvent) {
            j0.a aVar = (j0.a) this.f2635e.get(viewGroup);
            return aVar != null ? aVar.f(viewGroup, view, accessibilityEvent) : super.f(viewGroup, view, accessibilityEvent);
        }

        /* JADX WARN: Type inference failed for: r0v5, types: [java.util.Map<android.view.View, j0.a>, java.util.WeakHashMap] */
        @Override // j0.a
        public final boolean g(View view, int i10, Bundle bundle) {
            if (this.f2634d.k() || this.f2634d.f2632d.getLayoutManager() == null) {
                return super.g(view, i10, bundle);
            }
            j0.a aVar = (j0.a) this.f2635e.get(view);
            if (aVar != null) {
                if (aVar.g(view, i10, bundle)) {
                    return true;
                }
            } else if (super.g(view, i10, bundle)) {
                return true;
            }
            RecyclerView.t tVar = this.f2634d.f2632d.getLayoutManager().f2486b.f2407i;
            return false;
        }

        /* JADX WARN: Type inference failed for: r0v0, types: [java.util.Map<android.view.View, j0.a>, java.util.WeakHashMap] */
        @Override // j0.a
        public final void h(View view, int i10) {
            j0.a aVar = (j0.a) this.f2635e.get(view);
            if (aVar != null) {
                aVar.h(view, i10);
            } else {
                super.h(view, i10);
            }
        }

        /* JADX WARN: Type inference failed for: r0v0, types: [java.util.Map<android.view.View, j0.a>, java.util.WeakHashMap] */
        @Override // j0.a
        public final void i(View view, AccessibilityEvent accessibilityEvent) {
            j0.a aVar = (j0.a) this.f2635e.get(view);
            if (aVar != null) {
                aVar.i(view, accessibilityEvent);
            } else {
                super.i(view, accessibilityEvent);
            }
        }
    }

    public h0(RecyclerView recyclerView) {
        this.f2632d = recyclerView;
        j0.a aVarJ = j();
        if (aVarJ == null || !(aVarJ instanceof a)) {
            this.f2633e = new a(this);
        } else {
            this.f2633e = (a) aVarJ;
        }
    }

    @Override // j0.a
    public final void c(View view, AccessibilityEvent accessibilityEvent) {
        super.c(view, accessibilityEvent);
        if (!(view instanceof RecyclerView) || k()) {
            return;
        }
        RecyclerView recyclerView = (RecyclerView) view;
        if (recyclerView.getLayoutManager() != null) {
            recyclerView.getLayoutManager().a0(accessibilityEvent);
        }
    }

    @Override // j0.a
    public final void d(View view, k0.f fVar) {
        this.f9144a.onInitializeAccessibilityNodeInfo(view, fVar.f9552a);
        if (k() || this.f2632d.getLayoutManager() == null) {
            return;
        }
        RecyclerView.m layoutManager = this.f2632d.getLayoutManager();
        RecyclerView recyclerView = layoutManager.f2486b;
        RecyclerView.t tVar = recyclerView.f2407i;
        RecyclerView.y yVar = recyclerView.f2420o0;
        if (recyclerView.canScrollVertically(-1) || layoutManager.f2486b.canScrollHorizontally(-1)) {
            fVar.a(8192);
            fVar.w(true);
        }
        if (layoutManager.f2486b.canScrollVertically(1) || layoutManager.f2486b.canScrollHorizontally(1)) {
            fVar.a(AnalyticsAttribute.ATTRIBUTE_VALUE_MAX_LENGTH);
            fVar.w(true);
        }
        fVar.p(k0.f.b.a(layoutManager.Q(tVar, yVar), layoutManager.B(tVar, yVar), 0));
    }

    /* JADX WARN: Code duplicated, block: B:28:0x0082 A[PHI: r1
      0x0082: PHI (r1v6 int) = (r1v2 int), (r1v10 int) binds: [B:26:0x0073, B:19:0x0048] A[DONT_GENERATE, DONT_INLINE]] */
    @Override // j0.a
    public final boolean g(View view, int i10, Bundle bundle) {
        int iN;
        int iL;
        if (super.g(view, i10, bundle)) {
            return true;
        }
        if (k() || this.f2632d.getLayoutManager() == null) {
            return false;
        }
        RecyclerView.m layoutManager = this.f2632d.getLayoutManager();
        RecyclerView recyclerView = layoutManager.f2486b;
        RecyclerView.t tVar = recyclerView.f2407i;
        if (i10 == 4096) {
            iN = recyclerView.canScrollVertically(1) ? (layoutManager.f2501q - layoutManager.N()) - layoutManager.K() : 0;
            if (layoutManager.f2486b.canScrollHorizontally(1)) {
                iL = (layoutManager.f2500p - layoutManager.L()) - layoutManager.M();
            } else {
                iL = 0;
            }
        } else if (i10 != 8192) {
            iL = 0;
            iN = 0;
        } else {
            iN = recyclerView.canScrollVertically(-1) ? -((layoutManager.f2501q - layoutManager.N()) - layoutManager.K()) : 0;
            if (layoutManager.f2486b.canScrollHorizontally(-1)) {
                iL = -((layoutManager.f2500p - layoutManager.L()) - layoutManager.M());
            } else {
                iL = 0;
            }
        }
        if (iN == 0 && iL == 0) {
            return false;
        }
        layoutManager.f2486b.j0(iL, iN, true);
        return true;
    }

    public j0.a j() {
        return this.f2633e;
    }

    public final boolean k() {
        return this.f2632d.N();
    }
}
