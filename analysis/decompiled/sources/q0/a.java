package q0;

import android.graphics.Rect;
import android.os.Bundle;
import android.view.View;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityManager;
import android.view.accessibility.AccessibilityNodeInfo;
import com.google.android.material.chip.Chip;
import j0.a0;
import j0.g0;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Objects;
import java.util.WeakHashMap;
import k0.f;
import k0.g;
import k0.i;
import p.h;

/* JADX INFO: compiled from: ExploreByTouchHelper.java */
/* JADX INFO: loaded from: classes.dex */
public abstract class a extends j0.a {

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public static final Rect f13497n = new Rect(Integer.MAX_VALUE, Integer.MAX_VALUE, Integer.MIN_VALUE, Integer.MIN_VALUE);

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public static final q0.b.a<f> f13498o = new C0237a();

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public static final b f13499p = new b();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final AccessibilityManager f13504h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final View f13505i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public c f13506j;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final Rect f13500d = new Rect();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final Rect f13501e = new Rect();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final Rect f13502f = new Rect();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final int[] f13503g = new int[2];

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public int f13507k = Integer.MIN_VALUE;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public int f13508l = Integer.MIN_VALUE;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public int f13509m = Integer.MIN_VALUE;

    /* JADX INFO: renamed from: q0.a$a, reason: collision with other inner class name */
    /* JADX INFO: compiled from: ExploreByTouchHelper.java */
    public class C0237a implements q0.b.a<f> {
        public final void a(Object obj, Rect rect) {
            ((f) obj).e(rect);
        }
    }

    /* JADX INFO: compiled from: ExploreByTouchHelper.java */
    public class b {
    }

    /* JADX INFO: compiled from: ExploreByTouchHelper.java */
    public class c extends g {
        public c() {
        }

        @Override // k0.g
        public final f a(int i10) {
            return new f(AccessibilityNodeInfo.obtain(a.this.o(i10).f9552a));
        }

        @Override // k0.g
        public final f b(int i10) {
            int i11 = i10 == 2 ? a.this.f13507k : a.this.f13508l;
            if (i11 == Integer.MIN_VALUE) {
                return null;
            }
            return new f(AccessibilityNodeInfo.obtain(a.this.o(i11).f9552a));
        }

        @Override // k0.g
        public final boolean c(int i10, int i11, Bundle bundle) {
            int i12;
            a aVar = a.this;
            if (i10 == -1) {
                View view = aVar.f13505i;
                WeakHashMap<View, g0> weakHashMap = a0.f9147a;
                return a0.d.j(view, i11, bundle);
            }
            boolean z10 = true;
            if (i11 == 1) {
                return aVar.r(i10);
            }
            if (i11 == 2) {
                return aVar.k(i10);
            }
            if (i11 != 64) {
                return i11 != 128 ? aVar.p(i10, i11) : aVar.j(i10);
            }
            if (aVar.f13504h.isEnabled() && aVar.f13504h.isTouchExplorationEnabled() && (i12 = aVar.f13507k) != i10) {
                if (i12 != Integer.MIN_VALUE) {
                    aVar.j(i12);
                }
                aVar.f13507k = i10;
                aVar.f13505i.invalidate();
                aVar.s(i10, 32768);
            } else {
                z10 = false;
            }
            return z10;
        }
    }

    public a(View view) {
        if (view == null) {
            throw new IllegalArgumentException("View may not be null");
        }
        this.f13505i = view;
        this.f13504h = (AccessibilityManager) view.getContext().getSystemService("accessibility");
        view.setFocusable(true);
        WeakHashMap<View, g0> weakHashMap = a0.f9147a;
        if (a0.d.c(view) == 0) {
            a0.d.s(view, 1);
        }
    }

    @Override // j0.a
    public final g b(View view) {
        if (this.f13506j == null) {
            this.f13506j = new c();
        }
        return this.f13506j;
    }

    @Override // j0.a
    public final void c(View view, AccessibilityEvent accessibilityEvent) {
        super.c(view, accessibilityEvent);
    }

    @Override // j0.a
    public final void d(View view, f fVar) {
        this.f9144a.onInitializeAccessibilityNodeInfo(view, fVar.f9552a);
        Chip.b bVar = (Chip.b) this;
        fVar.m(Chip.this.f());
        fVar.o(Chip.this.isClickable());
        fVar.n(Chip.this.getAccessibilityClassName());
        fVar.z(Chip.this.getText());
    }

