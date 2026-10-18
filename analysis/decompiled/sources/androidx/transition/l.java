package androidx.transition;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.view.View;
import android.view.ViewGroup;

/* JADX INFO: compiled from: Visibility.java */
/* JADX INFO: loaded from: classes.dex */
public abstract class l extends f {
    public static final String[] F = {"android:visibility:visibility", "android:visibility:parent"};
    public int E = 3;

    /* JADX INFO: compiled from: Visibility.java */
    public static class a extends AnimatorListenerAdapter implements f.d {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final View f2957a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final int f2958b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final ViewGroup f2959c;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public boolean f2961e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public boolean f2962f = false;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public final boolean f2960d = true;

        public a(View view, int i10) {
            this.f2957a = view;
            this.f2958b = i10;
            this.f2959c = (ViewGroup) view.getParent();
            g(true);
        }

        @Override // androidx.transition.f.d
        public final void a() {
            g(false);
        }

        @Override // androidx.transition.f.d
        public final void b(f fVar) {
        }

        @Override // androidx.transition.f.d
        public final void c() {
            g(true);
        }

        @Override // androidx.transition.f.d
        public final void d() {
        }

        @Override // androidx.transition.f.d
        public final void e(f fVar) {
            f();
            fVar.v(this);
        }

        public final void f() {
            if (!this.f2962f) {
                g1.l.d(this.f2957a, this.f2958b);
                ViewGroup viewGroup = this.f2959c;
                if (viewGroup != null) {
                    viewGroup.invalidate();
                }
            }
            g(false);
        }

