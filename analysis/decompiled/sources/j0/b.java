package j0;

import android.util.Log;
import android.view.MenuItem;
import android.view.SubMenu;
import android.view.View;

/* JADX INFO: compiled from: ActionProvider.java */
/* JADX INFO: loaded from: classes.dex */
public abstract class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public a f9166a;

    /* JADX INFO: compiled from: ActionProvider.java */
    public interface a {
    }

    public boolean a() {
        return false;
    }

    public boolean b() {
        return true;
    }

    public abstract View c();

    public View d(MenuItem menuItem) {
        return c();
    }

    public boolean e() {
        return false;
    }

    public void f(SubMenu subMenu) {
    }

    public boolean g() {
        return false;
    }

    public void h(a aVar) {
        if (this.f9166a != null) {
            StringBuilder sbC = a0.b.c("setVisibilityListener: Setting a new ActionProvider.VisibilityListener when one is already set. Are you reusing this ");
            sbC.append(getClass().getSimpleName());
            sbC.append(" instance while it is still in use somewhere else?");
            Log.w("ActionProvider(support)", sbC.toString());
        }
        this.f9166a = aVar;
    }
}
