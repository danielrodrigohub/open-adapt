package androidx.fragment.app;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.Intent;
import android.content.res.Configuration;
import android.os.Bundle;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.Window;
import androidx.activity.ComponentActivity;
import androidx.activity.OnBackPressedDispatcher;
import java.io.FileDescriptor;
import java.io.PrintWriter;

/* JADX INFO: compiled from: FragmentActivity.java */
/* JADX INFO: loaded from: classes.dex */
public class p extends ComponentActivity implements x.b.c {

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public boolean f2009w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public boolean f2010x;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public final s f2007u = new s(new a());

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public final androidx.lifecycle.r f2008v = new androidx.lifecycle.r(this);

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public boolean f2011y = true;

    /* JADX INFO: compiled from: FragmentActivity.java */
    public class a extends u<p> implements androidx.lifecycle.o0, androidx.activity.j, androidx.activity.result.e, b0 {
        public a() {
            super(p.this);
        }

        @Override // androidx.activity.result.e
        public final androidx.activity.result.d J() {
            return p.this.f666o;
        }

        @Override // androidx.lifecycle.o0
        public final androidx.lifecycle.n0 P() {
            return p.this.P();
        }

        @Override // androidx.lifecycle.q
        public final androidx.lifecycle.i a() {
            return p.this.f2008v;
        }

        @Override // androidx.fragment.app.b0
        public final void b(m mVar) {
            p.this.f0(mVar);
        }

        @Override // androidx.activity.j
        public final OnBackPressedDispatcher e() {
            return p.this.f665n;
        }

        @Override // androidx.fragment.app.r
        public final View h(int i10) {
            return p.this.findViewById(i10);
        }

        @Override // androidx.fragment.app.r
        public final boolean i() {
            Window window = p.this.getWindow();
            return (window == null || window.peekDecorView() == null) ? false : true;
        }

        @Override // androidx.fragment.app.u
        public final p k() {
            return p.this;
        }

        @Override // androidx.fragment.app.u
        public final LayoutInflater l() {
            return p.this.getLayoutInflater().cloneInContext(p.this);
        }

        @Override // androidx.fragment.app.u
        public final void m() {
            p.this.g0();
        }
    }

    public p() {
        this.f663l.f3165b.b("android:support:fragments", new n(this));
        a0(new o(this));
    }

    public static boolean e0(x xVar) {
        androidx.lifecycle.i.c cVar = androidx.lifecycle.i.c.STARTED;
        boolean zE0 = false;
        for (m mVar : xVar.I()) {
            if (mVar != null) {
                u<?> uVar = mVar.A;
                if ((uVar == null ? null : uVar.k()) != null) {
                    zE0 |= e0(mVar.k());
                }
                l0 l0Var = mVar.V;
                if (l0Var != null) {
                    l0Var.c();
                    if (l0Var.f1963i.f2231c.b(cVar)) {
                        mVar.V.f1963i.k();
                        zE0 = true;
                    }
                }
                if (mVar.U.f2231c.b(cVar)) {
                    mVar.U.k();
                    zE0 = true;
                }
            }
        }
        return zE0;
    }

    @Override // x.b.c
    @Deprecated
    public final void A() {
    }

    public final x d0() {
        return this.f2007u.f2034a.f2039k;
    }

    @Override // android.app.Activity
    public final void dump(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        super.dump(str, fileDescriptor, printWriter, strArr);
        printWriter.print(str);
        printWriter.print("Local FragmentActivity ");
        printWriter.print(Integer.toHexString(System.identityHashCode(this)));
        printWriter.println(" State:");
        String str2 = str + "  ";
        printWriter.print(str2);
        printWriter.print("mCreated=");
        printWriter.print(this.f2009w);
        printWriter.print(" mResumed=");
        printWriter.print(this.f2010x);
        printWriter.print(" mStopped=");
        printWriter.print(this.f2011y);
        if (getApplication() != null) {
            v0.a.b(this).a(str2, printWriter);
        }
        this.f2007u.f2034a.f2039k.v(str, fileDescriptor, printWriter, strArr);
    }

    @Deprecated
    public void f0(m mVar) {
    }

    @Deprecated
    public void g0() {
        invalidateOptionsMenu();
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onActivityResult(int i10, int i11, Intent intent) {
        this.f2007u.a();
        super.onActivityResult(i10, i11, intent);
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity, android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration configuration) {
        this.f2007u.a();
        super.onConfigurationChanged(configuration);
        this.f2007u.f2034a.f2039k.h(configuration);
    }

    @Override // androidx.activity.ComponentActivity, x.j, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.f2008v.f(androidx.lifecycle.i.b.ON_CREATE);
        this.f2007u.f2034a.f2039k.j();
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity, android.view.Window.Callback
    public final boolean onCreatePanelMenu(int i10, Menu menu) {
        if (i10 != 0) {
            super.onCreatePanelMenu(i10, menu);
            return true;
        }
        super.onCreatePanelMenu(i10, menu);
        s sVar = this.f2007u;
        return sVar.f2034a.f2039k.k(menu, getMenuInflater()) | true;
    }

    @Override // android.app.Activity, android.view.LayoutInflater.Factory2
    public final View onCreateView(View view, String str, Context context, AttributeSet attributeSet) {
        View viewOnCreateView = this.f2007u.f2034a.f2039k.f2050f.onCreateView(view, str, context, attributeSet);
        return viewOnCreateView == null ? super.onCreateView(view, str, context, attributeSet) : viewOnCreateView;
    }

    @Override // android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        this.f2007u.f2034a.f2039k.l();
        this.f2008v.f(androidx.lifecycle.i.b.ON_DESTROY);
    }

