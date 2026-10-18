package androidx.appcompat.view.menu;

import android.content.ActivityNotFoundException;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Bundle;
import android.os.Parcelable;
import android.util.Log;
import android.util.SparseArray;
import android.view.KeyCharacterMap;
import android.view.KeyEvent;
import android.view.MenuItem;
import android.view.SubMenu;
import android.view.View;
import android.view.ViewConfiguration;
import j0.c0;
import java.lang.ref.WeakReference;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;

/* JADX INFO: compiled from: MenuBuilder.java */
/* JADX INFO: loaded from: classes.dex */
public class e implements c0.a {

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public static final int[] f877y = {1, 4, 5, 3, 2, 0};

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Context f878a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Resources f879b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public boolean f880c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public boolean f881d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public a f882e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public ArrayList<g> f883f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public ArrayList<g> f884g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public boolean f885h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public ArrayList<g> f886i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public ArrayList<g> f887j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public boolean f888k;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public CharSequence f890m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public Drawable f891n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public View f892o;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public g f899v;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public boolean f901x;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public int f889l = 0;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public boolean f893p = false;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public boolean f894q = false;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public boolean f895r = false;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public boolean f896s = false;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public ArrayList<g> f897t = new ArrayList<>();

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public CopyOnWriteArrayList<WeakReference<i>> f898u = new CopyOnWriteArrayList<>();

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public boolean f900w = false;

    /* JADX INFO: compiled from: MenuBuilder.java */
    public interface a {
        boolean a(e eVar, MenuItem menuItem);

        void b(e eVar);
    }

    /* JADX INFO: compiled from: MenuBuilder.java */
    public interface b {
        boolean a(g gVar);
    }

    public e(Context context) {
        boolean zB;
        boolean z10 = false;
        this.f878a = context;
        Resources resources = context.getResources();
        this.f879b = resources;
        this.f883f = new ArrayList<>();
        this.f884g = new ArrayList<>();
        this.f885h = true;
        this.f886i = new ArrayList<>();
        this.f887j = new ArrayList<>();
        this.f888k = true;
        if (resources.getConfiguration().keyboard != 1) {
            ViewConfiguration viewConfiguration = ViewConfiguration.get(context);
            Method method = c0.f9181a;
            if (Build.VERSION.SDK_INT >= 28) {
                zB = c0.b.b(viewConfiguration);
            } else {
                Resources resources2 = context.getResources();
                int identifier = resources2.getIdentifier("config_showMenuShortcutsWhenKeyboardPresent", "bool", "android");
                zB = identifier != 0 && resources2.getBoolean(identifier);
            }
            if (zB) {
                z10 = true;
            }
        }
        this.f881d = z10;
    }

    public final void A() {
        this.f893p = false;
        if (this.f894q) {
            this.f894q = false;
            r(this.f895r);
        }
    }

    public final void B() {
        if (this.f893p) {
            return;
        }
        this.f893p = true;
        this.f894q = false;
        this.f895r = false;
    }

    public final MenuItem a(int i10, int i11, int i12, CharSequence charSequence) {
        int i13;
        int i14 = ((-65536) & i12) >> 16;
        if (i14 >= 0) {
            int[] iArr = f877y;
            if (i14 < 6) {
                int i15 = (iArr[i14] << 16) | (65535 & i12);
                g gVar = new g(this, i10, i11, i12, i15, charSequence, this.f889l);
                ArrayList<g> arrayList = this.f883f;
                int size = arrayList.size();
                do {
                    size--;
                    if (size < 0) {
                        i13 = 0;
                    }
                    arrayList.add(i13, gVar);
                    r(true);
                    return gVar;
                } while (arrayList.get(size).f908d > i15);
                i13 = size + 1;
                arrayList.add(i13, gVar);
                r(true);
                return gVar;
            }
        }
        throw new IllegalArgumentException("order does not contain a valid category.");
    }

    @Override // android.view.Menu
    public final MenuItem add(CharSequence charSequence) {
        return a(0, 0, 0, charSequence);
    }

