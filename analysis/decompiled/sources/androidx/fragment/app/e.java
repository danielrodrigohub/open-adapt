package androidx.fragment.app;

import android.animation.Animator;

/* JADX INFO: compiled from: DefaultSpecialEffectsController.java */
/* JADX INFO: loaded from: classes.dex */
public final class e implements f0.d.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ Animator f1871a;

    public e(Animator animator) {
        this.f1871a = animator;
    }

    @Override // f0.d.a
    public final void a() {
        this.f1871a.end();
    }
}
