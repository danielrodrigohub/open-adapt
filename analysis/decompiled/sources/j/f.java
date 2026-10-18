package j;

import android.app.Activity;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.graphics.PorterDuff;
import android.os.Build;
import android.util.AttributeSet;
import android.util.Log;
import android.util.Xml;
import android.view.InflateException;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.SubMenu;
import android.view.View;
import androidx.appcompat.R;
import androidx.appcompat.widget.f1;
import androidx.appcompat.widget.l0;
import com.newrelic.agent.android.analytics.AnalyticsAttribute;
import j0.j;
import java.io.IOException;
import java.lang.reflect.Constructor;
import java.lang.reflect.Method;
import okhttp3.internal.http2.Settings;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* JADX INFO: compiled from: SupportMenuInflater.java */
/* JADX INFO: loaded from: classes.dex */
public final class f extends MenuInflater {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final Class<?>[] f9098e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final Class<?>[] f9099f;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Object[] f9100a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Object[] f9101b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Context f9102c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public Object f9103d;

    /* JADX INFO: compiled from: SupportMenuInflater.java */
    public static class a implements MenuItem.OnMenuItemClickListener {

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public static final Class<?>[] f9104j = {MenuItem.class};

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public Object f9105h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public Method f9106i;

        public a(Object obj, String str) {
            this.f9105h = obj;
            Class<?> cls = obj.getClass();
            try {
                this.f9106i = cls.getMethod(str, f9104j);
            } catch (Exception e10) {
                StringBuilder sbE = a4.g.e("Couldn't resolve menu item onClick handler ", str, " in class ");
                sbE.append(cls.getName());
                InflateException inflateException = new InflateException(sbE.toString());
                inflateException.initCause(e10);
                throw inflateException;
            }
        }

        @Override // android.view.MenuItem.OnMenuItemClickListener
        public final boolean onMenuItemClick(MenuItem menuItem) {
            try {
                if (this.f9106i.getReturnType() == Boolean.TYPE) {
                    return ((Boolean) this.f9106i.invoke(this.f9105h, menuItem)).booleanValue();
                }
                this.f9106i.invoke(this.f9105h, menuItem);
                return true;
            } catch (Exception e10) {
                throw new RuntimeException(e10);
            }
        }
    }

    /* JADX INFO: compiled from: SupportMenuInflater.java */
    public class b {
        public CharSequence A;
        public CharSequence B;

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public Menu f9107a;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public boolean f9114h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public int f9115i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public int f9116j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public CharSequence f9117k;

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        public CharSequence f9118l;

        /* JADX INFO: renamed from: m, reason: collision with root package name */
        public int f9119m;

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        public char f9120n;

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        public int f9121o;

        /* JADX INFO: renamed from: p, reason: collision with root package name */
        public char f9122p;

        /* JADX INFO: renamed from: q, reason: collision with root package name */
        public int f9123q;

        /* JADX INFO: renamed from: r, reason: collision with root package name */
        public int f9124r;

        /* JADX INFO: renamed from: s, reason: collision with root package name */
        public boolean f9125s;

        /* JADX INFO: renamed from: t, reason: collision with root package name */
        public boolean f9126t;

        /* JADX INFO: renamed from: u, reason: collision with root package name */
        public boolean f9127u;

        /* JADX INFO: renamed from: v, reason: collision with root package name */
        public int f9128v;

        /* JADX INFO: renamed from: w, reason: collision with root package name */
        public int f9129w;

        /* JADX INFO: renamed from: x, reason: collision with root package name */
        public String f9130x;

        /* JADX INFO: renamed from: y, reason: collision with root package name */
        public String f9131y;

        /* JADX INFO: renamed from: z, reason: collision with root package name */
        public j0.b f9132z;
        public ColorStateList C = null;
        public PorterDuff.Mode D = null;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f9108b = 0;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public int f9109c = 0;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public int f9110d = 0;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public int f9111e = 0;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public boolean f9112f = true;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        public boolean f9113g = true;

        public b(Menu menu) {
            this.f9107a = menu;
        }

        public final SubMenu a() {
            this.f9114h = true;
            SubMenu subMenuAddSubMenu = this.f9107a.addSubMenu(this.f9108b, this.f9115i, this.f9116j, this.f9117k);
            c(subMenuAddSubMenu.getItem());
            return subMenuAddSubMenu;
        }

