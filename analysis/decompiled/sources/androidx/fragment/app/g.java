package androidx.fragment.app;

import android.view.View;
import android.view.ViewGroup;

/* JADX INFO: compiled from: DefaultSpecialEffectsController.java */
/* JADX INFO: loaded from: classes.dex */
public final class g implements f0.d.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ View f1885a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ ViewGroup f1886b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ c.b f1887c;

    public g(View view, ViewGroup viewGroup, c.b bVar) {
        this.f1885a = view;
        this.f1886b = viewGroup;
        this.f1887c = bVar;
    }

    @Override // f0.d.a
    public final void a() {
        this.f1885a.clearAnimation();
        this.f1886b.endViewTransition(this.f1885a);
        this.f1887c.a();
    }
}
