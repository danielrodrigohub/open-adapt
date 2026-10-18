package j0;

import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import java.util.HashMap;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;

/* JADX INFO: compiled from: MenuHostHelper.java */
/* JADX INFO: loaded from: classes.dex */
public final class i {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final CopyOnWriteArrayList<k> f9193a = new CopyOnWriteArrayList<>();

    public i() {
        new HashMap();
    }

    public final void a(Menu menu, MenuInflater menuInflater) {
        Iterator<k> it = this.f9193a.iterator();
        while (it.hasNext()) {
            it.next().b();
        }
    }

    public final boolean b(MenuItem menuItem) {
        Iterator<k> it = this.f9193a.iterator();
        while (it.hasNext()) {
            if (it.next().c()) {
                return true;
            }
        }
        return false;
    }

    public final void c(Menu menu) {
        Iterator<k> it = this.f9193a.iterator();
        while (it.hasNext()) {
            it.next().d();
        }
    }
}
