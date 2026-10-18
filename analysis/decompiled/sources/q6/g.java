package q6;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;

/* JADX INFO: compiled from: DropdownMenuEndIconDelegate.java */
/* JADX INFO: loaded from: classes.dex */
public final class g extends AnimatorListenerAdapter {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ com.google.android.material.textfield.b f13651a;

    public g(com.google.android.material.textfield.b bVar) {
        this.f13651a = bVar;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationEnd(Animator animator) {
        com.google.android.material.textfield.b bVar = this.f13651a;
        bVar.f13656c.setChecked(bVar.f5550m);
        this.f13651a.f5556s.start();
    }
}
