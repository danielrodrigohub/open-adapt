package f;

import android.R;
import android.app.Activity;
import android.app.Dialog;
import android.app.UiModeManager;
import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.location.Location;
import android.location.LocationManager;
import android.media.AudioManager;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.LocaleList;
import android.os.PowerManager;
import android.text.TextUtils;
import android.util.AndroidRuntimeException;
import android.util.AttributeSet;
import android.util.Log;
import android.util.TypedValue;
import android.view.ActionMode;
import android.view.ContextThemeWrapper;
import android.view.KeyCharacterMap;
import android.view.KeyEvent;
import android.view.KeyboardShortcutGroup;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.Window;
import android.view.WindowManager;
import android.widget.FrameLayout;
import android.widget.ListAdapter;
import android.widget.PopupWindow;
import android.widget.TextView;
import androidx.appcompat.view.menu.ExpandedMenuView;
import androidx.appcompat.view.menu.c.a;
import androidx.appcompat.widget.ActionBarContextView;
import androidx.appcompat.widget.ContentFrameLayout;
import androidx.appcompat.widget.Toolbar;
import androidx.appcompat.widget.ViewStubCompat;
import androidx.appcompat.widget.c0;
import androidx.appcompat.widget.f1;
import androidx.appcompat.widget.i0;
import androidx.appcompat.widget.j0;
import androidx.appcompat.widget.n1;
import androidx.appcompat.widget.o1;
import androidx.appcompat.widget.u0;
import androidx.appcompat.widget.x;
import androidx.appcompat.widget.z;
import com.newrelic.agent.android.analytics.AnalyticsAttribute;
import com.newrelic.agent.android.harvest.HarvestTimer;
import j0.a0;
import j0.g0;
import j0.l0;
import j0.w;
import java.lang.ref.WeakReference;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.Calendar;
import java.util.List;
import java.util.Objects;
import java.util.WeakHashMap;

/* JADX INFO: compiled from: AppCompatDelegateImpl.java */
/* JADX INFO: loaded from: classes.dex */
public final class h extends f.g implements androidx.appcompat.view.menu.e.a, LayoutInflater.Factory2 {

    /* JADX INFO: renamed from: f0, reason: collision with root package name */
    public static final p.g<String, Integer> f6808f0 = new p.g<>();

    /* JADX INFO: renamed from: g0, reason: collision with root package name */
    public static final int[] f6809g0 = {R.attr.windowBackground};

    /* JADX INFO: renamed from: h0, reason: collision with root package name */
    public static final boolean f6810h0 = !"robolectric".equals(Build.FINGERPRINT);

    /* JADX INFO: renamed from: i0, reason: collision with root package name */
    public static final boolean f6811i0 = true;
    public ViewGroup A;
    public TextView B;
    public View C;
    public boolean D;
    public boolean E;
    public boolean F;
    public boolean G;
    public boolean H;
    public boolean I;
    public boolean J;
    public boolean K;
    public k[] L;
    public k M;
    public boolean N;
    public boolean O;
    public boolean P;
    public boolean Q;
    public Configuration R;
    public int S;
    public int T;
    public boolean U;
    public boolean V;
    public i W;
    public g X;
    public boolean Y;
    public int Z;

    /* JADX INFO: renamed from: b0, reason: collision with root package name */
    public boolean f6813b0;

    /* JADX INFO: renamed from: c0, reason: collision with root package name */
    public Rect f6814c0;
    public Rect d0;

    /* JADX INFO: renamed from: e0, reason: collision with root package name */
    public o f6815e0;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final Object f6816j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final Context f6817k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public Window f6818l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public f f6819m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final f.f f6820n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public f.a f6821o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public j.f f6822p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public CharSequence f6823q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public j0 f6824r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public c f6825s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public l f6826t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public j.a f6827u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public ActionBarContextView f6828v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public PopupWindow f6829w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public f.k f6830x;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public boolean f6832z;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public g0 f6831y = null;

    /* JADX INFO: renamed from: a0, reason: collision with root package name */
    public final a f6812a0 = new a();