    public final boolean j(int i10) {
        if (this.f13507k != i10) {
            return false;
        }
        this.f13507k = Integer.MIN_VALUE;
        this.f13505i.invalidate();
        s(i10, 65536);
        return true;
    }

    public final boolean k(int i10) {
        if (this.f13508l != i10) {
            return false;
        }
        this.f13508l = Integer.MIN_VALUE;
        Chip.b bVar = (Chip.b) this;
        if (i10 == 1) {
            Chip chip = Chip.this;
            chip.f5125u = false;
            chip.refreshDrawableState();
        }
        s(i10, 8);
        return true;
    }

    public final f l(int i10) {
        AccessibilityNodeInfo accessibilityNodeInfoObtain = AccessibilityNodeInfo.obtain();
        f fVar = new f(accessibilityNodeInfoObtain);
        accessibilityNodeInfoObtain.setEnabled(true);
        accessibilityNodeInfoObtain.setFocusable(true);
        fVar.n("android.view.View");
        Rect rect = f13497n;
        fVar.l(rect);
        accessibilityNodeInfoObtain.setBoundsInScreen(rect);
        View view = this.f13505i;
        fVar.f9553b = -1;
        accessibilityNodeInfoObtain.setParent(view);
        q(i10, fVar);
        if (fVar.i() == null && fVar.g() == null) {
            throw new RuntimeException("Callbacks must add text or a content description in populateNodeForVirtualViewId()");
        }
        fVar.e(this.f13501e);
        if (this.f13501e.equals(rect)) {
            throw new RuntimeException("Callbacks must set parent bounds in populateNodeForVirtualViewId()");
        }
        int actions = accessibilityNodeInfoObtain.getActions();
        if ((actions & 64) != 0) {
            throw new RuntimeException("Callbacks must not add ACTION_ACCESSIBILITY_FOCUS in populateNodeForVirtualViewId()");
        }
        if ((actions & 128) != 0) {
            throw new RuntimeException("Callbacks must not add ACTION_CLEAR_ACCESSIBILITY_FOCUS in populateNodeForVirtualViewId()");
        }
        accessibilityNodeInfoObtain.setPackageName(this.f13505i.getContext().getPackageName());
        View view2 = this.f13505i;
        fVar.f9554c = i10;
        accessibilityNodeInfoObtain.setSource(view2, i10);
        boolean z10 = false;
        if (this.f13507k == i10) {
            accessibilityNodeInfoObtain.setAccessibilityFocused(true);
            fVar.a(128);
        } else {
            accessibilityNodeInfoObtain.setAccessibilityFocused(false);
            fVar.a(64);
        }
        boolean z11 = this.f13508l == i10;
        if (z11) {
            fVar.a(2);
        } else if (accessibilityNodeInfoObtain.isFocusable()) {
            fVar.a(1);
        }
        accessibilityNodeInfoObtain.setFocused(z11);
        this.f13505i.getLocationOnScreen(this.f13503g);
        accessibilityNodeInfoObtain.getBoundsInScreen(this.f13500d);
        if (this.f13500d.equals(rect)) {
            fVar.e(this.f13500d);
            if (fVar.f9553b != -1) {
                f fVar2 = new f(AccessibilityNodeInfo.obtain());
                for (int i11 = fVar.f9553b; i11 != -1; i11 = fVar2.f9553b) {
                    View view3 = this.f13505i;
                    fVar2.f9553b = -1;
                    fVar2.f9552a.setParent(view3, -1);
                    fVar2.l(f13497n);
                    q(i11, fVar2);
                    fVar2.e(this.f13501e);
                    Rect rect2 = this.f13500d;
                    Rect rect3 = this.f13501e;
                    rect2.offset(rect3.left, rect3.top);
                }
                fVar2.f9552a.recycle();
            }
            this.f13500d.offset(this.f13503g[0] - this.f13505i.getScrollX(), this.f13503g[1] - this.f13505i.getScrollY());
        }
        if (this.f13505i.getLocalVisibleRect(this.f13502f)) {
            this.f13502f.offset(this.f13503g[0] - this.f13505i.getScrollX(), this.f13503g[1] - this.f13505i.getScrollY());
            if (this.f13500d.intersect(this.f13502f)) {
                fVar.f9552a.setBoundsInScreen(this.f13500d);
                Rect rect4 = this.f13500d;
                if (rect4 != null && !rect4.isEmpty() && this.f13505i.getWindowVisibility() == 0) {
                    Object parent = this.f13505i.getParent();
                    while (true) {
                        if (!(parent instanceof View)) {
                            if (parent == null) {
                                break;
                            }
                            z10 = true;
                            break;
                        }
                        View view4 = (View) parent;
                        if (view4.getAlpha() <= 0.0f || view4.getVisibility() != 0) {
                            break;
                        }
                        parent = view4.getParent();
                    }
                }
                if (z10) {
                    fVar.f9552a.setVisibleToUser(true);
                }
            }
        }
        return fVar;
    }

