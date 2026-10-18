package androidx.appcompat.view.menu;

import android.content.Context;
import android.content.Intent;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.view.ActionProvider;
import android.view.ContextMenu;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.MenuItem;
import android.view.SubMenu;
import android.view.View;
import android.view.ViewDebug;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import com.newrelic.agent.android.analytics.AnalyticsAttribute;
import java.util.Objects;

/* JADX INFO: compiled from: MenuItemImpl.java */
/* JADX INFO: loaded from: classes.dex */
public final class g implements c0.b {
    public j0.b A;
    public MenuItem.OnActionExpandListener B;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f905a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f906b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f907c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final int f908d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public CharSequence f909e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public CharSequence f910f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public Intent f911g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public char f912h;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public char f914j;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public Drawable f916l;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public e f918n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public l f919o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public MenuItem.OnMenuItemClickListener f920p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public CharSequence f921q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public CharSequence f922r;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public int f929y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public View f930z;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f913i = AnalyticsAttribute.ATTRIBUTE_VALUE_MAX_LENGTH;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public int f915k = AnalyticsAttribute.ATTRIBUTE_VALUE_MAX_LENGTH;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public int f917m = 0;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public ColorStateList f923s = null;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public PorterDuff.Mode f924t = null;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public boolean f925u = false;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public boolean f926v = false;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public boolean f927w = false;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public int f928x = 16;
    public boolean C = false;

    /* JADX INFO: compiled from: MenuItemImpl.java */
    public class a implements j0.b.a {
        public a() {
        }
    }

    public g(e eVar, int i10, int i11, int i12, int i13, CharSequence charSequence, int i14) {
        this.f918n = eVar;
        this.f905a = i11;
        this.f906b = i10;
        this.f907c = i12;
        this.f908d = i13;
        this.f909e = charSequence;
        this.f929y = i14;
    }

    public static void c(StringBuilder sb2, int i10, int i11, String str) {
        if ((i10 & i11) == i11) {
            sb2.append(str);
        }
    }

    @Override // c0.b
    public final c0.b a(j0.b bVar) {
        j0.b bVar2 = this.A;
        if (bVar2 != null) {
            bVar2.f9166a = null;
        }
        this.f930z = null;
        this.A = bVar;
        this.f918n.r(true);
        j0.b bVar3 = this.A;
        if (bVar3 != null) {
            bVar3.h(new a());
        }
        return this;
    }

    @Override // c0.b
    public final j0.b b() {
        return this.A;
    }

    @Override // c0.b, android.view.MenuItem
    public final boolean collapseActionView() {
        if ((this.f929y & 8) == 0) {
            return false;
        }
        if (this.f930z == null) {
            return true;
        }
        MenuItem.OnActionExpandListener onActionExpandListener = this.B;
        if (onActionExpandListener == null || onActionExpandListener.onMenuItemActionCollapse(this)) {
            return this.f918n.e(this);
        }
        return false;
    }

    public final Drawable d(Drawable drawable) {
        if (drawable != null && this.f927w && (this.f925u || this.f926v)) {
            drawable = drawable.mutate();
            if (this.f925u) {
                b0.a.b.h(drawable, this.f923s);
            }
            if (this.f926v) {
                b0.a.b.i(drawable, this.f924t);
            }
            this.f927w = false;
        }
        return drawable;
    }

    public final char e() {
        return this.f918n.o() ? this.f914j : this.f912h;
    }

    @Override // c0.b, android.view.MenuItem
    public final boolean expandActionView() {
        if (!f()) {
            return false;
        }
        MenuItem.OnActionExpandListener onActionExpandListener = this.B;
        if (onActionExpandListener == null || onActionExpandListener.onMenuItemActionExpand(this)) {
            return this.f918n.g(this);
        }
        return false;
    }

    public final boolean f() {
        j0.b bVar;
        if ((this.f929y & 8) == 0) {
            return false;
        }
        if (this.f930z == null && (bVar = this.A) != null) {
            this.f930z = bVar.d(this);
        }
        return this.f930z != null;
    }

    public final boolean g() {
        return (this.f928x & 32) == 32;
    }

    @Override // android.view.MenuItem
    public final ActionProvider getActionProvider() {
        throw new UnsupportedOperationException("This is not supported, use MenuItemCompat.getActionProvider()");
    }

    @Override // c0.b, android.view.MenuItem
    public final View getActionView() {
        View view = this.f930z;
        if (view != null) {
            return view;
        }
        j0.b bVar = this.A;
        if (bVar == null) {
            return null;
        }
        View viewD = bVar.d(this);
        this.f930z = viewD;
        return viewD;
    }

    @Override // c0.b, android.view.MenuItem
    public final int getAlphabeticModifiers() {
        return this.f915k;
    }

    @Override // android.view.MenuItem
    public final char getAlphabeticShortcut() {
        return this.f914j;
    }

    @Override // c0.b, android.view.MenuItem
    public final CharSequence getContentDescription() {
        return this.f921q;
    }

    @Override // android.view.MenuItem
    public final int getGroupId() {
        return this.f906b;
    }

