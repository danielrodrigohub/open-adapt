package k;

import android.content.Context;
import android.content.Intent;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.view.ActionProvider;
import android.view.CollapsibleActionView;
import android.view.ContextMenu;
import android.view.MenuItem;
import android.view.SubMenu;
import android.view.View;
import android.widget.FrameLayout;
import java.lang.reflect.Method;

/* JADX INFO: compiled from: MenuItemWrapperICS.java */
/* JADX INFO: loaded from: classes.dex */
public final class c extends k.b implements MenuItem {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final c0.b f9534d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public Method f9535e;

    /* JADX INFO: compiled from: MenuItemWrapperICS.java */
    public class a extends j0.b {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final ActionProvider f9536b;

        public a(Context context, ActionProvider actionProvider) {
            this.f9536b = actionProvider;
        }

        @Override // j0.b
        public final boolean a() {
            return this.f9536b.hasSubMenu();
        }

        @Override // j0.b
        public final View c() {
            return this.f9536b.onCreateActionView();
        }

        @Override // j0.b
        public final boolean e() {
            return this.f9536b.onPerformDefaultAction();
        }

        @Override // j0.b
        public final void f(SubMenu subMenu) {
            this.f9536b.onPrepareSubMenu(c.this.d(subMenu));
        }
    }

    /* JADX INFO: compiled from: MenuItemWrapperICS.java */
    public class b extends a implements ActionProvider.VisibilityListener {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public j0.b.a f9538d;

        public b(c cVar, Context context, ActionProvider actionProvider) {
            super(context, actionProvider);
        }

        @Override // j0.b
        public final boolean b() {
            return this.f9536b.isVisible();
        }

        @Override // j0.b
        public final View d(MenuItem menuItem) {
            return this.f9536b.onCreateActionView(menuItem);
        }

        @Override // j0.b
        public final boolean g() {
            return this.f9536b.overridesItemVisibility();
        }

        @Override // j0.b
        public final void h(j0.b.a aVar) {
            this.f9538d = aVar;
            this.f9536b.setVisibilityListener(this);
        }

        @Override // android.view.ActionProvider.VisibilityListener
        public final void onActionProviderVisibilityChanged(boolean z10) {
            j0.b.a aVar = this.f9538d;
            if (aVar != null) {
                androidx.appcompat.view.menu.e eVar = androidx.appcompat.view.menu.g.this.f918n;
                eVar.f885h = true;
                eVar.r(true);
            }
        }
    }

    /* JADX INFO: renamed from: k.c$c, reason: collision with other inner class name */
    /* JADX INFO: compiled from: MenuItemWrapperICS.java */
    public static class C0184c extends FrameLayout implements j.b {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public final CollapsibleActionView f9539h;

        /* JADX WARN: Multi-variable type inference failed */
        public C0184c(View view) {
            super(view.getContext());
            this.f9539h = (CollapsibleActionView) view;
            addView(view);
        }

        @Override // j.b
        public final void c() {
            this.f9539h.onActionViewExpanded();
        }

        @Override // j.b
        public final void e() {
            this.f9539h.onActionViewCollapsed();
        }
    }

    /* JADX INFO: compiled from: MenuItemWrapperICS.java */
    public class d implements MenuItem.OnActionExpandListener {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final MenuItem.OnActionExpandListener f9540a;

        public d(MenuItem.OnActionExpandListener onActionExpandListener) {
            this.f9540a = onActionExpandListener;
        }

        @Override // android.view.MenuItem.OnActionExpandListener
        public final boolean onMenuItemActionCollapse(MenuItem menuItem) {
            return this.f9540a.onMenuItemActionCollapse(c.this.c(menuItem));
        }

        @Override // android.view.MenuItem.OnActionExpandListener
        public final boolean onMenuItemActionExpand(MenuItem menuItem) {
            return this.f9540a.onMenuItemActionExpand(c.this.c(menuItem));
        }
    }

