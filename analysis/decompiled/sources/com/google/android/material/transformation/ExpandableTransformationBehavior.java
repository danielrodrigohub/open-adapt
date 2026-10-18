package com.google.android.material.transformation;

import android.animation.AnimatorSet;
import android.content.Context;
import android.util.AttributeSet;
import android.view.View;

/* JADX INFO: loaded from: classes.dex */
@Deprecated
public abstract class ExpandableTransformationBehavior extends ExpandableBehavior {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public AnimatorSet f5611b;

    public ExpandableTransformationBehavior() {
    }

    @Override // com.google.android.material.transformation.ExpandableBehavior
    public void s(View view, View view2, boolean z10, boolean z11) {
        AnimatorSet animatorSet = this.f5611b;
        boolean z12 = animatorSet != null;
        if (z12) {
            animatorSet.cancel();
        }
        AnimatorSet animatorSetT = t(view, view2, z10, z12);
        this.f5611b = animatorSetT;
        animatorSetT.addListener(new s6.a(this));
        this.f5611b.start();
        if (z11) {
            return;
        }
        this.f5611b.end();
    }

    public abstract AnimatorSet t(View view, View view2, boolean z10, boolean z11);

    public ExpandableTransformationBehavior(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }
}