    @Override // android.view.MenuItem
    public final Drawable getIcon() {
        Drawable drawable = this.f916l;
        if (drawable != null) {
            return d(drawable);
        }
        int i10 = this.f917m;
        if (i10 == 0) {
            return null;
        }
        Drawable drawableB = g.a.b(this.f918n.f878a, i10);
        this.f917m = 0;
        this.f916l = drawableB;
        return d(drawableB);
    }

    @Override // c0.b, android.view.MenuItem
    public final ColorStateList getIconTintList() {
        return this.f923s;
    }

    @Override // c0.b, android.view.MenuItem
    public final PorterDuff.Mode getIconTintMode() {
        return this.f924t;
    }

    @Override // android.view.MenuItem
    public final Intent getIntent() {
        return this.f911g;
    }

    @Override // android.view.MenuItem
    @ViewDebug.CapturedViewProperty
    public final int getItemId() {
        return this.f905a;
    }

    @Override // android.view.MenuItem
    public final ContextMenu.ContextMenuInfo getMenuInfo() {
        return null;
    }

    @Override // c0.b, android.view.MenuItem
    public final int getNumericModifiers() {
        return this.f913i;
    }

    @Override // android.view.MenuItem
    public final char getNumericShortcut() {
        return this.f912h;
    }

    @Override // android.view.MenuItem
    public final int getOrder() {
        return this.f907c;
    }

    @Override // android.view.MenuItem
    public final SubMenu getSubMenu() {
        return this.f919o;
    }

    @Override // android.view.MenuItem
    @ViewDebug.CapturedViewProperty
    public final CharSequence getTitle() {
        return this.f909e;
    }

    @Override // android.view.MenuItem
    public final CharSequence getTitleCondensed() {
        CharSequence charSequence = this.f910f;
        return charSequence != null ? charSequence : this.f909e;
    }

    @Override // c0.b, android.view.MenuItem
    public final CharSequence getTooltipText() {
        return this.f922r;
    }

    public final boolean h() {
        return (this.f928x & 4) != 0;
    }

    @Override // android.view.MenuItem
    public final boolean hasSubMenu() {
        return this.f919o != null;
    }

    public final c0.b i(View view) {
        int i10;
        this.f930z = view;
        this.A = null;
        if (view != null && view.getId() == -1 && (i10 = this.f905a) > 0) {
            view.setId(i10);
        }
        this.f918n.q();
        return this;
    }

    @Override // c0.b, android.view.MenuItem
    public final boolean isActionViewExpanded() {
        return this.C;
    }

    @Override // android.view.MenuItem
    public final boolean isCheckable() {
        return (this.f928x & 1) == 1;
    }

    @Override // android.view.MenuItem
    public final boolean isChecked() {
        return (this.f928x & 2) == 2;
    }

    @Override // android.view.MenuItem
    public final boolean isEnabled() {
        return (this.f928x & 16) != 0;
    }

    @Override // android.view.MenuItem
    public final boolean isVisible() {
        j0.b bVar = this.A;
        if (bVar == null || !bVar.g()) {
            return (this.f928x & 8) == 0;
        }
        return (this.f928x & 8) == 0 && this.A.b();
    }

    public final void j(boolean z10) {
        int i10 = this.f928x;
        int i11 = (z10 ? 2 : 0) | (i10 & (-3));
        this.f928x = i11;
        if (i10 != i11) {
            this.f918n.r(false);
        }
    }

    public final void k(boolean z10) {
        if (z10) {
            this.f928x |= 32;
        } else {
            this.f928x &= -33;
        }
    }

    @Override // android.view.MenuItem
    public final MenuItem setActionProvider(ActionProvider actionProvider) {
        throw new UnsupportedOperationException("This is not supported, use MenuItemCompat.setActionProvider()");
    }

