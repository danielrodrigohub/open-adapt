package j;

import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;

/* JADX INFO: compiled from: ActionMode.java */
/* JADX INFO: loaded from: classes.dex */
public abstract class a {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public Object f9078h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public boolean f9079i;

    /* JADX INFO: renamed from: j.a$a, reason: collision with other inner class name */
    /* JADX INFO: compiled from: ActionMode.java */
    public interface InterfaceC0177a {
        boolean a(a aVar, MenuItem menuItem);

        boolean b(a aVar, Menu menu);

        void c(a aVar);

        boolean d(a aVar, Menu menu);
    }

    public abstract void c();

    public abstract View d();

    public abstract Menu e();

    public abstract MenuInflater f();

    public abstract CharSequence g();

    public abstract CharSequence h();

    public abstract void i();

    public abstract boolean j();

    public abstract void k(View view);

    public abstract void l(int i10);

    public abstract void m(CharSequence charSequence);

    public abstract void n(int i10);

    public abstract void o(CharSequence charSequence);

    public abstract void p(boolean z10);
}
