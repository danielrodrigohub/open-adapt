package f;

import android.content.Context;
import android.view.KeyCharacterMap;
import android.view.KeyEvent;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.Window;
import androidx.appcompat.widget.ActionMenuView;
import androidx.appcompat.widget.Toolbar;
import androidx.appcompat.widget.i1;
import j0.a0;
import j0.g0;
import java.util.ArrayList;
import java.util.Objects;
import java.util.WeakHashMap;

/* JADX INFO: compiled from: ToolbarActionBar.java */
/* JADX INFO: loaded from: classes.dex */
public final class r extends f.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final i1 f6897a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Window.Callback f6898b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final e f6899c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public boolean f6900d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public boolean f6901e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public boolean f6902f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public ArrayList<f.a.b> f6903g = new ArrayList<>();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final a f6904h = new a();

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final b f6905i;

    /* JADX INFO: compiled from: ToolbarActionBar.java */
    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            r rVar = r.this;
            Menu menuR = rVar.r();
            androidx.appcompat.view.menu.e eVar = menuR instanceof androidx.appcompat.view.menu.e ? (androidx.appcompat.view.menu.e) menuR : null;
            if (eVar != null) {
                eVar.B();
            }
            try {
                menuR.clear();
                if (!rVar.f6898b.onCreatePanelMenu(0, menuR) || !rVar.f6898b.onPreparePanel(0, null, menuR)) {
                    menuR.clear();
                }
            } finally {
                if (eVar != null) {
                    eVar.A();
                }
            }
        }
    }

    /* JADX INFO: compiled from: ToolbarActionBar.java */
    public class b implements Toolbar.f {
        public b() {
        }
    }

    /* JADX INFO: compiled from: ToolbarActionBar.java */
    public final class c implements androidx.appcompat.view.menu.i.a {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public boolean f6908h;

        public c() {
        }

        @Override // androidx.appcompat.view.menu.i.a
        public final void b(androidx.appcompat.view.menu.e eVar, boolean z10) {
            androidx.appcompat.widget.c cVar;
            if (this.f6908h) {
                return;
            }
            this.f6908h = true;
            ActionMenuView actionMenuView = r.this.f6897a.f1293a.f1115h;
            if (actionMenuView != null && (cVar = actionMenuView.A) != null) {
                cVar.a();
            }
            r.this.f6898b.onPanelClosed(108, eVar);
            this.f6908h = false;
        }

        @Override // androidx.appcompat.view.menu.i.a
        public final boolean c(androidx.appcompat.view.menu.e eVar) {
            r.this.f6898b.onMenuOpened(108, eVar);
            return true;
        }
    }

    /* JADX INFO: compiled from: ToolbarActionBar.java */
    public final class d implements androidx.appcompat.view.menu.e.a {
        public d() {
        }

        @Override // androidx.appcompat.view.menu.e.a
        public final boolean a(androidx.appcompat.view.menu.e eVar, MenuItem menuItem) {
            return false;
        }

        @Override // androidx.appcompat.view.menu.e.a
        public final void b(androidx.appcompat.view.menu.e eVar) {
            if (r.this.f6897a.f1293a.q()) {
                r.this.f6898b.onPanelClosed(108, eVar);
            } else if (r.this.f6898b.onPreparePanel(0, null, eVar)) {
                r.this.f6898b.onMenuOpened(108, eVar);
            }
        }
    }

    /* JADX INFO: compiled from: ToolbarActionBar.java */
    public class e implements h.b {
        public e() {
        }
    }

    public r(Toolbar toolbar, CharSequence charSequence, Window.Callback callback) {
        b bVar = new b();
        this.f6905i = bVar;
        Objects.requireNonNull(toolbar);
        i1 i1Var = new i1(toolbar, false);
        this.f6897a = i1Var;
        Objects.requireNonNull(callback);
        this.f6898b = callback;
        i1Var.f1304l = callback;
        toolbar.setOnMenuItemClickListener(bVar);
        i1Var.setWindowTitle(charSequence);
        this.f6899c = new e();
    }

    @Override // f.a
    public final boolean a() {
        return this.f6897a.e();
    }

    @Override // f.a
    public final boolean b() {
        Toolbar.d dVar = this.f6897a.f1293a.T;
        if (!((dVar == null || dVar.f1138i == null) ? false : true)) {
            return false;
        }
        androidx.appcompat.view.menu.g gVar = dVar == null ? null : dVar.f1138i;
        if (gVar != null) {
            gVar.collapseActionView();
        }
        return true;
    }

    @Override // f.a
    public final void c(boolean z10) {
        if (z10 == this.f6902f) {
            return;
        }
        this.f6902f = z10;
        int size = this.f6903g.size();
        for (int i10 = 0; i10 < size; i10++) {
            this.f6903g.get(i10).a();
        }
    }

    @Override // f.a
    public final int d() {
        return this.f6897a.f1294b;
    }

    @Override // f.a
    public final Context e() {
        return this.f6897a.getContext();
    }

    @Override // f.a
    public final boolean f() {
        this.f6897a.f1293a.removeCallbacks(this.f6904h);
        Toolbar toolbar = this.f6897a.f1293a;
        a aVar = this.f6904h;
        WeakHashMap<View, g0> weakHashMap = a0.f9147a;
        a0.d.m(toolbar, aVar);
        return true;
    }

    @Override // f.a
    public final void g() {
    }

    @Override // f.a
    public final void h() {
        this.f6897a.f1293a.removeCallbacks(this.f6904h);
    }

    @Override // f.a
    public final boolean i(int i10, KeyEvent keyEvent) {
        Menu menuR = r();
        if (menuR == null) {
            return false;
        }
        menuR.setQwertyMode(KeyCharacterMap.load(keyEvent != null ? keyEvent.getDeviceId() : -1).getKeyboardType() != 1);
        return menuR.performShortcut(i10, keyEvent, 0);
    }

    @Override // f.a
    public final boolean j(KeyEvent keyEvent) {
        if (keyEvent.getAction() == 1) {
            this.f6897a.f1293a.w();
        }
        return true;
    }

    @Override // f.a
    public final boolean k() {
        return this.f6897a.f1293a.w();
    }

    @Override // f.a
    public final void l(boolean z10) {
    }

    @Override // f.a
    public final void m(boolean z10) {
        i1 i1Var = this.f6897a;
        i1Var.l((i1Var.f1294b & (-5)) | 4);
    }

    @Override // f.a
    public final void n(boolean z10) {
    }

    @Override // f.a
    public final void o(CharSequence charSequence) {
        this.f6897a.setTitle(charSequence);
    }

    @Override // f.a
    public final void p(CharSequence charSequence) {
        this.f6897a.setWindowTitle(charSequence);
    }

    public final Menu r() {
        if (!this.f6901e) {
            i1 i1Var = this.f6897a;
            c cVar = new c();
            d dVar = new d();
            Toolbar toolbar = i1Var.f1293a;
            toolbar.U = cVar;
            toolbar.V = dVar;
            ActionMenuView actionMenuView = toolbar.f1115h;
            if (actionMenuView != null) {
                actionMenuView.B = cVar;
                actionMenuView.C = dVar;
            }
            this.f6901e = true;
        }
        return this.f6897a.f1293a.getMenu();
    }
}