    /* JADX INFO: compiled from: MenuItemWrapperICS.java */
    public class e implements MenuItem.OnMenuItemClickListener {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public final MenuItem.OnMenuItemClickListener f9542h;

        public e(MenuItem.OnMenuItemClickListener onMenuItemClickListener) {
            this.f9542h = onMenuItemClickListener;
        }

        @Override // android.view.MenuItem.OnMenuItemClickListener
        public final boolean onMenuItemClick(MenuItem menuItem) {
            return this.f9542h.onMenuItemClick(c.this.c(menuItem));
        }
    }

    public c(Context context, c0.b bVar) {
        super(context);
        if (bVar == null) {
            throw new IllegalArgumentException("Wrapped Object can not be null.");
        }
        this.f9534d = bVar;
    }

    @Override // android.view.MenuItem
    public final boolean collapseActionView() {
        return this.f9534d.collapseActionView();
    }

    @Override // android.view.MenuItem
    public final boolean expandActionView() {
        return this.f9534d.expandActionView();
    }

    @Override // android.view.MenuItem
    public final ActionProvider getActionProvider() {
        j0.b bVarB = this.f9534d.b();
        if (bVarB instanceof a) {
            return ((a) bVarB).f9536b;
        }
        return null;
    }

    @Override // android.view.MenuItem
    public final View getActionView() {
        View actionView = this.f9534d.getActionView();
        return actionView instanceof C0184c ? (View) ((C0184c) actionView).f9539h : actionView;
    }

    @Override // android.view.MenuItem
    public final int getAlphabeticModifiers() {
        return this.f9534d.getAlphabeticModifiers();
    }

    @Override // android.view.MenuItem
    public final char getAlphabeticShortcut() {
        return this.f9534d.getAlphabeticShortcut();
    }

    @Override // android.view.MenuItem
    public final CharSequence getContentDescription() {
        return this.f9534d.getContentDescription();
    }

    @Override // android.view.MenuItem
    public final int getGroupId() {
        return this.f9534d.getGroupId();
    }

    @Override // android.view.MenuItem
    public final Drawable getIcon() {
        return this.f9534d.getIcon();
    }

    @Override // android.view.MenuItem
    public final ColorStateList getIconTintList() {
        return this.f9534d.getIconTintList();
    }

    @Override // android.view.MenuItem
    public final PorterDuff.Mode getIconTintMode() {
        return this.f9534d.getIconTintMode();
    }

    @Override // android.view.MenuItem
    public final Intent getIntent() {
        return this.f9534d.getIntent();
    }

    @Override // android.view.MenuItem
    public final int getItemId() {
        return this.f9534d.getItemId();
    }

    @Override // android.view.MenuItem
    public final ContextMenu.ContextMenuInfo getMenuInfo() {
        return this.f9534d.getMenuInfo();
    }

    @Override // android.view.MenuItem
    public final int getNumericModifiers() {
        return this.f9534d.getNumericModifiers();
    }

    @Override // android.view.MenuItem
    public final char getNumericShortcut() {
        return this.f9534d.getNumericShortcut();
    }

    @Override // android.view.MenuItem
    public final int getOrder() {
        return this.f9534d.getOrder();
    }

    @Override // android.view.MenuItem
    public final SubMenu getSubMenu() {
        return d(this.f9534d.getSubMenu());
    }

    @Override // android.view.MenuItem
    public final CharSequence getTitle() {
        return this.f9534d.getTitle();
    }

    @Override // android.view.MenuItem
    public final CharSequence getTitleCondensed() {
        return this.f9534d.getTitleCondensed();
    }

    @Override // android.view.MenuItem
    public final CharSequence getTooltipText() {
        return this.f9534d.getTooltipText();
    }

    @Override // android.view.MenuItem
    public final boolean hasSubMenu() {
        return this.f9534d.hasSubMenu();
    }

    @Override // android.view.MenuItem
    public final boolean isActionViewExpanded() {
        return this.f9534d.isActionViewExpanded();
    }

