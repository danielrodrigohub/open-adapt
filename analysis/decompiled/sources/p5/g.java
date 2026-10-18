package p5;

import android.animation.Animator;
import android.animation.AnimatorInflater;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.animation.PropertyValuesHolder;
import android.animation.TimeInterpolator;
import android.content.Context;
import android.content.res.TypedArray;
import android.util.Log;
import android.view.animation.AccelerateDecelerateInterpolator;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.DecelerateInterpolator;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: compiled from: MotionSpec.java */
/* JADX INFO: loaded from: classes.dex */
public final class g {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final p.g<String, h> f13264a = new p.g<>();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final p.g<String, PropertyValuesHolder[]> f13265b = new p.g<>();

    public static g a(Context context, TypedArray typedArray, int i10) {
        int resourceId;
        if (!typedArray.hasValue(i10) || (resourceId = typedArray.getResourceId(i10, 0)) == 0) {
            return null;
        }
        return b(context, resourceId);
    }

    public static g b(Context context, int i10) {
        try {
            Animator animatorLoadAnimator = AnimatorInflater.loadAnimator(context, i10);
            if (animatorLoadAnimator instanceof AnimatorSet) {
                return c(((AnimatorSet) animatorLoadAnimator).getChildAnimations());
            }
            if (animatorLoadAnimator == null) {
                return null;
            }
            ArrayList arrayList = new ArrayList();
            arrayList.add(animatorLoadAnimator);
            return c(arrayList);
        } catch (Exception e10) {
            StringBuilder sbC = a0.b.c("Can't load animation resource ID #0x");
            sbC.append(Integer.toHexString(i10));
            Log.w("MotionSpec", sbC.toString(), e10);
            return null;
        }
    }

    public static g c(List<Animator> list) {
        g gVar = new g();
        int size = list.size();
        for (int i10 = 0; i10 < size; i10++) {
            Animator animator = list.get(i10);
            if (!(animator instanceof ObjectAnimator)) {
                throw new IllegalArgumentException("Animator must be an ObjectAnimator: " + animator);
            }
            ObjectAnimator objectAnimator = (ObjectAnimator) animator;
            gVar.f13265b.put(objectAnimator.getPropertyName(), objectAnimator.getValues());
            String propertyName = objectAnimator.getPropertyName();
            long startDelay = objectAnimator.getStartDelay();
            long duration = objectAnimator.getDuration();
            TimeInterpolator interpolator = objectAnimator.getInterpolator();
            if ((interpolator instanceof AccelerateDecelerateInterpolator) || interpolator == null) {
                interpolator = a.f13253b;
            } else if (interpolator instanceof AccelerateInterpolator) {
                interpolator = a.f13254c;
            } else if (interpolator instanceof DecelerateInterpolator) {
                interpolator = a.f13255d;
            }
            h hVar = new h(startDelay, duration, interpolator);
            hVar.f13269d = objectAnimator.getRepeatCount();
            hVar.f13270e = objectAnimator.getRepeatMode();
            gVar.f13264a.put(propertyName, hVar);
        }
        return gVar;
    }

    public final h d(String str) {
        if (this.f13264a.getOrDefault(str, null) != null) {
            return this.f13264a.getOrDefault(str, null);
        }
        throw new IllegalArgumentException();
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof g) {
            return this.f13264a.equals(((g) obj).f13264a);
        }
        return false;
    }

    public final int hashCode() {
        return this.f13264a.hashCode();
    }

    public final String toString() {
        return '\n' + g.class.getName() + '{' + Integer.toHexString(System.identityHashCode(this)) + " timings: " + this.f13264a + "}\n";
    }
}