    @Override // android.app.Activity, android.content.ComponentCallbacks
    public final void onLowMemory() {
        super.onLowMemory();
        this.f2007u.f2034a.f2039k.m();
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity, android.view.Window.Callback
    public boolean onMenuItemSelected(int i10, MenuItem menuItem) {
        if (super.onMenuItemSelected(i10, menuItem)) {
            return true;
        }
        if (i10 == 0) {
            return this.f2007u.f2034a.f2039k.o(menuItem);
        }
        if (i10 != 6) {
            return false;
        }
        return this.f2007u.f2034a.f2039k.i(menuItem);
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public final void onMultiWindowModeChanged(boolean z10) {
        this.f2007u.f2034a.f2039k.n(z10);
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public final void onNewIntent(@SuppressLint({"UnknownNullness"}) Intent intent) {
        this.f2007u.a();
        super.onNewIntent(intent);
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity, android.view.Window.Callback
    public void onPanelClosed(int i10, Menu menu) {
        if (i10 == 0) {
            this.f2007u.f2034a.f2039k.p(menu);
        }
        super.onPanelClosed(i10, menu);
    }

    @Override // android.app.Activity
    public void onPause() {
        super.onPause();
        this.f2010x = false;
        this.f2007u.f2034a.f2039k.t(5);
        this.f2008v.f(androidx.lifecycle.i.b.ON_PAUSE);
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public final void onPictureInPictureModeChanged(boolean z10) {
        this.f2007u.f2034a.f2039k.r(z10);
    }

    @Override // android.app.Activity
    public void onPostResume() {
        super.onPostResume();
        this.f2008v.f(androidx.lifecycle.i.b.ON_RESUME);
        y yVar = this.f2007u.f2034a.f2039k;
        yVar.B = false;
        yVar.C = false;
        yVar.I.f1822h = false;
        yVar.t(7);
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity, android.view.Window.Callback
    public final boolean onPreparePanel(int i10, View view, Menu menu) {
        if (i10 == 0) {
            super.onPreparePanel(0, view, menu);
            return this.f2007u.f2034a.f2039k.s(menu) | true;
        }
        super.onPreparePanel(i10, view, menu);
        return true;
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onRequestPermissionsResult(int i10, String[] strArr, int[] iArr) {
        this.f2007u.a();
        super.onRequestPermissionsResult(i10, strArr, iArr);
    }

    @Override // android.app.Activity
    public void onResume() {
        this.f2007u.a();
        super.onResume();
        this.f2010x = true;
        this.f2007u.f2034a.f2039k.z(true);
    }

    @Override // android.app.Activity
    public void onStart() {
        this.f2007u.a();
        super.onStart();
        this.f2011y = false;
        if (!this.f2009w) {
            this.f2009w = true;
            y yVar = this.f2007u.f2034a.f2039k;
            yVar.B = false;
            yVar.C = false;
            yVar.I.f1822h = false;
            yVar.t(4);
        }
        this.f2007u.f2034a.f2039k.z(true);
        this.f2008v.f(androidx.lifecycle.i.b.ON_START);
        y yVar2 = this.f2007u.f2034a.f2039k;
        yVar2.B = false;
        yVar2.C = false;
        yVar2.I.f1822h = false;
        yVar2.t(5);
    }

    @Override // android.app.Activity
    public final void onStateNotSaved() {
        this.f2007u.a();
    }

    @Override // android.app.Activity
    public void onStop() {
        super.onStop();
        this.f2011y = true;
        while (e0(d0())) {
        }
        y yVar = this.f2007u.f2034a.f2039k;
        yVar.C = true;
        yVar.I.f1822h = true;
        yVar.t(4);
        this.f2008v.f(androidx.lifecycle.i.b.ON_STOP);
    }

    @Override // android.app.Activity, android.view.LayoutInflater.Factory
    public final View onCreateView(String str, Context context, AttributeSet attributeSet) {
        View viewOnCreateView = this.f2007u.f2034a.f2039k.f2050f.onCreateView(null, str, context, attributeSet);
        return viewOnCreateView == null ? super.onCreateView(str, context, attributeSet) : viewOnCreateView;
    }
}