    @Override // android.view.Menu
    public final int addIntentOptions(int i10, int i11, int i12, ComponentName componentName, Intent[] intentArr, Intent intent, int i13, MenuItem[] menuItemArr) {
        int i14;
        PackageManager packageManager = this.f878a.getPackageManager();
        List<ResolveInfo> listQueryIntentActivityOptions = packageManager.queryIntentActivityOptions(componentName, intentArr, intent, 0);
        int size = listQueryIntentActivityOptions != null ? listQueryIntentActivityOptions.size() : 0;
        if ((i13 & 1) == 0) {
            removeGroup(i10);
        }
        for (int i15 = 0; i15 < size; i15++) {
            ResolveInfo resolveInfo = listQueryIntentActivityOptions.get(i15);
            int i16 = resolveInfo.specificIndex;
            Intent intent2 = new Intent(i16 < 0 ? intent : intentArr[i16]);
            ActivityInfo activityInfo = resolveInfo.activityInfo;
            intent2.setComponent(new ComponentName(activityInfo.applicationInfo.packageName, activityInfo.name));
            g gVar = (g) a(i10, i11, i12, resolveInfo.loadLabel(packageManager));
            gVar.setIcon(resolveInfo.loadIcon(packageManager));
            gVar.setIntent(intent2);
            if (menuItemArr != null && (i14 = resolveInfo.specificIndex) >= 0) {
                menuItemArr[i14] = gVar;
            }
        }
        return size;
    }

    @Override // android.view.Menu
    public final SubMenu addSubMenu(CharSequence charSequence) {
        return addSubMenu(0, 0, 0, charSequence);
    }

    public final void b(i iVar) {
        c(iVar, this.f878a);
    }

    public final void c(i iVar, Context context) {
        this.f898u.add(new WeakReference<>(iVar));
        iVar.e(context, this);
        this.f888k = true;
    }

    @Override // android.view.Menu
    public final void clear() {
        g gVar = this.f899v;
        if (gVar != null) {
            e(gVar);
        }
        this.f883f.clear();
        r(true);
    }

    public final void clearHeader() {
        this.f891n = null;
        this.f890m = null;
        this.f892o = null;
        r(false);
    }

    @Override // android.view.Menu
    public final void close() {
        d(true);
    }

    public final void d(boolean z10) {
        if (this.f896s) {
            return;
        }
        this.f896s = true;
        for (WeakReference<i> weakReference : this.f898u) {
            i iVar = weakReference.get();
            if (iVar == null) {
                this.f898u.remove(weakReference);
            } else {
                iVar.b(this, z10);
            }
        }
        this.f896s = false;
    }

    public boolean e(g gVar) {
        boolean zD = false;
        if (!this.f898u.isEmpty() && this.f899v == gVar) {
            B();
            for (WeakReference<i> weakReference : this.f898u) {
                i iVar = weakReference.get();
                if (iVar != null) {
                    zD = iVar.d(gVar);
                    if (zD) {
                        break;
                    }
                } else {
                    this.f898u.remove(weakReference);
                }
            }
            A();
            if (zD) {
                this.f899v = null;
            }
        }
        return zD;
    }

    public boolean f(e eVar, MenuItem menuItem) {
        a aVar = this.f882e;
        return aVar != null && aVar.a(eVar, menuItem);
    }

    @Override // android.view.Menu
    public final MenuItem findItem(int i10) {
        MenuItem menuItemFindItem;
        int size = size();
        for (int i11 = 0; i11 < size; i11++) {
            g gVar = this.f883f.get(i11);
            if (gVar.f905a == i10) {
                return gVar;
            }
            if (gVar.hasSubMenu() && (menuItemFindItem = gVar.f919o.findItem(i10)) != null) {
                return menuItemFindItem;
            }
        }
        return null;
    }

    public boolean g(g gVar) {
        boolean zK = false;
        if (this.f898u.isEmpty()) {
            return false;
        }
        B();
        for (WeakReference<i> weakReference : this.f898u) {
            i iVar = weakReference.get();
            if (iVar != null) {
                zK = iVar.k(gVar);
                if (zK) {
                    break;
                }
            } else {
                this.f898u.remove(weakReference);
            }
        }
        A();
        if (zK) {
            this.f899v = gVar;
        }
        return zK;
    }

    @Override // android.view.Menu
    public final MenuItem getItem(int i10) {
        return this.f883f.get(i10);
    }

