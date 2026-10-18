package com.google.android.material.transformation;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewParent;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import com.google.android.material.R;
import j0.a0;
import j0.g0;
import java.util.HashMap;
import java.util.Map;
import java.util.WeakHashMap;
import p5.g;

/* JADX INFO: loaded from: classes.dex */
@Deprecated
public class FabTransformationSheetBehavior extends FabTransformationBehavior {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public Map<View, Integer> f5627i;

    public FabTransformationSheetBehavior() {
    }

    @Override // com.google.android.material.transformation.FabTransformationBehavior
    public final FabTransformationBehavior.b A(Context context, boolean z10) {
        int i10 = z10 ? R.animator.mtrl_fab_transformation_sheet_expand_spec : R.animator.mtrl_fab_transformation_sheet_collapse_spec;
        FabTransformationBehavior.b bVar = new FabTransformationBehavior.b();
        bVar.f5621a = g.b(context, i10);
        bVar.f5622b = new g7.c();
        return bVar;
    }

    /* JADX WARN: Type inference failed for: r5v4, types: [java.util.HashMap, java.util.Map<android.view.View, java.lang.Integer>] */
    /* JADX WARN: Type inference failed for: r5v6, types: [java.util.HashMap, java.util.Map<android.view.View, java.lang.Integer>] */
    /* JADX WARN: Type inference failed for: r5v8, types: [java.util.HashMap, java.util.Map<android.view.View, java.lang.Integer>] */
    @Override // com.google.android.material.transformation.ExpandableTransformationBehavior, com.google.android.material.transformation.ExpandableBehavior
    public final void s(View view, View view2, boolean z10, boolean z11) {
        ViewParent parent = view2.getParent();
        if (parent instanceof CoordinatorLayout) {
            CoordinatorLayout coordinatorLayout = (CoordinatorLayout) parent;
            int childCount = coordinatorLayout.getChildCount();
            if (z10) {
                this.f5627i = new HashMap(childCount);
            }
            for (int i10 = 0; i10 < childCount; i10++) {
                View childAt = coordinatorLayout.getChildAt(i10);
                boolean z12 = (childAt.getLayoutParams() instanceof CoordinatorLayout.f) && (((CoordinatorLayout.f) childAt.getLayoutParams()).f1744a instanceof FabTransformationScrimBehavior);
                if (childAt != view2 && !z12) {
                    if (z10) {
                        this.f5627i.put(childAt, Integer.valueOf(childAt.getImportantForAccessibility()));
                        WeakHashMap<View, g0> weakHashMap = a0.f9147a;
                        a0.d.s(childAt, 4);
                    } else {
                        ?? r10 = this.f5627i;
                        if (r10 != 0 && r10.containsKey(childAt)) {
                            int iIntValue = ((Integer) this.f5627i.get(childAt)).intValue();
                            WeakHashMap<View, g0> weakHashMap2 = a0.f9147a;
                            a0.d.s(childAt, iIntValue);
                        }
                    }
                }
            }
            if (!z10) {
                this.f5627i = null;
            }
        }
        super.s(view, view2, z10, z11);
    }

    public FabTransformationSheetBehavior(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }
}
