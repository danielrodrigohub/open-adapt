package com.google.android.material.chip;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityNodeInfo;
import com.google.android.material.R;
import g6.g;
import g6.i;
import g6.n;
import j0.a0;
import j0.g0;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import java.util.WeakHashMap;
import k0.f;

/* JADX INFO: loaded from: classes.dex */
public class ChipGroup extends g {

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public static final int f5133r = R.style.Widget_MaterialComponents_ChipGroup;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public int f5134l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public int f5135m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public d f5136n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public final g6.b<Chip> f5137o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public final int f5138p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public final e f5139q;

    public class a implements d {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final /* synthetic */ c f5140a;

        public a(c cVar) {
            this.f5140a = cVar;
        }
    }

    public static class b extends ViewGroup.MarginLayoutParams {
        public b(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
        }

        public b(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
        }

        public b() {
            super(-2, -2);
        }
    }

    @Deprecated
    public interface c {
        void a();
    }

    public interface d {
    }

    public class e implements ViewGroup.OnHierarchyChangeListener {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public ViewGroup.OnHierarchyChangeListener f5142h;

        public e() {
        }

        /* JADX WARN: Type inference incomplete: some casts might be missing */
        @Override // android.view.ViewGroup.OnHierarchyChangeListener
        public final void onChildViewAdded(View view, View view2) {
            if (view == ChipGroup.this && (view2 instanceof Chip)) {
                if (view2.getId() == -1) {
                    WeakHashMap<View, g0> weakHashMap = a0.f9147a;
                    view2.setId(a0.e.a());
                }
                g6.b<Chip> bVar = ChipGroup.this.f5137o;
                Chip chip = (Chip) view2;
                bVar.f7703a.put(Integer.valueOf(chip.getId()), chip);
                if (chip.isChecked()) {
                    bVar.a(chip);
                }
                chip.setInternalOnCheckedChangeListener(new g6.a(bVar));
            }
            ViewGroup.OnHierarchyChangeListener onHierarchyChangeListener = this.f5142h;
            if (onHierarchyChangeListener != null) {
                onHierarchyChangeListener.onChildViewAdded(view, view2);
            }
        }

        /* JADX WARN: Type inference failed for: r0v3, types: [java.util.HashSet, java.util.Set<java.lang.Integer>] */
        /* JADX WARN: Type inference failed for: r2v1, types: [java.util.HashMap, java.util.Map<java.lang.Integer, T extends g6.i<T>>] */
        @Override // android.view.ViewGroup.OnHierarchyChangeListener
        public final void onChildViewRemoved(View view, View view2) {
            ChipGroup chipGroup = ChipGroup.this;
            if (view == chipGroup && (view2 instanceof Chip)) {
                g6.b<Chip> bVar = chipGroup.f5137o;
                Chip chip = (Chip) view2;
                Objects.requireNonNull(bVar);
                chip.setInternalOnCheckedChangeListener(null);
                bVar.f7703a.remove(Integer.valueOf(chip.getId()));
                bVar.f7704b.remove(Integer.valueOf(chip.getId()));
            }
            ViewGroup.OnHierarchyChangeListener onHierarchyChangeListener = this.f5142h;
            if (onHierarchyChangeListener != null) {
                onHierarchyChangeListener.onChildViewRemoved(view, view2);
            }
        }
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public ChipGroup(Context context, AttributeSet attributeSet) {
        int i10 = R.attr.chipGroupStyle;
        int i11 = f5133r;
        super(r6.a.a(context, attributeSet, i10, i11), attributeSet, i10);
        g6.b<Chip> bVar = new g6.b<>();
        this.f5137o = bVar;
        e eVar = new e();
        this.f5139q = eVar;
        TypedArray typedArrayD = n.d(getContext(), attributeSet, R.styleable.ChipGroup, i10, i11, new int[0]);
        int dimensionPixelOffset = typedArrayD.getDimensionPixelOffset(R.styleable.ChipGroup_chipSpacing, 0);
        setChipSpacingHorizontal(typedArrayD.getDimensionPixelOffset(R.styleable.ChipGroup_chipSpacingHorizontal, dimensionPixelOffset));
        setChipSpacingVertical(typedArrayD.getDimensionPixelOffset(R.styleable.ChipGroup_chipSpacingVertical, dimensionPixelOffset));
        setSingleLine(typedArrayD.getBoolean(R.styleable.ChipGroup_singleLine, false));
        setSingleSelection(typedArrayD.getBoolean(R.styleable.ChipGroup_singleSelection, false));
        setSelectionRequired(typedArrayD.getBoolean(R.styleable.ChipGroup_selectionRequired, false));
        this.f5138p = typedArrayD.getResourceId(R.styleable.ChipGroup_checkedChip, -1);
        typedArrayD.recycle();
        bVar.f7705c = new com.google.android.material.chip.b(this);
        super.setOnHierarchyChangeListener(eVar);
        WeakHashMap<View, g0> weakHashMap = a0.f9147a;
        a0.d.s(this, 1);
    }

    private int getChipCount() {
        int i10 = 0;
        for (int i11 = 0; i11 < getChildCount(); i11++) {
            if (getChildAt(i11) instanceof Chip) {
                i10++;
            }
        }
        return i10;
    }

    @Override // g6.g
    public final boolean a() {
        return this.f7740j;
    }

