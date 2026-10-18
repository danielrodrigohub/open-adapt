package com.google.android.material.button;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.LinearLayout;
import com.google.android.material.R;
import g6.n;
import g6.s;
import j0.a0;
import j0.g0;
import j0.h;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Objects;
import java.util.Set;
import java.util.TreeMap;
import java.util.WeakHashMap;
import k0.f;
import m6.i;

/* JADX INFO: loaded from: classes.dex */
public class MaterialButtonToggleGroup extends LinearLayout {

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public static final int f5097r = R.style.Widget_MaterialComponents_MaterialButtonToggleGroup;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final List<c> f5098h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final e f5099i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final LinkedHashSet<d> f5100j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final Comparator<MaterialButton> f5101k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public Integer[] f5102l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public boolean f5103m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public boolean f5104n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public boolean f5105o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public final int f5106p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public Set<Integer> f5107q;

    public class a implements Comparator<MaterialButton> {
        public a() {
        }

        @Override // java.util.Comparator
        public final int compare(MaterialButton materialButton, MaterialButton materialButton2) {
            MaterialButton materialButton3 = materialButton;
            MaterialButton materialButton4 = materialButton2;
            int iCompareTo = Boolean.valueOf(materialButton3.isChecked()).compareTo(Boolean.valueOf(materialButton4.isChecked()));
            if (iCompareTo != 0) {
                return iCompareTo;
            }
            int iCompareTo2 = Boolean.valueOf(materialButton3.isPressed()).compareTo(Boolean.valueOf(materialButton4.isPressed()));
            return iCompareTo2 != 0 ? iCompareTo2 : Integer.valueOf(MaterialButtonToggleGroup.this.indexOfChild(materialButton3)).compareTo(Integer.valueOf(MaterialButtonToggleGroup.this.indexOfChild(materialButton4)));
        }
    }

    public class b extends j0.a {
        public b() {
        }

        @Override // j0.a
        public final void d(View view, f fVar) {
            int i10;
            this.f9144a.onInitializeAccessibilityNodeInfo(view, fVar.f9552a);
            MaterialButtonToggleGroup materialButtonToggleGroup = MaterialButtonToggleGroup.this;
            int i11 = MaterialButtonToggleGroup.f5097r;
            Objects.requireNonNull(materialButtonToggleGroup);
            if (view instanceof MaterialButton) {
                i10 = 0;
                for (int i12 = 0; i12 < materialButtonToggleGroup.getChildCount(); i12++) {
                    if (materialButtonToggleGroup.getChildAt(i12) != view) {
                        if ((materialButtonToggleGroup.getChildAt(i12) instanceof MaterialButton) && materialButtonToggleGroup.d(i12)) {
                            i10++;
                        }
                    }
                }
                i10 = -1;
            } else {
                i10 = -1;
            }
            fVar.q(f.c.a(0, 1, i10, 1, ((MaterialButton) view).isChecked()));
        }
    }

    public static class c {

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public static final m6.a f5110e = new m6.a(0.0f);

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public m6.c f5111a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public m6.c f5112b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public m6.c f5113c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public m6.c f5114d;

        public c(m6.c cVar, m6.c cVar2, m6.c cVar3, m6.c cVar4) {
            this.f5111a = cVar;
            this.f5112b = cVar3;
            this.f5113c = cVar4;
            this.f5114d = cVar2;
        }
    }

    public interface d {
        void a();
    }

    public class e implements MaterialButton.b {
        public e() {
        }
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public MaterialButtonToggleGroup(Context context, AttributeSet attributeSet) {
        int i10 = R.attr.materialButtonToggleGroupStyle;
        int i11 = f5097r;
        super(r6.a.a(context, attributeSet, i10, i11), attributeSet, i10);
        this.f5098h = new ArrayList();
        this.f5099i = new e();
        this.f5100j = new LinkedHashSet<>();
        this.f5101k = new a();
        this.f5103m = false;
        this.f5107q = new HashSet();
        TypedArray typedArrayD = n.d(getContext(), attributeSet, R.styleable.MaterialButtonToggleGroup, i10, i11, new int[0]);
        setSingleSelection(typedArrayD.getBoolean(R.styleable.MaterialButtonToggleGroup_singleSelection, false));
        this.f5106p = typedArrayD.getResourceId(R.styleable.MaterialButtonToggleGroup_checkedButton, -1);
        this.f5105o = typedArrayD.getBoolean(R.styleable.MaterialButtonToggleGroup_selectionRequired, false);
        setChildrenDrawingOrderEnabled(true);
        typedArrayD.recycle();
        WeakHashMap<View, g0> weakHashMap = a0.f9147a;
        a0.d.s(this, 1);
    }