    public abstract void m(List<Integer> list);

    /* JADX WARN: Code duplicated, block: B:99:0x01b0  */
    /* JADX WARN: Type inference failed for: r8v4, types: [q0.a$a, q0.b$a<k0.f>] */
    public final boolean n(int i10, Rect rect) {
        Object obj;
        f fVar;
        boolean z10;
        ArrayList arrayList = new ArrayList();
        m(arrayList);
        h hVar = new h();
        for (int i11 = 0; i11 < arrayList.size(); i11++) {
            hVar.f(((Integer) arrayList.get(i11)).intValue(), l(((Integer) arrayList.get(i11)).intValue()));
        }
        int i12 = this.f13508l;
        f fVar2 = i12 == Integer.MIN_VALUE ? null : (f) hVar.c(i12, null);
        if (i10 == 1 || i10 == 2) {
            View view = this.f13505i;
            WeakHashMap<View, g0> weakHashMap = a0.f9147a;
            boolean z11 = a0.e.d(view) == 1;
            b bVar = f13499p;
            q0.b.a<f> aVar = f13498o;
            Objects.requireNonNull(bVar);
            int i13 = hVar.f12618j;
            ArrayList arrayList2 = new ArrayList(i13);
            for (int i14 = 0; i14 < i13; i14++) {
                arrayList2.add((f) hVar.f12617i[i14]);
            }
            Collections.sort(arrayList2, new q0.b.C0238b(z11, aVar));
            if (i10 == 1) {
                int size = arrayList2.size();
                if (fVar2 != null) {
                    size = arrayList2.indexOf(fVar2);
                }
                int i15 = size - 1;
                if (i15 >= 0) {
                    obj = arrayList2.get(i15);
                } else {
                    obj = null;
                }
            } else {
                if (i10 != 2) {
                    throw new IllegalArgumentException("direction must be one of {FOCUS_FORWARD, FOCUS_BACKWARD}.");
                }
                int size2 = arrayList2.size();
                int iLastIndexOf = (fVar2 != null ? arrayList2.lastIndexOf(fVar2) : -1) + 1;
                if (iLastIndexOf < size2) {
                    obj = arrayList2.get(iLastIndexOf);
                } else {
                    obj = null;
                }
            }
            fVar = (f) obj;
        } else {
            if (i10 != 17 && i10 != 33 && i10 != 66 && i10 != 130) {
                throw new IllegalArgumentException("direction must be one of {FOCUS_FORWARD, FOCUS_BACKWARD, FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}.");
            }
            Rect rect2 = new Rect();
            int i16 = this.f13508l;
            if (i16 != Integer.MIN_VALUE) {
                o(i16).e(rect2);
            } else if (rect != null) {
                rect2.set(rect);
            } else {
                View view2 = this.f13505i;
                int width = view2.getWidth();
                int height = view2.getHeight();
                if (i10 == 17) {
                    rect2.set(width, 0, width, height);
                } else if (i10 == 33) {
                    rect2.set(0, height, width, height);
                } else if (i10 == 66) {
                    rect2.set(-1, 0, -1, height);
                } else {
                    if (i10 != 130) {
                        throw new IllegalArgumentException("direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}.");
                    }
                    rect2.set(0, -1, width, -1);
                }
            }
            b bVar2 = f13499p;
            ?? r10 = f13498o;
            Rect rect3 = new Rect(rect2);
            if (i10 == 17) {
                rect3.offset(rect2.width() + 1, 0);
            } else if (i10 == 33) {
                rect3.offset(0, rect2.height() + 1);
            } else if (i10 == 66) {
                rect3.offset(-(rect2.width() + 1), 0);
            } else {
                if (i10 != 130) {
                    throw new IllegalArgumentException("direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}.");
                }
                rect3.offset(0, -(rect2.height() + 1));
            }
            Objects.requireNonNull(bVar2);
            int i17 = hVar.f12618j;
            Rect rect4 = new Rect();
            fVar = null;
            for (int i18 = 0; i18 < i17; i18++) {
                f fVar3 = (f) hVar.f12617i[i18];
                if (fVar3 != fVar2) {
                    r10.a(fVar3, rect4);
                    if (q0.b.c(rect2, rect4, i10)) {
                        if (q0.b.c(rect2, rect3, i10) && !q0.b.a(i10, rect2, rect4, rect3)) {
                            if (!q0.b.a(i10, rect2, rect3, rect4)) {
                                int iD = q0.b.d(i10, rect2, rect4);
                                int iE = q0.b.e(i10, rect2, rect4);
                                int i19 = (iE * iE) + (iD * 13 * iD);
                                int iD2 = q0.b.d(i10, rect2, rect3);
                                int iE2 = q0.b.e(i10, rect2, rect3);
                                if (i19 < (iE2 * iE2) + (iD2 * 13 * iD2)) {
                                }
                            }
                            z10 = false;
                        }
                        z10 = true;
                    } else {
                        z10 = false;
                    }
                    if (z10) {
                        rect3.set(rect4);
                        fVar = fVar3;
                    }
                }
            }
        }
        f fVar4 = fVar;
        return r(fVar4 != null ? hVar.f12616h[hVar.d(fVar4)] : Integer.MIN_VALUE);
    }