    public final g h(int i10, KeyEvent keyEvent) {
        ArrayList<g> arrayList = this.f897t;
        arrayList.clear();
        i(arrayList, i10, keyEvent);
        if (arrayList.isEmpty()) {
            return null;
        }
        int metaState = keyEvent.getMetaState();
        KeyCharacterMap.KeyData keyData = new KeyCharacterMap.KeyData();
        keyEvent.getKeyData(keyData);
        int size = arrayList.size();
        if (size == 1) {
            return arrayList.get(0);
        }
        boolean zO = o();
        for (int i11 = 0; i11 < size; i11++) {
            g gVar = arrayList.get(i11);
            char c10 = zO ? gVar.f914j : gVar.f912h;
            char[] cArr = keyData.meta;
            if ((c10 == cArr[0] && (metaState & 2) == 0) || ((c10 == cArr[2] && (metaState & 2) != 0) || (zO && c10 == '\b' && i10 == 67))) {
                return gVar;
            }
        }
        return null;
    }

    @Override // android.view.Menu
    public final boolean hasVisibleItems() {
        if (this.f901x) {
            return true;
        }
        int size = size();
        for (int i10 = 0; i10 < size; i10++) {
            if (this.f883f.get(i10).isVisible()) {
                return true;
            }
        }
        return false;
    }

    public final void i(List<g> list, int i10, KeyEvent keyEvent) {
        boolean zO = o();
        int modifiers = keyEvent.getModifiers();
        KeyCharacterMap.KeyData keyData = new KeyCharacterMap.KeyData();
        if (keyEvent.getKeyData(keyData) || i10 == 67) {
            int size = this.f883f.size();
            for (int i11 = 0; i11 < size; i11++) {
                g gVar = this.f883f.get(i11);
                if (gVar.hasSubMenu()) {
                    gVar.f919o.i(list, i10, keyEvent);
                }
                char c10 = zO ? gVar.f914j : gVar.f912h;
                if (((modifiers & 69647) == ((zO ? gVar.f915k : gVar.f913i) & 69647)) && c10 != 0) {
                    char[] cArr = keyData.meta;
                    if ((c10 == cArr[0] || c10 == cArr[2] || (zO && c10 == '\b' && i10 == 67)) && gVar.isEnabled()) {
                        list.add(gVar);
                    }
                }
            }
        }
    }

    @Override // android.view.Menu
    public final boolean isShortcutKey(int i10, KeyEvent keyEvent) {
        return h(i10, keyEvent) != null;
    }

    public final void j() {
        ArrayList<g> arrayListM = m();
        if (this.f888k) {
            boolean zI = false;
            for (WeakReference<i> weakReference : this.f898u) {
                i iVar = weakReference.get();
                if (iVar == null) {
                    this.f898u.remove(weakReference);
                } else {
                    zI |= iVar.i();
                }
            }
            if (zI) {
                this.f886i.clear();
                this.f887j.clear();
                int size = arrayListM.size();
                for (int i10 = 0; i10 < size; i10++) {
                    g gVar = arrayListM.get(i10);
                    if (gVar.g()) {
                        this.f886i.add(gVar);
                    } else {
                        this.f887j.add(gVar);
                    }
                }
            } else {
                this.f886i.clear();
                this.f887j.clear();
                this.f887j.addAll(m());
            }
            this.f888k = false;
        }
    }

    public String k() {
        return "android:menu:actionviewstates";
    }

    public e l() {
        return this;
    }

    public final ArrayList<g> m() {
        if (!this.f885h) {
            return this.f884g;
        }
        this.f884g.clear();
        int size = this.f883f.size();
        for (int i10 = 0; i10 < size; i10++) {
            g gVar = this.f883f.get(i10);
            if (gVar.isVisible()) {
                this.f884g.add(gVar);
            }
        }
        this.f885h = false;
        this.f888k = true;
        return this.f884g;
    }

    public boolean n() {
        return this.f900w;
    }

    public boolean o() {
        return this.f880c;
    }

    public boolean p() {
        return this.f881d;
    }

    @Override // android.view.Menu
    public final boolean performIdentifierAction(int i10, int i11) {
        return t(findItem(i10), null, i11);
    }

    @Override // android.view.Menu
    public final boolean performShortcut(int i10, KeyEvent keyEvent, int i11) {
        g gVarH = h(i10, keyEvent);
        boolean zT = gVarH != null ? t(gVarH, null, i11) : false;
        if ((i11 & 2) != 0) {
            d(true);
        }
        return zT;
    }

    public final void q() {
        this.f888k = true;
        r(true);
    }