        public final <T> T b(String str, Class<?>[] clsArr, Object[] objArr) {
            try {
                Constructor<?> constructor = Class.forName(str, false, f.this.f9102c.getClassLoader()).getConstructor(clsArr);
                constructor.setAccessible(true);
                return (T) constructor.newInstance(objArr);
            } catch (Exception e10) {
                Log.w("SupportMenuInflater", "Cannot instantiate class: " + str, e10);
                return null;
            }
        }

        public final void c(MenuItem menuItem) {
            boolean z10 = false;
            menuItem.setChecked(this.f9125s).setVisible(this.f9126t).setEnabled(this.f9127u).setCheckable(this.f9124r >= 1).setTitleCondensed(this.f9118l).setIcon(this.f9119m);
            int i10 = this.f9128v;
            if (i10 >= 0) {
                menuItem.setShowAsAction(i10);
            }
            if (this.f9131y != null) {
                if (f.this.f9102c.isRestricted()) {
                    throw new IllegalStateException("The android:onClick attribute cannot be used within a restricted context");
                }
                f fVar = f.this;
                if (fVar.f9103d == null) {
                    Object objA = fVar.f9102c;
                    if (!(objA instanceof Activity) && (objA instanceof ContextWrapper)) {
                        objA = fVar.a(((ContextWrapper) objA).getBaseContext());
                    }
                    fVar.f9103d = objA;
                }
                menuItem.setOnMenuItemClickListener(new a(fVar.f9103d, this.f9131y));
            }
            if (this.f9124r >= 2) {
                if (menuItem instanceof androidx.appcompat.view.menu.g) {
                    androidx.appcompat.view.menu.g gVar = (androidx.appcompat.view.menu.g) menuItem;
                    gVar.f928x = (gVar.f928x & (-5)) | 4;
                } else if (menuItem instanceof k.c) {
                    k.c cVar = (k.c) menuItem;
                    try {
                        if (cVar.f9535e == null) {
                            cVar.f9535e = cVar.f9534d.getClass().getDeclaredMethod("setExclusiveCheckable", Boolean.TYPE);
                        }
                        cVar.f9535e.invoke(cVar.f9534d, Boolean.TRUE);
                    } catch (Exception e10) {
                        Log.w("MenuItemWrapper", "Error while calling setExclusiveCheckable", e10);
                    }
                }
            }
            String str = this.f9130x;
            if (str != null) {
                menuItem.setActionView((View) b(str, f.f9098e, f.this.f9100a));
                z10 = true;
            }
            int i11 = this.f9129w;
            if (i11 > 0) {
                if (z10) {
                    Log.w("SupportMenuInflater", "Ignoring attribute 'itemActionViewLayout'. Action view already specified.");
                } else {
                    menuItem.setActionView(i11);
                }
            }
            j0.b bVar = this.f9132z;
            if (bVar != null) {
                if (menuItem instanceof c0.b) {
                    ((c0.b) menuItem).a(bVar);
                } else {
                    Log.w("MenuItemCompat", "setActionProvider: item does not implement SupportMenuItem; ignoring");
                }
            }
            CharSequence charSequence = this.A;
            boolean z11 = menuItem instanceof c0.b;
            if (z11) {
                ((c0.b) menuItem).setContentDescription(charSequence);
            } else if (Build.VERSION.SDK_INT >= 26) {
                j.h(menuItem, charSequence);
            }
            CharSequence charSequence2 = this.B;
            if (z11) {
                ((c0.b) menuItem).setTooltipText(charSequence2);
            } else if (Build.VERSION.SDK_INT >= 26) {
                j.m(menuItem, charSequence2);
            }
            char c10 = this.f9120n;
            int i12 = this.f9121o;
            if (z11) {
                ((c0.b) menuItem).setAlphabeticShortcut(c10, i12);
            } else if (Build.VERSION.SDK_INT >= 26) {
                j.g(menuItem, c10, i12);
            }
            char c11 = this.f9122p;
            int i13 = this.f9123q;
            if (z11) {
                ((c0.b) menuItem).setNumericShortcut(c11, i13);
            } else if (Build.VERSION.SDK_INT >= 26) {
                j.k(menuItem, c11, i13);
            }
            PorterDuff.Mode mode = this.D;
            if (mode != null) {
                if (z11) {
                    ((c0.b) menuItem).setIconTintMode(mode);
                } else if (Build.VERSION.SDK_INT >= 26) {
                    j.j(menuItem, mode);
                }
            }
            ColorStateList colorStateList = this.C;
            if (colorStateList != null) {
                if (z11) {
                    ((c0.b) menuItem).setIconTintList(colorStateList);
                } else if (Build.VERSION.SDK_INT >= 26) {
                    j.i(menuItem, colorStateList);
                }
            }
        }
    }