    public final f o(int i10) {
        if (i10 != -1) {
            return l(i10);
        }
        AccessibilityNodeInfo accessibilityNodeInfoObtain = AccessibilityNodeInfo.obtain(this.f13505i);
        f fVar = new f(accessibilityNodeInfoObtain);
        View view = this.f13505i;
        WeakHashMap<View, g0> weakHashMap = a0.f9147a;
        view.onInitializeAccessibilityNodeInfo(accessibilityNodeInfoObtain);
        ArrayList arrayList = new ArrayList();
        m(arrayList);
        if (accessibilityNodeInfoObtain.getChildCount() > 0 && arrayList.size() > 0) {
            throw new RuntimeException("Views cannot have both real and virtual children");
        }
        int size = arrayList.size();
        for (int i11 = 0; i11 < size; i11++) {
            fVar.f9552a.addChild(this.f13505i, ((Integer) arrayList.get(i11)).intValue());
        }
        return fVar;
    }

    public abstract boolean p(int i10, int i11);

    public abstract void q(int i10, f fVar);

    public final boolean r(int i10) {
        int i11;
        if ((!this.f13505i.isFocused() && !this.f13505i.requestFocus()) || (i11 = this.f13508l) == i10) {
            return false;
        }
        if (i11 != Integer.MIN_VALUE) {
            k(i11);
        }
        if (i10 == Integer.MIN_VALUE) {
            return false;
        }
        this.f13508l = i10;
        Chip.b bVar = (Chip.b) this;
        if (i10 == 1) {
            Chip chip = Chip.this;
            chip.f5125u = true;
            chip.refreshDrawableState();
        }
        s(i10, 8);
        return true;
    }

    public final boolean s(int i10, int i11) {
        ViewParent parent;
        AccessibilityEvent accessibilityEventObtain;
        if (i10 == Integer.MIN_VALUE || !this.f13504h.isEnabled() || (parent = this.f13505i.getParent()) == null) {
            return false;
        }
        if (i10 != -1) {
            accessibilityEventObtain = AccessibilityEvent.obtain(i11);
            f fVarO = o(i10);
            accessibilityEventObtain.getText().add(fVarO.i());
            accessibilityEventObtain.setContentDescription(fVarO.g());
            accessibilityEventObtain.setScrollable(fVarO.f9552a.isScrollable());
            accessibilityEventObtain.setPassword(fVarO.f9552a.isPassword());
            accessibilityEventObtain.setEnabled(fVarO.f9552a.isEnabled());
            accessibilityEventObtain.setChecked(fVarO.f9552a.isChecked());
            if (accessibilityEventObtain.getText().isEmpty() && accessibilityEventObtain.getContentDescription() == null) {
                throw new RuntimeException("Callbacks must add text or a content description in populateEventForVirtualViewId()");
            }
            accessibilityEventObtain.setClassName(fVarO.f9552a.getClassName());
            i.a(accessibilityEventObtain, this.f13505i, i10);
            accessibilityEventObtain.setPackageName(this.f13505i.getContext().getPackageName());
        } else {
            accessibilityEventObtain = AccessibilityEvent.obtain(i11);
            this.f13505i.onInitializeAccessibilityEvent(accessibilityEventObtain);
        }
        return parent.requestSendAccessibilityEvent(this.f13505i, accessibilityEventObtain);
    }
}
