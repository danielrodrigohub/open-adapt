package com.google.android.material.behavior;

import android.view.MotionEvent;
import android.view.View;
import android.view.ViewParent;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import com.google.android.material.snackbar.e;
import com.google.android.material.snackbar.g;
import j0.a0;
import j0.g0;
import java.util.WeakHashMap;
import k0.f;

/* JADX INFO: loaded from: classes.dex */
public class SwipeDismissBehavior<V extends View> extends CoordinatorLayout.c<V> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public q0.c f5007a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public b f5008b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public boolean f5009c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f5010d = 2;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public float f5011e = 0.5f;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public float f5012f = 0.0f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public float f5013g = 0.5f;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final a f5014h = new a();

    public class a extends q0.c.AbstractC0239c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public int f5015a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f5016b = -1;

        public a() {
        }

        @Override // q0.c.AbstractC0239c
        public final int a(View view, int i10) {
            int width;
            int width2;
            int width3;
            WeakHashMap<View, g0> weakHashMap = a0.f9147a;
            boolean z10 = a0.e.d(view) == 1;
            int i11 = SwipeDismissBehavior.this.f5010d;
            if (i11 == 0) {
                if (z10) {
                    width = this.f5015a - view.getWidth();
                    width2 = this.f5015a;
                } else {
                    width = this.f5015a;
                    width3 = view.getWidth();
                    width2 = width3 + width;
                }
            } else if (i11 != 1) {
                width = this.f5015a - view.getWidth();
                width2 = view.getWidth() + this.f5015a;
            } else if (z10) {
                width = this.f5015a;
                width3 = view.getWidth();
                width2 = width3 + width;
            } else {
                width = this.f5015a - view.getWidth();
                width2 = this.f5015a;
            }
            return Math.min(Math.max(width, i10), width2);
        }

        @Override // q0.c.AbstractC0239c
        public final int b(View view, int i10) {
            return view.getTop();
        }

        @Override // q0.c.AbstractC0239c
        public final int c(View view) {
            return view.getWidth();
        }

        @Override // q0.c.AbstractC0239c
        public final void e(View view, int i10) {
            this.f5016b = i10;
            this.f5015a = view.getLeft();
            ViewParent parent = view.getParent();
            if (parent != null) {
                parent.requestDisallowInterceptTouchEvent(true);
            }
        }

        @Override // q0.c.AbstractC0239c
        public final void f(int i10) {
            b bVar = SwipeDismissBehavior.this.f5008b;
            if (bVar != null) {
                e eVar = (e) bVar;
                if (i10 == 0) {
                    g.b().f(eVar.f5399a.f5372m);
                } else if (i10 == 1 || i10 == 2) {
                    g.b().e(eVar.f5399a.f5372m);
                }
            }
        }

        @Override // q0.c.AbstractC0239c
        public final void g(View view, int i10, int i11) {
            float width = (view.getWidth() * SwipeDismissBehavior.this.f5012f) + this.f5015a;
            float width2 = (view.getWidth() * SwipeDismissBehavior.this.f5013g) + this.f5015a;
            float f10 = i10;
            if (f10 <= width) {
                view.setAlpha(1.0f);
            } else if (f10 >= width2) {
                view.setAlpha(0.0f);
            } else {
                view.setAlpha(SwipeDismissBehavior.t(1.0f - ((f10 - width) / (width2 - width))));
            }
        }

        /* JADX WARN: Code duplicated, block: B:27:0x0054  */
        /* JADX WARN: Code duplicated, block: B:28:0x0056  */
        @Override // q0.c.AbstractC0239c
        public final void h(View view, float f10, float f11) {
            boolean z10;
            int i10;
            b bVar;
            this.f5016b = -1;
            int width = view.getWidth();
            boolean z11 = true;
            if (f10 != 0.0f) {
                WeakHashMap<View, g0> weakHashMap = a0.f9147a;
                boolean z12 = a0.e.d(view) == 1;
                int i11 = SwipeDismissBehavior.this.f5010d;
                if (i11 != 2 && (i11 != 0 ? i11 != 1 || (!z12 ? f10 < 0.0f : f10 > 0.0f) : !z12 ? f10 > 0.0f : f10 < 0.0f)) {
                    z10 = false;
                } else {
                    z10 = true;
                }
            } else {
                if (Math.abs(view.getLeft() - this.f5015a) >= Math.round(view.getWidth() * SwipeDismissBehavior.this.f5011e)) {
                    z10 = true;
                } else {
                    z10 = false;
                }
            }
            if (z10) {
                int left = view.getLeft();
                int i12 = this.f5015a;
                i10 = left < i12 ? i12 - width : i12 + width;
            } else {
                i10 = this.f5015a;
                z11 = false;
            }
            if (SwipeDismissBehavior.this.f5007a.s(i10, view.getTop())) {
                c cVar = new c(view, z11);
                WeakHashMap<View, g0> weakHashMap2 = a0.f9147a;
                a0.d.m(view, cVar);
            } else {
                if (!z11 || (bVar = SwipeDismissBehavior.this.f5008b) == null) {
                    return;
                }
                ((e) bVar).a(view);
            }
        }

        @Override // q0.c.AbstractC0239c
        public final boolean i(View view, int i10) {
            int i11 = this.f5016b;
            return (i11 == -1 || i11 == i10) && SwipeDismissBehavior.this.s(view);
        }
    }

    public interface b {
    }

    public class c implements Runnable {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public final View f5018h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public final boolean f5019i;

        public c(View view, boolean z10) {
            this.f5018h = view;
            this.f5019i = z10;
        }

        @Override // java.lang.Runnable
        public final void run() {
            b bVar;
            q0.c cVar = SwipeDismissBehavior.this.f5007a;
            if (cVar != null && cVar.h()) {
                View view = this.f5018h;
                WeakHashMap<View, g0> weakHashMap = a0.f9147a;
                a0.d.m(view, this);
            } else {
                if (!this.f5019i || (bVar = SwipeDismissBehavior.this.f5008b) == null) {
                    return;
                }
                ((e) bVar).a(this.f5018h);
            }
        }
    }

    public static float t(float f10) {
        return Math.min(Math.max(0.0f, f10), 1.0f);
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.c
    public boolean g(CoordinatorLayout coordinatorLayout, V v10, MotionEvent motionEvent) {
        boolean zQ = this.f5009c;
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            zQ = coordinatorLayout.q(v10, (int) motionEvent.getX(), (int) motionEvent.getY());
            this.f5009c = zQ;
        } else if (actionMasked == 1 || actionMasked == 3) {
            this.f5009c = false;
        }
        if (!zQ) {
            return false;
        }
        if (this.f5007a == null) {
            this.f5007a = new q0.c(coordinatorLayout.getContext(), coordinatorLayout, this.f5014h);
        }
        return this.f5007a.t(motionEvent);
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.c
    public final boolean h(CoordinatorLayout coordinatorLayout, V v10, int i10) {
        WeakHashMap<View, g0> weakHashMap = a0.f9147a;
        if (a0.d.c(v10) == 0) {
            a0.d.s(v10, 1);
            a0.m(1048576, v10);
            a0.j(v10, 0);
            if (s(v10)) {
                a0.n(v10, f.a.f9560j, new com.google.android.material.behavior.a(this));
            }
        }
        return false;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.c
    public final boolean r(CoordinatorLayout coordinatorLayout, V v10, MotionEvent motionEvent) {
        q0.c cVar = this.f5007a;
        if (cVar == null) {
            return false;
        }
        cVar.m(motionEvent);
        return true;
    }

    public boolean s(View view) {
        return true;
    }
}