    public final void r(boolean z10) {
        if (this.f893p) {
            this.f894q = true;
            if (z10) {
                this.f895r = true;
                return;
            }
            return;
        }
        if (z10) {
            this.f885h = true;
            this.f888k = true;
        }
        if (this.f898u.isEmpty()) {
            return;
        }
        B();
        for (WeakReference<i> weakReference : this.f898u) {
            i iVar = weakReference.get();
            if (iVar == null) {
                this.f898u.remove(weakReference);
            } else {
                iVar.f();
            }
        }
        A();
    }

    @Override // android.view.Menu
    public final void removeGroup(int i10) {
        int size = size();
        int i11 = 0;
        while (true) {
            if (i11 >= size) {
                i11 = -1;
                break;
            } else if (this.f883f.get(i11).f906b == i10) {
                break;
            } else {
                i11++;
            }
        }
        if (i11 >= 0) {
            int size2 = this.f883f.size() - i11;
            int i12 = 0;
            while (true) {
                int i13 = i12 + 1;
                if (i12 >= size2 || this.f883f.get(i11).f906b != i10) {
                    break;
                }
                u(i11, false);
                i12 = i13;
            }
            r(true);
        }
    }

    @Override // android.view.Menu
    public final void removeItem(int i10) {
        int size = size();
        int i11 = 0;
        while (i11 < size) {
            if (this.f883f.get(i11).f905a == i10) {
                u(i11, true);
            }
            i11++;
        }
        i11 = -1;
        u(i11, true);
    }

    public final boolean s(MenuItem menuItem, int i10) {
        return t(menuItem, null, i10);
    }

    @Override // android.view.Menu
    public final void setGroupCheckable(int i10, boolean z10, boolean z11) {
        int size = this.f883f.size();
        for (int i11 = 0; i11 < size; i11++) {
            g gVar = this.f883f.get(i11);
            if (gVar.f906b == i10) {
                gVar.f928x = (gVar.f928x & (-5)) | (z11 ? 4 : 0);
                gVar.setCheckable(z10);
            }
        }
    }

    @Override // android.view.Menu
    public void setGroupDividerEnabled(boolean z10) {
        this.f900w = z10;
    }

    @Override // android.view.Menu
    public final void setGroupEnabled(int i10, boolean z10) {
        int size = this.f883f.size();
        for (int i11 = 0; i11 < size; i11++) {
            g gVar = this.f883f.get(i11);
            if (gVar.f906b == i10) {
                gVar.setEnabled(z10);
            }
        }
    }

    @Override // android.view.Menu
    public final void setGroupVisible(int i10, boolean z10) {
        int size = this.f883f.size();
        boolean z11 = false;
        for (int i11 = 0; i11 < size; i11++) {
            g gVar = this.f883f.get(i11);
            if (gVar.f906b == i10) {
                int i12 = gVar.f928x;
                int i13 = (i12 & (-9)) | (z10 ? 0 : 8);
                gVar.f928x = i13;
                if (i12 != i13) {
                    z11 = true;
                }
            }
        }
        if (z11) {
            r(true);
        }
    }

    @Override // android.view.Menu
    public void setQwertyMode(boolean z10) {
        this.f880c = z10;
        r(false);
    }

    @Override // android.view.Menu
    public final int size() {
        return this.f883f.size();
    }

