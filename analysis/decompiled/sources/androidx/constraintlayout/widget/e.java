package androidx.constraintlayout.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import java.util.Objects;

/* JADX INFO: compiled from: Constraints.java */
/* JADX INFO: loaded from: classes.dex */
public final class e extends ViewGroup {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public d f1708h;

    @Override // android.view.ViewGroup
    public final ViewGroup.LayoutParams generateDefaultLayoutParams() {
        return new a();
    }

    @Override // android.view.ViewGroup
    public final ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new a(getContext(), attributeSet);
    }

    public d getConstraintSet() {
        if (this.f1708h == null) {
            this.f1708h = new d();
        }
        d dVar = this.f1708h;
        Objects.requireNonNull(dVar);
        int childCount = getChildCount();
        dVar.f1619c.clear();
        for (int i10 = 0; i10 < childCount; i10++) {
            View childAt = getChildAt(i10);
            a aVar = (a) childAt.getLayoutParams();
            int id2 = childAt.getId();
            if (dVar.f1618b && id2 == -1) {
                throw new RuntimeException("All children of ConstraintLayout must have ids to use ConstraintSet");
            }
            if (!dVar.f1619c.containsKey(Integer.valueOf(id2))) {
                dVar.f1619c.put(Integer.valueOf(id2), new d.a());
            }
            d.a aVar2 = dVar.f1619c.get(Integer.valueOf(id2));
            if (aVar2 != null) {
                if (childAt instanceof b) {
                    b bVar = (b) childAt;
                    aVar2.c(id2, aVar);
                    if (bVar instanceof Barrier) {
                        d.b bVar2 = aVar2.f1623d;
                        bVar2.f1653h0 = 1;
                        Barrier barrier = (Barrier) bVar;
                        bVar2.f1649f0 = barrier.getType();
                        aVar2.f1623d.f1655i0 = barrier.getReferencedIds();
                        aVar2.f1623d.f1651g0 = barrier.getMargin();
                    }
                }
                aVar2.c(id2, aVar);
            }
        }
        return this.f1708h;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z10, int i10, int i11, int i12, int i13) {
    }

    @Override // android.view.ViewGroup
    public final ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return new ConstraintLayout.a(layoutParams);
    }

    /* JADX INFO: compiled from: Constraints.java */
    public static class a extends ConstraintLayout.a {
        public float A0;
        public float B0;
        public float C0;
        public float D0;

        /* JADX INFO: renamed from: r0, reason: collision with root package name */
        public float f1709r0;

        /* JADX INFO: renamed from: s0, reason: collision with root package name */
        public boolean f1710s0;

        /* JADX INFO: renamed from: t0, reason: collision with root package name */
        public float f1711t0;

        /* JADX INFO: renamed from: u0, reason: collision with root package name */
        public float f1712u0;

        /* JADX INFO: renamed from: v0, reason: collision with root package name */
        public float f1713v0;

        /* JADX INFO: renamed from: w0, reason: collision with root package name */
        public float f1714w0;

        /* JADX INFO: renamed from: x0, reason: collision with root package name */
        public float f1715x0;

        /* JADX INFO: renamed from: y0, reason: collision with root package name */
        public float f1716y0;

        /* JADX INFO: renamed from: z0, reason: collision with root package name */
        public float f1717z0;

        public a() {
            this.f1709r0 = 1.0f;
            this.f1710s0 = false;
            this.f1711t0 = 0.0f;
            this.f1712u0 = 0.0f;
            this.f1713v0 = 0.0f;
            this.f1714w0 = 0.0f;
            this.f1715x0 = 1.0f;
            this.f1716y0 = 1.0f;
            this.f1717z0 = 0.0f;
            this.A0 = 0.0f;
            this.B0 = 0.0f;
            this.C0 = 0.0f;
            this.D0 = 0.0f;
        }

        public a(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            this.f1709r0 = 1.0f;
            this.f1710s0 = false;
            this.f1711t0 = 0.0f;
            this.f1712u0 = 0.0f;
            this.f1713v0 = 0.0f;
            this.f1714w0 = 0.0f;
            this.f1715x0 = 1.0f;
            this.f1716y0 = 1.0f;
            this.f1717z0 = 0.0f;
            this.A0 = 0.0f;
            this.B0 = 0.0f;
            this.C0 = 0.0f;
            this.D0 = 0.0f;
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.ConstraintSet);
            int indexCount = typedArrayObtainStyledAttributes.getIndexCount();
            for (int i10 = 0; i10 < indexCount; i10++) {
                int index = typedArrayObtainStyledAttributes.getIndex(i10);
                if (index == R.styleable.ConstraintSet_android_alpha) {
                    this.f1709r0 = typedArrayObtainStyledAttributes.getFloat(index, this.f1709r0);
                } else if (index == R.styleable.ConstraintSet_android_elevation) {
                    this.f1711t0 = typedArrayObtainStyledAttributes.getFloat(index, this.f1711t0);
                    this.f1710s0 = true;
                } else if (index == R.styleable.ConstraintSet_android_rotationX) {
                    this.f1713v0 = typedArrayObtainStyledAttributes.getFloat(index, this.f1713v0);
                } else if (index == R.styleable.ConstraintSet_android_rotationY) {
                    this.f1714w0 = typedArrayObtainStyledAttributes.getFloat(index, this.f1714w0);
                } else if (index == R.styleable.ConstraintSet_android_rotation) {
                    this.f1712u0 = typedArrayObtainStyledAttributes.getFloat(index, this.f1712u0);
                } else if (index == R.styleable.ConstraintSet_android_scaleX) {
                    this.f1715x0 = typedArrayObtainStyledAttributes.getFloat(index, this.f1715x0);
                } else if (index == R.styleable.ConstraintSet_android_scaleY) {
                    this.f1716y0 = typedArrayObtainStyledAttributes.getFloat(index, this.f1716y0);
                } else if (index == R.styleable.ConstraintSet_android_transformPivotX) {
                    this.f1717z0 = typedArrayObtainStyledAttributes.getFloat(index, this.f1717z0);
                } else if (index == R.styleable.ConstraintSet_android_transformPivotY) {
                    this.A0 = typedArrayObtainStyledAttributes.getFloat(index, this.A0);
                } else if (index == R.styleable.ConstraintSet_android_translationX) {
                    this.B0 = typedArrayObtainStyledAttributes.getFloat(index, this.B0);
                } else if (index == R.styleable.ConstraintSet_android_translationY) {
                    this.C0 = typedArrayObtainStyledAttributes.getFloat(index, this.C0);
                } else if (index == R.styleable.ConstraintSet_android_translationZ) {
                    this.D0 = typedArrayObtainStyledAttributes.getFloat(index, this.D0);
                }
            }
            typedArrayObtainStyledAttributes.recycle();
        }
    }
}