    @Override // android.view.ViewGroup
    public final boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return super.checkLayoutParams(layoutParams) && (layoutParams instanceof b);
    }

    @Override // android.view.ViewGroup
    public final ViewGroup.LayoutParams generateDefaultLayoutParams() {
        return new b();
    }

    @Override // android.view.ViewGroup
    public final ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new b(getContext(), attributeSet);
    }

    public int getCheckedChipId() {
        return this.f5137o.c();
    }

    public List<Integer> getCheckedChipIds() {
        return this.f5137o.b(this);
    }

    public int getChipSpacingHorizontal() {
        return this.f5134l;
    }

    public int getChipSpacingVertical() {
        return this.f5135m;
    }

    /* JADX WARN: Type inference failed for: r2v0, types: [java.util.HashMap, java.util.Map<java.lang.Integer, T extends g6.i<T>>] */
    @Override // android.view.View
    public final void onFinishInflate() {
        super.onFinishInflate();
        int i10 = this.f5138p;
        if (i10 != -1) {
            g6.b<Chip> bVar = this.f5137o;
            i<T> iVar = (i) bVar.f7703a.get(Integer.valueOf(i10));
            if (iVar != 0 && bVar.a(iVar)) {
                bVar.d();
            }
        }
    }

    @Override // android.view.View
    public final void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        accessibilityNodeInfo.setCollectionInfo((AccessibilityNodeInfo.CollectionInfo) f.b.a(getRowCount(), this.f7740j ? getChipCount() : -1, this.f5137o.f7706d ? 1 : 2).f9567a);
    }

    public void setChipSpacing(int i10) {
        setChipSpacingHorizontal(i10);
        setChipSpacingVertical(i10);
    }

    public void setChipSpacingHorizontal(int i10) {
        if (this.f5134l != i10) {
            this.f5134l = i10;
            setItemSpacing(i10);
            requestLayout();
        }
    }

    public void setChipSpacingHorizontalResource(int i10) {
        setChipSpacingHorizontal(getResources().getDimensionPixelOffset(i10));
    }

    public void setChipSpacingResource(int i10) {
        setChipSpacing(getResources().getDimensionPixelOffset(i10));
    }

    public void setChipSpacingVertical(int i10) {
        if (this.f5135m != i10) {
            this.f5135m = i10;
            setLineSpacing(i10);
            requestLayout();
        }
    }

    public void setChipSpacingVerticalResource(int i10) {
        setChipSpacingVertical(getResources().getDimensionPixelOffset(i10));
    }

    @Deprecated
    public void setDividerDrawableHorizontal(Drawable drawable) {
        throw new UnsupportedOperationException("Changing divider drawables have no effect. ChipGroup do not use divider drawables as spacing.");
    }

    @Deprecated
    public void setDividerDrawableVertical(Drawable drawable) {
        throw new UnsupportedOperationException("Changing divider drawables have no effect. ChipGroup do not use divider drawables as spacing.");
    }

    @Deprecated
    public void setFlexWrap(int i10) {
        throw new UnsupportedOperationException("Changing flex wrap not allowed. ChipGroup exposes a singleLine attribute instead.");
    }

    @Deprecated
    public void setOnCheckedChangeListener(c cVar) {
        if (cVar == null) {
            setOnCheckedStateChangeListener(null);
        } else {
            setOnCheckedStateChangeListener(new a(cVar));
        }
    }

    public void setOnCheckedStateChangeListener(d dVar) {
        this.f5136n = dVar;
    }

    @Override // android.view.ViewGroup
    public void setOnHierarchyChangeListener(ViewGroup.OnHierarchyChangeListener onHierarchyChangeListener) {
        this.f5139q.f5142h = onHierarchyChangeListener;
    }

    public void setSelectionRequired(boolean z10) {
        this.f5137o.f7707e = z10;
    }

    @Deprecated
    public void setShowDividerHorizontal(int i10) {
        throw new UnsupportedOperationException("Changing divider modes has no effect. ChipGroup do not use divider drawables as spacing.");
    }

    @Deprecated
    public void setShowDividerVertical(int i10) {
        throw new UnsupportedOperationException("Changing divider modes has no effect. ChipGroup do not use divider drawables as spacing.");
    }

    @Override // g6.g
    public void setSingleLine(boolean z10) {
        super.setSingleLine(z10);
    }

    /* JADX WARN: Type inference failed for: r1v1, types: [java.util.HashMap, java.util.Map<java.lang.Integer, T extends g6.i<T>>] */
    /* JADX WARN: Type inference failed for: r5v1, types: [java.util.HashSet, java.util.Set<java.lang.Integer>] */
    public void setSingleSelection(boolean z10) {
        g6.b<Chip> bVar = this.f5137o;
        if (bVar.f7706d != z10) {
            bVar.f7706d = z10;
            boolean z11 = !bVar.f7704b.isEmpty();
            Iterator it = bVar.f7703a.values().iterator();
            while (it.hasNext()) {
                bVar.e((i) it.next(), false);
            }
            if (z11) {
                bVar.d();
            }
        }
    }

    @Override // android.view.ViewGroup
    public final ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return new b(layoutParams);
    }

    public void setSingleLine(int i10) {
        setSingleLine(getResources().getBoolean(i10));
    }

    public void setSingleSelection(int i10) {
        setSingleSelection(getResources().getBoolean(i10));
    }
}