    /* JADX WARN: Code duplicated, block: B:14:0x0021  */
    /* JADX WARN: Code duplicated, block: B:32:0x004f  */
    /* JADX WARN: Code duplicated, block: B:35:0x0056  */
    /* JADX WARN: Code duplicated, block: B:37:0x005d  */
    /* JADX WARN: Code duplicated, block: B:38:0x0062  */
    /* JADX WARN: Code duplicated, block: B:45:0x0073  */
    /* JADX WARN: Code duplicated, block: B:47:0x0077  */
    /* JADX WARN: Code duplicated, block: B:50:0x0080  */
    /* JADX WARN: Code duplicated, block: B:53:0x0092  */
    /* JADX WARN: Code duplicated, block: B:57:0x009e A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:58:0x00a0  */
    /* JADX WARN: Code duplicated, block: B:62:0x00b0  */
    /* JADX WARN: Code duplicated, block: B:69:0x00ce  */
    /* JADX WARN: Code duplicated, block: B:75:0x00c4 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:76:0x00c6 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:77:0x00be A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:79:0x00aa A[SYNTHETIC] */
    public final boolean t(MenuItem menuItem, i iVar, int i10) {
        j0.b bVar;
        boolean zExpandActionView;
        j0.b bVar2;
        boolean z10;
        l lVar;
        i iVar2;
        g gVar = (g) menuItem;
        boolean zH = false;
        if (gVar == null || !gVar.isEnabled()) {
            return false;
        }
        MenuItem.OnMenuItemClickListener onMenuItemClickListener = gVar.f920p;
        if (onMenuItemClickListener == null || !onMenuItemClickListener.onMenuItemClick(gVar)) {
            e eVar = gVar.f918n;
            if (eVar.f(eVar, gVar)) {
                zExpandActionView = true;
            } else {
                Intent intent = gVar.f911g;
                if (intent != null) {
                    try {
                        gVar.f918n.f878a.startActivity(intent);
                    } catch (ActivityNotFoundException e10) {
                        Log.e("MenuItemImpl", "Can't find activity to handle intent; ignoring", e10);
                        bVar = gVar.A;
                        if (bVar == null) {
                        }
                        zExpandActionView = false;
                        bVar2 = gVar.A;
                        if (bVar2 == null) {
                            z10 = false;
                        } else {
                            z10 = false;
                        }
                        if (gVar.f()) {
                            zExpandActionView |= gVar.expandActionView();
                            if (zExpandActionView) {
                                d(true);
                            }
                        } else if (gVar.hasSubMenu()) {
                            if ((i10 & 4) == 0) {
                                d(false);
                            }
                            if (!gVar.hasSubMenu()) {
                                l lVar2 = new l(this.f878a, this, gVar);
                                gVar.f919o = lVar2;
                                lVar2.setHeaderTitle(gVar.f909e);
                            }
                            lVar = gVar.f919o;
                            if (z10) {
                                bVar2.f(lVar);
                            }
                            if (!this.f898u.isEmpty()) {
                                if (iVar != null) {
                                }
                                for (WeakReference<i> weakReference : this.f898u) {
                                    iVar2 = weakReference.get();
                                    if (iVar2 == null) {
                                        this.f898u.remove(weakReference);
                                    } else if (!zH) {
                                        zH = iVar2.h(lVar);
                                    }
                                }
                            }
                            zExpandActionView |= zH;
                            if (!zExpandActionView) {
                                d(true);
                            }
                        } else {
                            if ((i10 & 4) == 0) {
                                d(false);
                            }
                            if (!gVar.hasSubMenu()) {
                                l lVar3 = new l(this.f878a, this, gVar);
                                gVar.f919o = lVar3;
                                lVar3.setHeaderTitle(gVar.f909e);
                            }
                            lVar = gVar.f919o;
                            if (z10) {
                                bVar2.f(lVar);
                            }
                            if (!this.f898u.isEmpty()) {
                                zH = iVar != null ? iVar.h(lVar) : false;
                                while (r8.hasNext()) {
                                    iVar2 = weakReference.get();
                                    if (iVar2 == null) {
                                        this.f898u.remove(weakReference);
                                    } else if (!zH) {
                                        zH = iVar2.h(lVar);
                                    }
                                }
                            }
                            zExpandActionView |= zH;
                            if (!zExpandActionView) {
                                d(true);
                            }
                        }
                        return zExpandActionView;
                    }
                    zExpandActionView = true;
                } else {
                    bVar = gVar.A;
                    if (bVar == null && bVar.e()) {
                        zExpandActionView = true;
                    } else {
                        zExpandActionView = false;
                    }
                }
            }
        } else {
            zExpandActionView = true;
        }
        bVar2 = gVar.A;
        if (bVar2 == null && bVar2.a()) {
            z10 = true;
        } else {
            z10 = false;
        }
        if (gVar.f()) {
            zExpandActionView |= gVar.expandActionView();
            if (zExpandActionView) {
                d(true);
            }
        } else if (gVar.hasSubMenu() || z10) {
            if ((i10 & 4) == 0) {
                d(false);
            }
            if (!gVar.hasSubMenu()) {
                l lVar4 = new l(this.f878a, this, gVar);
                gVar.f919o = lVar4;
                lVar4.setHeaderTitle(gVar.f909e);
            }
            lVar = gVar.f919o;
            if (z10) {
                bVar2.f(lVar);
            }
            if (!this.f898u.isEmpty()) {
                if (iVar != null) {
                }
                while (r8.hasNext()) {
                    iVar2 = weakReference.get();
                    if (iVar2 == null) {
                        this.f898u.remove(weakReference);
                    } else if (!zH) {
                        zH = iVar2.h(lVar);
                    }
                }
            }
            zExpandActionView |= zH;
            if (!zExpandActionView) {
                d(true);
            }
        } else if ((i10 & 1) == 0) {
            d(true);
        }
        return zExpandActionView;
    }

