package k;

import android.content.Context;
import android.view.MenuItem;
import android.view.SubMenu;

/* JADX INFO: compiled from: BaseMenuWrapper.java */
/* JADX INFO: loaded from: classes.dex */
public abstract class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Context f9531a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public p.g<c0.b, MenuItem> f9532b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public p.g<c0.c, SubMenu> f9533c;

    public b(Context context) {
        this.f9531a = context;
    }

    public final MenuItem c(MenuItem menuItem) {
        if (!(menuItem instanceof c0.b)) {
            return menuItem;
        }
        c0.b bVar = (c0.b) menuItem;
        if (this.f9532b == null) {
            this.f9532b = new p.g<>();
        }
        MenuItem orDefault = this.f9532b.getOrDefault(bVar, null);
        if (orDefault != null) {
            return orDefault;
        }
        c cVar = new c(this.f9531a, bVar);
        this.f9532b.put(bVar, cVar);
        return cVar;
    }

    public final SubMenu d(SubMenu subMenu) {
        if (!(subMenu instanceof c0.c)) {
            return subMenu;
        }
        c0.c cVar = (c0.c) subMenu;
        if (this.f9533c == null) {
            this.f9533c = new p.g<>();
        }
        SubMenu orDefault = this.f9533c.getOrDefault(cVar, null);
        if (orDefault != null) {
            return orDefault;
        }
        g gVar = new g(this.f9531a, cVar);
        this.f9533c.put(cVar, gVar);
        return gVar;
    }
}