        public final void g(boolean z10) {
            ViewGroup viewGroup;
            if (!this.f2960d || this.f2961e == z10 || (viewGroup = this.f2959c) == null) {
                return;
            }
            this.f2961e = z10;
            g1.j.a(viewGroup, z10);
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public final void onAnimationCancel(Animator animator) {
            this.f2962f = true;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public final void onAnimationEnd(Animator animator) {
            f();
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorPauseListener
        public final void onAnimationPause(Animator animator) {
            if (this.f2962f) {
                return;
            }
            g1.l.d(this.f2957a, this.f2958b);
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public final void onAnimationRepeat(Animator animator) {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorPauseListener
        public final void onAnimationResume(Animator animator) {
            if (this.f2962f) {
                return;
            }
            g1.l.d(this.f2957a, 0);
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public final void onAnimationStart(Animator animator) {
        }
    }

    /* JADX INFO: compiled from: Visibility.java */
    public static class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public boolean f2963a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public boolean f2964b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public int f2965c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public int f2966d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public ViewGroup f2967e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public ViewGroup f2968f;
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    public final void H(g1.g gVar) {
        gVar.f7543a.put("android:visibility:visibility", Integer.valueOf(gVar.f7544b.getVisibility()));
        gVar.f7543a.put("android:visibility:parent", gVar.f7544b.getParent());
        int[] iArr = new int[2];
        gVar.f7544b.getLocationOnScreen(iArr);
        gVar.f7543a.put("android:visibility:screenLocation", iArr);
    }

    /* JADX WARN: Type inference failed for: r3v2, types: [java.util.HashMap, java.util.Map<java.lang.String, java.lang.Object>] */
    /* JADX WARN: Type inference failed for: r3v6, types: [java.util.HashMap, java.util.Map<java.lang.String, java.lang.Object>] */
    /* JADX WARN: Type inference failed for: r6v0, types: [java.util.HashMap, java.util.Map<java.lang.String, java.lang.Object>] */
    /* JADX WARN: Type inference failed for: r6v2, types: [java.util.HashMap, java.util.Map<java.lang.String, java.lang.Object>] */
    /* JADX WARN: Type inference failed for: r6v4, types: [java.util.HashMap, java.util.Map<java.lang.String, java.lang.Object>] */
    /* JADX WARN: Type inference failed for: r6v8, types: [java.util.HashMap, java.util.Map<java.lang.String, java.lang.Object>] */
    public final b I(g1.g gVar, g1.g gVar2) {
        b bVar = new b();
        bVar.f2963a = false;
        bVar.f2964b = false;
        if (gVar == null || !gVar.f7543a.containsKey("android:visibility:visibility")) {
            bVar.f2965c = -1;
            bVar.f2967e = null;
        } else {
            bVar.f2965c = ((Integer) gVar.f7543a.get("android:visibility:visibility")).intValue();
            bVar.f2967e = (ViewGroup) gVar.f7543a.get("android:visibility:parent");
        }
        if (gVar2 == null || !gVar2.f7543a.containsKey("android:visibility:visibility")) {
            bVar.f2966d = -1;
            bVar.f2968f = null;
        } else {
            bVar.f2966d = ((Integer) gVar2.f7543a.get("android:visibility:visibility")).intValue();
            bVar.f2968f = (ViewGroup) gVar2.f7543a.get("android:visibility:parent");
        }
        if (gVar != null && gVar2 != null) {
            int i10 = bVar.f2965c;
            int i11 = bVar.f2966d;
            if (i10 == i11 && bVar.f2967e == bVar.f2968f) {
                return bVar;
            }
            if (i10 != i11) {
                if (i10 == 0) {
                    bVar.f2964b = false;
                    bVar.f2963a = true;
                } else if (i11 == 0) {
                    bVar.f2964b = true;
                    bVar.f2963a = true;
                }
            } else if (bVar.f2968f == null) {
                bVar.f2964b = false;
                bVar.f2963a = true;
            } else if (bVar.f2967e == null) {
                bVar.f2964b = true;
                bVar.f2963a = true;
            }
        } else if (gVar == null && bVar.f2966d == 0) {
            bVar.f2964b = true;
            bVar.f2963a = true;
        } else if (gVar2 == null && bVar.f2965c == 0) {
            bVar.f2964b = false;
            bVar.f2963a = true;
        }
        return bVar;
    }

    public abstract Animator J(View view, g1.g gVar);

    @Override // androidx.transition.f
    public final void d(g1.g gVar) {
        H(gVar);
    }

    /* JADX WARN: Code duplicated, block: B:54:0x009c  */
    /* JADX WARN: Type inference failed for: r13v4, types: [java.util.HashMap, java.util.Map<java.lang.String, java.lang.Object>] */
    /* JADX WARN: Type inference failed for: r14v8, types: [java.util.HashMap, java.util.Map<java.lang.String, java.lang.Object>] */
    @Override // androidx.transition.f
    public final Animator k(ViewGroup viewGroup, g1.g gVar, g1.g gVar2) {
        boolean z10;
        boolean z11;
        Float f10;
        b bVarI = I(gVar, gVar2);
        Animator animatorJ = null;
        if (bVarI.f2963a && (bVarI.f2967e != null || bVarI.f2968f != null)) {
            if (bVarI.f2964b) {
                if ((this.E & 1) != 1 || gVar2 == null) {
                    return null;
                }
                if (gVar == null) {
                    View view = (View) gVar2.f7544b.getParent();
                    if (I(n(view, false), q(view, false)).f2963a) {
                        return null;
                    }
                }
                View view2 = gVar2.f7544b;
                androidx.transition.b bVar = (androidx.transition.b) this;
                float fFloatValue = (gVar == null || (f10 = (Float) gVar.f7543a.get("android:fade:transitionAlpha")) == null) ? 0.0f : f10.floatValue();
                return bVar.K(view2, fFloatValue != 1.0f ? fFloatValue : 0.0f, 1.0f);
            }
            int i10 = bVarI.f2966d;
            if ((this.E & 2) == 2 && gVar != null) {
                View view3 = gVar.f7544b;
                View view4 = gVar2 != null ? gVar2.f7544b : null;
                int i11 = R.id.save_overlay_view;
                View viewA = (View) view3.getTag(i11);
                if (viewA != null) {
                    view4 = null;
                    z11 = true;
                } else {
                    if (view4 == null || view4.getParent() == null) {
                        if (view4 != null) {
                            viewA = view4;
                            view4 = null;
                            z10 = false;
                        } else {
                            view4 = null;
                            viewA = null;
                            z10 = true;
                        }
                    } else if (i10 == 4 || view3 == view4) {
                        viewA = null;
                        z10 = false;
                    } else {
                        view4 = null;
                        viewA = null;
                        z10 = true;
                    }
                    if (z10) {
                        if (view3.getParent() == null) {
                            viewA = view3;
                        } else if (view3.getParent() instanceof View) {
                            View view5 = (View) view3.getParent();
                            if (I(q(view5, true), n(view5, true)).f2963a) {
                                int id2 = view5.getId();
                                if (view5.getParent() == null && id2 != -1) {
                                    viewGroup.findViewById(id2);
                                }
                            } else {
                                viewA = g1.f.a(viewGroup, view3, view5);
                            }
                        }
                    }
                    z11 = false;
                }
                if (viewA != null) {
                    if (!z11) {
                        int[] iArr = (int[]) gVar.f7543a.get("android:visibility:screenLocation");
                        int i12 = iArr[0];
                        int i13 = iArr[1];
                        int[] iArr2 = new int[2];
                        viewGroup.getLocationOnScreen(iArr2);
                        viewA.offsetLeftAndRight((i12 - iArr2[0]) - viewA.getLeft());
                        viewA.offsetTopAndBottom((i13 - iArr2[1]) - viewA.getTop());
                        viewGroup.getOverlay().add(viewA);
                    }
                    animatorJ = J(viewA, gVar);
                    if (!z11) {
                        if (animatorJ == null) {
                            viewGroup.getOverlay().remove(viewA);
                        } else {
                            view3.setTag(i11, viewA);
                            a(new k(this, viewGroup, viewA, view3));
                        }
                    }
                } else if (view4 != null) {
                    int visibility = view4.getVisibility();
                    g1.l.d(view4, 0);
                    animatorJ = J(view4, gVar);
                    if (animatorJ != null) {
                        a aVar = new a(view4, i10);
                        animatorJ.addListener(aVar);
                        animatorJ.addPauseListener(aVar);
                        a(aVar);
                    } else {
                        g1.l.d(view4, visibility);
                    }
                }
            }
        }
        return animatorJ;
    }

    @Override // androidx.transition.f
    public final String[] p() {
        return F;
    }

    /* JADX WARN: Type inference failed for: r1v0, types: [java.util.HashMap, java.util.Map<java.lang.String, java.lang.Object>] */
    /* JADX WARN: Type inference failed for: r3v0, types: [java.util.HashMap, java.util.Map<java.lang.String, java.lang.Object>] */
    @Override // androidx.transition.f
    public final boolean r(g1.g gVar, g1.g gVar2) {
        if (gVar == null && gVar2 == null) {
            return false;
        }
        if (gVar != null && gVar2 != null && gVar2.f7543a.containsKey("android:visibility:visibility") != gVar.f7543a.containsKey("android:visibility:visibility")) {
            return false;
        }
        b bVarI = I(gVar, gVar2);
        if (bVarI.f2963a) {
            return bVarI.f2965c == 0 || bVarI.f2966d == 0;
        }
        return false;
    }
}
