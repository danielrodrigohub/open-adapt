package androidx.fragment.app;

import android.animation.Animator;
import android.animation.AnimatorInflater;
import android.content.Context;
import android.content.res.Resources;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Animation;
import android.view.animation.AnimationSet;
import android.view.animation.AnimationUtils;
import android.view.animation.Transformation;
import androidx.fragment.R;

/* JADX INFO: compiled from: FragmentAnim.java */
/* JADX INFO: loaded from: classes.dex */
public final class q {
    public static a a(Context context, m mVar, boolean z10, boolean z11) {
        int iM;
        int i10;
        m.b bVar = mVar.P;
        boolean z12 = false;
        int i11 = bVar == null ? 0 : bVar.f1991g;
        if (z11) {
            iM = z10 ? mVar.t() : mVar.u();
        } else {
            iM = z10 ? mVar.m() : mVar.n();
        }
        mVar.i0(0, 0, 0, 0);
        ViewGroup viewGroup = mVar.L;
        if (viewGroup != null) {
            int i12 = R.id.visible_removing_fragment_view_tag;
            if (viewGroup.getTag(i12) != null) {
                mVar.L.setTag(i12, null);
            }
        }
        ViewGroup viewGroup2 = mVar.L;
        if (viewGroup2 != null && viewGroup2.getLayoutTransition() != null) {
            return null;
        }
        if (iM == 0 && i11 != 0) {
            if (i11 == 4097) {
                i10 = z10 ? R.animator.fragment_open_enter : R.animator.fragment_open_exit;
            } else if (i11 == 4099) {
                i10 = z10 ? R.animator.fragment_fade_enter : R.animator.fragment_fade_exit;
            } else if (i11 != 8194) {
                i10 = -1;
            } else {
                i10 = z10 ? R.animator.fragment_close_enter : R.animator.fragment_close_exit;
            }
            iM = i10;
        }
        if (iM != 0) {
            boolean zEquals = "anim".equals(context.getResources().getResourceTypeName(iM));
            if (zEquals) {
                try {
                    Animation animationLoadAnimation = AnimationUtils.loadAnimation(context, iM);
                    if (animationLoadAnimation != null) {
                        return new a(animationLoadAnimation);
                    }
                    z12 = true;
                } catch (Resources.NotFoundException e10) {
                    throw e10;
                } catch (RuntimeException unused) {
                }
            }
            if (!z12) {
                try {
                    Animator animatorLoadAnimator = AnimatorInflater.loadAnimator(context, iM);
                    if (animatorLoadAnimator != null) {
                        return new a(animatorLoadAnimator);
                    }
                } catch (RuntimeException e11) {
                    if (zEquals) {
                        throw e11;
                    }
                    Animation animationLoadAnimation2 = AnimationUtils.loadAnimation(context, iM);
                    if (animationLoadAnimation2 != null) {
                        return new a(animationLoadAnimation2);
                    }
                }
            }
        }
        return null;
    }

    /* JADX INFO: compiled from: FragmentAnim.java */
    public static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final Animation f2026a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final Animator f2027b;

        public a(Animation animation) {
            this.f2026a = animation;
            this.f2027b = null;
        }

        public a(Animator animator) {
            this.f2026a = null;
            this.f2027b = animator;
        }
    }

    /* JADX INFO: compiled from: FragmentAnim.java */
    public static class b extends AnimationSet implements Runnable {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public final ViewGroup f2028h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public final View f2029i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public boolean f2030j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public boolean f2031k;

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        public boolean f2032l;

        public b(Animation animation, ViewGroup viewGroup, View view) {
            super(false);
            this.f2032l = true;
            this.f2028h = viewGroup;
            this.f2029i = view;
            addAnimation(animation);
            viewGroup.post(this);
        }

        @Override // android.view.animation.AnimationSet, android.view.animation.Animation
        public final boolean getTransformation(long j10, Transformation transformation) {
            this.f2032l = true;
            if (this.f2030j) {
                return !this.f2031k;
            }
            if (!super.getTransformation(j10, transformation)) {
                this.f2030j = true;
                j0.t.a(this.f2028h, this);
            }
            return true;
        }

        @Override // java.lang.Runnable
        public final void run() {
            if (this.f2030j || !this.f2032l) {
                this.f2028h.endViewTransition(this.f2029i);
                this.f2031k = true;
            } else {
                this.f2032l = false;
                this.f2028h.post(this);
            }
        }

        @Override // android.view.animation.Animation
        public final boolean getTransformation(long j10, Transformation transformation, float f10) {
            this.f2032l = true;
            if (this.f2030j) {
                return !this.f2031k;
            }
            if (!super.getTransformation(j10, transformation, f10)) {
                this.f2030j = true;
                j0.t.a(this.f2028h, this);
            }
            return true;
        }
    }
}
