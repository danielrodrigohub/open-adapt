package x8;

import android.view.View;

/* JADX INFO: compiled from: AccessibilityHelper.kt */
/* JADX INFO: loaded from: classes.dex */
public final class b extends j0.a {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ View f17867d;

    public b(View view) {
        this.f17867d = view;
    }

    @Override // j0.a
    public final void d(View view, k0.f fVar) {
        p4.h.j(view, "host");
        fVar.A(this.f17867d);
        this.f9144a.onInitializeAccessibilityNodeInfo(view, fVar.f9552a);
    }
}
