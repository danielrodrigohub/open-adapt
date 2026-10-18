package androidx.transition;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.animation.TypeConverter;
import android.graphics.PointF;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.util.Property;
import android.view.View;
import android.view.ViewGroup;
import j0.a0;
import j0.g0;
import java.util.Objects;
import java.util.WeakHashMap;

/* JADX INFO: compiled from: ChangeBounds.java */
/* JADX INFO: loaded from: classes.dex */
public final class a extends androidx.transition.f {
    public static final String[] E = {"android:changeBounds:bounds", "android:changeBounds:clip", "android:changeBounds:parent", "android:changeBounds:windowX", "android:changeBounds:windowY"};
    public static final Property<Drawable, PointF> F = new C0039a(PointF.class);
    public static final Property<i, PointF> G = new b(PointF.class);
    public static final Property<i, PointF> H = new c(PointF.class);
    public static final Property<View, PointF> I = new d(PointF.class);
    public static final Property<View, PointF> J = new e(PointF.class);
    public static final Property<View, PointF> K = new f(PointF.class);

    /* JADX INFO: renamed from: androidx.transition.a$a, reason: collision with other inner class name */
    /* JADX INFO: compiled from: ChangeBounds.java */
    public class C0039a extends Property<Drawable, PointF> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public Rect f2895a;

        public C0039a(Class cls) {
            super(cls, "boundsOrigin");
            this.f2895a = new Rect();
        }

        @Override // android.util.Property
        public final PointF get(Drawable drawable) {
            drawable.copyBounds(this.f2895a);
            Rect rect = this.f2895a;
            return new PointF(rect.left, rect.top);
        }