    /* JADX INFO: compiled from: AppCompatDelegateImpl.java */
    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            h hVar = h.this;
            if ((hVar.Z & 1) != 0) {
                hVar.G(0);
            }
            h hVar2 = h.this;
            if ((hVar2.Z & AnalyticsAttribute.ATTRIBUTE_VALUE_MAX_LENGTH) != 0) {
                hVar2.G(108);
            }
            h hVar3 = h.this;
            hVar3.Y = false;
            hVar3.Z = 0;
        }
    }

    /* JADX INFO: compiled from: AppCompatDelegateImpl.java */
    public interface b {
    }

    /* JADX INFO: compiled from: AppCompatDelegateImpl.java */
    public final class c implements androidx.appcompat.view.menu.i.a {
        public c() {
        }

        @Override // androidx.appcompat.view.menu.i.a
        public final void b(androidx.appcompat.view.menu.e eVar, boolean z10) {
            h.this.C(eVar);
        }

        @Override // androidx.appcompat.view.menu.i.a
        public final boolean c(androidx.appcompat.view.menu.e eVar) {
            Window.Callback callbackN = h.this.N();
            if (callbackN == null) {
                return true;
            }
            callbackN.onMenuOpened(108, eVar);
            return true;
        }
    }

    /* JADX INFO: compiled from: AppCompatDelegateImpl.java */
    public class d implements j.a.InterfaceC0177a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public j.a.InterfaceC0177a f6835a;

        /* JADX INFO: compiled from: AppCompatDelegateImpl.java */
        public class a extends i0.b {
            public a() {
            }

            @Override // j0.h0
            public final void a() {
                h.this.f6828v.setVisibility(8);
                h hVar = h.this;
                PopupWindow popupWindow = hVar.f6829w;
                if (popupWindow != null) {
                    popupWindow.dismiss();
                } else if (hVar.f6828v.getParent() instanceof View) {
                    View view = (View) h.this.f6828v.getParent();
                    WeakHashMap<View, g0> weakHashMap = a0.f9147a;
                    a0.h.c(view);
                }
                h.this.f6828v.h();
                h.this.f6831y.d(null);
                h hVar2 = h.this;
                hVar2.f6831y = null;
                ViewGroup viewGroup = hVar2.A;
                WeakHashMap<View, g0> weakHashMap2 = a0.f9147a;
                a0.h.c(viewGroup);
            }
        }

        public d(j.a.InterfaceC0177a interfaceC0177a) {
            this.f6835a = interfaceC0177a;
        }

        @Override // j.a.InterfaceC0177a
        public final boolean a(j.a aVar, MenuItem menuItem) {
            return this.f6835a.a(aVar, menuItem);
        }

        @Override // j.a.InterfaceC0177a
        public final boolean b(j.a aVar, Menu menu) {
            return this.f6835a.b(aVar, menu);
        }

        @Override // j.a.InterfaceC0177a
        public final void c(j.a aVar) {
            this.f6835a.c(aVar);
            h hVar = h.this;
            if (hVar.f6829w != null) {
                hVar.f6818l.getDecorView().removeCallbacks(h.this.f6830x);
            }
            h hVar2 = h.this;
            if (hVar2.f6828v != null) {
                hVar2.H();
                h hVar3 = h.this;
                g0 g0VarB = a0.b(hVar3.f6828v);
                g0VarB.a(0.0f);
                hVar3.f6831y = g0VarB;
                h.this.f6831y.d(new a());
            }
            f.f fVar = h.this.f6820n;
            if (fVar != null) {
                fVar.p();
            }
            h hVar4 = h.this;
            hVar4.f6827u = null;
            ViewGroup viewGroup = hVar4.A;
            WeakHashMap<View, g0> weakHashMap = a0.f9147a;
            a0.h.c(viewGroup);
        }

        @Override // j.a.InterfaceC0177a
        public final boolean d(j.a aVar, Menu menu) {
            ViewGroup viewGroup = h.this.A;
            WeakHashMap<View, g0> weakHashMap = a0.f9147a;
            a0.h.c(viewGroup);
            return this.f6835a.d(aVar, menu);
        }
    }

    /* JADX INFO: compiled from: AppCompatDelegateImpl.java */
    public static class e {
        public static void a(Configuration configuration, Configuration configuration2, Configuration configuration3) {
            int i10 = configuration.colorMode & 3;
            int i11 = configuration2.colorMode & 3;
            if (i10 != i11) {
                configuration3.colorMode |= i11;
            }
            int i12 = configuration.colorMode & 12;
            int i13 = configuration2.colorMode & 12;
            if (i12 != i13) {
                configuration3.colorMode |= i13;
            }
        }
    }

    /* JADX INFO: compiled from: AppCompatDelegateImpl.java */
    public class f extends j.h {

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public b f6838i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public boolean f6839j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public boolean f6840k;

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        public boolean f6841l;

        public f(Window.Callback callback) {
            super(callback);
        }

        public final void a(Window.Callback callback) {
            try {
                this.f6839j = true;
                callback.onContentChanged();
            } finally {
                this.f6839j = false;
            }
        }

        /* JADX WARN: Code duplicated, block: B:51:0x013e  */
        /* JADX WARN: Type inference fix 'apply assigned field type' failed
        java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
        	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
        	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
        	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
         */
        public final ActionMode b(ActionMode.Callback callback) {
            f.f fVar;
            boolean z10;
            ViewGroup viewGroup;
            Context cVar;
            f.f fVar2;
            j.e.a aVar = new j.e.a(h.this.f6817k, callback);
            h hVar = h.this;
            Objects.requireNonNull(hVar);
            j.a aVar2 = hVar.f6827u;
            if (aVar2 != null) {
                aVar2.c();
            }
            d dVar = hVar.new d(aVar);
            hVar.O();
            f.a aVar3 = hVar.f6821o;
            if (aVar3 != null) {
                j.a aVarQ = aVar3.q(dVar);
                hVar.f6827u = aVarQ;
                if (aVarQ != null && (fVar2 = hVar.f6820n) != null) {
                    fVar2.I();
                }
            }
            if (hVar.f6827u == null) {
                hVar.H();
                j.a aVar4 = hVar.f6827u;
                if (aVar4 != null) {
                    aVar4.c();
                }
                f.f fVar3 = hVar.f6820n;
                if (fVar3 != null && !hVar.Q) {
                    try {
                        fVar3.R();
                    } catch (AbstractMethodError unused) {
                    }
                }
                if (hVar.f6828v == null) {
                    if (hVar.I) {
                        TypedValue typedValue = new TypedValue();
                        Resources.Theme theme = hVar.f6817k.getTheme();
                        theme.resolveAttribute(androidx.appcompat.R.attr.actionBarTheme, typedValue, true);
                        if (typedValue.resourceId != 0) {
                            Resources.Theme themeNewTheme = hVar.f6817k.getResources().newTheme();
                            themeNewTheme.setTo(theme);
                            themeNewTheme.applyStyle(typedValue.resourceId, true);
                            cVar = new j.c(hVar.f6817k, 0);
                            cVar.getTheme().setTo(themeNewTheme);
                        } else {
                            cVar = hVar.f6817k;
                        }
                        hVar.f6828v = new ActionBarContextView(cVar, null);
                        PopupWindow popupWindow = new PopupWindow(cVar, (AttributeSet) null, androidx.appcompat.R.attr.actionModePopupWindowStyle);
                        hVar.f6829w = popupWindow;
                        n0.j.d(popupWindow, 2);
                        hVar.f6829w.setContentView(hVar.f6828v);
                        hVar.f6829w.setWidth(-1);
                        cVar.getTheme().resolveAttribute(androidx.appcompat.R.attr.actionBarSize, typedValue, true);
                        hVar.f6828v.setContentHeight(TypedValue.complexToDimensionPixelSize(typedValue.data, cVar.getResources().getDisplayMetrics()));
                        hVar.f6829w.setHeight(-2);
                        hVar.f6830x = new f.k(hVar);
                    } else {
                        ViewStubCompat viewStubCompat = (ViewStubCompat) hVar.A.findViewById(androidx.appcompat.R.id.action_mode_bar_stub);
                        if (viewStubCompat != null) {
                            hVar.O();
                            f.a aVar5 = hVar.f6821o;
                            Context contextE = aVar5 != null ? aVar5.e() : null;
                            if (contextE == null) {
                                contextE = hVar.f6817k;
                            }
                            viewStubCompat.setLayoutInflater(LayoutInflater.from(contextE));
                            hVar.f6828v = (ActionBarContextView) viewStubCompat.a();
                        }
                    }
                }
                if (hVar.f6828v != null) {
                    hVar.H();
                    hVar.f6828v.h();
                    j.d dVar2 = new j.d(hVar.f6828v.getContext(), hVar.f6828v, dVar);
                    if (dVar.b(dVar2, dVar2.f9091o)) {
                        dVar2.i();
                        hVar.f6828v.f(dVar2);
                        hVar.f6827u = dVar2;
                        if (hVar.f6832z && (viewGroup = hVar.A) != null) {
                            WeakHashMap<View, g0> weakHashMap = a0.f9147a;
                            z10 = a0.g.c(viewGroup);
                        }
                        if (z10) {
                            hVar.f6828v.setAlpha(0.0f);
                            g0 g0VarB = a0.b(hVar.f6828v);
                            g0VarB.a(1.0f);
                            hVar.f6831y = g0VarB;
                            g0VarB.d(new f.l(hVar));
                        } else {
                            hVar.f6828v.setAlpha(1.0f);
                            hVar.f6828v.setVisibility(0);
                            if (hVar.f6828v.getParent() instanceof View) {
                                View view = (View) hVar.f6828v.getParent();
                                WeakHashMap<View, g0> weakHashMap2 = a0.f9147a;
                                a0.h.c(view);
                            }
                        }
                        if (hVar.f6829w != null) {
                            hVar.f6818l.getDecorView().post(hVar.f6830x);
                        }
                    } else {
                        hVar.f6827u = null;
                    }
                }
                if (hVar.f6827u != null && (fVar = hVar.f6820n) != null) {
                    fVar.I();
                }
                hVar.f6827u = hVar.f6827u;
            }
            j.a aVar6 = hVar.f6827u;
            if (aVar6 != null) {
                return aVar.e(aVar6);
            }
            return null;
        }

        @Override // j.h, android.view.Window.Callback
        public final boolean dispatchKeyEvent(KeyEvent keyEvent) {
            if (this.f6840k) {
                return this.f9142h.dispatchKeyEvent(keyEvent);
            }
            return h.this.F(keyEvent) || super.dispatchKeyEvent(keyEvent);
        }

        @Override // j.h, android.view.Window.Callback
        public final boolean dispatchKeyShortcutEvent(KeyEvent keyEvent) {
            boolean z10;
            if (!super.dispatchKeyShortcutEvent(keyEvent)) {
                h hVar = h.this;
                int keyCode = keyEvent.getKeyCode();
                hVar.O();
                f.a aVar = hVar.f6821o;
                if (aVar == null || !aVar.i(keyCode, keyEvent)) {
                    k kVar = hVar.M;
                    if (kVar == null || !hVar.S(kVar, keyEvent.getKeyCode(), keyEvent)) {
                        if (hVar.M == null) {
                            k kVarM = hVar.M(0);
                            hVar.T(kVarM, keyEvent);
                            boolean zS = hVar.S(kVarM, keyEvent.getKeyCode(), keyEvent);
                            kVarM.f6861k = false;
                            if (zS) {
                            }
                        }
                        z10 = false;
                    } else {
                        k kVar2 = hVar.M;
                        if (kVar2 != null) {
                            kVar2.f6862l = true;
                        }
                    }
                    z10 = true;
                } else {
                    z10 = true;
                }
                if (!z10) {
                    return false;
                }
            }
            return true;
        }

        @Override // android.view.Window.Callback
        public final void onContentChanged() {
            if (this.f6839j) {
                this.f9142h.onContentChanged();
            }
        }

        @Override // j.h, android.view.Window.Callback
        public final boolean onCreatePanelMenu(int i10, Menu menu) {
            if (i10 != 0 || (menu instanceof androidx.appcompat.view.menu.e)) {
                return super.onCreatePanelMenu(i10, menu);
            }
            return false;
        }

        @Override // j.h, android.view.Window.Callback
        public final View onCreatePanelView(int i10) {
            b bVar = this.f6838i;
            if (bVar != null) {
                View view = i10 == 0 ? new View(r.this.f6897a.getContext()) : null;
                if (view != null) {
                    return view;
                }
            }
            return super.onCreatePanelView(i10);
        }

        @Override // j.h, android.view.Window.Callback
        public final boolean onMenuOpened(int i10, Menu menu) {
            super.onMenuOpened(i10, menu);
            h hVar = h.this;
            Objects.requireNonNull(hVar);
            if (i10 == 108) {
                hVar.O();
                f.a aVar = hVar.f6821o;
                if (aVar != null) {
                    aVar.c(true);
                }
            }
            return true;
        }

        @Override // j.h, android.view.Window.Callback
        public final void onPanelClosed(int i10, Menu menu) {
            if (this.f6841l) {
                this.f9142h.onPanelClosed(i10, menu);
                return;
            }
            super.onPanelClosed(i10, menu);
            h hVar = h.this;
            Objects.requireNonNull(hVar);
            if (i10 == 108) {
                hVar.O();
                f.a aVar = hVar.f6821o;
                if (aVar != null) {
                    aVar.c(false);
                    return;
                }
                return;
            }
            if (i10 == 0) {
                k kVarM = hVar.M(i10);
                if (kVarM.f6863m) {
                    hVar.D(kVarM, false);
                }
            }
        }

        @Override // j.h, android.view.Window.Callback
        public final boolean onPreparePanel(int i10, View view, Menu menu) {
            androidx.appcompat.view.menu.e eVar = menu instanceof androidx.appcompat.view.menu.e ? (androidx.appcompat.view.menu.e) menu : null;
            if (i10 == 0 && eVar == null) {
                return false;
            }
            if (eVar != null) {
                eVar.f901x = true;
            }
            b bVar = this.f6838i;
            if (bVar != null) {
                r.e eVar2 = (r.e) bVar;
                if (i10 == 0) {
                    r rVar = r.this;
                    if (!rVar.f6900d) {
                        rVar.f6897a.f1305m = true;
                        rVar.f6900d = true;
                    }
                }
            }
            boolean zOnPreparePanel = super.onPreparePanel(i10, view, menu);
            if (eVar != null) {
                eVar.f901x = false;
            }
            return zOnPreparePanel;
        }

        @Override // j.h, android.view.Window.Callback
        public final void onProvideKeyboardShortcuts(List<KeyboardShortcutGroup> list, Menu menu, int i10) {
            androidx.appcompat.view.menu.e eVar = h.this.M(0).f6858h;
            if (eVar != null) {
                super.onProvideKeyboardShortcuts(list, eVar, i10);
            } else {
                super.onProvideKeyboardShortcuts(list, menu, i10);
            }
        }

        @Override // android.view.Window.Callback
        public final ActionMode onWindowStartingActionMode(ActionMode.Callback callback) {
            return null;
        }

        @Override // j.h, android.view.Window.Callback
        public final ActionMode onWindowStartingActionMode(ActionMode.Callback callback, int i10) {
            Objects.requireNonNull(h.this);
            return i10 != 0 ? super.onWindowStartingActionMode(callback, i10) : b(callback);
        }
    }

    /* JADX INFO: compiled from: AppCompatDelegateImpl.java */
    public class g extends AbstractC0124h {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final PowerManager f6843c;

        public g(Context context) {
            super();
            this.f6843c = (PowerManager) context.getApplicationContext().getSystemService("power");
        }

        @Override // f.h.AbstractC0124h
        public final IntentFilter b() {
            IntentFilter intentFilter = new IntentFilter();
            intentFilter.addAction("android.os.action.POWER_SAVE_MODE_CHANGED");
            return intentFilter;
        }

        @Override // f.h.AbstractC0124h
        public final int c() {
            return this.f6843c.isPowerSaveMode() ? 2 : 1;
        }

        @Override // f.h.AbstractC0124h
        public final void d() {
            h.this.y();
        }
    }

    /* JADX INFO: renamed from: f.h$h, reason: collision with other inner class name */
    /* JADX INFO: compiled from: AppCompatDelegateImpl.java */
    public abstract class AbstractC0124h {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public a f6845a;

        /* JADX INFO: renamed from: f.h$h$a */
        /* JADX INFO: compiled from: AppCompatDelegateImpl.java */
        public class a extends BroadcastReceiver {
            public a() {
            }

            @Override // android.content.BroadcastReceiver
            public final void onReceive(Context context, Intent intent) {
                AbstractC0124h.this.d();
            }
        }

        public AbstractC0124h() {
        }

        public final void a() {
            a aVar = this.f6845a;
            if (aVar != null) {
                try {
                    h.this.f6817k.unregisterReceiver(aVar);
                } catch (IllegalArgumentException unused) {
                }
                this.f6845a = null;
            }
        }

        public abstract IntentFilter b();

        public abstract int c();

        public abstract void d();

        public final void e() {
            a();
            IntentFilter intentFilterB = b();
            if (intentFilterB == null || intentFilterB.countActions() == 0) {
                return;
            }
            if (this.f6845a == null) {
                this.f6845a = new a();
            }
            h.this.f6817k.registerReceiver(this.f6845a, intentFilterB);
        }
    }

    /* JADX INFO: compiled from: AppCompatDelegateImpl.java */
    public class i extends AbstractC0124h {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final t f6848c;

        public i(t tVar) {
            super();
            this.f6848c = tVar;
        }

        @Override // f.h.AbstractC0124h
        public final IntentFilter b() {
            IntentFilter intentFilter = new IntentFilter();
            intentFilter.addAction("android.intent.action.TIME_SET");
            intentFilter.addAction("android.intent.action.TIMEZONE_CHANGED");
            intentFilter.addAction("android.intent.action.TIME_TICK");
            return intentFilter;
        }

        @Override // f.h.AbstractC0124h
        public final int c() {
            boolean z10;
            long j10;
            long j11;
            t tVar = this.f6848c;
            t.a aVar = tVar.f6919c;
            if (aVar.f6921b > System.currentTimeMillis()) {
                z10 = aVar.f6920a;
            } else {
                Location locationA = g7.b.a(tVar.f6917a, "android.permission.ACCESS_COARSE_LOCATION") == 0 ? tVar.a("network") : null;
                Location locationA2 = g7.b.a(tVar.f6917a, "android.permission.ACCESS_FINE_LOCATION") == 0 ? tVar.a("gps") : null;
                if (locationA2 == null || locationA == null ? locationA2 != null : locationA2.getTime() > locationA.getTime()) {
                    locationA = locationA2;
                }
                if (locationA != null) {
                    t.a aVar2 = tVar.f6919c;
                    long jCurrentTimeMillis = System.currentTimeMillis();
                    if (s.f6912d == null) {
                        s.f6912d = new s();
                    }
                    s sVar = s.f6912d;
                    sVar.a(jCurrentTimeMillis - 86400000, locationA.getLatitude(), locationA.getLongitude());
                    sVar.a(jCurrentTimeMillis, locationA.getLatitude(), locationA.getLongitude());
                    boolean z11 = sVar.f6915c == 1;
                    long j12 = sVar.f6914b;
                    long j13 = sVar.f6913a;
                    sVar.a(jCurrentTimeMillis + 86400000, locationA.getLatitude(), locationA.getLongitude());
                    long j14 = sVar.f6914b;
                    if (j12 == -1 || j13 == -1) {
                        j10 = jCurrentTimeMillis + 43200000;
                    } else {
                        if (jCurrentTimeMillis > j13) {
                            j11 = j14 + 0;
                        } else {
                            j11 = jCurrentTimeMillis > j12 ? j13 + 0 : j12 + 0;
                        }
                        j10 = j11 + HarvestTimer.DEFAULT_HARVEST_PERIOD;
                    }
                    aVar2.f6920a = z11;
                    aVar2.f6921b = j10;
                    z10 = aVar.f6920a;
                } else {
                    Log.i("TwilightManager", "Could not get last known location. This is probably because the app does not have any location permissions. Falling back to hardcoded sunrise/sunset values.");
                    int i10 = Calendar.getInstance().get(11);
                    z10 = i10 < 6 || i10 >= 22;
                }
            }
            return z10 ? 2 : 1;
        }

        @Override // f.h.AbstractC0124h
        public final void d() {
            h.this.y();
        }
    }

    /* JADX INFO: compiled from: AppCompatDelegateImpl.java */
    public class j extends ContentFrameLayout {
        public j(Context context) {
            super(context, null);
        }

        @Override // android.view.ViewGroup, android.view.View
        public final boolean dispatchKeyEvent(KeyEvent keyEvent) {
            return h.this.F(keyEvent) || super.dispatchKeyEvent(keyEvent);
        }

        @Override // android.view.ViewGroup
        public final boolean onInterceptTouchEvent(MotionEvent motionEvent) {
            if (motionEvent.getAction() == 0) {
                int x10 = (int) motionEvent.getX();
                int y7 = (int) motionEvent.getY();
                if (x10 < -5 || y7 < -5 || x10 > getWidth() + 5 || y7 > getHeight() + 5) {
                    h hVar = h.this;
                    hVar.D(hVar.M(0), true);
                    return true;
                }
            }
            return super.onInterceptTouchEvent(motionEvent);
        }

        @Override // android.view.View
        public final void setBackgroundResource(int i10) {
            setBackgroundDrawable(g.a.b(getContext(), i10));
        }
    }

    /* JADX INFO: compiled from: AppCompatDelegateImpl.java */
    public static final class k {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public int f6851a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f6852b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public int f6853c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public int f6854d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public j f6855e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public View f6856f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        public View f6857g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public androidx.appcompat.view.menu.e f6858h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public androidx.appcompat.view.menu.c f6859i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public j.c f6860j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public boolean f6861k;

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        public boolean f6862l;

        /* JADX INFO: renamed from: m, reason: collision with root package name */
        public boolean f6863m;

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        public boolean f6864n = false;

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        public boolean f6865o;

        /* JADX INFO: renamed from: p, reason: collision with root package name */
        public Bundle f6866p;

        public k(int i10) {
            this.f6851a = i10;
        }

        public final void a(androidx.appcompat.view.menu.e eVar) {
            androidx.appcompat.view.menu.c cVar;
            androidx.appcompat.view.menu.e eVar2 = this.f6858h;
            if (eVar == eVar2) {
                return;
            }
            if (eVar2 != null) {
                eVar2.v(this.f6859i);
            }
            this.f6858h = eVar;
            if (eVar == null || (cVar = this.f6859i) == null) {
                return;
            }
            eVar.b(cVar);
        }
    }

    /* JADX INFO: compiled from: AppCompatDelegateImpl.java */
    public final class l implements androidx.appcompat.view.menu.i.a {
        public l() {
        }

        @Override // androidx.appcompat.view.menu.i.a
        public final void b(androidx.appcompat.view.menu.e eVar, boolean z10) {
            androidx.appcompat.view.menu.e eVarL = eVar.l();
            boolean z11 = eVarL != eVar;
            h hVar = h.this;
            if (z11) {
                eVar = eVarL;
            }
            k kVarK = hVar.K(eVar);
            if (kVarK != null) {
                if (!z11) {
                    h.this.D(kVarK, z10);
                } else {
                    h.this.B(kVarK.f6851a, kVarK, eVarL);
                    h.this.D(kVarK, true);
                }
            }
        }

        @Override // androidx.appcompat.view.menu.i.a
        public final boolean c(androidx.appcompat.view.menu.e eVar) {
            Window.Callback callbackN;
            if (eVar != eVar.l()) {
                return true;
            }
            h hVar = h.this;
            if (!hVar.F || (callbackN = hVar.N()) == null || h.this.Q) {
                return true;
            }
            callbackN.onMenuOpened(108, eVar);
            return true;
        }
    }

    public h(Context context, Window window, f.f fVar, Object obj) {
        p.g<String, Integer> gVar;
        Integer orDefault;
        f.e eVar;
        this.S = -100;
        this.f6817k = context;
        this.f6820n = fVar;
        this.f6816j = obj;
        if (obj instanceof Dialog) {
            while (true) {
                if (context != null) {
                    if (context instanceof f.e) {
                        eVar = (f.e) context;
                        break;
                    } else if (context instanceof ContextWrapper) {
                        context = ((ContextWrapper) context).getBaseContext();
                    }
                }
                eVar = null;
                break;
            }
            if (eVar != null) {
                this.S = eVar.h0().f();
            }
        }
        if (this.S == -100 && (orDefault = (gVar = f6808f0).getOrDefault(this.f6816j.getClass().getName(), null)) != null) {
            this.S = orDefault.intValue();
            gVar.remove(this.f6816j.getClass().getName());
        }
        if (window != null) {
            A(window);
        }
        androidx.appcompat.widget.k.e();
    }

    public final void A(Window window) {
        if (this.f6818l != null) {
            throw new IllegalStateException("AppCompat has already installed itself into the Window");
        }
        Window.Callback callback = window.getCallback();
        if (callback instanceof f) {
            throw new IllegalStateException("AppCompat has already installed itself into the Window");
        }
        f fVar = new f(callback);
        this.f6819m = fVar;
        window.setCallback(fVar);
        f1 f1VarP = f1.p(this.f6817k, null, f6809g0);
        Drawable drawableH = f1VarP.h(0);
        if (drawableH != null) {
            window.setBackgroundDrawable(drawableH);
        }
        f1VarP.r();
        this.f6818l = window;
    }

    public final void B(int i10, k kVar, Menu menu) {
        if (menu == null) {
            if (kVar == null && i10 >= 0) {
                k[] kVarArr = this.L;
                if (i10 < kVarArr.length) {
                    kVar = kVarArr[i10];
                }
            }
            if (kVar != null) {
                menu = kVar.f6858h;
            }
        }
        if ((kVar == null || kVar.f6863m) && !this.Q) {
            f fVar = this.f6819m;
            Window.Callback callback = this.f6818l.getCallback();
            Objects.requireNonNull(fVar);
            try {
                fVar.f6841l = true;
                callback.onPanelClosed(i10, menu);
            } finally {
                fVar.f6841l = false;
            }
        }
    }

    public final void C(androidx.appcompat.view.menu.e eVar) {
        if (this.K) {
            return;
        }
        this.K = true;
        this.f6824r.l();
        Window.Callback callbackN = N();
        if (callbackN != null && !this.Q) {
            callbackN.onPanelClosed(108, eVar);
        }
        this.K = false;
    }

    public final void D(k kVar, boolean z10) {
        j jVar;
        j0 j0Var;
        if (z10 && kVar.f6851a == 0 && (j0Var = this.f6824r) != null && j0Var.b()) {
            C(kVar.f6858h);
            return;
        }
        WindowManager windowManager = (WindowManager) this.f6817k.getSystemService("window");
        if (windowManager != null && kVar.f6863m && (jVar = kVar.f6855e) != null) {
            windowManager.removeView(jVar);
            if (z10) {
                B(kVar.f6851a, kVar, null);
            }
        }
        kVar.f6861k = false;
        kVar.f6862l = false;
        kVar.f6863m = false;
        kVar.f6856f = null;
        kVar.f6864n = true;
        if (this.M == kVar) {
            this.M = null;
        }
    }

    public final Configuration E(Context context, int i10, Configuration configuration, boolean z10) {
        int i11;
        if (i10 == 1) {
            i11 = 16;
        } else if (i10 != 2) {
            i11 = z10 ? 0 : context.getApplicationContext().getResources().getConfiguration().uiMode & 48;
        } else {
            i11 = 32;
        }
        Configuration configuration2 = new Configuration();
        configuration2.fontScale = 0.0f;
        if (configuration != null) {
            configuration2.setTo(configuration);
        }
        configuration2.uiMode = i11 | (configuration2.uiMode & (-49));
        return configuration2;
    }

    /* JADX WARN: Code duplicated, block: B:108:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:73:0x00da  */
    public final boolean F(KeyEvent keyEvent) {
        View decorView;
        boolean z10;
        boolean zE;
        boolean zT;
        Object obj = this.f6816j;
        if (((obj instanceof j0.g.a) || (obj instanceof n)) && (decorView = this.f6818l.getDecorView()) != null && j0.g.a(decorView, keyEvent)) {
            return true;
        }
        if (keyEvent.getKeyCode() == 82) {
            f fVar = this.f6819m;
            Window.Callback callback = this.f6818l.getCallback();
            Objects.requireNonNull(fVar);
            try {
                fVar.f6840k = true;
                boolean zDispatchKeyEvent = callback.dispatchKeyEvent(keyEvent);
                fVar.f6840k = false;
                if (zDispatchKeyEvent) {
                    return true;
                }
            } catch (Throwable th) {
                fVar.f6840k = false;
                throw th;
            }
        }
        int keyCode = keyEvent.getKeyCode();
        if (keyEvent.getAction() == 0) {
            if (keyCode == 4) {
                this.N = (keyEvent.getFlags() & 128) != 0;
            } else if (keyCode == 82) {
                if (keyEvent.getRepeatCount() != 0) {
                    return true;
                }
                k kVarM = M(0);
                if (kVarM.f6863m) {
                    return true;
                }
                T(kVarM, keyEvent);
                return true;
            }
        } else if (keyCode == 4) {
            boolean z11 = this.N;
            this.N = false;
            k kVarM2 = M(0);
            if (kVarM2.f6863m) {
                if (z11) {
                    return true;
                }
                D(kVarM2, true);
                return true;
            }
            j.a aVar = this.f6827u;
            if (aVar != null) {
                aVar.c();
            } else {
                O();
                f.a aVar2 = this.f6821o;
                if (aVar2 == null || !aVar2.b()) {
                    z10 = false;
                }
                if (z10) {
                    return true;
                }
            }
            z10 = true;
            if (z10) {
                return true;
            }
        } else if (keyCode == 82) {
            if (this.f6827u != null) {
                return true;
            }
            k kVarM3 = M(0);
            j0 j0Var = this.f6824r;
            if (j0Var == null || !j0Var.g() || ViewConfiguration.get(this.f6817k).hasPermanentMenuKey()) {
                boolean z12 = kVarM3.f6863m;
                if (z12 || kVarM3.f6862l) {
                    D(kVarM3, true);
                    zE = z12;
                } else if (kVarM3.f6861k) {
                    if (kVarM3.f6865o) {
                        kVarM3.f6861k = false;
                        zT = T(kVarM3, keyEvent);
                    } else {
                        zT = true;
                    }
                    if (zT) {
                        R(kVarM3, keyEvent);
                        zE = true;
                    } else {
                        zE = false;
                    }
                } else {
                    zE = false;
                }
            } else if (this.f6824r.b()) {
                zE = this.f6824r.e();
            } else if (this.Q || !T(kVarM3, keyEvent)) {
                zE = false;
            } else {
                zE = this.f6824r.f();
            }
            if (!zE) {
                return true;
            }
            AudioManager audioManager = (AudioManager) this.f6817k.getApplicationContext().getSystemService("audio");
            if (audioManager != null) {
                audioManager.playSoundEffect(0);
                return true;
            }
            Log.w("AppCompatDelegate", "Couldn't get audio manager");
            return true;
        }
        return false;
    }

    public final void G(int i10) {
        k kVarM = M(i10);
        if (kVarM.f6858h != null) {
            Bundle bundle = new Bundle();
            kVarM.f6858h.x(bundle);
            if (bundle.size() > 0) {
                kVarM.f6866p = bundle;
            }
            kVarM.f6858h.B();
            kVarM.f6858h.clear();
        }
        kVarM.f6865o = true;
        kVarM.f6864n = true;
        if ((i10 == 108 || i10 == 0) && this.f6824r != null) {
            k kVarM2 = M(0);
            kVarM2.f6861k = false;
            T(kVarM2, null);
        }
    }

    public final void H() {
        g0 g0Var = this.f6831y;
        if (g0Var != null) {
            g0Var.b();
        }
    }

    public final void I() {
        ViewGroup viewGroup;
        if (this.f6832z) {
            return;
        }
        TypedArray typedArrayObtainStyledAttributes = this.f6817k.obtainStyledAttributes(androidx.appcompat.R.styleable.AppCompatTheme);
        int i10 = androidx.appcompat.R.styleable.AppCompatTheme_windowActionBar;
        if (!typedArrayObtainStyledAttributes.hasValue(i10)) {
            typedArrayObtainStyledAttributes.recycle();
            throw new IllegalStateException("You need to use a Theme.AppCompat theme (or descendant) with this activity.");
        }
        if (typedArrayObtainStyledAttributes.getBoolean(androidx.appcompat.R.styleable.AppCompatTheme_windowNoTitle, false)) {
            r(1);
        } else if (typedArrayObtainStyledAttributes.getBoolean(i10, false)) {
            r(108);
        }
        if (typedArrayObtainStyledAttributes.getBoolean(androidx.appcompat.R.styleable.AppCompatTheme_windowActionBarOverlay, false)) {
            r(109);
        }
        if (typedArrayObtainStyledAttributes.getBoolean(androidx.appcompat.R.styleable.AppCompatTheme_windowActionModeOverlay, false)) {
            r(10);
        }
        this.I = typedArrayObtainStyledAttributes.getBoolean(androidx.appcompat.R.styleable.AppCompatTheme_android_windowIsFloating, false);
        typedArrayObtainStyledAttributes.recycle();
        J();
        this.f6818l.getDecorView();
        LayoutInflater layoutInflaterFrom = LayoutInflater.from(this.f6817k);
        if (this.J) {
            viewGroup = this.H ? (ViewGroup) layoutInflaterFrom.inflate(androidx.appcompat.R.layout.abc_screen_simple_overlay_action_mode, (ViewGroup) null) : (ViewGroup) layoutInflaterFrom.inflate(androidx.appcompat.R.layout.abc_screen_simple, (ViewGroup) null);
        } else if (this.I) {
            viewGroup = (ViewGroup) layoutInflaterFrom.inflate(androidx.appcompat.R.layout.abc_dialog_title_material, (ViewGroup) null);
            this.G = false;
            this.F = false;
        } else if (this.F) {
            TypedValue typedValue = new TypedValue();
            this.f6817k.getTheme().resolveAttribute(androidx.appcompat.R.attr.actionBarTheme, typedValue, true);
            viewGroup = (ViewGroup) LayoutInflater.from(typedValue.resourceId != 0 ? new j.c(this.f6817k, typedValue.resourceId) : this.f6817k).inflate(androidx.appcompat.R.layout.abc_screen_toolbar, (ViewGroup) null);
            j0 j0Var = (j0) viewGroup.findViewById(androidx.appcompat.R.id.decor_content_parent);
            this.f6824r = j0Var;
            j0Var.setWindowCallback(N());
            if (this.G) {
                this.f6824r.k(109);
            }
            if (this.D) {
                this.f6824r.k(2);
            }
            if (this.E) {
                this.f6824r.k(5);
            }
        } else {
            viewGroup = null;
        }
        if (viewGroup == null) {
            StringBuilder sbC = a0.b.c("AppCompat does not support the current theme features: { windowActionBar: ");
            sbC.append(this.F);
            sbC.append(", windowActionBarOverlay: ");
            sbC.append(this.G);
            sbC.append(", android:windowIsFloating: ");
            sbC.append(this.I);
            sbC.append(", windowActionModeOverlay: ");
            sbC.append(this.H);
            sbC.append(", windowNoTitle: ");
            sbC.append(this.J);
            sbC.append(" }");
            throw new IllegalArgumentException(sbC.toString());
        }
        f.i iVar = new f.i(this);
        WeakHashMap<View, g0> weakHashMap = a0.f9147a;
        a0.i.u(viewGroup, iVar);
        if (this.f6824r == null) {
            this.B = (TextView) viewGroup.findViewById(androidx.appcompat.R.id.title);
        }
        Method method = o1.f1397a;
        try {
            Method method2 = viewGroup.getClass().getMethod("makeOptionalFitsSystemWindows", new Class[0]);
            if (!method2.isAccessible()) {
                method2.setAccessible(true);
            }
            method2.invoke(viewGroup, new Object[0]);
        } catch (IllegalAccessException e10) {
            Log.d("ViewUtils", "Could not invoke makeOptionalFitsSystemWindows", e10);
        } catch (NoSuchMethodException unused) {
            Log.d("ViewUtils", "Could not find method makeOptionalFitsSystemWindows. Oh well...");
        } catch (InvocationTargetException e11) {
            Log.d("ViewUtils", "Could not invoke makeOptionalFitsSystemWindows", e11);
        }
        ContentFrameLayout contentFrameLayout = (ContentFrameLayout) viewGroup.findViewById(androidx.appcompat.R.id.action_bar_activity_content);
        ViewGroup viewGroup2 = (ViewGroup) this.f6818l.findViewById(R.id.content);
        if (viewGroup2 != null) {
            while (viewGroup2.getChildCount() > 0) {
                View childAt = viewGroup2.getChildAt(0);
                viewGroup2.removeViewAt(0);
                contentFrameLayout.addView(childAt);
            }
            viewGroup2.setId(-1);
            contentFrameLayout.setId(R.id.content);
            if (viewGroup2 instanceof FrameLayout) {
                ((FrameLayout) viewGroup2).setForeground(null);
            }
        }
        this.f6818l.setContentView(viewGroup);
        contentFrameLayout.setAttachListener(new f.j(this));
        this.A = viewGroup;
        Object obj = this.f6816j;
        CharSequence title = obj instanceof Activity ? ((Activity) obj).getTitle() : this.f6823q;
        if (!TextUtils.isEmpty(title)) {
            j0 j0Var2 = this.f6824r;
            if (j0Var2 != null) {
                j0Var2.setWindowTitle(title);
            } else {
                f.a aVar = this.f6821o;
                if (aVar != null) {
                    aVar.p(title);
                } else {
                    TextView textView = this.B;
                    if (textView != null) {
                        textView.setText(title);
                    }
                }
            }
        }
        ContentFrameLayout contentFrameLayout2 = (ContentFrameLayout) this.A.findViewById(R.id.content);
        View decorView = this.f6818l.getDecorView();
        contentFrameLayout2.f1037n.set(decorView.getPaddingLeft(), decorView.getPaddingTop(), decorView.getPaddingRight(), decorView.getPaddingBottom());
        WeakHashMap<View, g0> weakHashMap2 = a0.f9147a;
        if (a0.g.c(contentFrameLayout2)) {
            contentFrameLayout2.requestLayout();
        }
        TypedArray typedArrayObtainStyledAttributes2 = this.f6817k.obtainStyledAttributes(androidx.appcompat.R.styleable.AppCompatTheme);
        typedArrayObtainStyledAttributes2.getValue(androidx.appcompat.R.styleable.AppCompatTheme_windowMinWidthMajor, contentFrameLayout2.getMinWidthMajor());
        typedArrayObtainStyledAttributes2.getValue(androidx.appcompat.R.styleable.AppCompatTheme_windowMinWidthMinor, contentFrameLayout2.getMinWidthMinor());
        int i11 = androidx.appcompat.R.styleable.AppCompatTheme_windowFixedWidthMajor;
        if (typedArrayObtainStyledAttributes2.hasValue(i11)) {
            typedArrayObtainStyledAttributes2.getValue(i11, contentFrameLayout2.getFixedWidthMajor());
        }
        int i12 = androidx.appcompat.R.styleable.AppCompatTheme_windowFixedWidthMinor;
        if (typedArrayObtainStyledAttributes2.hasValue(i12)) {
            typedArrayObtainStyledAttributes2.getValue(i12, contentFrameLayout2.getFixedWidthMinor());
        }
        int i13 = androidx.appcompat.R.styleable.AppCompatTheme_windowFixedHeightMajor;
        if (typedArrayObtainStyledAttributes2.hasValue(i13)) {
            typedArrayObtainStyledAttributes2.getValue(i13, contentFrameLayout2.getFixedHeightMajor());
        }
        int i14 = androidx.appcompat.R.styleable.AppCompatTheme_windowFixedHeightMinor;
        if (typedArrayObtainStyledAttributes2.hasValue(i14)) {
            typedArrayObtainStyledAttributes2.getValue(i14, contentFrameLayout2.getFixedHeightMinor());
        }
        typedArrayObtainStyledAttributes2.recycle();
        contentFrameLayout2.requestLayout();
        this.f6832z = true;
        k kVarM = M(0);
        if (this.Q || kVarM.f6858h != null) {
            return;
        }
        P(108);
    }

    public final void J() {
        if (this.f6818l == null) {
            Object obj = this.f6816j;
            if (obj instanceof Activity) {
                A(((Activity) obj).getWindow());
            }
        }
        if (this.f6818l == null) {
            throw new IllegalStateException("We have not been given a Window");
        }
    }

    public final k K(Menu menu) {
        k[] kVarArr = this.L;
        int length = kVarArr != null ? kVarArr.length : 0;
        for (int i10 = 0; i10 < length; i10++) {
            k kVar = kVarArr[i10];
            if (kVar != null && kVar.f6858h == menu) {
                return kVar;
            }
        }
        return null;
    }

    public final AbstractC0124h L(Context context) {
        if (this.W == null) {
            if (t.f6916d == null) {
                Context applicationContext = context.getApplicationContext();
                t.f6916d = new t(applicationContext, (LocationManager) applicationContext.getSystemService("location"));
            }
            this.W = new i(t.f6916d);
        }
        return this.W;
    }

    public final k M(int i10) {
        k[] kVarArr = this.L;
        if (kVarArr == null || kVarArr.length <= i10) {
            k[] kVarArr2 = new k[i10 + 1];
            if (kVarArr != null) {
                System.arraycopy(kVarArr, 0, kVarArr2, 0, kVarArr.length);
            }
            this.L = kVarArr2;
            kVarArr = kVarArr2;
        }
        k kVar = kVarArr[i10];
        if (kVar != null) {
            return kVar;
        }
        k kVar2 = new k(i10);
        kVarArr[i10] = kVar2;
        return kVar2;
    }

    public final Window.Callback N() {
        return this.f6818l.getCallback();
    }

    public final void O() {
        I();
        if (this.F && this.f6821o == null) {
            Object obj = this.f6816j;
            if (obj instanceof Activity) {
                this.f6821o = new u((Activity) this.f6816j, this.G);
            } else if (obj instanceof Dialog) {
                this.f6821o = new u((Dialog) this.f6816j);
            }
            f.a aVar = this.f6821o;
            if (aVar != null) {
                aVar.l(this.f6813b0);
            }
        }
    }

    public final void P(int i10) {
        this.Z = (1 << i10) | this.Z;
        if (this.Y) {
            return;
        }
        View decorView = this.f6818l.getDecorView();
        a aVar = this.f6812a0;
        WeakHashMap<View, g0> weakHashMap = a0.f9147a;
        a0.d.m(decorView, aVar);
        this.Y = true;
    }

    public final int Q(Context context, int i10) {
        if (i10 == -100) {
            return -1;
        }
        if (i10 != -1) {
            if (i10 == 0) {
                if (((UiModeManager) context.getApplicationContext().getSystemService("uimode")).getNightMode() == 0) {
                    return -1;
                }
                return L(context).c();
            }
            if (i10 != 1 && i10 != 2) {
                if (i10 != 3) {
                    throw new IllegalStateException("Unknown value set for night mode. Please use one of the MODE_NIGHT values from AppCompatDelegate.");
                }
                if (this.X == null) {
                    this.X = new g(context);
                }
                return this.X.f6843c.isPowerSaveMode() ? 2 : 1;
            }
        }
        return i10;
    }

    /* JADX WARN: Code duplicated, block: B:102:0x01ab  */
    /* JADX WARN: Code duplicated, block: B:82:0x0159  */
    /* JADX WARN: Code duplicated, block: B:85:0x015e  */
    /* JADX WARN: Code duplicated, block: B:91:0x0173  */
    /* JADX WARN: Code duplicated, block: B:94:0x0177  */
    /* JADX WARN: Code duplicated, block: B:96:0x017f  */
    /* JADX WARN: Code duplicated, block: B:99:0x0195  */
    public final void R(k kVar, KeyEvent keyEvent) {
        boolean z10;
        boolean z11;
        ViewGroup.LayoutParams layoutParams;
        ViewParent parent;
        int i10;
        ViewGroup.LayoutParams layoutParams2;
        if (kVar.f6863m || this.Q) {
            return;
        }
        if (kVar.f6851a == 0) {
            if ((this.f6817k.getResources().getConfiguration().screenLayout & 15) == 4) {
                return;
            }
        }
        Window.Callback callbackN = N();
        if (callbackN != null && !callbackN.onMenuOpened(kVar.f6851a, kVar.f6858h)) {
            D(kVar, true);
            return;
        }
        WindowManager windowManager = (WindowManager) this.f6817k.getSystemService("window");
        if (windowManager != null && T(kVar, keyEvent)) {
            j jVar = kVar.f6855e;
            if (jVar != null && !kVar.f6864n) {
                View view = kVar.f6857g;
                if (view != null && (layoutParams2 = view.getLayoutParams()) != null && layoutParams2.width == -1) {
                    i10 = -1;
                }
                kVar.f6862l = false;
                WindowManager.LayoutParams layoutParams3 = new WindowManager.LayoutParams(i10, -2, 0, 0, 1002, 8519680, -3);
                layoutParams3.gravity = kVar.f6853c;
                layoutParams3.windowAnimations = kVar.f6854d;
                windowManager.addView(kVar.f6855e, layoutParams3);
                kVar.f6863m = true;
            }
            if (jVar == null) {
                O();
                f.a aVar = this.f6821o;
                Context contextE = aVar != null ? aVar.e() : null;
                if (contextE == null) {
                    contextE = this.f6817k;
                }
                TypedValue typedValue = new TypedValue();
                Resources.Theme themeNewTheme = contextE.getResources().newTheme();
                themeNewTheme.setTo(contextE.getTheme());
                themeNewTheme.resolveAttribute(androidx.appcompat.R.attr.actionBarPopupTheme, typedValue, true);
                int i11 = typedValue.resourceId;
                if (i11 != 0) {
                    themeNewTheme.applyStyle(i11, true);
                }
                themeNewTheme.resolveAttribute(androidx.appcompat.R.attr.panelMenuListTheme, typedValue, true);
                int i12 = typedValue.resourceId;
                if (i12 != 0) {
                    themeNewTheme.applyStyle(i12, true);
                } else {
                    themeNewTheme.applyStyle(androidx.appcompat.R.style.Theme_AppCompat_CompactMenu, true);
                }
                j.c cVar = new j.c(contextE, 0);
                cVar.getTheme().setTo(themeNewTheme);
                kVar.f6860j = cVar;
                TypedArray typedArrayObtainStyledAttributes = cVar.obtainStyledAttributes(androidx.appcompat.R.styleable.AppCompatTheme);
                kVar.f6852b = typedArrayObtainStyledAttributes.getResourceId(androidx.appcompat.R.styleable.AppCompatTheme_panelBackground, 0);
                kVar.f6854d = typedArrayObtainStyledAttributes.getResourceId(androidx.appcompat.R.styleable.AppCompatTheme_android_windowAnimationStyle, 0);
                typedArrayObtainStyledAttributes.recycle();
                kVar.f6855e = new j(kVar.f6860j);
                kVar.f6853c = 81;
            } else if (kVar.f6864n && jVar.getChildCount() > 0) {
                kVar.f6855e.removeAllViews();
            }
            View view2 = kVar.f6857g;
            if (view2 == null) {
                if (kVar.f6858h != null) {
                    if (this.f6826t == null) {
                        this.f6826t = new l();
                    }
                    l lVar = this.f6826t;
                    if (kVar.f6859i == null) {
                        androidx.appcompat.view.menu.c cVar2 = new androidx.appcompat.view.menu.c(kVar.f6860j, androidx.appcompat.R.layout.abc_list_menu_item_layout);
                        kVar.f6859i = cVar2;
                        cVar2.f867m = lVar;
                        kVar.f6858h.b(cVar2);
                    }
                    androidx.appcompat.view.menu.c cVar3 = kVar.f6859i;
                    j jVar2 = kVar.f6855e;
                    if (cVar3.f865k == null) {
                        cVar3.f865k = (ExpandedMenuView) cVar3.f863i.inflate(androidx.appcompat.R.layout.abc_expanded_menu_layout, (ViewGroup) jVar2, false);
                        if (cVar3.f868n == null) {
                            cVar3.f868n = cVar3.new a();
                        }
                        cVar3.f865k.setAdapter((ListAdapter) cVar3.f868n);
                        cVar3.f865k.setOnItemClickListener(cVar3);
                    }
                    ExpandedMenuView expandedMenuView = cVar3.f865k;
                    kVar.f6856f = expandedMenuView;
                    if (expandedMenuView != null) {
                    }
                    if (z10) {
                        if (kVar.f6856f == null && (kVar.f6857g != null || ((androidx.appcompat.view.menu.c.a) kVar.f6859i.a()).getCount() > 0)) {
                            z11 = true;
                        } else {
                            z11 = false;
                        }
                        if (z11) {
                            layoutParams = kVar.f6856f.getLayoutParams();
                            if (layoutParams == null) {
                                layoutParams = new ViewGroup.LayoutParams(-2, -2);
                            }
                            kVar.f6855e.setBackgroundResource(kVar.f6852b);
                            parent = kVar.f6856f.getParent();
                            if (parent instanceof ViewGroup) {
                                ((ViewGroup) parent).removeView(kVar.f6856f);
                            }
                            kVar.f6855e.addView(kVar.f6856f, layoutParams);
                            if (!kVar.f6856f.hasFocus()) {
                                kVar.f6856f.requestFocus();
                            }
                        }
                    }
                    kVar.f6864n = true;
                    return;
                }
                z10 = false;
                if (z10) {
                    if (kVar.f6856f == null) {
                        z11 = false;
                    } else {
                        z11 = true;
                    }
                    if (z11) {
                        layoutParams = kVar.f6856f.getLayoutParams();
                        if (layoutParams == null) {
                            layoutParams = new ViewGroup.LayoutParams(-2, -2);
                        }
                        kVar.f6855e.setBackgroundResource(kVar.f6852b);
                        parent = kVar.f6856f.getParent();
                        if (parent instanceof ViewGroup) {
                            ((ViewGroup) parent).removeView(kVar.f6856f);
                        }
                        kVar.f6855e.addView(kVar.f6856f, layoutParams);
                        if (!kVar.f6856f.hasFocus()) {
                            kVar.f6856f.requestFocus();
                        }
                    }
                }
                kVar.f6864n = true;
                return;
            }
            kVar.f6856f = view2;
            z10 = true;
            if (z10) {
                if (kVar.f6856f == null) {
                    z11 = false;
                } else {
                    z11 = true;
                }
                if (z11) {
                    layoutParams = kVar.f6856f.getLayoutParams();
                    if (layoutParams == null) {
                        layoutParams = new ViewGroup.LayoutParams(-2, -2);
                    }
                    kVar.f6855e.setBackgroundResource(kVar.f6852b);
                    parent = kVar.f6856f.getParent();
                    if (parent instanceof ViewGroup) {
                        ((ViewGroup) parent).removeView(kVar.f6856f);
                    }
                    kVar.f6855e.addView(kVar.f6856f, layoutParams);
                    if (!kVar.f6856f.hasFocus()) {
                        kVar.f6856f.requestFocus();
                    }
                }
            }
            kVar.f6864n = true;
            return;
            i10 = -2;
            kVar.f6862l = false;
            WindowManager.LayoutParams layoutParams4 = new WindowManager.LayoutParams(i10, -2, 0, 0, 1002, 8519680, -3);
            layoutParams4.gravity = kVar.f6853c;
            layoutParams4.windowAnimations = kVar.f6854d;
            windowManager.addView(kVar.f6855e, layoutParams4);
            kVar.f6863m = true;
        }
    }

    public final boolean S(k kVar, int i10, KeyEvent keyEvent) {
        androidx.appcompat.view.menu.e eVar;
        if (keyEvent.isSystem()) {
            return false;
        }
        if ((kVar.f6861k || T(kVar, keyEvent)) && (eVar = kVar.f6858h) != null) {
            return eVar.performShortcut(i10, keyEvent, 1);
        }
        return false;
    }

    public final boolean T(k kVar, KeyEvent keyEvent) {
        j0 j0Var;
        j0 j0Var2;
        Resources.Theme themeNewTheme;
        j0 j0Var3;
        j0 j0Var4;
        if (this.Q) {
            return false;
        }
        if (kVar.f6861k) {
            return true;
        }
        k kVar2 = this.M;
        if (kVar2 != null && kVar2 != kVar) {
            D(kVar2, false);
        }
        Window.Callback callbackN = N();
        if (callbackN != null) {
            kVar.f6857g = callbackN.onCreatePanelView(kVar.f6851a);
        }
        int i10 = kVar.f6851a;
        boolean z10 = i10 == 0 || i10 == 108;
        if (z10 && (j0Var4 = this.f6824r) != null) {
            j0Var4.c();
        }
        if (kVar.f6857g == null && (!z10 || !(this.f6821o instanceof r))) {
            androidx.appcompat.view.menu.e eVar = kVar.f6858h;
            if (eVar == null || kVar.f6865o) {
                if (eVar == null) {
                    Context context = this.f6817k;
                    int i11 = kVar.f6851a;
                    if ((i11 == 0 || i11 == 108) && this.f6824r != null) {
                        TypedValue typedValue = new TypedValue();
                        Resources.Theme theme = context.getTheme();
                        theme.resolveAttribute(androidx.appcompat.R.attr.actionBarTheme, typedValue, true);
                        if (typedValue.resourceId != 0) {
                            themeNewTheme = context.getResources().newTheme();
                            themeNewTheme.setTo(theme);
                            themeNewTheme.applyStyle(typedValue.resourceId, true);
                            themeNewTheme.resolveAttribute(androidx.appcompat.R.attr.actionBarWidgetTheme, typedValue, true);
                        } else {
                            theme.resolveAttribute(androidx.appcompat.R.attr.actionBarWidgetTheme, typedValue, true);
                            themeNewTheme = null;
                        }
                        if (typedValue.resourceId != 0) {
                            if (themeNewTheme == null) {
                                themeNewTheme = context.getResources().newTheme();
                                themeNewTheme.setTo(theme);
                            }
                            themeNewTheme.applyStyle(typedValue.resourceId, true);
                        }
                        if (themeNewTheme != null) {
                            j.c cVar = new j.c(context, 0);
                            cVar.getTheme().setTo(themeNewTheme);
                            context = cVar;
                        }
                    }
                    androidx.appcompat.view.menu.e eVar2 = new androidx.appcompat.view.menu.e(context);
                    eVar2.f882e = this;
                    kVar.a(eVar2);
                    if (kVar.f6858h == null) {
                        return false;
                    }
                }
                if (z10 && (j0Var2 = this.f6824r) != null) {
                    if (this.f6825s == null) {
                        this.f6825s = new c();
                    }
                    j0Var2.a(kVar.f6858h, this.f6825s);
                }
                kVar.f6858h.B();
                if (!callbackN.onCreatePanelMenu(kVar.f6851a, kVar.f6858h)) {
                    kVar.a(null);
                    if (z10 && (j0Var = this.f6824r) != null) {
                        j0Var.a(null, this.f6825s);
                    }
                    return false;
                }
                kVar.f6865o = false;
            }
            kVar.f6858h.B();
            Bundle bundle = kVar.f6866p;
            if (bundle != null) {
                kVar.f6858h.w(bundle);
                kVar.f6866p = null;
            }
            if (!callbackN.onPreparePanel(0, kVar.f6857g, kVar.f6858h)) {
                if (z10 && (j0Var3 = this.f6824r) != null) {
                    j0Var3.a(null, this.f6825s);
                }
                kVar.f6858h.A();
                return false;
            }
            kVar.f6858h.setQwertyMode(KeyCharacterMap.load(keyEvent != null ? keyEvent.getDeviceId() : -1).getKeyboardType() != 1);
            kVar.f6858h.A();
        }
        kVar.f6861k = true;
        kVar.f6862l = false;
        this.M = kVar;
        return true;
    }

    public final void U() {
        if (this.f6832z) {
            throw new AndroidRuntimeException("Window feature must be requested before adding content");
        }
    }

    public final int V(l0 l0Var) {
        boolean z10;
        boolean z11;
        int iA;
        int iF = l0Var.f();
        ActionBarContextView actionBarContextView = this.f6828v;
        if (actionBarContextView == null || !(actionBarContextView.getLayoutParams() instanceof ViewGroup.MarginLayoutParams)) {
            z10 = false;
        } else {
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) this.f6828v.getLayoutParams();
            boolean z12 = true;
            if (this.f6828v.isShown()) {
                if (this.f6814c0 == null) {
                    this.f6814c0 = new Rect();
                    this.d0 = new Rect();
                }
                Rect rect = this.f6814c0;
                Rect rect2 = this.d0;
                rect.set(l0Var.d(), l0Var.f(), l0Var.e(), l0Var.c());
                o1.a(this.A, rect, rect2);
                int i10 = rect.top;
                int i11 = rect.left;
                int i12 = rect.right;
                ViewGroup viewGroup = this.A;
                WeakHashMap<View, g0> weakHashMap = a0.f9147a;
                l0 l0VarA = a0.j.a(viewGroup);
                int iD = l0VarA == null ? 0 : l0VarA.d();
                int iE = l0VarA == null ? 0 : l0VarA.e();
                if (marginLayoutParams.topMargin == i10 && marginLayoutParams.leftMargin == i11 && marginLayoutParams.rightMargin == i12) {
                    z11 = false;
                } else {
                    marginLayoutParams.topMargin = i10;
                    marginLayoutParams.leftMargin = i11;
                    marginLayoutParams.rightMargin = i12;
                    z11 = true;
                }
                if (i10 <= 0 || this.C != null) {
                    View view = this.C;
                    if (view != null) {
                        ViewGroup.MarginLayoutParams marginLayoutParams2 = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
                        int i13 = marginLayoutParams2.height;
                        int i14 = marginLayoutParams.topMargin;
                        if (i13 != i14 || marginLayoutParams2.leftMargin != iD || marginLayoutParams2.rightMargin != iE) {
                            marginLayoutParams2.height = i14;
                            marginLayoutParams2.leftMargin = iD;
                            marginLayoutParams2.rightMargin = iE;
                            this.C.setLayoutParams(marginLayoutParams2);
                        }
                    }
                } else {
                    View view2 = new View(this.f6817k);
                    this.C = view2;
                    view2.setVisibility(8);
                    FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, marginLayoutParams.topMargin, 51);
                    layoutParams.leftMargin = iD;
                    layoutParams.rightMargin = iE;
                    this.A.addView(this.C, -1, layoutParams);
                }
                View view3 = this.C;
                z10 = view3 != null;
                if (z10 && view3.getVisibility() != 0) {
                    View view4 = this.C;
                    if ((a0.d.g(view4) & 8192) != 0) {
                        Context context = this.f6817k;
                        int i15 = androidx.appcompat.R.color.abc_decor_view_status_guard_light;
                        Object obj = y.a.f18143a;
                        iA = y.a.c.a(context, i15);
                    } else {
                        Context context2 = this.f6817k;
                        int i16 = androidx.appcompat.R.color.abc_decor_view_status_guard;
                        Object obj2 = y.a.f18143a;
                        iA = y.a.c.a(context2, i16);
                    }
                    view4.setBackgroundColor(iA);
                }
                if (!this.H && z10) {
                    iF = 0;
                }
                z12 = z11;
            } else if (marginLayoutParams.topMargin != 0) {
                marginLayoutParams.topMargin = 0;
                z10 = false;
            } else {
                z12 = false;
                z10 = false;
            }
            if (z12) {
                this.f6828v.setLayoutParams(marginLayoutParams);
            }
        }
        View view5 = this.C;
        if (view5 != null) {
            view5.setVisibility(z10 ? 0 : 8);
        }
        return iF;
    }

    @Override // androidx.appcompat.view.menu.e.a
    public final boolean a(androidx.appcompat.view.menu.e eVar, MenuItem menuItem) {
        k kVarK;
        Window.Callback callbackN = N();
        if (callbackN == null || this.Q || (kVarK = K(eVar.l())) == null) {
            return false;
        }
        return callbackN.onMenuItemSelected(kVarK.f6851a, menuItem);
    }

    @Override // androidx.appcompat.view.menu.e.a
    public final void b(androidx.appcompat.view.menu.e eVar) {
        j0 j0Var = this.f6824r;
        if (j0Var == null || !j0Var.g() || (ViewConfiguration.get(this.f6817k).hasPermanentMenuKey() && !this.f6824r.d())) {
            k kVarM = M(0);
            kVarM.f6864n = true;
            D(kVarM, false);
            R(kVarM, null);
            return;
        }
        Window.Callback callbackN = N();
        if (this.f6824r.b()) {
            this.f6824r.e();
            if (this.Q) {
                return;
            }
            callbackN.onPanelClosed(108, M(0).f6858h);
            return;
        }
        if (callbackN == null || this.Q) {
            return;
        }
        if (this.Y && (1 & this.Z) != 0) {
            this.f6818l.getDecorView().removeCallbacks(this.f6812a0);
            this.f6812a0.run();
        }
        k kVarM2 = M(0);
        androidx.appcompat.view.menu.e eVar2 = kVarM2.f6858h;
        if (eVar2 == null || kVarM2.f6865o || !callbackN.onPreparePanel(0, kVarM2.f6857g, eVar2)) {
            return;
        }
        callbackN.onMenuOpened(108, kVarM2.f6858h);
        this.f6824r.f();
    }

    @Override // f.g
    public final void c(View view, ViewGroup.LayoutParams layoutParams) {
        I();
        ((ViewGroup) this.A.findViewById(R.id.content)).addView(view, layoutParams);
        this.f6819m.a(this.f6818l.getCallback());
    }

    @Override // f.g
    public final Context d(Context context) {
        Configuration configuration;
        boolean z10;
        this.O = true;
        int i10 = this.S;
        if (i10 == -100) {
            i10 = -100;
        }
        int iQ = Q(context, i10);
        if (f6811i0 && (context instanceof ContextThemeWrapper)) {
            try {
                ((ContextThemeWrapper) context).applyOverrideConfiguration(E(context, iQ, null, false));
                return context;
            } catch (IllegalStateException unused) {
            }
        }
        if (context instanceof j.c) {
            try {
                ((j.c) context).a(E(context, iQ, null, false));
                return context;
            } catch (IllegalStateException unused2) {
            }
        }
        if (!f6810h0) {
            return context;
        }
        int i11 = Build.VERSION.SDK_INT;
        Configuration configuration2 = new Configuration();
        configuration2.uiMode = -1;
        configuration2.fontScale = 0.0f;
        Configuration configuration3 = context.createConfigurationContext(configuration2).getResources().getConfiguration();
        Configuration configuration4 = context.getResources().getConfiguration();
        configuration3.uiMode = configuration4.uiMode;
        if (configuration3.equals(configuration4)) {
            configuration = null;
        } else {
            configuration = new Configuration();
            configuration.fontScale = 0.0f;
            if (configuration3.diff(configuration4) != 0) {
                float f10 = configuration3.fontScale;
                float f11 = configuration4.fontScale;
                if (f10 != f11) {
                    configuration.fontScale = f11;
                }
                int i12 = configuration3.mcc;
                int i13 = configuration4.mcc;
                if (i12 != i13) {
                    configuration.mcc = i13;
                }
                int i14 = configuration3.mnc;
                int i15 = configuration4.mnc;
                if (i14 != i15) {
                    configuration.mnc = i15;
                }
                LocaleList locales = configuration3.getLocales();
                LocaleList locales2 = configuration4.getLocales();
                if (!locales.equals(locales2)) {
                    configuration.setLocales(locales2);
                    configuration.locale = configuration4.locale;
                }
                int i16 = configuration3.touchscreen;
                int i17 = configuration4.touchscreen;
                if (i16 != i17) {
                    configuration.touchscreen = i17;
                }
                int i18 = configuration3.keyboard;
                int i19 = configuration4.keyboard;
                if (i18 != i19) {
                    configuration.keyboard = i19;
                }
                int i20 = configuration3.keyboardHidden;
                int i21 = configuration4.keyboardHidden;
                if (i20 != i21) {
                    configuration.keyboardHidden = i21;
                }
                int i22 = configuration3.navigation;
                int i23 = configuration4.navigation;
                if (i22 != i23) {
                    configuration.navigation = i23;
                }
                int i24 = configuration3.navigationHidden;
                int i25 = configuration4.navigationHidden;
                if (i24 != i25) {
                    configuration.navigationHidden = i25;
                }
                int i26 = configuration3.orientation;
                int i27 = configuration4.orientation;
                if (i26 != i27) {
                    configuration.orientation = i27;
                }
                int i28 = configuration3.screenLayout & 15;
                int i29 = configuration4.screenLayout & 15;
                if (i28 != i29) {
                    configuration.screenLayout |= i29;
                }
                int i30 = configuration3.screenLayout & 192;
                int i31 = configuration4.screenLayout & 192;
                if (i30 != i31) {
                    configuration.screenLayout |= i31;
                }
                int i32 = configuration3.screenLayout & 48;
                int i33 = configuration4.screenLayout & 48;
                if (i32 != i33) {
                    configuration.screenLayout |= i33;
                }
                int i34 = configuration3.screenLayout & 768;
                int i35 = configuration4.screenLayout & 768;
                if (i34 != i35) {
                    configuration.screenLayout |= i35;
                }
                if (i11 >= 26) {
                    e.a(configuration3, configuration4, configuration);
                }
                int i36 = configuration3.uiMode & 15;
                int i37 = configuration4.uiMode & 15;
                if (i36 != i37) {
                    configuration.uiMode |= i37;
                }
                int i38 = configuration3.uiMode & 48;
                int i39 = configuration4.uiMode & 48;
                if (i38 != i39) {
                    configuration.uiMode |= i39;
                }
                int i40 = configuration3.screenWidthDp;
                int i41 = configuration4.screenWidthDp;
                if (i40 != i41) {
                    configuration.screenWidthDp = i41;
                }
                int i42 = configuration3.screenHeightDp;
                int i43 = configuration4.screenHeightDp;
                if (i42 != i43) {
                    configuration.screenHeightDp = i43;
                }
                int i44 = configuration3.smallestScreenWidthDp;
                int i45 = configuration4.smallestScreenWidthDp;
                if (i44 != i45) {
                    configuration.smallestScreenWidthDp = i45;
                }
                int i46 = configuration3.densityDpi;
                int i47 = configuration4.densityDpi;
                if (i46 != i47) {
                    configuration.densityDpi = i47;
                }
            }
        }
        Configuration configurationE = E(context, iQ, configuration, true);
        j.c cVar = new j.c(context, androidx.appcompat.R.style.Theme_AppCompat_Empty);
        cVar.a(configurationE);
        try {
            z10 = context.getTheme() != null;
        } catch (NullPointerException unused3) {
        }
        if (z10) {
            Resources.Theme theme = cVar.getTheme();
            if (Build.VERSION.SDK_INT >= 29) {
                z.h.a(theme);
            } else {
                synchronized (z.g.f19236a) {
                    if (!z.g.f19238c) {
                        try {
                            Method declaredMethod = Resources.Theme.class.getDeclaredMethod("rebase", new Class[0]);
                            z.g.f19237b = declaredMethod;
                            declaredMethod.setAccessible(true);
                        } catch (NoSuchMethodException e10) {
                            Log.i("ResourcesCompat", "Failed to retrieve rebase() method", e10);
                        }
                        z.g.f19238c = true;
                    }
                    Method method = z.g.f19237b;
                    if (method != null) {
                        try {
                            method.invoke(theme, new Object[0]);
                        } catch (IllegalAccessException | InvocationTargetException e11) {
                            Log.i("ResourcesCompat", "Failed to invoke rebase() method via reflection", e11);
                            z.g.f19237b = null;
                        }
                    }
                }
            }
        }
        return cVar;
    }

    @Override // f.g
    public final <T extends View> T e(int i10) {
        I();
        return (T) this.f6818l.findViewById(i10);
    }

    @Override // f.g
    public final int f() {
        return this.S;
    }

    @Override // f.g
    public final MenuInflater g() {
        if (this.f6822p == null) {
            O();
            f.a aVar = this.f6821o;
            this.f6822p = new j.f(aVar != null ? aVar.e() : this.f6817k);
        }
        return this.f6822p;
    }

    @Override // f.g
    public final f.a h() {
        O();
        return this.f6821o;
    }

    @Override // f.g
    public final void i() {
        LayoutInflater layoutInflaterFrom = LayoutInflater.from(this.f6817k);
        if (layoutInflaterFrom.getFactory() == null) {
            layoutInflaterFrom.setFactory2(this);
        } else {
            if (layoutInflaterFrom.getFactory2() instanceof h) {
                return;
            }
            Log.i("AppCompatDelegate", "The Activity's LayoutInflater already has a Factory installed so we can not install AppCompat's");
        }
    }

    @Override // f.g
    public final void j() {
        if (this.f6821o != null) {
            O();
            if (this.f6821o.f()) {
                return;
            }
            P(0);
        }
    }

    @Override // f.g
    public final void k(Configuration configuration) {
        if (this.F && this.f6832z) {
            O();
            f.a aVar = this.f6821o;
            if (aVar != null) {
                aVar.g();
            }
        }
        androidx.appcompat.widget.k kVarA = androidx.appcompat.widget.k.a();
        Context context = this.f6817k;
        synchronized (kVarA) {
            u0 u0Var = kVarA.f1320a;
            synchronized (u0Var) {
                p.d<WeakReference<Drawable.ConstantState>> dVar = u0Var.f1461d.get(context);
                if (dVar != null) {
                    dVar.a();
                }
            }
        }
        this.R = new Configuration(this.f6817k.getResources().getConfiguration());
        z(false);
        configuration.updateFrom(this.f6817k.getResources().getConfiguration());
    }

    @Override // f.g
    public final void l() {
        this.O = true;
        z(false);
        J();
        Object obj = this.f6816j;
        if (obj instanceof Activity) {
            String strC = null;
            try {
                Activity activity = (Activity) obj;
                try {
                    strC = x.k.c(activity, activity.getComponentName());
                } catch (PackageManager.NameNotFoundException e10) {
                    throw new IllegalArgumentException(e10);
                }
            } catch (IllegalArgumentException unused) {
            }
            if (strC != null) {
                f.a aVar = this.f6821o;
                if (aVar == null) {
                    this.f6813b0 = true;
                } else {
                    aVar.l(true);
                }
            }
            synchronized (f.g.f6807i) {
                f.g.q(this);
                f.g.f6806h.add(new WeakReference<>(this));
            }
        }
        this.R = new Configuration(this.f6817k.getResources().getConfiguration());
        this.P = true;
    }

    /* JADX WARN: Code duplicated, block: B:22:0x004d  */
    @Override // f.g
    public final void m() {
        if (this.f6816j instanceof Activity) {
            synchronized (f.g.f6807i) {
                f.g.q(this);
            }
        }
        if (this.Y) {
            this.f6818l.getDecorView().removeCallbacks(this.f6812a0);
        }
        this.Q = true;
        if (this.S != -100) {
            Object obj = this.f6816j;
            if ((obj instanceof Activity) && ((Activity) obj).isChangingConfigurations()) {
                f6808f0.put(this.f6816j.getClass().getName(), Integer.valueOf(this.S));
            } else {
                f6808f0.remove(this.f6816j.getClass().getName());
            }
        } else {
            f6808f0.remove(this.f6816j.getClass().getName());
        }
        f.a aVar = this.f6821o;
        if (aVar != null) {
            aVar.h();
        }
        i iVar = this.W;
        if (iVar != null) {
            iVar.a();
        }
        g gVar = this.X;
        if (gVar != null) {
            gVar.a();
        }
    }

    @Override // f.g
    public final void n() {
        O();
        f.a aVar = this.f6821o;
        if (aVar != null) {
            aVar.n(true);
        }
    }

    @Override // f.g
    public final void o() {
        y();
    }

    @Override // android.view.LayoutInflater.Factory2
    public final View onCreateView(View view, String str, Context context, AttributeSet attributeSet) {
        byte b10;
        View xVar;
        if (this.f6815e0 == null) {
            String string = this.f6817k.obtainStyledAttributes(androidx.appcompat.R.styleable.AppCompatTheme).getString(androidx.appcompat.R.styleable.AppCompatTheme_viewInflaterClass);
            if (string == null) {
                this.f6815e0 = new o();
            } else {
                try {
                    this.f6815e0 = (o) this.f6817k.getClassLoader().loadClass(string).getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
                } catch (Throwable th) {
                    Log.i("AppCompatDelegate", "Failed to instantiate custom view inflater " + string + ". Falling back to default.", th);
                    this.f6815e0 = new o();
                }
            }
        }
        o oVar = this.f6815e0;
        int i10 = n1.f1385a;
        Objects.requireNonNull(oVar);
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, androidx.appcompat.R.styleable.View, 0, 0);
        int resourceId = typedArrayObtainStyledAttributes.getResourceId(androidx.appcompat.R.styleable.View_theme, 0);
        if (resourceId != 0) {
            Log.i("AppCompatViewInflater", "app:theme is now deprecated. Please move to using android:theme instead.");
        }
        typedArrayObtainStyledAttributes.recycle();
        Context cVar = (resourceId == 0 || ((context instanceof j.c) && ((j.c) context).f9081a == resourceId)) ? context : new j.c(context, resourceId);
        Objects.requireNonNull(str);
        switch (str) {
            case "RatingBar":
                b10 = 0;
                break;
            case "CheckedTextView":
                b10 = 1;
                break;
            case "MultiAutoCompleteTextView":
                b10 = 2;
                break;
            case "TextView":
                b10 = 3;
                break;
            case "ImageButton":
                b10 = 4;
                break;
            case "SeekBar":
                b10 = 5;
                break;
            case "Spinner":
                b10 = 6;
                break;
            case "RadioButton":
                b10 = 7;
                break;
            case "ToggleButton":
                b10 = 8;
                break;
            case "ImageView":
                b10 = 9;
                break;
            case "AutoCompleteTextView":
                b10 = 10;
                break;
            case "CheckBox":
                b10 = 11;
                break;
            case "EditText":
                b10 = 12;
                break;
            case "Button":
                b10 = 13;
                break;
            default:
                b10 = -1;
                break;
        }
        View view2 = null;
        switch (b10) {
            case 0:
                xVar = new x(cVar, attributeSet);
                break;
            case 1:
                xVar = new androidx.appcompat.widget.h(cVar, attributeSet);
                break;
            case 2:
                xVar = new androidx.appcompat.widget.t(cVar, attributeSet);
                break;
            case 3:
                xVar = oVar.e(cVar, attributeSet);
                oVar.g(xVar, str);
                break;
            case 4:
                xVar = new androidx.appcompat.widget.q(cVar, attributeSet);
                break;
            case 5:
                xVar = new z(cVar, attributeSet);
                break;
            case 6:
                xVar = new c0(cVar, attributeSet, androidx.appcompat.R.attr.spinnerStyle);
                break;
            case 7:
                xVar = oVar.d(cVar, attributeSet);
                oVar.g(xVar, str);
                break;
            case 8:
                xVar = new i0(cVar, attributeSet);
                break;
            case 9:
                xVar = new androidx.appcompat.widget.s(cVar, attributeSet);
                break;
            case 10:
                xVar = oVar.a(cVar, attributeSet);
                oVar.g(xVar, str);
                break;
            case 11:
                xVar = oVar.c(cVar, attributeSet);
                oVar.g(xVar, str);
                break;
            case 12:
                xVar = new androidx.appcompat.widget.l(cVar, attributeSet);
                break;
            case 13:
                xVar = oVar.b(cVar, attributeSet);
                oVar.g(xVar, str);
                break;
            default:
                xVar = null;
                break;
        }
        if (xVar == null && context != cVar) {
            if (str.equals("view")) {
                str = attributeSet.getAttributeValue(null, "class");
            }
            try {
                Object[] objArr = oVar.f6883a;
                objArr[0] = cVar;
                objArr[1] = attributeSet;
                if (-1 == str.indexOf(46)) {
                    int i11 = 0;
                    while (true) {
                        String[] strArr = o.f6881g;
                        if (i11 < 3) {
                            View viewF = oVar.f(cVar, str, strArr[i11]);
                            if (viewF != null) {
                                Object[] objArr2 = oVar.f6883a;
                                objArr2[0] = null;
                                objArr2[1] = null;
                                view2 = viewF;
                            } else {
                                i11++;
                            }
                        } else {
                            Object[] objArr3 = oVar.f6883a;
                            objArr3[0] = null;
                            objArr3[1] = null;
                        }
                    }
                } else {
                    View viewF2 = oVar.f(cVar, str, null);
                    Object[] objArr4 = oVar.f6883a;
                    objArr4[0] = null;
                    objArr4[1] = null;
                    view2 = viewF2;
                }
            } catch (Exception unused) {
                Object[] objArr5 = oVar.f6883a;
                objArr5[0] = null;
                objArr5[1] = null;
            } catch (Throwable th2) {
                Object[] objArr6 = oVar.f6883a;
                objArr6[0] = null;
                objArr6[1] = null;
                throw th2;
            }
            xVar = view2;
        }
        if (xVar != null) {
            Context context2 = xVar.getContext();
            if (context2 instanceof ContextWrapper) {
                WeakHashMap<View, g0> weakHashMap = a0.f9147a;
                if (a0.c.a(xVar)) {
                    TypedArray typedArrayObtainStyledAttributes2 = context2.obtainStyledAttributes(attributeSet, o.f6877c);
                    String string2 = typedArrayObtainStyledAttributes2.getString(0);
                    if (string2 != null) {
                        xVar.setOnClickListener(new o.a(xVar, string2));
                    }
                    typedArrayObtainStyledAttributes2.recycle();
                }
            }
            if (Build.VERSION.SDK_INT <= 28) {
                TypedArray typedArrayObtainStyledAttributes3 = cVar.obtainStyledAttributes(attributeSet, o.f6878d);
                if (typedArrayObtainStyledAttributes3.hasValue(0)) {
                    a0.q(xVar, typedArrayObtainStyledAttributes3.getBoolean(0, false));
                }
                typedArrayObtainStyledAttributes3.recycle();
                TypedArray typedArrayObtainStyledAttributes4 = cVar.obtainStyledAttributes(attributeSet, o.f6879e);
                if (typedArrayObtainStyledAttributes4.hasValue(0)) {
                    a0.r(xVar, typedArrayObtainStyledAttributes4.getString(0));
                }
                typedArrayObtainStyledAttributes4.recycle();
                TypedArray typedArrayObtainStyledAttributes5 = cVar.obtainStyledAttributes(attributeSet, o.f6880f);
                if (typedArrayObtainStyledAttributes5.hasValue(0)) {
                    boolean z10 = typedArrayObtainStyledAttributes5.getBoolean(0, false);
                    WeakHashMap<View, g0> weakHashMap2 = a0.f9147a;
                    new w(androidx.core.R.id.tag_screen_reader_focusable).e(xVar, Boolean.valueOf(z10));
                }
                typedArrayObtainStyledAttributes5.recycle();
            }
        }
        return xVar;
    }

    @Override // f.g
    public final void p() {
        O();
        f.a aVar = this.f6821o;
        if (aVar != null) {
            aVar.n(false);
        }
    }

    @Override // f.g
    public final boolean r(int i10) {
        if (i10 == 8) {
            Log.i("AppCompatDelegate", "You should now use the AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR id when requesting this feature.");
            i10 = 108;
        } else if (i10 == 9) {
            Log.i("AppCompatDelegate", "You should now use the AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR_OVERLAY id when requesting this feature.");
            i10 = 109;
        }
        if (this.J && i10 == 108) {
            return false;
        }
        if (this.F && i10 == 1) {
            this.F = false;
        }
        if (i10 == 1) {
            U();
            this.J = true;
            return true;
        }
        if (i10 == 2) {
            U();
            this.D = true;
            return true;
        }
        if (i10 == 5) {
            U();
            this.E = true;
            return true;
        }
        if (i10 == 10) {
            U();
            this.H = true;
            return true;
        }
        if (i10 == 108) {
            U();
            this.F = true;
            return true;
        }
        if (i10 != 109) {
            return this.f6818l.requestFeature(i10);
        }
        U();
        this.G = true;
        return true;
    }

    @Override // f.g
    public final void s(int i10) {
        I();
        ViewGroup viewGroup = (ViewGroup) this.A.findViewById(R.id.content);
        viewGroup.removeAllViews();
        LayoutInflater.from(this.f6817k).inflate(i10, viewGroup);
        this.f6819m.a(this.f6818l.getCallback());
    }

    @Override // f.g
    public final void t(View view) {
        I();
        ViewGroup viewGroup = (ViewGroup) this.A.findViewById(R.id.content);
        viewGroup.removeAllViews();
        viewGroup.addView(view);
        this.f6819m.a(this.f6818l.getCallback());
    }

    @Override // f.g
    public final void u(View view, ViewGroup.LayoutParams layoutParams) {
        I();
        ViewGroup viewGroup = (ViewGroup) this.A.findViewById(R.id.content);
        viewGroup.removeAllViews();
        viewGroup.addView(view, layoutParams);
        this.f6819m.a(this.f6818l.getCallback());
    }

    @Override // f.g
    public final void v(Toolbar toolbar) {
        if (this.f6816j instanceof Activity) {
            O();
            f.a aVar = this.f6821o;
            if (aVar instanceof u) {
                throw new IllegalStateException("This Activity already has an action bar supplied by the window decor. Do not request Window.FEATURE_SUPPORT_ACTION_BAR and set windowActionBar to false in your theme to use a Toolbar instead.");
            }
            this.f6822p = null;
            if (aVar != null) {
                aVar.h();
            }
            this.f6821o = null;
            if (toolbar != null) {
                Object obj = this.f6816j;
                r rVar = new r(toolbar, obj instanceof Activity ? ((Activity) obj).getTitle() : this.f6823q, this.f6819m);
                this.f6821o = rVar;
                this.f6819m.f6838i = rVar.f6899c;
            } else {
                this.f6819m.f6838i = null;
            }
            j();
        }
    }

    @Override // f.g
    public final void w(int i10) {
        this.T = i10;
    }

    @Override // f.g
    public final void x(CharSequence charSequence) {
        this.f6823q = charSequence;
        j0 j0Var = this.f6824r;
        if (j0Var != null) {
            j0Var.setWindowTitle(charSequence);
            return;
        }
        f.a aVar = this.f6821o;
        if (aVar != null) {
            aVar.p(charSequence);
            return;
        }
        TextView textView = this.B;
        if (textView != null) {
            textView.setText(charSequence);
        }
    }

    public final boolean y() {
        return z(true);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final boolean z(boolean z10) {
        boolean z11;
        Object obj;
        int i10 = 0;
        if (this.Q) {
            return false;
        }
        int i11 = this.S;
        if (i11 == -100) {
            i11 = -100;
        }
        Object obj2 = null;
        Configuration configurationE = E(this.f6817k, Q(this.f6817k, i11), null, false);
        Context context = this.f6817k;
        boolean z12 = 1;
        z12 = 1;
        z12 = 1;
        z12 = 1;
        z12 = 1;
        z12 = 1;
        z12 = 1;
        if (this.V || !(this.f6816j instanceof Activity)) {
            this.V = true;
            z11 = this.U;
        } else {
            PackageManager packageManager = context.getPackageManager();
            if (packageManager == null) {
                z11 = false;
            } else {
                try {
                    ActivityInfo activityInfo = packageManager.getActivityInfo(new ComponentName(context, this.f6816j.getClass()), Build.VERSION.SDK_INT >= 29 ? 269221888 : 786432);
                    this.U = (activityInfo == null || (activityInfo.configChanges & 512) == 0) ? false : true;
                } catch (PackageManager.NameNotFoundException e10) {
                    Log.d("AppCompatDelegate", "Exception while getting ActivityInfo", e10);
                    this.U = false;
                }
                this.V = true;
                z11 = this.U;
            }
        }
        Configuration configuration = this.R;
        if (configuration == null) {
            configuration = this.f6817k.getResources().getConfiguration();
        }
        int i12 = configuration.uiMode & 48;
        int i13 = configurationE.uiMode & 48;
        if (i12 != i13 && z10 && !z11 && this.O && (f6810h0 || this.P)) {
            Object obj3 = this.f6816j;
            if ((obj3 instanceof Activity) && !((Activity) obj3).isChild()) {
                Activity activity = (Activity) this.f6816j;
                int i14 = x.b.f17611b;
                if (Build.VERSION.SDK_INT >= 28) {
                    activity.recreate();
                } else {
                    new Handler(activity.getMainLooper()).post(new x.a(activity, i10));
                }
                i10 = 1;
            }
        }
        if (i10 != 0 || i12 == i13) {
            z12 = i10;
        } else {
            Resources resources = this.f6817k.getResources();
            Configuration configuration2 = new Configuration(resources.getConfiguration());
            configuration2.uiMode = i13 | (resources.getConfiguration().uiMode & (-49));
            resources.updateConfiguration(configuration2, null);
            int i15 = Build.VERSION.SDK_INT;
            if (i15 < 26 && i15 < 28) {
                if (!q.f6896h) {
                    try {
                        Field declaredField = Resources.class.getDeclaredField("mResourcesImpl");
                        q.f6895g = declaredField;
                        declaredField.setAccessible(true);
                    } catch (NoSuchFieldException e11) {
                        Log.e("ResourcesFlusher", "Could not retrieve Resources#mResourcesImpl field", e11);
                    }
                    q.f6896h = true;
                }
                Field field = q.f6895g;
                if (field != null) {
                    try {
                        obj = field.get(resources);
                    } catch (IllegalAccessException e12) {
                        Log.e("ResourcesFlusher", "Could not retrieve value from Resources#mResourcesImpl", e12);
                        obj = null;
                    }
                    if (obj != null) {
                        if (!q.f6890b) {
                            try {
                                Field declaredField2 = obj.getClass().getDeclaredField("mDrawableCache");
                                q.f6889a = declaredField2;
                                declaredField2.setAccessible(true);
                            } catch (NoSuchFieldException e13) {
                                Log.e("ResourcesFlusher", "Could not retrieve ResourcesImpl#mDrawableCache field", e13);
                            }
                            q.f6890b = true;
                        }
                        Field field2 = q.f6889a;
                        if (field2 != null) {
                            try {
                                obj2 = field2.get(obj);
                            } catch (IllegalAccessException e14) {
                                Log.e("ResourcesFlusher", "Could not retrieve value from ResourcesImpl#mDrawableCache", e14);
                            }
                        }
                        if (obj2 != null) {
                            q.a(obj2);
                        }
                    }
                }
            }
            int i16 = this.T;
            if (i16 != 0) {
                this.f6817k.setTheme(i16);
                this.f6817k.getTheme().applyStyle(this.T, true);
            }
            if (z11) {
                Object obj4 = this.f6816j;
                if (obj4 instanceof Activity) {
                    Activity activity2 = (Activity) obj4;
                    if (activity2 instanceof androidx.lifecycle.q) {
                        if (((androidx.lifecycle.q) activity2).a().b().b(androidx.lifecycle.i.c.CREATED)) {
                            activity2.onConfigurationChanged(configuration2);
                        }
                    } else if (this.P && !this.Q) {
                        activity2.onConfigurationChanged(configuration2);
                    }
                }
            }
        }
        if (z12 != 0) {
            Object obj5 = this.f6816j;
            if (obj5 instanceof f.e) {
                Objects.requireNonNull((f.e) obj5);
            }
        }
        if (i11 == 0) {
            L(this.f6817k).e();
        } else {
            i iVar = this.W;
            if (iVar != null) {
                iVar.a();
            }
        }
        if (i11 == 3) {
            Context context2 = this.f6817k;
            if (this.X == null) {
                this.X = new g(context2);
            }
            this.X.e();
        } else {
            g gVar = this.X;
            if (gVar != null) {
                gVar.a();
            }
        }
        return z12;
    }

    @Override // android.view.LayoutInflater.Factory
    public final View onCreateView(String str, Context context, AttributeSet attributeSet) {
        return onCreateView(null, str, context, attributeSet);
    }
}
