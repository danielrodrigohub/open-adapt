package k;

import android.R;
import android.content.Context;
import android.content.Intent;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.view.ActionProvider;
import android.view.ContextMenu;
import android.view.KeyEvent;
import android.view.MenuItem;
import android.view.SubMenu;
import android.view.View;
import com.newrelic.agent.android.analytics.AnalyticsAttribute;

/* JADX INFO: compiled from: ActionMenuItem.java */
/* JADX INFO: loaded from: classes.dex */
public final class a implements c0.b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public CharSequence f9515a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public CharSequence f9516b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Intent f9517c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public char f9518d;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public char f9520f;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public Drawable f9522h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public Context f9523i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public CharSequence f9524j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public CharSequence f9525k;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f9519e = AnalyticsAttribute.ATTRIBUTE_VALUE_MAX_LENGTH;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int f9521g = AnalyticsAttribute.ATTRIBUTE_VALUE_MAX_LENGTH;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public ColorStateList f9526l = null;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public PorterDuff.Mode f9527m = null;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public boolean f9528n = false;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public boolean f9529o = false;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public int f9530p = 16;

    public a(Context context, CharSequence charSequence) {
        this.f9523i = context;
        this.f9515a = charSequence;
    }

    @Override // c0.b
    public final c0.b a(j0.b bVar) {
        throw new UnsupportedOperationException();
    }

    @Override // c0.b
    public final j0.b b() {
        return null;
    }

    public final void c() {
        Drawable drawable = this.f9522h;
        if (drawable != null) {
            if (this.f9528n || this.f9529o) {
                this.f9522h = drawable;
                Drawable drawableMutate = drawable.mutate();
                this.f9522h = drawableMutate;
                if (this.f9528n) {
                    b0.a.b.h(drawableMutate, this.f9526l);
                }
                if (this.f9529o) {
                    b0.a.b.i(this.f9522h, this.f9527m);
                }
            }
        }
    }

    @Override // c0.b, android.view.MenuItem
    public final boolean collapseActionView() {
        return false;
    }

    @Override // c0.b, android.view.MenuItem
    public final boolean expandActionView() {
        return false;
    }

    @Override // android.view.MenuItem
    public final ActionProvider getActionProvider() {
        throw new UnsupportedOperationException();
    }

    @Override // c0.b, android.view.MenuItem
    public final View getActionView() {
        return null;
    }

    @Override // c0.b, android.view.MenuItem
    public final int getAlphabeticModifiers() {
        return this.f9521g;
    }

    @Override // android.view.MenuItem
    public final char getAlphabeticShortcut() {
        return this.f9520f;
    }

    @Override // c0.b, android.view.MenuItem
    public final CharSequence getContentDescription() {
        return this.f9524j;
    }

    @Override // android.view.MenuItem
    public final int getGroupId() {
        return 0;
    }

    @Override // android.view.MenuItem
    public final Drawable getIcon() {
        return this.f9522h;
    }

    @Override // c0.b, android.view.MenuItem
    public final ColorStateList getIconTintList() {
        return this.f9526l;
    }

    @Override // c0.b, android.view.MenuItem
    public final PorterDuff.Mode getIconTintMode() {
        return this.f9527m;
    }

    @Override // android.view.MenuItem
    public final Intent getIntent() {
        return this.f9517c;
    }

    @Override // android.view.MenuItem
    public final int getItemId() {
        return R.id.home;
    }

    @Override // android.view.MenuItem
    public final ContextMenu.ContextMenuInfo getMenuInfo() {
        return null;
    }

    @Override // c0.b, android.view.MenuItem
    public final int getNumericModifiers() {
        return this.f9519e;
    }

    @Override // android.view.MenuItem
    public final char getNumericShortcut() {
        return this.f9518d;
    }

    @Override // android.view.MenuItem
    public final int getOrder() {
        return 0;
    }

    @Override // android.view.MenuItem
    public final SubMenu getSubMenu() {
        return null;
    }

    @Override // android.view.MenuItem
    public final CharSequence getTitle() {
        return this.f9515a;
    }

    @Override // android.view.MenuItem
    public final CharSequence getTitleCondensed() {
        CharSequence charSequence = this.f9516b;
        return charSequence != null ? charSequence : this.f9515a;
    }

    @Override // c0.b, android.view.MenuItem
    public final CharSequence getTooltipText() {
        return this.f9525k;
    }

    @Override // android.view.MenuItem
    public final boolean hasSubMenu() {
        return false;
    }

    @Override // c0.b, android.view.MenuItem
    public final boolean isActionViewExpanded() {
        return false;
    }

    @Override // android.view.MenuItem
    public final boolean isCheckable() {
        return (this.f9530p & 1) != 0;
    }

    @Override // android.view.MenuItem
    public final boolean isChecked() {
        return (this.f9530p & 2) != 0;
    }

    @Override // android.view.MenuItem
    public final boolean isEnabled() {
        return (this.f9530p & 16) != 0;
    }

    @Override // android.view.MenuItem
    public final boolean isVisible() {
        return (this.f9530p & 8) == 0;
    }

    @Override // android.view.MenuItem
    public final MenuItem setActionProvider(ActionProvider actionProvider) {
        throw new UnsupportedOperationException();
    }

    @Override // c0.b, android.view.MenuItem
    public final MenuItem setActionView(View view) {
        throw new UnsupportedOperationException();
    }

    @Override // android.view.MenuItem
    public final MenuItem setAlphabeticShortcut(char c10) {
        this.f9520f = Character.toLowerCase(c10);
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setCheckable(boolean z10) {
        this.f9530p = (z10 ? 1 : 0) | (this.f9530p & (-2));
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setChecked(boolean z10) {
        this.f9530p = (z10 ? 2 : 0) | (this.f9530p & (-3));
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setContentDescription(CharSequence charSequence) {
        this.f9524j = charSequence;
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setEnabled(boolean z10) {
        this.f9530p = (z10 ? 16 : 0) | (this.f9530p & (-17));
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setIcon(Drawable drawable) {
        this.f9522h = drawable;
        c();
        return this;
    }

    @Override // c0.b, android.view.MenuItem
    public final MenuItem setIconTintList(ColorStateList colorStateList) {
        this.f9526l = colorStateList;
        this.f9528n = true;
        c();
        return this;
    }

    @Override // c0.b, android.view.MenuItem
    public final MenuItem setIconTintMode(PorterDuff.Mode mode) {
        this.f9527m = mode;
        this.f9529o = true;
        c();
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setIntent(Intent intent) {
        this.f9517c = intent;
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setNumericShortcut(char c10) {
        this.f9518d = c10;
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setOnActionExpandListener(MenuItem.OnActionExpandListener onActionExpandListener) {
        throw new UnsupportedOperationException();
    }

    @Override // android.view.MenuItem
    public final MenuItem setOnMenuItemClickListener(MenuItem.OnMenuItemClickListener onMenuItemClickListener) {
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setShortcut(char c10, char c11) {
        this.f9518d = c10;
        this.f9520f = Character.toLowerCase(c11);
        return this;
    }

    @Override // c0.b, android.view.MenuItem
    public final void setShowAsAction(int i10) {
    }

    @Override // c0.b, android.view.MenuItem
    public final MenuItem setShowAsActionFlags(int i10) {
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setTitle(CharSequence charSequence) {
        this.f9515a = charSequence;
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setTitleCondensed(CharSequence charSequence) {
        this.f9516b = charSequence;
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setTooltipText(CharSequence charSequence) {
        this.f9525k = charSequence;
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setVisible(boolean z10) {
        this.f9530p = (this.f9530p & 8) | (z10 ? 0 : 8);
        return this;
    }

    @Override // c0.b, android.view.MenuItem
    public final MenuItem setActionView(int i10) {
        throw new UnsupportedOperationException();
    }

    @Override // c0.b, android.view.MenuItem
    public final MenuItem setAlphabeticShortcut(char c10, int i10) {
        this.f9520f = Character.toLowerCase(c10);
        this.f9521g = KeyEvent.normalizeMetaState(i10);
        return this;
    }

    @Override // c0.b, android.view.MenuItem
    public final c0.b setContentDescription(CharSequence charSequence) {
        this.f9524j = charSequence;
        return this;
    }

    @Override // c0.b, android.view.MenuItem
    public final MenuItem setNumericShortcut(char c10, int i10) {
        this.f9518d = c10;
        this.f9519e = KeyEvent.normalizeMetaState(i10);
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setTitle(int i10) {
        this.f9515a = this.f9523i.getResources().getString(i10);
        return this;
    }

    @Override // c0.b, android.view.MenuItem
    public final c0.b setTooltipText(CharSequence charSequence) {
        this.f9525k = charSequence;
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setIcon(int i10) {
        Context context = this.f9523i;
        Object obj = y.a.f18143a;
        this.f9522h = y.a.b.b(context, i10);
        c();
        return this;
    }

    @Override // c0.b, android.view.MenuItem
    public final MenuItem setShortcut(char c10, char c11, int i10, int i11) {
        this.f9518d = c10;
        this.f9519e = KeyEvent.normalizeMetaState(i10);
        this.f9520f = Character.toLowerCase(c11);
        this.f9521g = KeyEvent.normalizeMetaState(i11);
        return this;
    }
}
