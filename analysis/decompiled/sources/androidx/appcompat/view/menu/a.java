package androidx.appcompat.view.menu;

import android.content.Context;
import android.view.LayoutInflater;

/* JADX INFO: compiled from: BaseMenuPresenter.java */
/* JADX INFO: loaded from: classes.dex */
public abstract class a implements i {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public Context f826h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public Context f827i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public e f828j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public LayoutInflater f829k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public i.a f830l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public int f831m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public int f832n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public j f833o;

    public a(Context context, int i10, int i11) {
        this.f826h = context;
        this.f829k = LayoutInflater.from(context);
        this.f831m = i10;
        this.f832n = i11;
    }

    @Override // androidx.appcompat.view.menu.i
    public final boolean d(g gVar) {
        return false;
    }

    @Override // androidx.appcompat.view.menu.i
    public final void j(i.a aVar) {
        this.f830l = aVar;
    }

    @Override // androidx.appcompat.view.menu.i
    public final boolean k(g gVar) {
        return false;
    }
}
