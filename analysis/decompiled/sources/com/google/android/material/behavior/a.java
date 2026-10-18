package com.google.android.material.behavior;

import android.view.View;
import com.google.android.material.snackbar.e;
import j0.a0;
import j0.g0;
import java.util.WeakHashMap;
import k0.j;

/* JADX INFO: compiled from: SwipeDismissBehavior.java */
/* JADX INFO: loaded from: classes.dex */
public final class a implements j {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ SwipeDismissBehavior f5021a;

    public a(SwipeDismissBehavior swipeDismissBehavior) {
        this.f5021a = swipeDismissBehavior;
    }

    @Override // k0.j
    public final boolean a(View view) {
        boolean z10 = false;
        if (!this.f5021a.s(view)) {
            return false;
        }
        WeakHashMap<View, g0> weakHashMap = a0.f9147a;
        boolean z11 = a0.e.d(view) == 1;
        int i10 = this.f5021a.f5010d;
        if ((i10 == 0 && z11) || (i10 == 1 && !z11)) {
            z10 = true;
        }
        int width = view.getWidth();
        if (z10) {
            width = -width;
        }
        view.offsetLeftAndRight(width);
        view.setAlpha(0.0f);
        SwipeDismissBehavior.b bVar = this.f5021a.f5008b;
        if (bVar != null) {
            ((e) bVar).a(view);
        }
        return true;
    }
}