        @Override // android.util.Property
        public final void set(Drawable drawable, PointF pointF) {
            Drawable drawable2 = drawable;
            PointF pointF2 = pointF;
            drawable2.copyBounds(this.f2895a);
            this.f2895a.offsetTo(Math.round(pointF2.x), Math.round(pointF2.y));
            drawable2.setBounds(this.f2895a);
        }
    }

    /* JADX INFO: compiled from: ChangeBounds.java */
    public class b extends Property<i, PointF> {
        public b(Class cls) {
            super(cls, "topLeft");
        }

        @Override // android.util.Property
        public final /* bridge */ /* synthetic */ PointF get(i iVar) {
            return null;
        }

        @Override // android.util.Property
        public final void set(i iVar, PointF pointF) {
            i iVar2 = iVar;
            PointF pointF2 = pointF;
            Objects.requireNonNull(iVar2);
            iVar2.f2898a = Math.round(pointF2.x);
            int iRound = Math.round(pointF2.y);
            iVar2.f2899b = iRound;
            int i10 = iVar2.f2903f + 1;
            iVar2.f2903f = i10;
            if (i10 == iVar2.f2904g) {
                g1.l.b(iVar2.f2902e, iVar2.f2898a, iRound, iVar2.f2900c, iVar2.f2901d);
                iVar2.f2903f = 0;
                iVar2.f2904g = 0;
            }
        }
    }

    /* JADX INFO: compiled from: ChangeBounds.java */
    public class c extends Property<i, PointF> {
        public c(Class cls) {
            super(cls, "bottomRight");
        }

        @Override // android.util.Property
        public final /* bridge */ /* synthetic */ PointF get(i iVar) {
            return null;
        }

        @Override // android.util.Property
        public final void set(i iVar, PointF pointF) {
            i iVar2 = iVar;
            PointF pointF2 = pointF;
            Objects.requireNonNull(iVar2);
            iVar2.f2900c = Math.round(pointF2.x);
            int iRound = Math.round(pointF2.y);
            iVar2.f2901d = iRound;
            int i10 = iVar2.f2904g + 1;
            iVar2.f2904g = i10;
            if (iVar2.f2903f == i10) {
                g1.l.b(iVar2.f2902e, iVar2.f2898a, iVar2.f2899b, iVar2.f2900c, iRound);
                iVar2.f2903f = 0;
                iVar2.f2904g = 0;
            }
        }
    }

    /* JADX INFO: compiled from: ChangeBounds.java */
    public class d extends Property<View, PointF> {
        public d(Class cls) {
            super(cls, "bottomRight");
        }

        @Override // android.util.Property
        public final /* bridge */ /* synthetic */ PointF get(View view) {
            return null;
        }

        @Override // android.util.Property
        public final void set(View view, PointF pointF) {
            View view2 = view;
            PointF pointF2 = pointF;
            g1.l.b(view2, view2.getLeft(), view2.getTop(), Math.round(pointF2.x), Math.round(pointF2.y));
        }
    }

    /* JADX INFO: compiled from: ChangeBounds.java */
    public class e extends Property<View, PointF> {
        public e(Class cls) {
            super(cls, "topLeft");
        }

        @Override // android.util.Property
        public final /* bridge */ /* synthetic */ PointF get(View view) {
            return null;
        }

        @Override // android.util.Property
        public final void set(View view, PointF pointF) {
            View view2 = view;
            PointF pointF2 = pointF;
            g1.l.b(view2, Math.round(pointF2.x), Math.round(pointF2.y), view2.getRight(), view2.getBottom());
        }
    }

    /* JADX INFO: compiled from: ChangeBounds.java */
    public class f extends Property<View, PointF> {
        public f(Class cls) {
            super(cls, "position");
        }

        @Override // android.util.Property
        public final /* bridge */ /* synthetic */ PointF get(View view) {
            return null;
        }

        @Override // android.util.Property
        public final void set(View view, PointF pointF) {
            View view2 = view;
            PointF pointF2 = pointF;
            int iRound = Math.round(pointF2.x);
            int iRound2 = Math.round(pointF2.y);
            g1.l.b(view2, iRound, iRound2, view2.getWidth() + iRound, view2.getHeight() + iRound2);
        }
    }

    /* JADX INFO: compiled from: ChangeBounds.java */
    public class g extends AnimatorListenerAdapter {
        private i mViewBounds;

        public g(i iVar) {
            this.mViewBounds = iVar;
        }
    }

    /* JADX INFO: compiled from: ChangeBounds.java */
    public class h extends androidx.transition.g {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public boolean f2896a = false;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final /* synthetic */ ViewGroup f2897b;

        public h(ViewGroup viewGroup) {
            this.f2897b = viewGroup;
        }

        @Override // androidx.transition.g, androidx.transition.f.d
        public final void a() {
            g1.j.a(this.f2897b, false);
        }

        @Override // androidx.transition.g, androidx.transition.f.d
        public final void c() {
            g1.j.a(this.f2897b, true);
        }

        @Override // androidx.transition.g, androidx.transition.f.d
        public final void d() {
            g1.j.a(this.f2897b, false);
            this.f2896a = true;
        }

        @Override // androidx.transition.f.d
        public final void e(androidx.transition.f fVar) {
            if (!this.f2896a) {
                g1.j.a(this.f2897b, false);
            }
            fVar.v(this);
        }
    }

    /* JADX INFO: compiled from: ChangeBounds.java */
    public static class i {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public int f2898a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f2899b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public int f2900c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public int f2901d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public View f2902e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public int f2903f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        public int f2904g;

        public i(View view) {
            this.f2902e = view;
        }
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    public final void H(g1.g gVar) {
        View view = gVar.f7544b;
        WeakHashMap<View, g0> weakHashMap = a0.f9147a;
        if (!a0.g.c(view) && view.getWidth() == 0 && view.getHeight() == 0) {
            return;
        }
        gVar.f7543a.put("android:changeBounds:bounds", new Rect(view.getLeft(), view.getTop(), view.getRight(), view.getBottom()));
        gVar.f7543a.put("android:changeBounds:parent", gVar.f7544b.getParent());
    }

    @Override // androidx.transition.f
    public final void d(g1.g gVar) {
        H(gVar);
    }

    @Override // androidx.transition.f
    public final void g(g1.g gVar) {
        H(gVar);
    }

    /* JADX WARN: Type inference failed for: r1v5, types: [java.util.HashMap, java.util.Map<java.lang.String, java.lang.Object>] */
    /* JADX WARN: Type inference failed for: r2v1, types: [java.util.HashMap, java.util.Map<java.lang.String, java.lang.Object>] */
    /* JADX WARN: Type inference failed for: r4v0, types: [java.util.HashMap, java.util.Map<java.lang.String, java.lang.Object>] */
    /* JADX WARN: Type inference failed for: r5v0, types: [java.util.HashMap, java.util.Map<java.lang.String, java.lang.Object>] */
    /* JADX WARN: Type inference failed for: r5v3, types: [java.util.HashMap, java.util.Map<java.lang.String, java.lang.Object>] */
    /* JADX WARN: Type inference failed for: r7v0, types: [java.util.HashMap, java.util.Map<java.lang.String, java.lang.Object>] */
    @Override // androidx.transition.f
    public final Animator k(ViewGroup viewGroup, g1.g gVar, g1.g gVar2) {
        int i10;
        a aVar;
        Animator animatorOfObject;
        if (gVar == null || gVar2 == null) {
            return null;
        }
        ?? r10 = gVar.f7543a;
        ?? r11 = gVar2.f7543a;
        ViewGroup viewGroup2 = (ViewGroup) r10.get("android:changeBounds:parent");
        ViewGroup viewGroup3 = (ViewGroup) r11.get("android:changeBounds:parent");
        if (viewGroup2 == null || viewGroup3 == null) {
            return null;
        }
        View view = gVar2.f7544b;
        Rect rect = (Rect) gVar.f7543a.get("android:changeBounds:bounds");
        Rect rect2 = (Rect) gVar2.f7543a.get("android:changeBounds:bounds");
        int i11 = rect.left;
        int i12 = rect2.left;
        int i13 = rect.top;
        int i14 = rect2.top;
        int i15 = rect.right;
        int i16 = rect2.right;
        int i17 = rect.bottom;
        int i18 = rect2.bottom;
        int i19 = i15 - i11;
        int i20 = i17 - i13;
        int i21 = i16 - i12;
        int i22 = i18 - i14;
        Rect rect3 = (Rect) gVar.f7543a.get("android:changeBounds:clip");
        Rect rect4 = (Rect) gVar2.f7543a.get("android:changeBounds:clip");
        if ((i19 == 0 || i20 == 0) && (i21 == 0 || i22 == 0)) {
            i10 = 0;
        } else {
            i10 = (i11 == i12 && i13 == i14) ? 0 : 1;
            if (i15 != i16 || i17 != i18) {
                i10++;
            }
        }
        if ((rect3 != null && !rect3.equals(rect4)) || (rect3 == null && rect4 != null)) {
            i10++;
        }
        int i23 = i10;
        if (i23 <= 0) {
            return null;
        }
        g1.l.b(view, i11, i13, i15, i17);
        if (i23 != 2) {
            aVar = this;
            animatorOfObject = (i11 == i12 && i13 == i14) ? ObjectAnimator.ofObject(view, (Property<View, V>) I, (TypeConverter) null, aVar.A.b(i15, i17, i16, i18)) : ObjectAnimator.ofObject(view, (Property<View, V>) J, (TypeConverter) null, aVar.A.b(i11, i13, i12, i14));
        } else if (i19 == i21 && i20 == i22) {
            aVar = this;
            animatorOfObject = ObjectAnimator.ofObject(view, (Property<View, V>) K, (TypeConverter) null, aVar.A.b(i11, i13, i12, i14));
        } else {
            aVar = this;
            i iVar = new i(view);
            ObjectAnimator objectAnimatorOfObject = ObjectAnimator.ofObject(iVar, (Property<i, V>) G, (TypeConverter) null, aVar.A.b(i11, i13, i12, i14));
            ObjectAnimator objectAnimatorOfObject2 = ObjectAnimator.ofObject(iVar, (Property<i, V>) H, (TypeConverter) null, aVar.A.b(i15, i17, i16, i18));
            AnimatorSet animatorSet = new AnimatorSet();
            animatorSet.playTogether(objectAnimatorOfObject, objectAnimatorOfObject2);
            animatorSet.addListener(new g(iVar));
            animatorOfObject = animatorSet;
        }
        if (view.getParent() instanceof ViewGroup) {
            ViewGroup viewGroup4 = (ViewGroup) view.getParent();
            g1.j.a(viewGroup4, true);
            aVar.a(new h(viewGroup4));
        }
        return animatorOfObject;
    }

    @Override // androidx.transition.f
    public final String[] p() {
        return E;
    }
}