    @Override // android.view.MenuItem
    public final boolean isCheckable() {
        return this.f9534d.isCheckable();
    }

    @Override // android.view.MenuItem
    public final boolean isChecked() {
        return this.f9534d.isChecked();
    }

    @Override // android.view.MenuItem
    public final boolean isEnabled() {
        return this.f9534d.isEnabled();
    }

    @Override // android.view.MenuItem
    public final boolean isVisible() {
        return this.f9534d.isVisible();
    }

    @Override // android.view.MenuItem
    public final MenuItem setActionProvider(ActionProvider actionProvider) {
        b bVar = new b(this, this.f9531a, actionProvider);
        c0.b bVar2 = this.f9534d;
        if (actionProvider == null) {
            bVar = null;
        }
        bVar2.a(bVar);
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setActionView(View view) {
        if (view instanceof CollapsibleActionView) {
            view = new C0184c(view);
        }
        this.f9534d.setActionView(view);
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setAlphabeticShortcut(char c10) {
        this.f9534d.setAlphabeticShortcut(c10);
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setCheckable(boolean z10) {
        this.f9534d.setCheckable(z10);
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setChecked(boolean z10) {
        this.f9534d.setChecked(z10);
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setContentDescription(CharSequence charSequence) {
        this.f9534d.setContentDescription(charSequence);
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setEnabled(boolean z10) {
        this.f9534d.setEnabled(z10);
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setIcon(Drawable drawable) {
        this.f9534d.setIcon(drawable);
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setIconTintList(ColorStateList colorStateList) {
        this.f9534d.setIconTintList(colorStateList);
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setIconTintMode(PorterDuff.Mode mode) {
        this.f9534d.setIconTintMode(mode);
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setIntent(Intent intent) {
        this.f9534d.setIntent(intent);
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setNumericShortcut(char c10) {
        this.f9534d.setNumericShortcut(c10);
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setOnActionExpandListener(MenuItem.OnActionExpandListener onActionExpandListener) {
        this.f9534d.setOnActionExpandListener(onActionExpandListener != null ? new d(onActionExpandListener) : null);
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setOnMenuItemClickListener(MenuItem.OnMenuItemClickListener onMenuItemClickListener) {
        this.f9534d.setOnMenuItemClickListener(onMenuItemClickListener != null ? new e(onMenuItemClickListener) : null);
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setShortcut(char c10, char c11) {
        this.f9534d.setShortcut(c10, c11);
        return this;
    }

    @Override // android.view.MenuItem
    public final void setShowAsAction(int i10) {
        this.f9534d.setShowAsAction(i10);
    }

    @Override // android.view.MenuItem
    public final MenuItem setShowAsActionFlags(int i10) {
        this.f9534d.setShowAsActionFlags(i10);
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setTitle(CharSequence charSequence) {
        this.f9534d.setTitle(charSequence);
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setTitleCondensed(CharSequence charSequence) {
        this.f9534d.setTitleCondensed(charSequence);
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setTooltipText(CharSequence charSequence) {
        this.f9534d.setTooltipText(charSequence);
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setVisible(boolean z10) {
        return this.f9534d.setVisible(z10);
    }

    @Override // android.view.MenuItem
    public final MenuItem setAlphabeticShortcut(char c10, int i10) {
        this.f9534d.setAlphabeticShortcut(c10, i10);
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setIcon(int i10) {
        this.f9534d.setIcon(i10);
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setNumericShortcut(char c10, int i10) {
        this.f9534d.setNumericShortcut(c10, i10);
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setShortcut(char c10, char c11, int i10, int i11) {
        this.f9534d.setShortcut(c10, c11, i10, i11);
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setTitle(int i10) {
        this.f9534d.setTitle(i10);
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setActionView(int i10) {
        this.f9534d.setActionView(i10);
        View actionView = this.f9534d.getActionView();
        if (actionView instanceof CollapsibleActionView) {
            this.f9534d.setActionView(new C0184c(actionView));
        }
        return this;
    }
}
