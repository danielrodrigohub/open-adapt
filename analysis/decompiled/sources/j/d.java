package j;

import android.content.Context;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import androidx.appcompat.widget.ActionBarContextView;
import java.lang.ref.WeakReference;

/* JADX INFO: compiled from: StandaloneActionMode.java */
/* JADX INFO: loaded from: classes.dex */
public final class d extends a implements androidx.appcompat.view.menu.e.a {

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public Context f9086j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public ActionBarContextView f9087k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public a.InterfaceC0177a f9088l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public WeakReference<View> f9089m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public boolean f9090n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public androidx.appcompat.view.menu.e f9091o;

    public d(Context context, ActionBarContextView actionBarContextView, a.InterfaceC0177a interfaceC0177a) {
        this.f9086j = context;
        this.f9087k = actionBarContextView;
        this.f9088l = interfaceC0177a;
        androidx.appcompat.view.menu.e eVar = new androidx.appcompat.view.menu.e(actionBarContextView.getContext());
        eVar.f889l = 1;
        this.f9091o = eVar;
        eVar.f882e = this;
    }

    @Override // androidx.appcompat.view.menu.e.a
    public final boolean a(androidx.appcompat.view.menu.e eVar, MenuItem menuItem) {
        return this.f9088l.a(this, menuItem);
    }

    @Override // androidx.appcompat.view.menu.e.a
    public final void b(androidx.appcompat.view.menu.e eVar) {
        i();
        androidx.appcompat.widget.c cVar = this.f9087k.f1151k;
        if (cVar != null) {
            cVar.m();
        }
    }

    @Override // j.a
    public final void c() {
        if (this.f9090n) {
            return;
        }
        this.f9090n = true;
        this.f9088l.c(this);
    }

    @Override // j.a
    public final View d() {
        WeakReference<View> weakReference = this.f9089m;
        if (weakReference != null) {
            return weakReference.get();
        }
        return null;
    }

    @Override // j.a
    public final Menu e() {
        return this.f9091o;
    }

    @Override // j.a
    public final MenuInflater f() {
        return new f(this.f9087k.getContext());
    }

    @Override // j.a
    public final CharSequence g() {
        return this.f9087k.getSubtitle();
    }

    @Override // j.a
    public final CharSequence h() {
        return this.f9087k.getTitle();
    }

    @Override // j.a
    public final void i() {
        this.f9088l.d(this, this.f9091o);
    }

    @Override // j.a
    public final boolean j() {
        return this.f9087k.f986z;
    }

    @Override // j.a
    public final void k(View view) {
        this.f9087k.setCustomView(view);
        this.f9089m = view != null ? new WeakReference<>(view) : null;
    }

    @Override // j.a
    public final void l(int i10) {
        this.f9087k.setSubtitle(this.f9086j.getString(i10));
    }

    @Override // j.a
    public final void m(CharSequence charSequence) {
        this.f9087k.setSubtitle(charSequence);
    }

    @Override // j.a
    public final void n(int i10) {
        this.f9087k.setTitle(this.f9086j.getString(i10));
    }

    @Override // j.a
    public final void o(CharSequence charSequence) {
        this.f9087k.setTitle(charSequence);
    }

    @Override // j.a
    public final void p(boolean z10) {
        this.f9079i = z10;
        this.f9087k.setTitleOptional(z10);
    }
}