    public final void u(int i10, boolean z10) {
        if (i10 < 0 || i10 >= this.f883f.size()) {
            return;
        }
        this.f883f.remove(i10);
        if (z10) {
            r(true);
        }
    }

    public final void v(i iVar) {
        for (WeakReference<i> weakReference : this.f898u) {
            i iVar2 = weakReference.get();
            if (iVar2 == null || iVar2 == iVar) {
                this.f898u.remove(weakReference);
            }
        }
    }

    public final void w(Bundle bundle) {
        MenuItem menuItemFindItem;
        if (bundle == null) {
            return;
        }
        SparseArray<Parcelable> sparseParcelableArray = bundle.getSparseParcelableArray(k());
        int size = size();
        for (int i10 = 0; i10 < size; i10++) {
            MenuItem item = getItem(i10);
            View actionView = item.getActionView();
            if (actionView != null && actionView.getId() != -1) {
                actionView.restoreHierarchyState(sparseParcelableArray);
            }
            if (item.hasSubMenu()) {
                ((l) item.getSubMenu()).w(bundle);
            }
        }
        int i11 = bundle.getInt("android:menu:expandedactionview");
        if (i11 <= 0 || (menuItemFindItem = findItem(i11)) == null) {
            return;
        }
        menuItemFindItem.expandActionView();
    }

    public final void x(Bundle bundle) {
        int size = size();
        SparseArray<? extends Parcelable> sparseArray = null;
        for (int i10 = 0; i10 < size; i10++) {
            MenuItem item = getItem(i10);
            View actionView = item.getActionView();
            if (actionView != null && actionView.getId() != -1) {
                if (sparseArray == null) {
                    sparseArray = new SparseArray<>();
                }
                actionView.saveHierarchyState(sparseArray);
                if (item.isActionViewExpanded()) {
                    bundle.putInt("android:menu:expandedactionview", item.getItemId());
                }
            }
            if (item.hasSubMenu()) {
                ((l) item.getSubMenu()).x(bundle);
            }
        }
        if (sparseArray != null) {
            bundle.putSparseParcelableArray(k(), sparseArray);
        }
    }

    public void y(a aVar) {
        this.f882e = aVar;
    }

    public final void z(int i10, CharSequence charSequence, int i11, Drawable drawable, View view) {
        Resources resources = this.f879b;
        if (view != null) {
            this.f892o = view;
            this.f890m = null;
            this.f891n = null;
        } else {
            if (i10 > 0) {
                this.f890m = resources.getText(i10);
            } else if (charSequence != null) {
                this.f890m = charSequence;
            }
            if (i11 > 0) {
                Context context = this.f878a;
                Object obj = y.a.f18143a;
                this.f891n = y.a.b.b(context, i11);
            } else if (drawable != null) {
                this.f891n = drawable;
            }
            this.f892o = null;
        }
        r(false);
    }

    @Override // android.view.Menu
    public final MenuItem add(int i10) {
        return a(0, 0, 0, this.f879b.getString(i10));
    }

    @Override // android.view.Menu
    public final SubMenu addSubMenu(int i10) {
        return addSubMenu(0, 0, 0, this.f879b.getString(i10));
    }

    @Override // android.view.Menu
    public final MenuItem add(int i10, int i11, int i12, CharSequence charSequence) {
        return a(i10, i11, i12, charSequence);
    }

    @Override // android.view.Menu
    public final SubMenu addSubMenu(int i10, int i11, int i12, CharSequence charSequence) {
        g gVar = (g) a(i10, i11, i12, charSequence);
        l lVar = new l(this.f878a, this, gVar);
        gVar.f919o = lVar;
        lVar.setHeaderTitle(gVar.f909e);
        return lVar;
    }

    @Override // android.view.Menu
    public final MenuItem add(int i10, int i11, int i12, int i13) {
        return a(i10, i11, i12, this.f879b.getString(i13));
    }

    @Override // android.view.Menu
    public final SubMenu addSubMenu(int i10, int i11, int i12, int i13) {
        return addSubMenu(i10, i11, i12, this.f879b.getString(i13));
    }
}
