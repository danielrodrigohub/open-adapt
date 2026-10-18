package s6;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import com.google.android.material.transformation.ExpandableTransformationBehavior;

/* JADX INFO: compiled from: ExpandableTransformationBehavior.java */
/* JADX INFO: loaded from: classes.dex */
public final class a extends AnimatorListenerAdapter {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ ExpandableTransformationBehavior f15148a;

    public a(ExpandableTransformationBehavior expandableTransformationBehavior) {
        this.f15148a = expandableTransformationBehavior;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationEnd(Animator animator) {
        this.f15148a.f5611b = null;
    }
}
