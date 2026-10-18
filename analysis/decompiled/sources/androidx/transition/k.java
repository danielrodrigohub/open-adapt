package androidx.transition;

import android.view.View;
import android.view.ViewGroup;

/* JADX INFO: compiled from: Visibility.java */
/* JADX INFO: loaded from: classes.dex */
public final class k extends g {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ ViewGroup f2953a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ View f2954b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ View f2955c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ l f2956d;

    public k(l lVar, ViewGroup viewGroup, View view, View view2) {
        this.f2956d = lVar;
        this.f2953a = viewGroup;
        this.f2954b = view;
        this.f2955c = view2;
    }

    @Override // androidx.transition.g, androidx.transition.f.d
    public final void a() {
        this.f2953a.getOverlay().remove(this.f2954b);
    }

    @Override // androidx.transition.g, androidx.transition.f.d
    public final void c() {
        if (this.f2954b.getParent() == null) {
            this.f2953a.getOverlay().add(this.f2954b);
        } else {
            this.f2956d.cancel();
        }
    }

    @Override // androidx.transition.f.d
    public final void e(f fVar) {
        this.f2955c.setTag(R.id.save_overlay_view, null);
        this.f2953a.getOverlay().remove(this.f2954b);
        fVar.v(this);
    }
}