    private int getFirstVisibleChildIndex() {
        int childCount = getChildCount();
        for (int i10 = 0; i10 < childCount; i10++) {
            if (d(i10)) {
                return i10;
            }
        }
        return -1;
    }

    private int getLastVisibleChildIndex() {
        for (int childCount = getChildCount() - 1; childCount >= 0; childCount--) {
            if (d(childCount)) {
                return childCount;
            }
        }
        return -1;
    }

    private int getVisibleButtonCount() {
        int i10 = 0;
        for (int i11 = 0; i11 < getChildCount(); i11++) {
            if ((getChildAt(i11) instanceof MaterialButton) && d(i11)) {
                i10++;
            }
        }
        return i10;
    }

    private void setGeneratedIdIfNeeded(MaterialButton materialButton) {
        if (materialButton.getId() == -1) {
            WeakHashMap<View, g0> weakHashMap = a0.f9147a;
            materialButton.setId(a0.e.a());
        }
    }

    private void setupButtonChild(MaterialButton materialButton) {
        materialButton.setMaxLines(1);
        materialButton.setEllipsize(TextUtils.TruncateAt.END);
        materialButton.setCheckable(true);
        materialButton.setOnPressedChangeListenerInternal(this.f5099i);
        materialButton.setShouldDrawSurfaceColorStroke(true);
    }

    public final void a() {
        int firstVisibleChildIndex = getFirstVisibleChildIndex();
        if (firstVisibleChildIndex == -1) {
            return;
        }
        for (int i10 = firstVisibleChildIndex + 1; i10 < getChildCount(); i10++) {
            MaterialButton materialButtonC = c(i10);
            int iMin = Math.min(materialButtonC.getStrokeWidth(), c(i10 - 1).getStrokeWidth());
            ViewGroup.LayoutParams layoutParams = materialButtonC.getLayoutParams();
            LinearLayout.LayoutParams layoutParams2 = layoutParams instanceof LinearLayout.LayoutParams ? (LinearLayout.LayoutParams) layoutParams : new LinearLayout.LayoutParams(layoutParams.width, layoutParams.height);
            if (getOrientation() == 0) {
                h.g(layoutParams2, 0);
                h.h(layoutParams2, -iMin);
                layoutParams2.topMargin = 0;
            } else {
                layoutParams2.bottomMargin = 0;
                layoutParams2.topMargin = -iMin;
                h.h(layoutParams2, 0);
            }
            materialButtonC.setLayoutParams(layoutParams2);
        }
        if (getChildCount() == 0 || firstVisibleChildIndex == -1) {
            return;
        }
        LinearLayout.LayoutParams layoutParams3 = (LinearLayout.LayoutParams) c(firstVisibleChildIndex).getLayoutParams();
        if (getOrientation() == 1) {
            layoutParams3.topMargin = 0;
            layoutParams3.bottomMargin = 0;
        } else {
            h.g(layoutParams3, 0);
            h.h(layoutParams3, 0);
            layoutParams3.leftMargin = 0;
            layoutParams3.rightMargin = 0;
        }
    }

    /* JADX WARN: Type inference failed for: r7v2, types: [java.util.ArrayList, java.util.List<com.google.android.material.button.MaterialButtonToggleGroup$c>] */
    @Override // android.view.ViewGroup
    public final void addView(View view, int i10, ViewGroup.LayoutParams layoutParams) {
        if (!(view instanceof MaterialButton)) {
            Log.e("MaterialButtonToggleGroup", "Child views must be of type MaterialButton.");
            return;
        }
        super.addView(view, i10, layoutParams);
        MaterialButton materialButton = (MaterialButton) view;
        setGeneratedIdIfNeeded(materialButton);
        setupButtonChild(materialButton);
        b(materialButton.getId(), materialButton.isChecked());
        i shapeAppearanceModel = materialButton.getShapeAppearanceModel();
        this.f5098h.add(new c(shapeAppearanceModel.f10542e, shapeAppearanceModel.f10545h, shapeAppearanceModel.f10543f, shapeAppearanceModel.f10544g));
        a0.p(materialButton, new b());
    }

