package k;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.view.MenuItem;
import android.view.SubMenu;
import android.view.View;

/* JADX INFO: compiled from: SubMenuWrapperICS.java */
/* JADX INFO: loaded from: classes.dex */
public final class g extends e implements SubMenu {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final c0.c f9546e;

    public g(Context context, c0.c cVar) {
        super(context, cVar);
        this.f9546e = cVar;
    }

    @Override // android.view.SubMenu
    public final void clearHeader() {
        this.f9546e.clearHeader();
    }

    @Override // android.view.SubMenu
    public final MenuItem getItem() {
        return c(this.f9546e.getItem());
    }

    @Override // android.view.SubMenu
    public final SubMenu setHeaderIcon(int i10) {
        this.f9546e.setHeaderIcon(i10);
        return this;
    }

    @Override // android.view.SubMenu
    public final SubMenu setHeaderTitle(int i10) {
        this.f9546e.setHeaderTitle(i10);
        return this;
    }

    @Override // android.view.SubMenu
    public final SubMenu setHeaderView(View view) {
        this.f9546e.setHeaderView(view);
        return this;
    }

    @Override // android.view.SubMenu
    public final SubMenu setIcon(int i10) {
        this.f9546e.setIcon(i10);
        return this;
    }

    @Override // android.view.SubMenu
    public final SubMenu setHeaderIcon(Drawable drawable) {
        this.f9546e.setHeaderIcon(drawable);
        return this;
    }

    @Override // android.view.SubMenu
    public final SubMenu setHeaderTitle(CharSequence charSequence) {
        this.f9546e.setHeaderTitle(charSequence);
        return this;
    }

    @Override // android.view.SubMenu
    public final SubMenu setIcon(Drawable drawable) {
        this.f9546e.setIcon(drawable);
        return this;
    }
}