    static {
        Class<?>[] clsArr = {Context.class};
        f9098e = clsArr;
        f9099f = clsArr;
    }

    public f(Context context) {
        super(context);
        this.f9102c = context;
        Object[] objArr = {context};
        this.f9100a = objArr;
        this.f9101b = objArr;
    }

    public final Object a(Object obj) {
        return (!(obj instanceof Activity) && (obj instanceof ContextWrapper)) ? a(((ContextWrapper) obj).getBaseContext()) : obj;
    }

    /* JADX WARN: Code duplicated, block: B:82:0x022e  */
    public final void b(XmlPullParser xmlPullParser, AttributeSet attributeSet, Menu menu) throws XmlPullParserException, IOException {
        b bVar = new b(menu);
        int eventType = xmlPullParser.getEventType();
        do {
            if (eventType == 2) {
                String name = xmlPullParser.getName();
                if (!name.equals("menu")) {
                    throw new RuntimeException(androidx.recyclerview.widget.d.c("Expecting menu, got ", name));
                }
                eventType = xmlPullParser.next();
                break;
            }
            eventType = xmlPullParser.next();
        } while (eventType != 1);
        String str = null;
        boolean z10 = false;
        boolean z11 = false;
        while (!z10) {
            if (eventType == 1) {
                throw new RuntimeException("Unexpected end of document");
            }
            if (eventType != 2) {
                if (eventType == 3) {
                    String name2 = xmlPullParser.getName();
                    if (z11 && name2.equals(str)) {
                        str = null;
                        z11 = false;
                    } else if (name2.equals("group")) {
                        bVar.f9108b = 0;
                        bVar.f9109c = 0;
                        bVar.f9110d = 0;
                        bVar.f9111e = 0;
                        bVar.f9112f = true;
                        bVar.f9113g = true;
                    } else if (name2.equals("item")) {
                        if (!bVar.f9114h) {
                            j0.b bVar2 = bVar.f9132z;
                            if (bVar2 == null || !bVar2.a()) {
                                bVar.f9114h = true;
                                bVar.c(bVar.f9107a.add(bVar.f9108b, bVar.f9115i, bVar.f9116j, bVar.f9117k));
                            } else {
                                bVar.a();
                            }
                        }
                    } else if (name2.equals("menu")) {
                        z10 = true;
                    }
                }
            } else if (!z11) {
                String name3 = xmlPullParser.getName();
                if (name3.equals("group")) {
                    TypedArray typedArrayObtainStyledAttributes = f.this.f9102c.obtainStyledAttributes(attributeSet, R.styleable.MenuGroup);
                    bVar.f9108b = typedArrayObtainStyledAttributes.getResourceId(R.styleable.MenuGroup_android_id, 0);
                    bVar.f9109c = typedArrayObtainStyledAttributes.getInt(R.styleable.MenuGroup_android_menuCategory, 0);
                    bVar.f9110d = typedArrayObtainStyledAttributes.getInt(R.styleable.MenuGroup_android_orderInCategory, 0);
                    bVar.f9111e = typedArrayObtainStyledAttributes.getInt(R.styleable.MenuGroup_android_checkableBehavior, 0);
                    bVar.f9112f = typedArrayObtainStyledAttributes.getBoolean(R.styleable.MenuGroup_android_visible, true);
                    bVar.f9113g = typedArrayObtainStyledAttributes.getBoolean(R.styleable.MenuGroup_android_enabled, true);
                    typedArrayObtainStyledAttributes.recycle();
                } else if (name3.equals("item")) {
                    f1 f1VarP = f1.p(f.this.f9102c, attributeSet, R.styleable.MenuItem);
                    bVar.f9115i = f1VarP.l(R.styleable.MenuItem_android_id, 0);
                    bVar.f9116j = (f1VarP.j(R.styleable.MenuItem_android_menuCategory, bVar.f9109c) & (-65536)) | (f1VarP.j(R.styleable.MenuItem_android_orderInCategory, bVar.f9110d) & Settings.DEFAULT_INITIAL_WINDOW_SIZE);
                    bVar.f9117k = f1VarP.n(R.styleable.MenuItem_android_title);
                    bVar.f9118l = f1VarP.n(R.styleable.MenuItem_android_titleCondensed);
                    bVar.f9119m = f1VarP.l(R.styleable.MenuItem_android_icon, 0);
                    String strM = f1VarP.m(R.styleable.MenuItem_android_alphabeticShortcut);
                    bVar.f9120n = strM == null ? (char) 0 : strM.charAt(0);
                    bVar.f9121o = f1VarP.j(R.styleable.MenuItem_alphabeticModifiers, AnalyticsAttribute.ATTRIBUTE_VALUE_MAX_LENGTH);
                    String strM2 = f1VarP.m(R.styleable.MenuItem_android_numericShortcut);
                    bVar.f9122p = strM2 == null ? (char) 0 : strM2.charAt(0);
                    bVar.f9123q = f1VarP.j(R.styleable.MenuItem_numericModifiers, AnalyticsAttribute.ATTRIBUTE_VALUE_MAX_LENGTH);
                    int i10 = R.styleable.MenuItem_android_checkable;
                    if (f1VarP.o(i10)) {
                        bVar.f9124r = f1VarP.a(i10, false) ? 1 : 0;
                    } else {
                        bVar.f9124r = bVar.f9111e;
                    }
                    bVar.f9125s = f1VarP.a(R.styleable.MenuItem_android_checked, false);
                    bVar.f9126t = f1VarP.a(R.styleable.MenuItem_android_visible, bVar.f9112f);
                    bVar.f9127u = f1VarP.a(R.styleable.MenuItem_android_enabled, bVar.f9113g);
                    bVar.f9128v = f1VarP.j(R.styleable.MenuItem_showAsAction, -1);
                    bVar.f9131y = f1VarP.m(R.styleable.MenuItem_android_onClick);
                    bVar.f9129w = f1VarP.l(R.styleable.MenuItem_actionLayout, 0);
                    bVar.f9130x = f1VarP.m(R.styleable.MenuItem_actionViewClass);
                    String strM3 = f1VarP.m(R.styleable.MenuItem_actionProviderClass);
                    boolean z12 = strM3 != null;
                    if (z12 && bVar.f9129w == 0 && bVar.f9130x == null) {
                        bVar.f9132z = (j0.b) bVar.b(strM3, f9099f, f.this.f9101b);
                    } else {
                        if (z12) {
                            Log.w("SupportMenuInflater", "Ignoring attribute 'actionProviderClass'. Action view already specified.");
                        }
                        bVar.f9132z = null;
                    }
                    bVar.A = f1VarP.n(R.styleable.MenuItem_contentDescription);
                    bVar.B = f1VarP.n(R.styleable.MenuItem_tooltipText);
                    int i11 = R.styleable.MenuItem_iconTintMode;
                    if (f1VarP.o(i11)) {
                        bVar.D = l0.d(f1VarP.j(i11, -1), bVar.D);
                    } else {
                        bVar.D = null;
                    }
                    int i12 = R.styleable.MenuItem_iconTint;
                    if (f1VarP.o(i12)) {
                        bVar.C = f1VarP.c(i12);
                    } else {
                        bVar.C = null;
                    }
                    f1VarP.r();
                    bVar.f9114h = false;
                } else if (name3.equals("menu")) {
                    b(xmlPullParser, attributeSet, bVar.a());
                } else {
                    str = name3;
                    z11 = true;
                }
            }
            eventType = xmlPullParser.next();
            z10 = z10;
            z11 = z11;
        }
    }

    @Override // android.view.MenuInflater
    public final void inflate(int i10, Menu menu) {
        if (!(menu instanceof c0.a)) {
            super.inflate(i10, menu);
            return;
        }
        XmlResourceParser layout = null;
        try {
            try {
                try {
                    layout = this.f9102c.getResources().getLayout(i10);
                    b(layout, Xml.asAttributeSet(layout), menu);
                    layout.close();
                } catch (XmlPullParserException e10) {
                    throw new InflateException("Error inflating menu XML", e10);
                }
            } catch (IOException e11) {
                throw new InflateException("Error inflating menu XML", e11);
            }
        } catch (Throwable th) {
            if (layout != null) {
                layout.close();
            }
            throw th;
        }
    }
}