    public final void b(int i10, boolean z10) {
        if (i10 == -1) {
            Log.e("MaterialButtonToggleGroup", "Button ID is not valid: " + i10);
            return;
        }
        HashSet hashSet = new HashSet(this.f5107q);
        if (z10 && !hashSet.contains(Integer.valueOf(i10))) {
            if (this.f5104n && !hashSet.isEmpty()) {
                hashSet.clear();
            }
            hashSet.add(Integer.valueOf(i10));
        } else {
            if (z10 || !hashSet.contains(Integer.valueOf(i10))) {
                return;
            }
            if (!this.f5105o || hashSet.size() > 1) {
                hashSet.remove(Integer.valueOf(i10));
            }
        }
        e(hashSet);
    }

    public final MaterialButton c(int i10) {
        return (MaterialButton) getChildAt(i10);
    }

    public final boolean d(int i10) {
        return getChildAt(i10).getVisibility() != 8;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void dispatchDraw(Canvas canvas) {
        TreeMap treeMap = new TreeMap(this.f5101k);
        int childCount = getChildCount();
        for (int i10 = 0; i10 < childCount; i10++) {
            treeMap.put(c(i10), Integer.valueOf(i10));
        }
        this.f5102l = (Integer[]) treeMap.values().toArray(new Integer[0]);
        super.dispatchDraw(canvas);
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [java.util.HashSet, java.util.Set<java.lang.Integer>] */
    public final void e(Set<Integer> set) {
        ?? r10 = this.f5107q;
        this.f5107q = new HashSet(set);
        for (int i10 = 0; i10 < getChildCount(); i10++) {
            int id2 = c(i10).getId();
            boolean zContains = set.contains(Integer.valueOf(id2));
            View viewFindViewById = findViewById(id2);
            if (viewFindViewById instanceof MaterialButton) {
                this.f5103m = true;
                ((MaterialButton) viewFindViewById).setChecked(zContains);
                this.f5103m = false;
            }
            if (r10.contains(Integer.valueOf(id2)) != set.contains(Integer.valueOf(id2))) {
                set.contains(Integer.valueOf(id2));
                Iterator<d> it = this.f5100j.iterator();
                while (it.hasNext()) {
                    it.next().a();
                }
            }
        }
        invalidate();
    }

    /* JADX WARN: Type inference failed for: r6v2, types: [java.util.ArrayList, java.util.List<com.google.android.material.button.MaterialButtonToggleGroup$c>] */
    public final void f() {
        c cVar;
        int childCount = getChildCount();
        int firstVisibleChildIndex = getFirstVisibleChildIndex();
        int lastVisibleChildIndex = getLastVisibleChildIndex();
        for (int i10 = 0; i10 < childCount; i10++) {
            MaterialButton materialButtonC = c(i10);
            if (materialButtonC.getVisibility() != 8) {
                i shapeAppearanceModel = materialButtonC.getShapeAppearanceModel();
                Objects.requireNonNull(shapeAppearanceModel);
                i.a aVar = new i.a(shapeAppearanceModel);
                c cVar2 = (c) this.f5098h.get(i10);
                if (firstVisibleChildIndex != lastVisibleChildIndex) {
                    boolean z10 = getOrientation() == 0;
                    if (i10 == firstVisibleChildIndex) {
                        if (!z10) {
                            m6.c cVar3 = cVar2.f5111a;
                            m6.a aVar2 = c.f5110e;
                            cVar = new c(cVar3, aVar2, cVar2.f5112b, aVar2);
                        } else if (s.b(this)) {
                            m6.a aVar3 = c.f5110e;
                            cVar = new c(aVar3, aVar3, cVar2.f5112b, cVar2.f5113c);
                        } else {
                            m6.c cVar4 = cVar2.f5111a;
                            m6.c cVar5 = cVar2.f5114d;
                            m6.a aVar4 = c.f5110e;
                            cVar = new c(cVar4, cVar5, aVar4, aVar4);
                        }
                    } else if (i10 != lastVisibleChildIndex) {
                        cVar2 = null;
                    } else if (!z10) {
                        m6.a aVar5 = c.f5110e;
                        cVar = new c(aVar5, cVar2.f5114d, aVar5, cVar2.f5113c);
                    } else if (s.b(this)) {
                        m6.c cVar6 = cVar2.f5111a;
                        m6.c cVar7 = cVar2.f5114d;
                        m6.a aVar6 = c.f5110e;
                        cVar = new c(cVar6, cVar7, aVar6, aVar6);
                    } else {
                        m6.a aVar7 = c.f5110e;
                        cVar = new c(aVar7, aVar7, cVar2.f5112b, cVar2.f5113c);
                    }
                    cVar2 = cVar;
                }
                if (cVar2 == null) {
                    aVar.e(0.0f);
                    aVar.f(0.0f);
                    aVar.d(0.0f);
                    aVar.c(0.0f);
                } else {
                    aVar.f10554e = cVar2.f5111a;
                    aVar.f10557h = cVar2.f5114d;
                    aVar.f10555f = cVar2.f5112b;
                    aVar.f10556g = cVar2.f5113c;
                }
                materialButtonC.setShapeAppearanceModel(new i(aVar));
            }
        }
    }

    /* JADX WARN: Type inference failed for: r0v2, types: [java.util.HashSet, java.util.Set<java.lang.Integer>] */
    /* JADX WARN: Type inference failed for: r0v4, types: [java.util.HashSet, java.util.Set<java.lang.Integer>] */
    public int getCheckedButtonId() {
        if (!this.f5104n || this.f5107q.isEmpty()) {
            return -1;
        }
        return ((Integer) this.f5107q.iterator().next()).intValue();
    }

    /* JADX WARN: Type inference failed for: r3v0, types: [java.util.HashSet, java.util.Set<java.lang.Integer>] */
    public List<Integer> getCheckedButtonIds() {
        ArrayList arrayList = new ArrayList();
        for (int i10 = 0; i10 < getChildCount(); i10++) {
            int id2 = c(i10).getId();
            if (this.f5107q.contains(Integer.valueOf(id2))) {
                arrayList.add(Integer.valueOf(id2));
            }
        }
        return arrayList;
    }

    @Override // android.view.ViewGroup
    public final int getChildDrawingOrder(int i10, int i11) {
        Integer[] numArr = this.f5102l;
        if (numArr != null && i11 < numArr.length) {
            return numArr[i11].intValue();
        }
        Log.w("MaterialButtonToggleGroup", "Child order wasn't updated");
        return i11;
    }

    @Override // android.view.View
    public final void onFinishInflate() {
        super.onFinishInflate();
        int i10 = this.f5106p;
        if (i10 != -1) {
            e(Collections.singleton(Integer.valueOf(i10)));
        }
    }

    @Override // android.view.View
    public final void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        accessibilityNodeInfo.setCollectionInfo((AccessibilityNodeInfo.CollectionInfo) f.b.a(1, getVisibleButtonCount(), this.f5104n ? 1 : 2).f9567a);
    }

    @Override // android.widget.LinearLayout, android.view.View
    public final void onMeasure(int i10, int i11) {
        f();
        a();
        super.onMeasure(i10, i11);
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [java.util.ArrayList, java.util.List<com.google.android.material.button.MaterialButtonToggleGroup$c>] */
    @Override // android.view.ViewGroup
    public final void onViewRemoved(View view) {
        super.onViewRemoved(view);
        if (view instanceof MaterialButton) {
            ((MaterialButton) view).setOnPressedChangeListenerInternal(null);
        }
        int iIndexOfChild = indexOfChild(view);
        if (iIndexOfChild >= 0) {
            this.f5098h.remove(iIndexOfChild);
        }
        f();
        a();
    }

    public void setSelectionRequired(boolean z10) {
        this.f5105o = z10;
    }

    public void setSingleSelection(boolean z10) {
        if (this.f5104n != z10) {
            this.f5104n = z10;
            e(new HashSet());
        }
    }

    public void setSingleSelection(int i10) {
        setSingleSelection(getResources().getBoolean(i10));
    }
}
