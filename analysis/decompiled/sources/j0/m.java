package j0;

import android.util.Log;
import android.view.View;
import android.view.ViewParent;

/* JADX INFO: compiled from: NestedScrollingChildHelper.java */
/* JADX INFO: loaded from: classes.dex */
public final class m {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public ViewParent f9225a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public ViewParent f9226b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final View f9227c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public boolean f9228d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int[] f9229e;

    public m(View view) {
        this.f9227c = view;
    }

    public final boolean a(float f10, float f11, boolean z10) {
        ViewParent viewParentF;
        if (!this.f9228d || (viewParentF = f(0)) == null) {
            return false;
        }
        try {
            return e0.a(viewParentF, this.f9227c, f10, f11, z10);
        } catch (AbstractMethodError e10) {
            Log.e("ViewParentCompat", "ViewParent " + viewParentF + " does not implement interface method onNestedFling", e10);
            return false;
        }
    }

    public final boolean b(float f10, float f11) {
        ViewParent viewParentF;
        if (!this.f9228d || (viewParentF = f(0)) == null) {
            return false;
        }
        try {
            return e0.b(viewParentF, this.f9227c, f10, f11);
        } catch (AbstractMethodError e10) {
            Log.e("ViewParentCompat", "ViewParent " + viewParentF + " does not implement interface method onNestedPreFling", e10);
            return false;
        }
    }

    public final boolean c(int i10, int i11, int[] iArr, int[] iArr2, int i12) {
        ViewParent viewParentF;
        int i13;
        int i14;
        int[] iArr3;
        if (!this.f9228d || (viewParentF = f(i12)) == null) {
            return false;
        }
        if (i10 == 0 && i11 == 0) {
            if (iArr2 == null) {
                return false;
            }
            iArr2[0] = 0;
            iArr2[1] = 0;
            return false;
        }
        if (iArr2 != null) {
            this.f9227c.getLocationInWindow(iArr2);
            i13 = iArr2[0];
            i14 = iArr2[1];
        } else {
            i13 = 0;
            i14 = 0;
        }
        if (iArr == null) {
            if (this.f9229e == null) {
                this.f9229e = new int[2];
            }
            iArr3 = this.f9229e;
        } else {
            iArr3 = iArr;
        }
        iArr3[0] = 0;
        iArr3[1] = 0;
        View view = this.f9227c;
        if (viewParentF instanceof n) {
            ((n) viewParentF).j(view, i10, i11, iArr3, i12);
        } else if (i12 == 0) {
            try {
                e0.c(viewParentF, view, i10, i11, iArr3);
            } catch (AbstractMethodError e10) {
                Log.e("ViewParentCompat", "ViewParent " + viewParentF + " does not implement interface method onNestedPreScroll", e10);
            }
        }
        if (iArr2 != null) {
            this.f9227c.getLocationInWindow(iArr2);
            iArr2[0] = iArr2[0] - i13;
            iArr2[1] = iArr2[1] - i14;
        }
        return (iArr3[0] == 0 && iArr3[1] == 0) ? false : true;
    }

    public final void d(int i10, int i11, int i12, int[] iArr) {
        e(0, i10, 0, i11, null, i12, iArr);
    }

    public final boolean e(int i10, int i11, int i12, int i13, int[] iArr, int i14, int[] iArr2) {
        ViewParent viewParentF;
        int i15;
        int i16;
        int[] iArr3;
        if (!this.f9228d || (viewParentF = f(i14)) == null) {
            return false;
        }
        if (i10 == 0 && i11 == 0 && i12 == 0 && i13 == 0) {
            if (iArr != null) {
                iArr[0] = 0;
                iArr[1] = 0;
            }
            return false;
        }
        if (iArr != null) {
            this.f9227c.getLocationInWindow(iArr);
            i15 = iArr[0];
            i16 = iArr[1];
        } else {
            i15 = 0;
            i16 = 0;
        }
        if (iArr2 == null) {
            if (this.f9229e == null) {
                this.f9229e = new int[2];
            }
            int[] iArr4 = this.f9229e;
            iArr4[0] = 0;
            iArr4[1] = 0;
            iArr3 = iArr4;
        } else {
            iArr3 = iArr2;
        }
        View view = this.f9227c;
        if (viewParentF instanceof o) {
            ((o) viewParentF).m(view, i10, i11, i12, i13, i14, iArr3);
        } else {
            iArr3[0] = iArr3[0] + i12;
            iArr3[1] = iArr3[1] + i13;
            if (viewParentF instanceof n) {
                ((n) viewParentF).n(view, i10, i11, i12, i13, i14);
            } else if (i14 == 0) {
                try {
                    e0.d(viewParentF, view, i10, i11, i12, i13);
                } catch (AbstractMethodError e10) {
                    Log.e("ViewParentCompat", "ViewParent " + viewParentF + " does not implement interface method onNestedScroll", e10);
                }
            }
        }
        if (iArr != null) {
            this.f9227c.getLocationInWindow(iArr);
            iArr[0] = iArr[0] - i15;
            iArr[1] = iArr[1] - i16;
        }
        return true;
    }

    public final ViewParent f(int i10) {
        if (i10 == 0) {
            return this.f9225a;
        }
        if (i10 != 1) {
            return null;
        }
        return this.f9226b;
    }

    public final boolean g(int i10) {
        return f(i10) != null;
    }

    public final boolean h(int i10, int i11) {
        boolean zF;
        if (g(i11)) {
            return true;
        }
        if (this.f9228d) {
            View view = this.f9227c;
            for (ViewParent parent = this.f9227c.getParent(); parent != null; parent = parent.getParent()) {
                View view2 = this.f9227c;
                boolean z10 = parent instanceof n;
                if (z10) {
                    zF = ((n) parent).o(view, view2, i10, i11);
                } else if (i11 == 0) {
                    try {
                        zF = e0.f(parent, view, view2, i10);
                    } catch (AbstractMethodError e10) {
                        Log.e("ViewParentCompat", "ViewParent " + parent + " does not implement interface method onStartNestedScroll", e10);
                        zF = false;
                    }
                } else {
                    zF = false;
                }
                if (zF) {
                    if (i11 == 0) {
                        this.f9225a = parent;
                    } else if (i11 == 1) {
                        this.f9226b = parent;
                    }
                    View view3 = this.f9227c;
                    if (z10) {
                        ((n) parent).h(view, view3, i10, i11);
                    } else if (i11 == 0) {
                        try {
                            e0.e(parent, view, view3, i10);
                        } catch (AbstractMethodError e11) {
                            Log.e("ViewParentCompat", "ViewParent " + parent + " does not implement interface method onNestedScrollAccepted", e11);
                        }
                    }
                    return true;
                }
                if (parent instanceof View) {
                    view = (View) parent;
                }
            }
        }
        return false;
    }

    public final void i(int i10) {
        ViewParent viewParentF = f(i10);
        if (viewParentF != null) {
            View view = this.f9227c;
            if (viewParentF instanceof n) {
                ((n) viewParentF).i(view, i10);
            } else if (i10 == 0) {
                try {
                    e0.g(viewParentF, view);
                } catch (AbstractMethodError e10) {
                    Log.e("ViewParentCompat", "ViewParent " + viewParentF + " does not implement interface method onStopNestedScroll", e10);
                }
            }
            if (i10 == 0) {
                this.f9225a = null;
            } else {
                if (i10 != 1) {
                    return;
                }
                this.f9226b = null;
            }
        }
    }
}