    @Override // c0.b, android.view.MenuItem
    public final /* bridge */ /* synthetic */ MenuItem setActionView(View view) {
        i(view);
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setAlphabeticShortcut(char c10) {
        if (this.f914j == c10) {
            return this;
        }
        this.f914j = Character.toLowerCase(c10);
        this.f918n.r(false);
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setCheckable(boolean z10) {
        int i10 = this.f928x;
        int i11 = (z10 ? 1 : 0) | (i10 & (-2));
        this.f928x = i11;
        if (i10 != i11) {
            this.f918n.r(false);
        }
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setChecked(boolean z10) {
        if ((this.f928x & 4) != 0) {
            e eVar = this.f918n;
            Objects.requireNonNull(eVar);
            int groupId = getGroupId();
            int size = eVar.f883f.size();
            eVar.B();
            for (int i10 = 0; i10 < size; i10++) {
                g gVar = eVar.f883f.get(i10);
                if (gVar.f906b == groupId && gVar.h() && gVar.isCheckable()) {
                    gVar.j(gVar == this);
                }
            }
            eVar.A();
        } else {
            j(z10);
        }
        return this;
    }

    @Override // android.view.MenuItem
    public final /* bridge */ /* synthetic */ MenuItem setContentDescription(CharSequence charSequence) {
        setContentDescription(charSequence);
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setEnabled(boolean z10) {
        if (z10) {
            this.f928x |= 16;
        } else {
            this.f928x &= -17;
        }
        this.f918n.r(false);
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setIcon(Drawable drawable) {
        this.f917m = 0;
        this.f916l = drawable;
        this.f927w = true;
        this.f918n.r(false);
        return this;
    }

    @Override // c0.b, android.view.MenuItem
    public final MenuItem setIconTintList(ColorStateList colorStateList) {
        this.f923s = colorStateList;
        this.f925u = true;
        this.f927w = true;
        this.f918n.r(false);
        return this;
    }

    @Override // c0.b, android.view.MenuItem
    public final MenuItem setIconTintMode(PorterDuff.Mode mode) {
        this.f924t = mode;
        this.f926v = true;
        this.f927w = true;
        this.f918n.r(false);
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setIntent(Intent intent) {
        this.f911g = intent;
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setNumericShortcut(char c10) {
        if (this.f912h == c10) {
            return this;
        }
        this.f912h = c10;
        this.f918n.r(false);
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setOnActionExpandListener(MenuItem.OnActionExpandListener onActionExpandListener) {
        this.B = onActionExpandListener;
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setOnMenuItemClickListener(MenuItem.OnMenuItemClickListener onMenuItemClickListener) {
        this.f920p = onMenuItemClickListener;
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setShortcut(char c10, char c11) {
        this.f912h = c10;
        this.f914j = Character.toLowerCase(c11);
        this.f918n.r(false);
        return this;
    }

    @Override // c0.b, android.view.MenuItem
    public final void setShowAsAction(int i10) {
        int i11 = i10 & 3;
        if (i11 != 0 && i11 != 1 && i11 != 2) {
            throw new IllegalArgumentException("SHOW_AS_ACTION_ALWAYS, SHOW_AS_ACTION_IF_ROOM, and SHOW_AS_ACTION_NEVER are mutually exclusive.");
        }
        this.f929y = i10;
        this.f918n.q();
    }

    @Override // c0.b, android.view.MenuItem
    public final MenuItem setShowAsActionFlags(int i10) {
        setShowAsAction(i10);
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setTitle(CharSequence charSequence) {
        this.f909e = charSequence;
        this.f918n.r(false);
        l lVar = this.f919o;
        if (lVar != null) {
            lVar.setHeaderTitle(charSequence);
        }
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setTitleCondensed(CharSequence charSequence) {
        this.f910f = charSequence;
        this.f918n.r(false);
        return this;
    }

    @Override // android.view.MenuItem
    public final /* bridge */ /* synthetic */ MenuItem setTooltipText(CharSequence charSequence) {
        setTooltipText(charSequence);
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setVisible(boolean z10) {
        int i10 = this.f928x;
        int i11 = (z10 ? 0 : 8) | (i10 & (-9));
        this.f928x = i11;
        if (i10 != i11) {
            e eVar = this.f918n;
            eVar.f885h = true;
            eVar.r(true);
        }
        return this;
    }

    public final String toString() {
        CharSequence charSequence = this.f909e;
        if (charSequence != null) {
            return charSequence.toString();
        }
        return null;
    }

    @Override // c0.b, android.view.MenuItem
    public final MenuItem setActionView(int i10) {
        Context context = this.f918n.f878a;
        i(LayoutInflater.from(context).inflate(i10, (ViewGroup) new LinearLayout(context), false));
        return this;
    }

    @Override // c0.b, android.view.MenuItem
    public final c0.b setContentDescription(CharSequence charSequence) {
        this.f921q = charSequence;
        this.f918n.r(false);
        return this;
    }

    @Override // c0.b, android.view.MenuItem
    public final c0.b setTooltipText(CharSequence charSequence) {
        this.f922r = charSequence;
        this.f918n.r(false);
        return this;
    }

    @Override // c0.b, android.view.MenuItem
    public final MenuItem setAlphabeticShortcut(char c10, int i10) {
        if (this.f914j == c10 && this.f915k == i10) {
            return this;
        }
        this.f914j = Character.toLowerCase(c10);
        this.f915k = KeyEvent.normalizeMetaState(i10);
        this.f918n.r(false);
        return this;
    }

    @Override // c0.b, android.view.MenuItem
    public final MenuItem setNumericShortcut(char c10, int i10) {
        if (this.f912h == c10 && this.f913i == i10) {
            return this;
        }
        this.f912h = c10;
        this.f913i = KeyEvent.normalizeMetaState(i10);
        this.f918n.r(false);
        return this;
    }

    @Override // c0.b, android.view.MenuItem
    public final MenuItem setShortcut(char c10, char c11, int i10, int i11) {
        this.f912h = c10;
        this.f913i = KeyEvent.normalizeMetaState(i10);
        this.f914j = Character.toLowerCase(c11);
        this.f915k = KeyEvent.normalizeMetaState(i11);
        this.f918n.r(false);
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setIcon(int i10) {
        this.f916l = null;
        this.f917m = i10;
        this.f927w = true;
        this.f918n.r(false);
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setTitle(int i10) {
        setTitle(this.f918n.f878a.getString(i10));
        return this;
    }
}
